.class public final Lcom/android/commands/bu/Backup;
.super Ljava/lang/Object;
.source "Backup.java"


# static fields
.field static final TAG:Ljava/lang/String; = "bu"

.field static mArgs:[Ljava/lang/String;


# instance fields
.field mBackupManager:Landroid/app/backup/IBackupManager;

.field mNextArg:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doFullBackup(I)V
    .locals 15
    .param p1, "socketFd"    # I

    .prologue
    .line 65
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v13, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 67
    .local v2, "saveApks":Z
    const/4 v3, 0x0

    .line 68
    .local v3, "saveObbs":Z
    const/4 v4, 0x0

    .line 69
    .local v4, "saveShared":Z
    const/4 v6, 0x0

    .line 70
    .local v6, "doEverything":Z
    const/4 v5, 0x0

    .line 71
    .local v5, "doWidgets":Z
    const/4 v7, 0x1

    .line 72
    .local v7, "allIncludesSystem":Z
    const/4 v8, 0x1

    .line 75
    .local v8, "doCompress":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/bu/Backup;->nextArg()Ljava/lang/String;

    move-result-object v10

    .local v10, "arg":Ljava/lang/String;
    if-eqz v10, :cond_e

    .line 76
    const-string v0, "-"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 77
    const-string v0, "-apk"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v2, 0x1

    goto :goto_0

    .line 79
    :cond_0
    const-string v0, "-noapk"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    const/4 v2, 0x0

    goto :goto_0

    .line 81
    :cond_1
    const-string v0, "-obb"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    const/4 v3, 0x1

    goto :goto_0

    .line 83
    :cond_2
    const-string v0, "-noobb"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    const/4 v3, 0x0

    goto :goto_0

    .line 85
    :cond_3
    const-string v0, "-shared"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    const/4 v4, 0x1

    goto :goto_0

    .line 87
    :cond_4
    const-string v0, "-noshared"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 88
    const/4 v4, 0x0

    goto :goto_0

    .line 89
    :cond_5
    const-string v0, "-system"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 90
    const/4 v7, 0x1

    goto :goto_0

    .line 91
    :cond_6
    const-string v0, "-nosystem"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 92
    const/4 v7, 0x0

    goto :goto_0

    .line 93
    :cond_7
    const-string v0, "-widgets"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 94
    const/4 v5, 0x1

    goto :goto_0

    .line 95
    :cond_8
    const-string v0, "-nowidgets"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 96
    const/4 v5, 0x0

    goto :goto_0

    .line 97
    :cond_9
    const-string v0, "-all"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 98
    const/4 v6, 0x1

    goto :goto_0

    .line 99
    :cond_a
    const-string v0, "-compress"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 100
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 101
    :cond_b
    const-string v0, "-nocompress"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 102
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 104
    :cond_c
    const-string v0, "bu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown backup flag "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 109
    :cond_d
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 113
    :cond_e
    if-eqz v6, :cond_f

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 114
    const-string v0, "bu"

    const-string v9, "-all passed for backup along with specific package names"

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_f
    if-nez v6, :cond_11

    if-nez v4, :cond_11

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_11

    .line 118
    const-string v0, "bu"

    const-string v9, "no backup packages supplied and neither -shared nor -all given"

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_10
    :goto_1
    return-void

    .line 122
    :cond_11
    const/4 v1, 0x0

    .line 124
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 125
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v12, v0, [Ljava/lang/String;

    .line 126
    .local v12, "packArray":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/commands/bu/Backup;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-interface/range {v0 .. v9}, Landroid/app/backup/IBackupManager;->fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    if-eqz v1, :cond_10

    .line 133
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 134
    :catch_0
    move-exception v0

    goto :goto_1

    .line 128
    .end local v12    # "packArray":[Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 129
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "bu"

    const-string v9, "Unable to invoke backup manager for backup"

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    if-eqz v1, :cond_10

    .line 133
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 134
    :catch_2
    move-exception v0

    goto :goto_1

    .line 131
    .end local v11    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_12

    .line 133
    :try_start_4
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 134
    :cond_12
    :goto_2
    throw v0

    :catch_3
    move-exception v9

    goto :goto_2
.end method

.method private doFullRestore(I)V
    .locals 4
    .param p1, "socketFd"    # I

    .prologue
    .line 141
    const/4 v1, 0x0

    .line 143
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 144
    iget-object v2, p0, Lcom/android/commands/bu/Backup;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, v1}, Landroid/app/backup/IBackupManager;->fullRestore(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    if-eqz v1, :cond_0

    .line 150
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "bu"

    const-string v3, "Unable to invoke backup manager for restore"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    if-eqz v1, :cond_0

    .line 150
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 151
    :catch_1
    move-exception v2

    goto :goto_0

    .line 148
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 150
    :try_start_4
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 151
    :cond_1
    :goto_1
    throw v2

    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 37
    const-string v1, "bu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Beginning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sput-object p0, Lcom/android/commands/bu/Backup;->mArgs:[Ljava/lang/String;

    .line 40
    :try_start_0
    new-instance v1, Lcom/android/commands/bu/Backup;

    invoke-direct {v1}, Lcom/android/commands/bu/Backup;-><init>()V

    invoke-virtual {v1}, Lcom/android/commands/bu/Backup;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    const-string v1, "bu"

    const-string v2, "Finished."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "bu"

    const-string v2, "Error running backup/restore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private nextArg()Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    iget v1, p0, Lcom/android/commands/bu/Backup;->mNextArg:I

    sget-object v2, Lcom/android/commands/bu/Backup;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 158
    const/4 v0, 0x0

    .line 162
    :goto_0
    return-object v0

    .line 160
    :cond_0
    sget-object v1, Lcom/android/commands/bu/Backup;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/bu/Backup;->mNextArg:I

    aget-object v0, v1, v2

    .line 161
    .local v0, "arg":Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/bu/Backup;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/bu/Backup;->mNextArg:I

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 48
    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/bu/Backup;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 49
    iget-object v1, p0, Lcom/android/commands/bu/Backup;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-nez v1, :cond_0

    .line 50
    const-string v1, "bu"

    const-string v2, "Can\'t obtain Backup Manager binder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/bu/Backup;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "arg":Ljava/lang/String;
    const-string v1, "backup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    sget v1, Landroid/system/OsConstants;->STDOUT_FILENO:I

    invoke-direct {p0, v1}, Lcom/android/commands/bu/Backup;->doFullBackup(I)V

    goto :goto_0

    .line 57
    :cond_1
    const-string v1, "restore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    sget v1, Landroid/system/OsConstants;->STDIN_FILENO:I

    invoke-direct {p0, v1}, Lcom/android/commands/bu/Backup;->doFullRestore(I)V

    goto :goto_0

    .line 60
    :cond_2
    const-string v1, "bu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid operation \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
