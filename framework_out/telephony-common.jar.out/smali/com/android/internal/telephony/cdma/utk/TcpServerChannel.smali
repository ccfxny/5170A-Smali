.class Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;
.super Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;
.source "BipChannel.java"


# instance fields
.field private mListen:Lcom/android/internal/telephony/cdma/utk/ListenPortManager;

.field private mListenPort:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;I)V
    .locals 1
    .param p1, "bs"    # Lcom/android/internal/telephony/cdma/utk/BipService;
    .param p2, "p"    # Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    .param p3, "id"    # I

    .prologue
    .line 557
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;-><init>(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;I)V

    .line 558
    iget-object v0, p2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    iget v0, v0, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->port:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mListenPort:I

    .line 559
    return-void
.end method


# virtual methods
.method public linkDisconnect(Z)I
    .locals 5
    .param p1, "listen"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 578
    const-string v0, "TcpServerChannel"

    const-string v1, " linkDisconnect"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    if-eqz p1, :cond_2

    .line 581
    const-string v0, "TcpServerChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " keep listen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mListenPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->setStatus(I)V

    .line 594
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->stop()V

    .line 596
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    .line 600
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 602
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :cond_1
    :goto_1
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mRxBuffer:[B

    .line 609
    iput v3, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mDataAvailableLength:I

    .line 611
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->stopDataToReceiveTimer()V

    .line 613
    return v3

    .line 588
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mListen:Lcom/android/internal/telephony/cdma/utk/ListenPortManager;

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mListenPort:I

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->removeListenPort(ILcom/android/internal/telephony/cdma/utk/BipChannel;)V

    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->setStatus(I)V

    goto :goto_0

    .line 604
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public linkEstablish()I
    .locals 3

    .prologue
    .line 563
    const/4 v0, 0x0

    .line 565
    .local v0, "ret":I
    const-string v1, "TcpServerChannel"

    const-string v2, " linkEstablish"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->getInstance()Lcom/android/internal/telephony/cdma/utk/ListenPortManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mListen:Lcom/android/internal/telephony/cdma/utk/ListenPortManager;

    .line 568
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mListen:Lcom/android/internal/telephony/cdma/utk/ListenPortManager;

    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mListenPort:I

    invoke-virtual {v1, v2, p0}, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->addListenPort(ILcom/android/internal/telephony/cdma/utk/BipChannel;)V

    .line 570
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->setStatus(I)V

    .line 573
    return v0
.end method
