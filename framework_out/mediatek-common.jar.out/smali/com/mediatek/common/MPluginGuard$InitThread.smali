.class Lcom/mediatek/common/MPluginGuard$InitThread;
.super Ljava/lang/Thread;
.source "MPluginGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/MPluginGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InitThread"
.end annotation


# static fields
.field private static final INIT_TIMEOUT:I = 0x2710

.field private static final RETRY_DELAY:J = 0x1f4L

.field private static final RETRY_NUM:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 374
    const-string v2, "Start InitThread"

    invoke-static {v2}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V

    .line 375
    new-instance v1, Lcom/mediatek/common/MPluginGuard$SignatureLoader;

    const/4 v2, 0x2

    const-wide/16 v4, 0x1f4

    invoke-direct {v1, v2, v4, v5, p0}, Lcom/mediatek/common/MPluginGuard$SignatureLoader;-><init>(IJLjava/lang/Thread;)V

    .line 376
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 378
    :try_start_0
    const-string v2, "Start counting timeout"

    invoke-static {v2}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V

    .line 379
    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Lcom/mediatek/common/MPluginGuard$InitThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_0
    const-string v2, "InitThread"

    # invokes: Lcom/mediatek/common/MPluginGuard;->notifyUnlock(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/mediatek/common/MPluginGuard;->access$000(Ljava/lang/String;)V

    .line 385
    # invokes: Lcom/mediatek/common/MPluginGuard;->isSignatureTableReady()Z
    invoke-static {}, Lcom/mediatek/common/MPluginGuard;->access$100()Z

    move-result v2

    if-nez v2, :cond_0

    .line 386
    # getter for: Lcom/mediatek/common/MPluginGuard;->sLock:Ljava/lang/Object;
    invoke-static {}, Lcom/mediatek/common/MPluginGuard;->access$200()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 387
    :try_start_1
    const-string v2, "Loading signature table timeout!"

    invoke-static {v2}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V

    .line 388
    sget-object v2, Lcom/mediatek/common/MPluginGuard$InitStatus;->FAILED:Lcom/mediatek/common/MPluginGuard$InitStatus;

    # setter for: Lcom/mediatek/common/MPluginGuard;->sInitStatus:Lcom/mediatek/common/MPluginGuard$InitStatus;
    invoke-static {v2}, Lcom/mediatek/common/MPluginGuard;->access$302(Lcom/mediatek/common/MPluginGuard$InitStatus;)Lcom/mediatek/common/MPluginGuard$InitStatus;

    .line 389
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 390
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    :cond_0
    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "MPluginGuard"

    const-string v3, "Timeout interrupted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 390
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
