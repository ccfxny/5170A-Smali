.class Landroid/net/sip/SipAudioCall$1;
.super Landroid/net/sip/SipSession$Listener;
.source "SipAudioCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/sip/SipAudioCall;->createListener()Landroid/net/sip/SipSession$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/sip/SipAudioCall;


# direct methods
.method constructor <init>(Landroid/net/sip/SipAudioCall;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-direct {p0}, Landroid/net/sip/SipSession$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBusy(Landroid/net/sip/SipSession;)V
    .locals 5
    .param p1, "session"    # Landroid/net/sip/SipSession;

    .prologue
    .line 480
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCallBusy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/sip/SipAudioCall;->access$000(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)V

    .line 481
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # getter for: Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->access$100(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;

    move-result-object v0

    .line 482
    .local v0, "listener":Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    .line 484
    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0, v2}, Landroid/net/sip/SipAudioCall$Listener;->onCallBusy(Landroid/net/sip/SipAudioCall;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    const/4 v3, 0x0

    # invokes: Landroid/net/sip/SipAudioCall;->close(Z)V
    invoke-static {v2, v3}, Landroid/net/sip/SipAudioCall;->access$1000(Landroid/net/sip/SipAudioCall;Z)V

    .line 490
    return-void

    .line 485
    :catch_0
    move-exception v1

    .line 486
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    const-string v3, "onCallBusy(): "

    # invokes: Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Landroid/net/sip/SipAudioCall;->access$200(Landroid/net/sip/SipAudioCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onCallChangeFailed(Landroid/net/sip/SipSession;ILjava/lang/String;)V
    .locals 5
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 495
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCallChangedFailed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/sip/SipAudioCall;->access$000(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)V

    .line 496
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # setter for: Landroid/net/sip/SipAudioCall;->mErrorCode:I
    invoke-static {v2, p2}, Landroid/net/sip/SipAudioCall;->access$1102(Landroid/net/sip/SipAudioCall;I)I

    .line 497
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # setter for: Landroid/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;
    invoke-static {v2, p3}, Landroid/net/sip/SipAudioCall;->access$1202(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Ljava/lang/String;

    .line 498
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # getter for: Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->access$100(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;

    move-result-object v0

    .line 499
    .local v0, "listener":Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    .line 501
    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    iget-object v3, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # getter for: Landroid/net/sip/SipAudioCall;->mErrorCode:I
    invoke-static {v3}, Landroid/net/sip/SipAudioCall;->access$1100(Landroid/net/sip/SipAudioCall;)I

    move-result v3

    invoke-virtual {v0, v2, v3, p3}, Landroid/net/sip/SipAudioCall$Listener;->onError(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 503
    :catch_0
    move-exception v1

    .line 504
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    const-string v3, "onCallBusy():"

    # invokes: Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Landroid/net/sip/SipAudioCall;->access$200(Landroid/net/sip/SipAudioCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onCallEnded(Landroid/net/sip/SipSession;)V
    .locals 5
    .param p1, "session"    # Landroid/net/sip/SipSession;

    .prologue
    .line 456
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCallEnded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSipSession:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # getter for: Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;
    invoke-static {v4}, Landroid/net/sip/SipAudioCall;->access$300(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/sip/SipAudioCall;->access$000(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)V

    .line 458
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # getter for: Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->access$700(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 459
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    const/4 v3, 0x0

    # setter for: Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;
    invoke-static {v2, v3}, Landroid/net/sip/SipAudioCall;->access$702(Landroid/net/sip/SipAudioCall;Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession;

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # getter for: Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->access$700(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # getter for: Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->access$300(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 467
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # getter for: Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->access$100(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;

    move-result-object v0

    .line 468
    .local v0, "listener":Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_2

    .line 470
    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0, v2}, Landroid/net/sip/SipAudioCall$Listener;->onCallEnded(Landroid/net/sip/SipAudioCall;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :cond_2
    :goto_1
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v2}, Landroid/net/sip/SipAudioCall;->close()V

    goto :goto_0

    .line 471
    :catch_0
    move-exception v1

    .line 472
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    const-string v3, "onCallEnded(): "

    # invokes: Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Landroid/net/sip/SipAudioCall;->access$200(Landroid/net/sip/SipAudioCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onCallEstablished(Landroid/net/sip/SipSession;Ljava/lang/String;)V
    .locals 5
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;

    .prologue
    .line 430
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # setter for: Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;
    invoke-static {v2, p2}, Landroid/net/sip/SipAudioCall;->access$602(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Ljava/lang/String;

    .line 431
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCallEstablished(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # getter for: Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/sip/SipAudioCall;->access$600(Landroid/net/sip/SipAudioCall;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/sip/SipAudioCall;->access$000(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)V

    .line 434
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # getter for: Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->access$700(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # getter for: Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->access$700(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 436
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # invokes: Landroid/net/sip/SipAudioCall;->transferToNewSession()V
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->access$800(Landroid/net/sip/SipAudioCall;)V

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # getter for: Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->access$100(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;

    move-result-object v0

    .line 441
    .local v0, "listener":Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    .line 443
    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # getter for: Landroid/net/sip/SipAudioCall;->mHold:Z
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->access$900(Landroid/net/sip/SipAudioCall;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 444
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0, v2}, Landroid/net/sip/SipAudioCall$Listener;->onCallHeld(Landroid/net/sip/SipAudioCall;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 448
    :catch_0
    move-exception v1

    .line 449
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    const-string v3, "onCallEstablished(): "

    # invokes: Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Landroid/net/sip/SipAudioCall;->access$200(Landroid/net/sip/SipAudioCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 446
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0, v2}, Landroid/net/sip/SipAudioCall$Listener;->onCallEstablished(Landroid/net/sip/SipAudioCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onCallTransferring(Landroid/net/sip/SipSession;Ljava/lang/String;)V
    .locals 5
    .param p1, "newSession"    # Landroid/net/sip/SipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;

    .prologue
    .line 539
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCallTransferring: mSipSession="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # getter for: Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;
    invoke-static {v4}, Landroid/net/sip/SipAudioCall;->access$300(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newSession="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/sip/SipAudioCall;->access$000(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)V

    .line 541
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # setter for: Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;
    invoke-static {v2, p1}, Landroid/net/sip/SipAudioCall;->access$702(Landroid/net/sip/SipAudioCall;Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession;

    .line 543
    if-nez p2, :cond_0

    .line 544
    :try_start_0
    invoke-virtual {p1}, Landroid/net/sip/SipSession;->getPeerProfile()Landroid/net/sip/SipProfile;

    move-result-object v2

    iget-object v3, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # invokes: Landroid/net/sip/SipAudioCall;->createOffer()Landroid/net/sip/SimpleSessionDescription;
    invoke-static {v3}, Landroid/net/sip/SipAudioCall;->access$1400(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SimpleSessionDescription;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xf

    invoke-virtual {p1, v2, v3, v4}, Landroid/net/sip/SipSession;->makeCall(Landroid/net/sip/SipProfile;Ljava/lang/String;I)V

    .line 554
    :goto_0
    return-void

    .line 547
    :cond_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # invokes: Landroid/net/sip/SipAudioCall;->createAnswer(Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;
    invoke-static {v2, p2}, Landroid/net/sip/SipAudioCall;->access$500(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "answer":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-virtual {p1, v0, v2}, Landroid/net/sip/SipSession;->answerCall(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 550
    .end local v0    # "answer":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 551
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    const-string v3, "onCallTransferring()"

    # invokes: Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Landroid/net/sip/SipAudioCall;->access$200(Landroid/net/sip/SipAudioCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 552
    invoke-virtual {p1}, Landroid/net/sip/SipSession;->endCall()V

    goto :goto_0
.end method

.method public onCalling(Landroid/net/sip/SipSession;)V
    .locals 5
    .param p1, "session"    # Landroid/net/sip/SipSession;

    .prologue
    .line 379
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCalling: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/sip/SipAudioCall;->access$000(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)V

    .line 380
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # getter for: Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->access$100(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;

    move-result-object v0

    .line 381
    .local v0, "listener":Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    .line 383
    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0, v2}, Landroid/net/sip/SipAudioCall$Listener;->onCalling(Landroid/net/sip/SipAudioCall;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v1

    .line 385
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    const-string v3, "onCalling():"

    # invokes: Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Landroid/net/sip/SipAudioCall;->access$200(Landroid/net/sip/SipAudioCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Landroid/net/sip/SipSession;ILjava/lang/String;)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 512
    iget-object v0, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # invokes: Landroid/net/sip/SipAudioCall;->onError(ILjava/lang/String;)V
    invoke-static {v0, p2, p3}, Landroid/net/sip/SipAudioCall;->access$1300(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V

    .line 513
    return-void
.end method

.method public onRegistering(Landroid/net/sip/SipSession;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/SipSession;

    .prologue
    .line 518
    return-void
.end method

.method public onRegistrationDone(Landroid/net/sip/SipSession;I)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "duration"    # I

    .prologue
    .line 534
    return-void
.end method

.method public onRegistrationFailed(Landroid/net/sip/SipSession;ILjava/lang/String;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 529
    return-void
.end method

.method public onRegistrationTimeout(Landroid/net/sip/SipSession;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/SipSession;

    .prologue
    .line 523
    return-void
.end method

.method public onRinging(Landroid/net/sip/SipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 5
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "peerProfile"    # Landroid/net/sip/SipProfile;
    .param p3, "sessionDescription"    # Ljava/lang/String;

    .prologue
    .line 407
    iget-object v3, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    monitor-enter v3

    .line 408
    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # getter for: Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->access$300(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # getter for: Landroid/net/sip/SipAudioCall;->mInCall:Z
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->access$400(Landroid/net/sip/SipAudioCall;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/net/sip/SipSession;->getCallId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # getter for: Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;
    invoke-static {v4}, Landroid/net/sip/SipAudioCall;->access$300(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/sip/SipSession;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 412
    :cond_0
    invoke-virtual {p1}, Landroid/net/sip/SipSession;->endCall()V

    .line 413
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    :goto_0
    return-void

    .line 418
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # invokes: Landroid/net/sip/SipAudioCall;->createAnswer(Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;
    invoke-static {v2, p3}, Landroid/net/sip/SipAudioCall;->access$500(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "answer":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # getter for: Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->access$300(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    move-result-object v2

    const/4 v4, 0x5

    invoke-virtual {v2, v0, v4}, Landroid/net/sip/SipSession;->answerCall(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    .end local v0    # "answer":Ljava/lang/String;
    :goto_1
    :try_start_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 420
    :catch_0
    move-exception v1

    .line 421
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_3
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    const-string v4, "onRinging():"

    # invokes: Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v4, v1}, Landroid/net/sip/SipAudioCall;->access$200(Landroid/net/sip/SipAudioCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 422
    invoke-virtual {p1}, Landroid/net/sip/SipSession;->endCall()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public onRingingBack(Landroid/net/sip/SipSession;)V
    .locals 5
    .param p1, "session"    # Landroid/net/sip/SipSession;

    .prologue
    .line 392
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRingingBackk: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/sip/SipAudioCall;->access$000(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)V

    .line 393
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    # getter for: Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;
    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->access$100(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;

    move-result-object v0

    .line 394
    .local v0, "listener":Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    .line 396
    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0, v2}, Landroid/net/sip/SipAudioCall$Listener;->onRingingBack(Landroid/net/sip/SipAudioCall;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 397
    :catch_0
    move-exception v1

    .line 398
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    const-string v3, "onRingingBack():"

    # invokes: Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Landroid/net/sip/SipAudioCall;->access$200(Landroid/net/sip/SipAudioCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
