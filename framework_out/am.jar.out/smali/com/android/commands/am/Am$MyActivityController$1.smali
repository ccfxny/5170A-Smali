.class Lcom/android/commands/am/Am$MyActivityController$1;
.super Ljava/lang/Thread;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/commands/am/Am$MyActivityController;->waitControllerLocked(II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/commands/am/Am$MyActivityController;

.field final synthetic val$converter:Ljava/io/InputStreamReader;


# direct methods
.method constructor <init>(Lcom/android/commands/am/Am$MyActivityController;Ljava/io/InputStreamReader;)V
    .locals 0

    .prologue
    .line 1329
    iput-object p1, p0, Lcom/android/commands/am/Am$MyActivityController$1;->this$1:Lcom/android/commands/am/Am$MyActivityController;

    iput-object p2, p0, Lcom/android/commands/am/Am$MyActivityController$1;->val$converter:Ljava/io/InputStreamReader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1332
    new-instance v2, Ljava/io/BufferedReader;

    iget-object v4, p0, Lcom/android/commands/am/Am$MyActivityController$1;->val$converter:Ljava/io/InputStreamReader;

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1334
    .local v2, "in":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 1336
    .local v0, "count":I
    :goto_0
    iget-object v5, p0, Lcom/android/commands/am/Am$MyActivityController$1;->this$1:Lcom/android/commands/am/Am$MyActivityController;

    monitor-enter v5

    .line 1337
    :try_start_0
    iget-object v4, p0, Lcom/android/commands/am/Am$MyActivityController$1;->this$1:Lcom/android/commands/am/Am$MyActivityController;

    iget-object v4, v4, Lcom/android/commands/am/Am$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    if-nez v4, :cond_1

    .line 1338
    monitor-exit v5

    .line 1353
    :cond_0
    :goto_1
    return-void

    .line 1340
    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 1341
    iget-object v4, p0, Lcom/android/commands/am/Am$MyActivityController$1;->this$1:Lcom/android/commands/am/Am$MyActivityController;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/commands/am/Am$MyActivityController;->mGotGdbPrint:Z

    .line 1342
    iget-object v4, p0, Lcom/android/commands/am/Am$MyActivityController$1;->this$1:Lcom/android/commands/am/Am$MyActivityController;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 1344
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1346
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 1347
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1350
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GDB: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1351
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1344
    .end local v3    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1352
    :catch_0
    move-exception v1

    .line 1353
    .local v1, "e":Ljava/io/IOException;
    goto :goto_1
.end method
