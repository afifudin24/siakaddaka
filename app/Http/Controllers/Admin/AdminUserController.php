<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;

use Illuminate\Support\Facades\DB;
class AdminUserController extends Controller
{
    public function admin(Request $request)
{
    $query = User::where('role', 'admin');

    /*
    |--------------------------------------------------------------------------
    | Filter Status
    |--------------------------------------------------------------------------
    | aktif        -> status = true
    | tidak aktif  -> status = false
    | all / null   -> tidak difilter
    */
    if ($request->filled('status') && $request->status !== 'all') {
        if ($request->status === 'true') {
            $query->where('is_active', true);
        } elseif ($request->status === 'false') {
            $query->where('is_active', false);
        }
    }

    /*
    |--------------------------------------------------------------------------
    | Search (nama / email / username)
    |--------------------------------------------------------------------------
    */
    if ($request->filled('search')) {
        $search = $request->search;
        $query->where(function ($q) use ($search) {
            $q->where('name', 'like', "%{$search}%")
              ->orWhere('email', 'like', "%{$search}%");
        });
    }

    /*
    |--------------------------------------------------------------------------
    | Paginate
    |--------------------------------------------------------------------------
    */
    $perPage = $request->per_page ?? 10;

    $admin = $query
        ->orderBy('created_at', 'desc')
        ->paginate($perPage)
        ->withQueryString(); // penting!

    return view('pages.admin.users.admin', compact('admin'));
}

public function aktifkanSemuaAdmin()
{
    User::where('role', 'admin')->update(['is_active' => true]);

    // pake response json ajax
    return response()->json([
        'status' => true,
        'message' => 'Semua pengguna admin telah diaktifkan.'
    ]);

   
}
public function nonaktifkanSemuaAdmin()
{
    User::where('role', 'admin')->update(['is_active' => false]);

    // pake response json ajax
    return response()->json([
        'status' => true,
        'message' => 'Semua pengguna admin telah dinonaktifkan.'
    ]);
}


public function toggleStatus($id)
{
    $user = User::findOrFail($id);
    $user->is_active = !$user->is_active;
    $user->save();
    return response()->json([
        'status' => true,
        'message' => 'Status pengguna berhasil diperbarui.',
        'is_active' => $user->is_active
    ]);

}

// Siswa
    public function siswa(Request $request)
{
    $query = User::where('role', 'siswa');

    /*
    |--------------------------------------------------------------------------
    | Filter Status
    |--------------------------------------------------------------------------
    | aktif        -> status = true
    | tidak aktif  -> status = false
    | all / null   -> tidak difilter
    */
    if ($request->filled('status') && $request->status !== 'all') {
        if ($request->status === 'true') {
            $query->where('is_active', true);
        } elseif ($request->status === 'false') {
            $query->where('is_active', false);
        }
    }

    /*
    |--------------------------------------------------------------------------
    | Paginate
    |--------------------------------------------------------------------------
    */
    $perPage = $request->per_page ?? 10;

    $siswa = $query
        ->orderBy('nama', 'asc')
        ->paginate($perPage)
        ->withQueryString(); // penting!

    return view('pages.admin.users.siswa', compact('siswa'));
}
    public function aktifkanSemuaSiswa()
{
    User::where('role', 'siswa')->update(['is_active' => true]);

    // pake response json ajax
    return response()->json([
        'status' => true,
        'message' => 'Semua pengguna siswa telah diaktifkan.'
    ]);

   
}
public function nonaktifkanSemuaSiswa()
{
    User::where('role', 'siswa')->update(['is_active' => false]);

    // pake response json ajax
    return response()->json([
        'status' => true,
        'message' => 'Semua pengguna siswa telah dinonaktifkan.'
    ]);
}



public function destroy($id){
    $user = User::findOrFail($id);
    $user->delete();
    return response()->json([
        'status' => true,
        'message' => 'Pengguna berhasil dihapus.'
    ]);
}


}