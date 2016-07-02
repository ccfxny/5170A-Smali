.class Lcom/android/internal/telephony/cat/bip/TcpServerChannel;
.super Lcom/android/internal/telephony/cat/bip/Channel;
.source "Channel.java"


# instance fields
.field private mCloseBackToTcpListen:Z

.field protected mInput:Ljava/io/DataInputStream;

.field protected mOutput:Ljava/io/BufferedOutputStream;

.field protected mSSocket:Ljava/net/ServerSocket;

.field protected mSocket:Ljava/net/Socket;

.field private rt:Ljava/lang/Thread;


# direct methods
.method constructor <init>(IIIIILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/bip/BipManager;)V
    .locals 9
    .param p1, "cid"    # I
    .param p2, "linkMode"    # I
    .param p3, "protocolType"    # I
    .param p4, "port"    # I
    .param p5, "bufferSize"    # I
    .param p6, "handler"    # Lcom/android/internal/telephony/cat/CatService;
    .param p7, "bipManager"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 677
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cat/bip/Channel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/bip/BipManager;)V

    .line 669
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;

    .line 670
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 671
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    .line 672
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    .line 673
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->rt:Ljava/lang/Thread;

    .line 674
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mCloseBackToTcpListen:Z

    .line 678
    return-void
.end method


