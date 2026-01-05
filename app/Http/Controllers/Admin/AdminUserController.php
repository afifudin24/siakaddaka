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

}