<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Guru;
use App\Models\Kelas;
use App\Models\Siswa;
use App\Models\Staff;
use App\Models\User;
use App\Models\Pengumuman;
use App\Models\PengumumanTarget;
use Carbon\Carbon;

class AdminPengumumanController extends Controller
{
 /**
     * =========================
     * INDEX (List Pengumuman)
     * =========================
     */
public function index(Request $request)
{
    $search  = $request->input('search');
    $perPage = $request->input('paginate', 20);

    $pengumumans = Pengumuman::with('target.user')
        ->when($search, function ($query) use ($search) {
            $query->where('title', 'like', "%{$search}%")
                  ->orWhere('content', 'like', "%{$search}%");
        })
        ->latest()
        ->paginate($perPage)
        ->withQueryString(); // agar search & perpage tidak hilang saat paging

    return view('pages.admin.pengumuman.index', compact(
        'pengumumans',
        'search',
        'perPage'
    ));
}

public function create(){
    $users = User::all();
    return view('pages.admin.pengumuman.create', compact('users'));
}

    /**
     * =========================
     * STORE (AJAX)
     * =========================
     */
   public function store(Request $request)
{
    $request->validate([
        'title'       => 'required|string',
        'content'     => 'required|string',
        'target_type' => 'required|in:all,role,user',
        'target_role' => 'nullable|string',
        'target_user' => 'nullable|array',
        'target_user.*' => 'exists:users,id',
        
    ]);

    DB::beginTransaction();
    try {
        $pengumuman = Pengumuman::create([
            'title' => $request->title,
            'content' => $request->content,
          'start_at' => Carbon::parse($request->start_at),
'end_at'   => Carbon::parse($request->end_at),
            'created_by' => auth()->user()->id,
        ]);

        PengumumanTarget::create([
            'pengumuman_id' => $pengumuman->id,
            'target_type'   => $request->target_type,
            'target_role'   => $request->target_type === 'role'
                                ? $request->target_role
                                : null,
            'target_user'   => $request->target_type === 'user'
                                ? $request->target_user
                                : null,
        ]);

        DB::commit();

        return response()->json([
            'success' => true,
            'message' => 'Pengumuman berhasil disimpan'
        ]);
    } catch (\Exception $e) {
        DB::rollBack();
        return response()->json([
            'success' => false,
            'message' => $e->getMessage()
        ], 500);
    }
}


  public function edit($id)
{
    $pengumuman = Pengumuman::with('target')->findOrFail($id);
    $users = User::all();

    $target = PengumumanTarget::where('pengumuman_id', $pengumuman->id)->first();

    $selectedUsers = $target && $target->target_type === 'user'
        ? $target->target_user
        : [];

     

    return view('pages.admin.pengumuman.edit', compact(
        'pengumuman',
        'users',
        'selectedUsers',
        'target'
    ));
}


    /**
     * =========================
     * UPDATE (AJAX)
     * =========================
     */
   public function update(Request $request, $id)
{
    $request->validate([
        'title'        => 'required|string',
        'content'      => 'required|string',
        'target_type'  => 'required|in:all,role,user',
        'target_role'  => 'nullable|string',
        'target_user'  => 'nullable|array',
        'target_user.*'=> 'exists:users,id',
    ]);

    DB::beginTransaction();
    try {
        $pengumuman = Pengumuman::findOrFail($id);

        $pengumuman->update([
            'title'   => $request->title,
            'content' => $request->content,
            'start_at' => Carbon::parse($request->start_at),
            'end_at'   => Carbon::parse($request->end_at),
        ]);

        // asumsinya 1 pengumuman = 1 target
        $target = PengumumanTarget::where('pengumuman_id', $pengumuman->id)->firstOrFail();

        $target->update([
            'target_type' => $request->target_type,
            'target_role' => $request->target_type === 'role'
                                ? $request->target_role
                                : null,
            'target_user' => $request->target_type === 'user'
                                ? array_map('intval', $request->target_user ?? [])
                                : null,
        ]);

        DB::commit();

        return response()->json([
            'success' => true,
            'message' => 'Pengumuman berhasil diperbarui'
        ]);
    } catch (\Exception $e) {
        DB::rollBack();
        return response()->json([
            'success' => false,
            'message' => $e->getMessage()
        ], 500);
    }
}


    /**
     * =========================
     * DESTROY (AJAX)
     * =========================
     */
    public function destroy($id)
    {
        try {
            Pengumuman::findOrFail($id)->delete();

            return response()->json([
                'status' => true,
                'message' => 'Pengumuman berhasil dihapus'
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'status' => false,
                'message' => 'Gagal menghapus pengumuman'
            ], 500);
        }
    }

    public function toggleStatus($id)
{
    $pengumuman = Pengumuman::findOrFail($id);

    $pengumuman->is_active = !$pengumuman->is_active;
    $pengumuman->save();

    return response()->json([
        'success' => true,
        'status'  => $pengumuman->is_active,
        'message' => $pengumuman->is_active
            ? 'Pengumuman berhasil diaktifkan'
            : 'Pengumuman berhasil dinonaktifkan',
    ]);
}



}