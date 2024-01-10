<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;



class DatabaseBackup extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'db:backup';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Automating Daily Backups';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        if (!Storage::exists('backup')) {
            Storage::makeDirectory('backup');
        }

        $filename = "backup-" . Carbon::now()->format('Y-m-d') . ".gz";

        $mysqldumpPath = "/opt/lampp/bin/mysqldump";

        $command = "$mysqldumpPath --user=" . env('DB_USERNAME') . " --password=" . env('DB_PASSWORD')
            . " --host=" . env('DB_HOST') . " " . env('DB_DATABASE')
            . "  | gzip > " . storage_path() . "/app/backup/" . $filename;

        $returnVar = NULL;
        $output = NULL;

        // Log statements
        Storage::append('backup.log', "Backup started at " . now()->toDateTimeString());
        Storage::append('backup.log', "Command: $command");

        exec($command, $output, $returnVar);

        // Log additional information
        Storage::append('backup.log', "Output: " . implode(PHP_EOL, $output));
        Storage::append('backup.log', "Return Var: $returnVar");

        if ($returnVar === 0) {
            $this->info('Backup completed successfully.');
            Storage::append('backup.log', 'Backup completed successfully.');
        } else {
            $this->error('Backup failed. Check the backup.log file for details.');
            Storage::append('backup.log', 'Backup failed. Check the backup.log file for details.');
        }
    }
}
