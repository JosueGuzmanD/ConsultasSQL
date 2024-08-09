-- Crear un job usando T-SQL
USE msdb;
GO

EXEC dbo.sp_add_job
    @job_name = N'MyBackupJob';
GO

-- Agregar un paso al job
EXEC dbo.sp_add_jobstep
    @job_name = N'MyBackupJob',
    @step_name = N'BackupStep',
    @subsystem = N'TSQL',
    @command = N'BACKUP DATABASE MyDatabase TO DISK = ''C:\Backups\MyDatabase.bak''',
    @retry_attempts = 5,
    @retry_interval = 5;
GO

-- Agregar un horario al job
EXEC dbo.sp_add_jobschedule
    @job_name = N'MyBackupJob',
    @name = N'DailyBackupSchedule',
    @freq_type = 4,  -- Diario
    @freq_interval = 1,
    @active_start_time = 010000; -- 1:00 AM
GO

-- Habilitar el job
EXEC dbo.sp_add_jobserver
    @job_name = N'MyBackupJob';
GO
