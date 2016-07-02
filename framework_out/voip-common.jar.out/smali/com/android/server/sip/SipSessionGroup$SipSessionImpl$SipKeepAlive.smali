.class Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;
.super Landroid/net/sip/SipSessionAdapter;
.source "SipSessionGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SipKeepAlive"
.end annotation


# static fields
.field private static final SKA_DBG:Z = true

.field private static final SKA_TAG:Ljava/lang/String; = "SipKeepAlive"


# instance fields
.field private mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

.field private mInterval:I

.field private mPortChanged:Z

.field private mRPort:I

.field private mRunning:Z

.field final synthetic this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1534
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-direct {p0}, Landroid/net/sip/SipSessionAdapter;-><init>()V

    .line 1538
    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRunning:Z

    .line 1541
    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mPortChanged:Z

    .line 1542
    iput v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRPort:I

    return-void
.end method

.method private getRPortFromResponse(Ljavax/sip/message/Response;)I
    .locals 2
    .param p1, "response"    # Ljavax/sip/message/Response;

    .prologue
    .line 1666
    const-string v1, "Via"

    invoke-interface {p1, v1}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/ViaHeader;

    move-object v0, v1

    check-cast v0, Ljavax/sip/header/ViaHeader;

    .line 1668
    .local v0, "viaHeader":Ljavax/sip/header/ViaHeader;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Ljavax/sip/header/ViaHeader;->getRPort()I

    move-result v1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1672
    const-string v0, "SipKeepAlive"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    return-void
.end method

.method private parseOptionsResult(Ljava/util/EventObject;)Z
    .locals 7
    .param p1, "evt"    # Ljava/util/EventObject;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1644
    const-string v4, "OPTIONS"

    # invokes: Lcom/android/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v4, p1}, Lcom/android/server/sip/SipSessionGroup;->access$2200(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v0, p1

    .line 1645
    check-cast v0, Ljavax/sip/ResponseEvent;

    .line 1646
    .local v0, "event":Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->getRPortFromResponse(Ljavax/sip/message/Response;)I

    move-result v1

    .line 1647
    .local v1, "rPort":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 1648
    iget v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRPort:I

    if-nez v4, :cond_0

    iput v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRPort:I

    .line 1649
    :cond_0
    iget v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRPort:I

    if-eq v4, v1, :cond_1

    .line 1650
    iput-boolean v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mPortChanged:Z

    .line 1651
    const-string v4, "rport is changed: %d <> %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRPort:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->log(Ljava/lang/String;)V

    .line 1653
    iput v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRPort:I

    .line 1662
    .end local v0    # "event":Ljavax/sip/ResponseEvent;
    .end local v1    # "rPort":I
    :goto_0
    return v2

    .line 1655
    .restart local v0    # "event":Ljavax/sip/ResponseEvent;
    .restart local v1    # "rPort":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rport is the same: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1658
    :cond_2
    const-string v3, "peer did not respond rport"

    invoke-direct {p0, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "event":Ljavax/sip/ResponseEvent;
    .end local v1    # "rPort":I
    :cond_3
    move v2, v3

    .line 1662
    goto :goto_0
.end method

.method private sendKeepAlive()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v1

    .line 1632
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v2, 0x9

    iput v2, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1633
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    # getter for: Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v3, v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    # getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v3}, Lcom/android/server/sip/SipSessionGroup;->access$1500(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v4, v4, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v5}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->generateTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/sip/SipHelper;->sendOptions(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/ClientTransaction;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 1635
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 1636
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    # invokes: Lcom/android/server/sip/SipSessionGroup;->addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    invoke-static {v0, v2}, Lcom/android/server/sip/SipSessionGroup;->access$500(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 1638
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v2, 0x5

    # invokes: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V
    invoke-static {v0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$3100(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;I)V

    .line 1640
    monitor-exit v1

    .line 1641
    return-void

    .line 1640
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 1585
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->stop()V

    .line 1586
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    invoke-interface {v0, p2, p3}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;->onError(ILjava/lang/String;)V

    .line 1587
    return-void
.end method

.method process(Ljava/util/EventObject;)Z
    .locals 2
    .param p1, "evt"    # Ljava/util/EventObject;

    .prologue
    .line 1563
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRunning:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 1564
    instance-of v0, p1, Ljavax/sip/ResponseEvent;

    if-eqz v0, :cond_1

    .line 1565
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->parseOptionsResult(Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1566
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mPortChanged:Z

    if-eqz v0, :cond_0

    .line 1567
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup;->resetExternalAddress()V

    .line 1568
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->stop()V

    .line 1573
    :goto_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    iget-boolean v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mPortChanged:Z

    invoke-interface {v0, v1}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;->onResponse(Z)V

    .line 1574
    const/4 v0, 0x1

    .line 1578
    :goto_1
    return v0

    .line 1570
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    # invokes: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$2900(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 1571
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    # invokes: Lcom/android/server/sip/SipSessionGroup;->removeSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    invoke-static {v0, v1}, Lcom/android/server/sip/SipSessionGroup;->access$1300(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    goto :goto_0

    .line 1578
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public run()V
    .locals 5

    .prologue
    .line 1593
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v2

    .line 1594
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRunning:Z

    if-nez v1, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1616
    :goto_0
    return-void

    .line 1604
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->sendKeepAlive()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1615
    :cond_1
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

    .line 1605
    :catch_0
    move-exception v0

    .line 1607
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keepalive error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v4, v4, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    # getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->access$1500(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v4, v4, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    # invokes: Lcom/android/server/sip/SipSessionGroup;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    invoke-static {v4, v0}, Lcom/android/server/sip/SipSessionGroup;->access$1700(Lcom/android/server/sip/SipSessionGroup;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    # invokes: Lcom/android/server/sip/SipSessionGroup;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v3, v4}, Lcom/android/server/sip/SipSessionGroup;->access$1200(Lcom/android/server/sip/SipSessionGroup;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1613
    iget-boolean v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRunning:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    # invokes: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V
    invoke-static {v1, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$100(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method start(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    .locals 2
    .param p1, "interval"    # I
    .param p2, "callback"    # Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    .prologue
    .line 1547
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRunning:Z

    if-eqz v0, :cond_0

    .line 1559
    :goto_0
    return-void

    .line 1548
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRunning:Z

    .line 1549
    iput p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mInterval:I

    .line 1550
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

    invoke-direct {v0, p2}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;-><init>(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    .line 1551
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    # getter for: Lcom/android/server/sip/SipSessionGroup;->mWakeupTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$2800(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    mul-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1, p0}, Lcom/android/server/sip/SipWakeupTimer;->set(ILjava/lang/Runnable;)V

    .line 1553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start keepalive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    # getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->access$1500(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->log(Ljava/lang/String;)V

    .line 1558
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->run()V

    goto :goto_0
.end method

.method stop()V
    .locals 3

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v1

    .line 1621
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop keepalive:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, v2, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    # getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->access$1500(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",RPort="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRPort:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->log(Ljava/lang/String;)V

    .line 1624
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->mRunning:Z

    .line 1625
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    # getter for: Lcom/android/server/sip/SipSessionGroup;->mWakeupTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$2800(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 1626
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SipKeepAlive;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    # invokes: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->reset()V
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$3000(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 1627
    monitor-exit v1

    .line 1628
    return-void

    .line 1627
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
