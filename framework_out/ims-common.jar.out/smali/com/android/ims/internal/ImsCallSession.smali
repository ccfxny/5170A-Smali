.class public Lcom/android/ims/internal/ImsCallSession;
.super Ljava/lang/Object;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/ImsCallSession$1;,
        Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;,
        Lcom/android/ims/internal/ImsCallSession$Listener;,
        Lcom/android/ims/internal/ImsCallSession$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsCallSession"


# instance fields
.field private mClosed:Z

.field private mListener:Lcom/android/ims/internal/ImsCallSession$Listener;

.field private final miSession:Lcom/android/ims/internal/IImsCallSession;


# direct methods
.method public constructor <init>(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 2
    .param p1, "iSession"    # Lcom/android/ims/internal/IImsCallSession;

    .prologue
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 387
    iput-object p1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 389
    if-eqz p1, :cond_0

    .line 391
    :try_start_0
    new-instance v0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;-><init>(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession$1;)V

    invoke-interface {p1, v0}, Lcom/android/ims/internal/IImsCallSession;->setListener(Lcom/android/ims/internal/IImsCallSessionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :goto_0
    return-void

    .line 395
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    goto :goto_0

    .line 392
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/ImsCallSession$Listener;)V
    .locals 0
    .param p1, "iSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "listener"    # Lcom/android/ims/internal/ImsCallSession$Listener;

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    .line 401
    invoke-virtual {p0, p2}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    .line 402
    return-void
.end method

.method static synthetic access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;

    return-object v0
.end method


# virtual methods
.method public accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 669
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 677
    :goto_0
    return-void

    .line 674
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 675
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 408
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 417
    :goto_0
    monitor-exit p0

    return-void

    .line 413
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->close()V

    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    goto :goto_0

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;

    .prologue
    .line 789
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 797
    :goto_0
    return-void

    .line 794
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->extendToConference([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 795
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 425
    iget-boolean v2, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v2, :cond_0

    .line 432
    :goto_0
    return-object v1

    .line 430
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 442
    iget-boolean v2, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v2, :cond_0

    .line 449
    :goto_0
    return-object v1

    .line 447
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getLocalCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 459
    iget-boolean v2, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v2, :cond_0

    .line 466
    :goto_0
    return-object v1

    .line 464
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsCallSession;->getLocalCallProfile()Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 510
    iget-boolean v2, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v2, :cond_0

    .line 517
    :goto_0
    return-object v1

    .line 515
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsCallSession;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 476
    iget-boolean v2, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v2, :cond_0

    .line 483
    :goto_0
    return-object v1

    .line 481
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsCallSession;->getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getSession()Lcom/android/ims/internal/IImsCallSession;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    return-object v0
.end method

.method public getState()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 528
    iget-boolean v2, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v2, :cond_0

    .line 535
    :goto_0
    return v1

    .line 533
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsCallSession;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 493
    iget-boolean v2, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v2, :cond_0

    .line 500
    :goto_0
    return-object v1

    .line 498
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsCallSession;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public hold(Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 719
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 727
    :goto_0
    return-void

    .line 724
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->hold(Lcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 725
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;

    .prologue
    .line 807
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 815
    :goto_0
    return-void

    .line 812
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->inviteParticipants([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 813
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isAlive()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 546
    iget-boolean v2, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v2, :cond_0

    .line 561
    :goto_0
    return v1

    .line 550
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/internal/ImsCallSession;->getState()I

    move-result v0

    .line 551
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 559
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 551
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isInCall()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 579
    iget-boolean v2, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v2, :cond_0

    .line 586
    :goto_0
    return v1

    .line 584
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsCallSession;->isInCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isMultiparty()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 908
    iget-boolean v2, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v2, :cond_0

    .line 915
    :goto_0
    return v1

    .line 913
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsCallSession;->isMultiparty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 914
    :catch_0
    move-exception v0

    .line 915
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public merge()V
    .locals 1

    .prologue
    .line 754
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 762
    :goto_0
    return-void

    .line 759
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->merge()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 760
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reject(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 694
    :goto_0
    return-void

    .line 691
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->reject(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 692
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;

    .prologue
    .line 825
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 833
    :goto_0
    return-void

    .line 830
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->removeParticipants([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 831
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resume(Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 737
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 745
    :goto_0
    return-void

    .line 742
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->resume(Lcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 743
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 844
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 852
    :goto_0
    return-void

    .line 849
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->sendDtmf(CLandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 850
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 1
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .prologue
    .line 892
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 900
    :goto_0
    return-void

    .line 897
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->sendUssd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 898
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/internal/ImsCallSession$Listener;

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 599
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 607
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 615
    :goto_0
    return-void

    .line 612
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->setMute(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 613
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public start(Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 637
    :goto_0
    return-void

    .line 634
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->start(Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 635
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public start([Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 651
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 659
    :goto_0
    return-void

    .line 656
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->startConference([Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 657
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startDtmf(C)V
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 862
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 870
    :goto_0
    return-void

    .line 867
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->startDtmf(C)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 868
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 1

    .prologue
    .line 876
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 884
    :goto_0
    return-void

    .line 881
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->stopDtmf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 882
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public terminate(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 702
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 710
    :goto_0
    return-void

    .line 707
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 708
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1212
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[ImsCallSession objId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1214
    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    invoke-virtual {p0}, Lcom/android/ims/internal/ImsCallSession;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/ims/internal/ImsCallSession$State;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    const-string v1, " callId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1217
    invoke-virtual {p0}, Lcom/android/ims/internal/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(ILcom/android/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 772
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 780
    :goto_0
    return-void

    .line 777
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->update(ILcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 778
    :catch_0
    move-exception v0

    goto :goto_0
.end method
