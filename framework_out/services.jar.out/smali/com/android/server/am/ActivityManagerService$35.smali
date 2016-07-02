.class Lcom/android/server/am/ActivityManagerService$35;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->reportApplicationError(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/os/DropBoxManager;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$dump:Ljava/lang/StringBuilder;

.field final synthetic val$errorType:Ljava/lang/String;

.field final synthetic val$logFile:Ljava/io/File;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$processName:Ljava/lang/String;

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$sb_pid:Ljava/lang/StringBuilder;

.field final synthetic val$subject:Ljava/lang/String;

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 22903
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$35;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$35;->val$logFile:Ljava/io/File;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$35;->val$dropboxTag:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$35;->val$errorType:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$35;->val$report:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$35;->val$dump:Ljava/lang/StringBuilder;

    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$35;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-object p9, p0, Lcom/android/server/am/ActivityManagerService$35;->val$dbox:Landroid/os/DropBoxManager;

    iput-object p10, p0, Lcom/android/server/am/ActivityManagerService$35;->val$uuid:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/server/am/ActivityManagerService$35;->val$sb_pid:Ljava/lang/StringBuilder;

    iput-object p12, p0, Lcom/android/server/am/ActivityManagerService$35;->val$packageName:Ljava/lang/String;

    iput-object p13, p0, Lcom/android/server/am/ActivityManagerService$35;->val$processName:Ljava/lang/String;

    iput-object p14, p0, Lcom/android/server/am/ActivityManagerService$35;->val$subject:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 22906
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$35;->val$logFile:Ljava/io/File;

    .line 22909
    .local v13, "log":Ljava/io/File;
    const-string v2, "system_server_crash"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$35;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 22910
    const/16 v14, 0x7d0

    .line 22936
    .local v14, "logLines":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$35;->val$report:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 22937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$35;->val$dump:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$35;->val$report:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22939
    :cond_1
    if-eqz v13, :cond_2

    .line 22941
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$35;->val$dump:Ljava/lang/StringBuilder;

    const/high16 v3, 0x40000

    const-string v4, "\n\n[[TRUNCATED]]"

    invoke-static {v13, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 22947
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$35;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$35;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 22948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$35;->val$dump:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$35;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v3, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22950
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$35;->val$dump:Ljava/lang/StringBuilder;

    const-string v3, "\n\n----------Logcat----------\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22951
    const/4 v11, 0x0

    .line 22953
    .local v11, "input":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v2, Ljava/lang/ProcessBuilder;

    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "/system/bin/logcat"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "-v"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "time"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "-b"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "events"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "-b"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "system"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "-b"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "main"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "-t"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "-d"

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v15

    .line 22960
    .local v15, "logcat":Ljava/lang/Process;
    :try_start_2
    invoke-virtual {v15}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22964
    :goto_2
    :try_start_3
    invoke-virtual {v15}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22967
    :goto_3
    :try_start_4
    new-instance v12, Ljava/io/InputStreamReader;

    invoke-virtual {v15}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 22969
    .end local v11    # "input":Ljava/io/InputStreamReader;
    .local v12, "input":Ljava/io/InputStreamReader;
    const/16 v2, 0x2000

    :try_start_5
    new-array v9, v2, [C

    .line 22970
    .local v9, "buf":[C
    :goto_4
    invoke-virtual {v12, v9}, Ljava/io/InputStreamReader;->read([C)I

    move-result v16

    .local v16, "num":I
    if-lez v16, :cond_e

    .line 22971
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$35;->val$dump:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v9, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    .line 22972
    .end local v9    # "buf":[C
    .end local v16    # "num":I
    :catch_0
    move-exception v10

    move-object v11, v12

    .line 22973
    .end local v12    # "input":Ljava/io/InputStreamReader;
    .end local v15    # "logcat":Ljava/lang/Process;
    .local v10, "e":Ljava/io/IOException;
    .restart local v11    # "input":Ljava/io/InputStreamReader;
    :goto_5
    :try_start_6
    const-string v2, "ActivityManager"

    const-string v3, "Error running logcat"

    invoke-static {v2, v3, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 22975
    if-eqz v11, :cond_4

    .line 22977
    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 22982
    .end local v10    # "e":Ljava/io/IOException;
    :cond_4
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$35;->val$dbox:Landroid/os/DropBoxManager;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$35;->val$dbox:Landroid/os/DropBoxManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$35;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 22983
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$35;->val$dbox:Landroid/os/DropBoxManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$35;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$35;->val$uuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$35;->val$dump:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 22985
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$35;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->exceptionLog:Lcom/mediatek/aee/ExceptionLog;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$35;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mNotTargetException:Z
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->access$2000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 22986
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$35;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->exceptionLog:Lcom/mediatek/aee/ExceptionLog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$35;->val$dropboxTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$35;->val$dump:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$35;->val$sb_pid:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/mediatek/aee/ExceptionLog;->handle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22989
    :cond_6
    sget-object v17, Lcom/android/server/am/ActivityManagerService;->mErrorListenerLock:Ljava/lang/Object;

    monitor-enter v17

    .line 22991
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$35;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mIApplicationErrorListener:Landroid/app/IApplicationErrorListener;
    :try_end_8
    .catch Landroid/os/DeadObjectException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-nez v2, :cond_10

    .line 22992
    :try_start_9
    monitor-exit v17
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 23004
    :goto_7
    return-void

    .line 22911
    .end local v11    # "input":Ljava/io/InputStreamReader;
    .end local v14    # "logLines":I
    :cond_7
    const-string v2, "system_server_watchdog"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$35;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 22912
    const/16 v14, 0x1388

    .line 22913
    .restart local v14    # "logLines":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 22914
    .local v18, "time":J
    if-nez v13, :cond_0

    .line 22915
    new-instance v13, Ljava/io/File;

    .end local v13    # "log":Ljava/io/File;
    const-string v2, "/data/anr/traces.txt"

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22917
    .restart local v13    # "log":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long v2, v18, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 22918
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 22921
    .end local v14    # "logLines":I
    .end local v18    # "time":J
    :cond_9
    const-string v2, "anr"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$35;->val$errorType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "watchdog"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$35;->val$errorType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 22923
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 22924
    .restart local v18    # "time":J
    if-nez v13, :cond_c

    .line 22925
    new-instance v13, Ljava/io/File;

    .end local v13    # "log":Ljava/io/File;
    const-string v2, "/data/anr/traces.txt"

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22927
    .restart local v13    # "log":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long v2, v18, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-lez v2, :cond_c

    .line 22928
    :cond_b
    const/4 v13, 0x0

    .line 22931
    :cond_c
    const/16 v14, 0x7d0

    .line 22932
    .restart local v14    # "logLines":I
    goto/16 :goto_0

    .line 22933
    .end local v14    # "logLines":I
    .end local v18    # "time":J
    :cond_d
    const/16 v14, 0x3e8

    .restart local v14    # "logLines":I
    goto/16 :goto_0

    .line 22943
    :catch_1
    move-exception v10

    .line 22944
    .restart local v10    # "e":Ljava/io/IOException;
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 22975
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v9    # "buf":[C
    .restart local v12    # "input":Ljava/io/InputStreamReader;
    .restart local v15    # "logcat":Ljava/lang/Process;
    .restart local v16    # "num":I
    :cond_e
    if-eqz v12, :cond_11

    .line 22977
    :try_start_a
    invoke-virtual {v12}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    move-object v11, v12

    .line 22979
    .end local v12    # "input":Ljava/io/InputStreamReader;
    .restart local v11    # "input":Ljava/io/InputStreamReader;
    goto/16 :goto_6

    .line 22978
    .end local v11    # "input":Ljava/io/InputStreamReader;
    .restart local v12    # "input":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v2

    move-object v11, v12

    .line 22979
    .end local v12    # "input":Ljava/io/InputStreamReader;
    .restart local v11    # "input":Ljava/io/InputStreamReader;
    goto/16 :goto_6

    .line 22975
    .end local v9    # "buf":[C
    .end local v15    # "logcat":Ljava/lang/Process;
    .end local v16    # "num":I
    :catchall_0
    move-exception v2

    :goto_8
    if-eqz v11, :cond_f

    .line 22977
    :try_start_b
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 22979
    :cond_f
    :goto_9
    throw v2

    .line 22994
    :cond_10
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$35;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mIApplicationErrorListener:Landroid/app/IApplicationErrorListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$35;->val$errorType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$35;->val$packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$35;->val$processName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$35;->val$subject:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$35;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$35;->val$uuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$35;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-interface/range {v2 .. v8}, Landroid/app/IApplicationErrorListener;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_c
    .catch Landroid/os/DeadObjectException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 23003
    :goto_a
    :try_start_d
    monitor-exit v17

    goto/16 :goto_7

    :catchall_1
    move-exception v2

    monitor-exit v17
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v2

    .line 22997
    :catch_3
    move-exception v10

    .line 22998
    .local v10, "e":Landroid/os/DeadObjectException;
    :try_start_e
    invoke-virtual {v10}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 22999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$35;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mIApplicationErrorListener:Landroid/app/IApplicationErrorListener;

    goto :goto_a

    .line 23000
    .end local v10    # "e":Landroid/os/DeadObjectException;
    :catch_4
    move-exception v10

    .line 23001
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_a

    .line 22978
    .local v10, "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    goto/16 :goto_6

    .end local v10    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    goto :goto_9

    .line 22975
    .end local v11    # "input":Ljava/io/InputStreamReader;
    .restart local v12    # "input":Ljava/io/InputStreamReader;
    .restart local v15    # "logcat":Ljava/lang/Process;
    :catchall_2
    move-exception v2

    move-object v11, v12

    .end local v12    # "input":Ljava/io/InputStreamReader;
    .restart local v11    # "input":Ljava/io/InputStreamReader;
    goto :goto_8

    .line 22972
    .end local v15    # "logcat":Ljava/lang/Process;
    :catch_7
    move-exception v10

    goto/16 :goto_5

    .line 22965
    .restart local v15    # "logcat":Ljava/lang/Process;
    :catch_8
    move-exception v2

    goto/16 :goto_3

    .line 22961
    :catch_9
    move-exception v2

    goto/16 :goto_2

    .end local v11    # "input":Ljava/io/InputStreamReader;
    .restart local v9    # "buf":[C
    .restart local v12    # "input":Ljava/io/InputStreamReader;
    .restart local v16    # "num":I
    :cond_11
    move-object v11, v12

    .end local v12    # "input":Ljava/io/InputStreamReader;
    .restart local v11    # "input":Ljava/io/InputStreamReader;
    goto/16 :goto_6
.end method
