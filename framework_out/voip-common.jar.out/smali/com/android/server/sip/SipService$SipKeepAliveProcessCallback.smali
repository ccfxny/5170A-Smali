.class Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;
.super Ljava/lang/Object;
.source "SipService.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipKeepAliveProcessCallback"
.end annotation


# static fields
.field private static final MIN_INTERVAL:I = 0x5

.field private static final NAT_MEASUREMENT_RETRY_INTERVAL:I = 0x78

.field private static final PASS_THRESHOLD:I = 0xa

.field private static final SKAI_DBG:Z = true

.field private static final SKAI_TAG:Ljava/lang/String; = "SipKeepAliveProcessCallback"


# instance fields
.field private mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

.field private mInterval:I

.field private mLocalProfile:Landroid/net/sip/SipProfile;

.field private mMaxInterval:I

.field private mMinInterval:I

.field private mPassCount:I

.field private mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field final synthetic this$0:Lcom/android/server/sip/SipService;


# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;II)V
    .locals 0
    .param p2, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p3, "minInterval"    # I
    .param p4, "maxInterval"    # I

    .prologue
    .line 636
    iput-object p1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    iput p4, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMaxInterval:I

    .line 638
    iput p3, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMinInterval:I

    .line 639
    iput-object p2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mLocalProfile:Landroid/net/sip/SipProfile;

    .line 640
    return-void
.end method

.method private checkTermination()Z
    .locals 2

    .prologue
    .line 707
    iget v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMaxInterval:I

    iget v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMinInterval:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 778
    const-string v0, "SipKeepAliveProcessCallback"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 782
    const-string v0, "SipKeepAliveProcessCallback"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 786
    const-string v0, "SipKeepAliveProcessCallback"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 787
    return-void
.end method

.method private restart()V
    .locals 4

    .prologue
    .line 691
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v2

    .line 693
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v1, :cond_0

    monitor-exit v2

    .line 704
    :goto_0
    return-void

    .line 695
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restart: interval="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    :try_start_1
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    .line 698
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mPassCount:I

    .line 699
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget v3, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    invoke-virtual {v1, v3, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    :try_end_1
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 703
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, "e":Ljavax/sip/SipException;
    :try_start_3
    const-string v1, "restart"

    invoke-direct {p0, v1, v0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private restartLater()V
    .locals 4

    .prologue
    .line 770
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v2

    .line 771
    const/16 v0, 0x78

    .line 772
    .local v0, "interval":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    # getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$200(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 773
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    # getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$200(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v1

    const v3, 0x1d4c0

    invoke-virtual {v1, v3, p0}, Lcom/android/server/sip/SipWakeupTimer;->set(ILjava/lang/Runnable;)V

    .line 774
    monitor-exit v2

    .line 775
    return-void

    .line 774
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->loge(Ljava/lang/String;)V

    .line 759
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->restartLater()V

    .line 760
    return-void
.end method

.method public onResponse(Z)V
    .locals 3
    .param p1, "portChanged"    # Z

    .prologue
    .line 713
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v1

    .line 714
    if-nez p1, :cond_2

    .line 715
    :try_start_0
    iget v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mPassCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mPassCount:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    monitor-exit v1

    .line 753
    :goto_0
    return-void

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    # getter for: Lcom/android/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$900(Lcom/android/server/sip/SipService;)I

    move-result v0

    if-lez v0, :cond_1

    .line 719
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    iget-object v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    # getter for: Lcom/android/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v2}, Lcom/android/server/sip/SipService;->access$900(Lcom/android/server/sip/SipService;)I

    move-result v2

    # setter for: Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I
    invoke-static {v0, v2}, Lcom/android/server/sip/SipService;->access$1002(Lcom/android/server/sip/SipService;I)I

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    iget v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    iput v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMinInterval:I

    # setter for: Lcom/android/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v0, v2}, Lcom/android/server/sip/SipService;->access$902(Lcom/android/server/sip/SipService;I)I

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse: portChanged="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mKeepAliveInterval="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    # getter for: Lcom/android/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v2}, Lcom/android/server/sip/SipService;->access$900(Lcom/android/server/sip/SipService;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->log(Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    # invokes: Lcom/android/server/sip/SipService;->onKeepAliveIntervalChanged()V
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$1100(Lcom/android/server/sip/SipService;)V

    .line 731
    :goto_1
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->checkTermination()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 733
    invoke-virtual {p0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->stop()V

    .line 738
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    iget v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMinInterval:I

    # setter for: Lcom/android/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v0, v2}, Lcom/android/server/sip/SipService;->access$902(Lcom/android/server/sip/SipService;I)I

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse: checkTermination mKeepAliveInterval="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    # getter for: Lcom/android/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v2}, Lcom/android/server/sip/SipService;->access$900(Lcom/android/server/sip/SipService;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->log(Ljava/lang/String;)V

    .line 752
    :goto_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 729
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    iput v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMaxInterval:I

    goto :goto_1

    .line 745
    :cond_3
    iget v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMaxInterval:I

    iget v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMinInterval:I

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse: mKeepAliveInterval="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    # getter for: Lcom/android/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v2}, Lcom/android/server/sip/SipService;->access$900(Lcom/android/server/sip/SipService;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", new mInterval="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->log(Ljava/lang/String;)V

    .line 750
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->restart()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public run()V
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    # getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$200(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 766
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->restart()V

    .line 767
    return-void
.end method

.method public start()V
    .locals 7

    .prologue
    .line 643
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v2

    .line 644
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v1, :cond_0

    .line 645
    monitor-exit v2

    .line 673
    :goto_0
    return-void

    .line 648
    :cond_0
    iget v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMaxInterval:I

    iget v3, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMinInterval:I

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    .line 649
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mPassCount:I

    .line 652
    iget v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    const/16 v3, 0xa

    if-lt v1, v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->checkTermination()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 653
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start: measurement aborted; interval=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMinInterval:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMaxInterval:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->log(Ljava/lang/String;)V

    .line 655
    monitor-exit v2

    goto :goto_0

    .line 672
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 659
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start: interval="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->log(Ljava/lang/String;)V

    .line 661
    new-instance v1, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    iget-object v3, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    iget-object v4, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mLocalProfile:Landroid/net/sip/SipProfile;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/server/sip/SipService$SipSessionGroupExt;-><init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)V

    iput-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 664
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

    new-instance v3, Lcom/android/server/sip/SipWakeupTimer;

    iget-object v4, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    # getter for: Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    # getter for: Lcom/android/server/sip/SipService;->mExecutor:Lcom/android/server/sip/SipService$MyExecutor;
    invoke-static {v5}, Lcom/android/server/sip/SipService;->access$800(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$MyExecutor;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/server/sip/SipWakeupTimer;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v1, v3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->setWakeupTimer(Lcom/android/server/sip/SipWakeupTimer;)V

    .line 666
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iput-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 668
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget v3, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    invoke-virtual {v1, v3, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 672
    :goto_1
    :try_start_2
    monitor-exit v2

    goto/16 :goto_0

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, -0x4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->onError(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 676
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v1

    .line 677
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    .line 679
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

    if-eqz v0, :cond_1

    .line 682
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->close()V

    .line 683
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    # getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$200(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 686
    const-string v0, "stop"

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->log(Ljava/lang/String;)V

    .line 687
    monitor-exit v1

    .line 688
    return-void

    .line 687
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