# virtual methods
.method public closeChannel()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 715
    const/4 v1, 0x0

    .line 717
    .local v1, "ret":I
    const-string v2, "[BIP]"

    const-string v3, "[UICC]closeChannel."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mCloseBackToTcpListen:Z

    if-ne v2, v3, :cond_4

    .line 719
    const/16 v2, -0x80

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iget v3, v3, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    if-ne v2, v3, :cond_3

    .line 721
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    const/16 v3, 0x40

    iput v3, v2, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    .line 722
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    if-eqz v2, :cond_0

    .line 723
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 725
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_1

    .line 726
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 728
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_2

    .line 729
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 731
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->rt:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 736
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBuffer:[B

    .line 737
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBuffer:[B

    .line 766
    :cond_3
    :goto_0
    return v1

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "[BIP]"

    const-string v3, "[UICC]IOEX closeChannel back to tcp listen."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 735
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 736
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBuffer:[B

    .line 737
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBuffer:[B

    goto :goto_0

    .line 735
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 736
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBuffer:[B

    .line 737
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBuffer:[B

    throw v2

    .line 741
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->rt:Ljava/lang/Thread;

    if-eqz v2, :cond_5

    .line 742
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->requestStop()V

    .line 743
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->rt:Ljava/lang/Thread;

    .line 746
    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    if-eqz v2, :cond_6

    .line 747
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 748
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_7

    .line 749
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 750
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_8

    .line 751
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 752
    :cond_8
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;

    if-eqz v2, :cond_9

    .line 753
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 757
    :cond_9
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 758
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBuffer:[B

    .line 759
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBuffer:[B

    goto :goto_0

    .line 754
    :catch_1
    move-exception v0

    .line 755
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    const-string v2, "[BIP]"

    const-string v3, "[UICC]IOEX closeChannel"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 757
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 758
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBuffer:[B

    .line 759
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBuffer:[B

    goto :goto_0

    .line 757
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 758
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBuffer:[B

    .line 759
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBuffer:[B

    throw v2
.end method

.method public getTcpStatus()B
    .locals 3

    .prologue
    .line 956
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iget v1, v1, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-byte v1, v1

    .line 959
    :goto_0
    return v1

    .line 957
    :catch_0
    move-exception v0

    .line 958
    .local v0, "ne":Ljava/lang/NullPointerException;
    const-string v1, "[BIP]"

    const-string v2, "[TCP]getTcpStatus"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTxAvailBufferSize()I
    .locals 4

    .prologue
    .line 882
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBuffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBufferCount:I

    sub-int v0, v1, v2

    .line 883
    .local v0, "txRemaining":I
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UICC]available tx buffer size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    return v0
.end method

.method public isCloseBackToTcpListen()Z
    .locals 1

    .prologue
    .line 967
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mCloseBackToTcpListen:Z

    return v0
.end method

.method public openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I
    .locals 7
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    const/4 v3, 0x5

    .line 681
    const/4 v2, 0x0

    .line 683
    .local v2, "ret":I
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[UICC]openChannel mLinkMode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mLinkMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    :try_start_0
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[UICC]New server socket.mChannelStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mChannelStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",port:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mPort:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    new-instance v4, Ljava/net/ServerSocket;

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mPort:I

    invoke-direct {v4, v5}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 695
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mChannelStatus:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mChannelStatus:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 697
    :cond_0
    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->setTcpStatus(BZ)V

    .line 698
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mChannelStatus:I

    .line 699
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;

    invoke-direct {v4, p0, p0}, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;-><init>(Lcom/android/internal/telephony/cat/bip/Channel;Lcom/android/internal/telephony/cat/bip/TcpServerChannel;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->rt:Ljava/lang/Thread;

    .line 700
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->rt:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 702
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->checkBufferSize()I

    move-result v2

    .line 703
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 704
    const-string v3, "[BIP]"

    const-string v4, "[UICC]openChannel: buffer size is modified"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mBufferSize:I

    iput v3, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    .line 707
    :cond_2
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->getTcpStatus()B

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    .line 708
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mBufferSize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBuffer:[B

    .line 709
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mBufferSize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBuffer:[B

    move v3, v2

    .line 711
    :goto_0
    return v3

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "[BIP]"

    const-string v5, "[UICC]IOEX to create server socket"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 691
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 692
    .local v1, "e2":Ljava/lang/Exception;
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[UICC]EX to create server socket "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public receiveData(ILcom/android/internal/telephony/cat/bip/ReceiveDataResult;)I
    .locals 9
    .param p1, "requestSize"    # I
    .param p2, "rdr"    # Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;

    .prologue
    const/4 v2, 0x5

    .line 888
    const-string v3, "[BIP]"

    const-string v4, "[UICC]new receiveData method"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const/4 v1, 0x0

    .line 891
    .local v1, "ret":I
    if-nez p2, :cond_0

    .line 892
    const-string v3, "[BIP]"

    const-string v4, "[UICC]rdr is null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    :goto_0
    return v2

    .line 896
    :cond_0
    const-string v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[UICC]receiveData "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    new-array v3, p1, [B

    iput-object v3, p2, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    .line 899
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    if-lt v3, p1, :cond_3

    .line 900
    const-string v3, "[BIP]"

    const-string v4, "[UICC]rx buffer has enough data"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBuffer:[B

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    iget-object v6, p2, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v7, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 904
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    .line 905
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    sub-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    .line 906
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    if-nez v3, :cond_1

    .line 907
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    .line 909
    :cond_1
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCacheCount:I

    add-int/2addr v3, v5

    iput v3, p2, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->remainingCount:I

    .line 910
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mBufferSize:I

    if-ge v3, v5, :cond_2

    .line 911
    const-string v3, "[BIP]"

    const-string v5, ">= [UICC]notify to read data more to mRxBuffer"

    invoke-static {v3, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 914
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 919
    const-string v2, "[BIP]"

    const-string v3, "[UICC]rx buffer has enough data - end"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v2, v1

    .line 941
    goto :goto_0

    .line 914
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 915
    :catch_0
    move-exception v0

    .line 916
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "[BIP]"

    const-string v4, "[UICC]fail copy rx buffer out 1"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 921
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    const-string v3, "[BIP]"

    const-string v4, "[UICC]rx buffer is insufficient - being"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    :try_start_4
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    .line 924
    :try_start_5
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBuffer:[B

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    iget-object v6, p2, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    invoke-static {v3, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 925
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    .line 926
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    .line 928
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mBufferSize:I

    if-ge v3, v5, :cond_4

    .line 929
    const-string v3, "[BIP]"

    const-string v5, "< [UICC]notify to read data more to mRxBuffer"

    invoke-static {v3, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 932
    :cond_4
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 933
    const/4 v3, 0x0

    :try_start_6
    iput v3, p2, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->remainingCount:I
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1

    .line 934
    const/16 v1, 0x9

    .line 939
    const-string v2, "[BIP]"

    const-string v3, "[UICC]rx buffer is insufficient - end"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 932
    :catchall_1
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v3
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_1

    .line 935
    :catch_1
    move-exception v0

    .line 936
    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "[BIP]"

    const-string v4, "[UICC]fail copy rx buffer out 2"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public receiveData(I)Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;
    .locals 11
    .param p1, "requestCount"    # I

    .prologue
    .line 771
    new-instance v6, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;

    invoke-direct {v6}, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;-><init>()V

    .line 773
    .local v6, "ret":Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;
    new-array v7, p1, [B

    iput-object v7, v6, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    .line 774
    const-string v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[UICC]receiveData "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget v7, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    if-lt v7, p1, :cond_1

    .line 779
    :try_start_0
    const-string v7, "[BIP]"

    const-string v8, "[UICC]Start to copy data from buffer"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBuffer:[B

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    iget-object v9, v6, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 781
    iget v7, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    sub-int/2addr v7, p1

    iput v7, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    .line 782
    iget v7, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    add-int/2addr v7, p1

    iput v7, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    .line 783
    iget v7, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    iput v7, v6, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->remainingCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :cond_0
    :goto_0
    return-object v6

    .line 784
    :catch_0
    move-exception v4

    .line 785
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "[BIP]"

    const-string v8, "IOOB-1"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 788
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    move v5, p1

    .line 789
    .local v5, "needCopy":I
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    .line 790
    .local v0, "canCopy":I
    const/4 v3, 0x0

    .line 791
    .local v3, "countCopied":I
    const/4 v1, 0x0

    .line 793
    .local v1, "canExitLoop":Z
    :goto_1
    if-nez v1, :cond_0

    .line 794
    if-le v5, v0, :cond_2

    .line 796
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBuffer:[B

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    iget-object v9, v6, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    invoke-static {v7, v8, v9, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 798
    iget v7, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    add-int/2addr v7, v0

    iput v7, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    .line 799
    iget v7, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    sub-int/2addr v7, v0

    iput v7, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 800
    add-int/2addr v3, v0

    .line 801
    sub-int/2addr v5, v0

    .line 816
    :goto_2
    if-nez v5, :cond_3

    .line 817
    const/4 v1, 0x1

    goto :goto_1

    .line 802
    :catch_1
    move-exception v4

    .line 803
    .restart local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "[BIP]"

    const-string v8, "IOOB-2"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 807
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    :try_start_2
    iget v7, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    iget-object v9, v6, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    invoke-static {v7, v8, v9, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 809
    iget v7, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    add-int/2addr v7, v5

    iput v7, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 810
    add-int/2addr v3, v5

    .line 811
    const/4 v5, 0x0

    goto :goto_2

    .line 812
    :catch_2
    move-exception v4

    .line 813
    .restart local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "[BIP]"

    const-string v8, "IOOB-3"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 820
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    :try_start_3
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBuffer:[B

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBuffer:[B

    array-length v10, v10

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    .line 821
    .local v2, "count":I
    iput v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    .line 822
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 823
    .end local v2    # "count":I
    :catch_3
    move-exception v4

    .line 824
    .local v4, "e":Ljava/io/IOException;
    const-string v7, "[BIP]"

    const-string v8, "IOException"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public sendData([BI)I
    .locals 11
    .param p1, "data"    # [B
    .param p2, "mode"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x5

    .line 834
    const/4 v2, 0x0

    .line 835
    .local v2, "ret":I
    iget-object v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBuffer:[B

    array-length v6, v6

    iget v7, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBufferCount:I

    sub-int v4, v6, v7

    .line 836
    .local v4, "txRemaining":I
    const/4 v3, 0x0

    .line 838
    .local v3, "tmpBuffer":[B
    if-nez p1, :cond_1

    .line 839
    const-string v6, "[BIP]"

    const-string v7, "[UICC]sendData - data null:"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v5

    .line 878
    .end local v2    # "ret":I
    :cond_0
    :goto_0
    return v2

    .line 843
    .restart local v2    # "ret":I
    :cond_1
    const-string v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[UICC]sendData: size of buffer:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const-string v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[UICC]sendData: size of buffer:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBuffer:[B

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " count:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBufferCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBufferCount:I

    if-nez v6, :cond_2

    if-ne v10, p2, :cond_2

    .line 847
    move-object v3, p1

    .line 848
    array-length v6, p1

    iput v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBufferCount:I

    .line 862
    :goto_1
    if-ne p2, v10, :cond_0

    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mChannelStatus:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iget v6, v6, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    const/16 v7, -0x80

    if-ne v6, v7, :cond_0

    .line 866
    :try_start_0
    const-string v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "S[UICC]END_DATA_MODE_IMMEDIATE:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBuffer:[B

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " count:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBufferCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    iget-object v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBufferCount:I

    invoke-virtual {v6, v3, v7, v8}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 868
    iget-object v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 869
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBufferCount:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 870
    :catch_0
    move-exception v0

    .line 871
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v2, v5

    .line 872
    goto/16 :goto_0

    .line 851
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_1
    array-length v6, p1

    if-lt v4, v6, :cond_3

    .line 852
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBuffer:[B

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBufferCount:I

    array-length v9, p1

    invoke-static {p1, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 853
    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBufferCount:I

    array-length v7, p1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBufferCount:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 860
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBuffer:[B

    goto :goto_1

    .line 855
    :cond_3
    :try_start_2
    const-string v6, "[BIP]"

    const-string v7, "[UICC]sendData - tx buffer is not enough"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 857
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    move v2, v5

    .line 858
    goto/16 :goto_0

    .line 873
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_2
    move-exception v1

    .line 874
    .local v1, "e2":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    move v2, v5

    .line 875
    goto/16 :goto_0
.end method

.method public setCloseBackToTcpListen(Z)V
    .locals 0
    .param p1, "isBackToTcpListen"    # Z

    .prologue
    .line 964
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mCloseBackToTcpListen:Z

    .line 965
    return-void
.end method

.method public setTcpStatus(BZ)V
    .locals 3
    .param p1, "status"    # B
    .param p2, "isPackED"    # Z

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iget v0, v0, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    if-ne v0, p1, :cond_1

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UICC][TCPStatus]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iget v2, v2, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput p1, v0, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    .line 949
    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    .line 950
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->changeChannelStatus(B)V

    goto :goto_0
.end method
