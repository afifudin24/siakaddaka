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

    $pengumumans = Pengumuman::with('targets.user')
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
            'title' => 'required|string',
            'content' => 'required|string',
            'targets' => 'required|array',
            'targets.*.type' => 'required|in:all,role,user',
            'targets.*.value' => 'nullable'
        ]);

        DB::beginTransaction();
        try {
            $pengumuman = Pengumuman::create([
                'title' => $request->title,
                'content' => $request->content,
                'created_by' => auth()->id(),
                'is_active' => true,
                'start_at' => $request->start_at,
                'end_at' => $request->end_at,
            ]);

            foreach ($request->targets as $target) {
                PengumumanTarget::create([
                    'Pengumuman_id' => $pengumuman->id,
                    'target_type' => $target['type'],
                    'target_id' => $target['type'] === 'all'
                        ? null
                        : $target['value'],
                ]);
            }

            DB::commit();

            return response()->json([
                'status' => true,
                'message' => 'Pengumuman berhasil ditambahkan'
            ]);
        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json([
                'status' => false,
                'message' => 'Gagal menambahkan pengumuman'
            ], 500);
        }
    }

    /**
     * =========================
     * UPDATE (AJAX)
     * =========================
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'title' => 'required|string',
            'content' => 'required|string',
            'targets' => 'required|array',
            'targets.*.type' => 'required|in:all,role,user',
            'targets.*.value' => 'nullable'
        ]);

        DB::beginTransaction();
        try {
            $pengumuman = Pengumuman::findOrFail($id);

            $pengumuman->update([
                'title' => $request->title,
                'content' => $request->content,
                'start_at' => $request->start_at,
                'end_at' => $request->end_at,
            ]);

            // reset target
            PengumumanTarget::where('Pengumuman_id', $id)->delete();

            foreach ($request->targets as $target) {
                PengumumanTarget::create([
                    'Pengumuman_id' => $id,
                    'target_type' => $target['type'],
                    'target_id' => $target['type'] === 'all'
                        ? null
                        : $target['value'],
                ]);
            }

            DB::commit();

            return response()->json([
                'status' => true,
                'message' => 'Pengumuman berhasil diperbarui'
            ]);
        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json([
                'status' => false,
                'message' => 'Gagal memperbarui pengumuman'
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

}