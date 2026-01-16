<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Backup;
use App\Models\Guru;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class AdminBackupController extends Controller
{
    public function index()
    {
        $backup = Backup::paginate(10);
        return view('pages.admin.backup.index', compact('backup'));
    }
   public function store()
    {
        DB::beginTransaction();

        try {
            $note = request('note');

            $filename = 'backup_' . date('Ymd_His') . '.sql';
            $backupDir = storage_path('app/backup');

            if (!File::exists($backupDir)) {
                File::makeDirectory($backupDir, 0755, true);
            }

            $fullPath = $backupDir . '/' . $filename;

            // Ambil config database
            $db = config('database.connections.mysql');

            $username = $db['username'];
            $password = $db['password'];
            $database = $db['database'];
            $host     = $db['host'] ?? '127.0.0.1';

            /**
             * HANDLE PASSWORD KOSONG / ADA
             */
            $pass = $password !== null && $password !== ''
                ? "-p{$password}"
                : '';

            // Path mysqldump (AMAN di Linux)
            $mysqldump = env('MYSQLDUMP_PATH', 'mysqldump');

           $command = sprintf(
    '%s -h %s -u %s %s %s > %s 2>&1',
    escapeshellcmd($mysqldump),
    escapeshellarg($host),
    escapeshellarg($username),
    $pass,
    escapeshellarg($database),
    escapeshellarg($fullPath)
);


            exec($command, $output, $resultCode);

           if ($resultCode !== 0) {
    throw new \Exception(
        'Backup gagal: ' . implode("\n", $output)
    );
}


            Backup::create([
                'file_name' => $filename,
                'file_path' => 'backup/' . $filename,
                'file_size' => filesize($fullPath),
                'status'    => 'success',
                'note'      => $note,
            ]);

            DB::commit();

            return response()->json([
                'message' => 'Backup berhasil'
            ]);

        } catch (\Throwable $e) {
            DB::rollback();

            Backup::create([
                'file_name' => $filename ?? '-',
                'file_path' => '-',
                'file_size' => 0,
                'status'    => 'failed',
                'note'      => $note ?? $e->getMessage(),
            ]);

            return response()->json([
                'message' => 'Backup gagal',
                'error'   => $e->getMessage()
            ], 500);
        }
    }
    public function download($id)
{
    $backup = Backup::findOrFail($id);
    $path = storage_path('app/' . $backup->file_path);


    if (!File::exists($path)) {
        abort(404, 'File backup tidak ditemukan');
    }

    return response()->download($path, $backup->file_name);
}

public function destroy(Backup $backup)
{
    try {
        $path = storage_path('app/' . $backup->file_path);

        if (File::exists($path)) {
            File::delete($path);
        }

        $backup->delete();

        return response()->json([
            'message' => 'Backup berhasil dihapus'
        ]);

    } catch (\Throwable $e) {
        return response()->json([
            'message' => 'Gagal menghapus backup',
            'error'   => $e->getMessage()
        ], 500);
    }
}


}