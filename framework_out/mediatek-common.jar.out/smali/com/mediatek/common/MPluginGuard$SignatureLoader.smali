.class Lcom/mediatek/common/MPluginGuard$SignatureLoader;
.super Ljava/lang/Thread;
.source "MPluginGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/MPluginGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SignatureLoader"
.end annotation


# instance fields
.field private mDelayTime:J

.field private mRetryNum:I

.field private mTimeoutThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(IJLjava/lang/Thread;)V
    .locals 0
    .param p1, "retryNum"    # I
    .param p2, "delayTime"    # J
    .param p4, "timeOutThread"    # Ljava/lang/Thread;

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 404
    iput p1, p0, Lcom/mediatek/common/MPluginGuard$SignatureLoader;->mRetryNum:I

    .line 405
    iput-wide p2, p0, Lcom/mediatek/common/MPluginGuard$SignatureLoader;->mDelayTime:J

    .line 406
    iput-object p4, p0, Lcom/mediatek/common/MPluginGuard$SignatureLoader;->mTimeoutThread:Ljava/lang/Thread;

    .line 407
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 411
    const-string v2, "Start SignatureLoader"

    invoke-static {v2}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V

    .line 412
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/mediatek/common/MPluginGuard$SignatureLoader;->mRetryNum:I

    if-gt v1, v2, :cond_0

    .line 413
    # invokes: Lcom/mediatek/common/MPluginGuard;->readAuthorizedSignaturesLocked()Z
    invoke-static {}, Lcom/mediatek/common/MPluginGuard;->access$400()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 414
    const-string v2, "Read authorized signature files done!"

    invoke-static {v2}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V

    .line 415
    # getter for: Lcom/mediatek/common/MPluginGuard;->sLock:Ljava/lang/Object;
    invoke-static {}, Lcom/mediatek/common/MPluginGuard;->access$200()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 416
    :try_start_0
    sget-object v2, Lcom/mediatek/common/MPluginGuard$InitStatus;->SUCCESS:Lcom/mediatek/common/MPluginGuard$InitStatus;

    # setter for: Lcom/mediatek/common/MPluginGuard;->sInitStatus:Lcom/mediatek/common/MPluginGuard$InitStatus;
    invoke-static {v2}, Lcom/mediatek/common/MPluginGuard;->access$302(Lcom/mediatek/common/MPluginGuard$InitStatus;)Lcom/mediatek/common/MPluginGuard$InitStatus;

    .line 417
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    :cond_0
    # invokes: Lcom/mediatek/common/MPluginGuard;->isSignatureTableReady()Z
    invoke-static {}, Lcom/mediatek/common/MPluginGuard;->access$100()Z

    move-result v2

    if-nez v2, :cond_1

    .line 430
    # getter for: Lcom/mediatek/common/MPluginGuard;->sLock:Ljava/lang/Object;
    invoke-static {}, Lcom/mediatek/common/MPluginGuard;->access$200()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 431
    :try_start_1
    sget-object v2, Lcom/mediatek/common/MPluginGuard$InitStatus;->FAILED:Lcom/mediatek/common/MPluginGuard$InitStatus;

    # setter for: Lcom/mediatek/common/MPluginGuard;->sInitStatus:Lcom/mediatek/common/MPluginGuard$InitStatus;
    invoke-static {v2}, Lcom/mediatek/common/MPluginGuard;->access$302(Lcom/mediatek/common/MPluginGuard$InitStatus;)Lcom/mediatek/common/MPluginGuard$InitStatus;

    .line 432
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 434
    :cond_1
    iget-object v2, p0, Lcom/mediatek/common/MPluginGuard$SignatureLoader;->mTimeoutThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 435
    const-string v2, "SignatureLoader"

    # invokes: Lcom/mediatek/common/MPluginGuard;->notifyUnlock(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/mediatek/common/MPluginGuard;->access$000(Ljava/lang/String;)V

    .line 436
    return-void

    .line 417
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 419
    :cond_2
    iget v2, p0, Lcom/mediatek/common/MPluginGuard$SignatureLoader;->mRetryNum:I

    if-lez v2, :cond_3

    .line 421
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retry ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") loading signature after: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/mediatek/common/MPluginGuard$SignatureLoader;->mDelayTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/common/MPluginGuard$Logger;->w(Ljava/lang/String;)V

    .line 423
    iget-wide v2, p0, Lcom/mediatek/common/MPluginGuard$SignatureLoader;->mDelayTime:J

    invoke-static {v2, v3}, Lcom/mediatek/common/MPluginGuard$SignatureLoader;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 412
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "MPluginGuard"

    const-string v3, "Delay interrupted"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 432
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method
