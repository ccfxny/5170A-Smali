.class Lcom/android/internal/telephony/cat/bip/UdpChannel;
.super Lcom/android/internal/telephony/cat/bip/Channel;
.source "Channel.java"


# static fields
.field private static final UDP_SOCKET_TIMEOUT:I = 0xbb8


# instance fields
.field mSocket:Ljava/net/DatagramSocket;

.field rt:Ljava/lang/Thread;


# direct methods
.method constructor <init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/bip/BipManager;)V
    .locals 1
    .param p1, "cid"    # I
    .param p2, "linkMode"    # I
    .param p3, "protocolType"    # I
    .param p4, "address"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .param p6, "bufferSize"    # I
    .param p7, "handler"    # Lcom/android/internal/telephony/cat/CatService;
    .param p8, "bipManager"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    const/4 v0, 0x0

    .line 1285
    invoke-direct/range {p0 .. p8}, Lcom/android/internal/telephony/cat/bip/Channel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/bip/BipManager;)V

    .line 1280
    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    .line 1282
    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->rt:Ljava/lang/Thread;

    .line 1286
    return-void
.end method


# virtual methods
.method public closeChannel()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1323
    const/4 v0, 0x0

    .line 1325
    .local v0, "ret":I
    const-string v1, "[BIP]"

    const-string v2, "[UDP]closeChannel."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->rt:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 1329
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/bip/UdpChannel;->requestStop()V

    .line 1330
    iput-object v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->rt:Ljava/lang/Thread;

    .line 1332
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_1

    .line 1334
    const-string v1, "[BIP]"

    const-string v2, "[UDP]closeSocket."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 1337
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mChannelStatus:I

    .line 1339
    iput-object v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    .line 1340
    iput-object v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBuffer:[B

    .line 1341
    iput-object v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mTxBuffer:[B

    .line 1344
    :cond_1
    return v0
.end method

.method public getTxAvailBufferSize()I
    .locals 4

    .prologue
    .line 1463
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mTxBuffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mTxBufferCount:I

    sub-int v0, v1, v2

    .line 1464
    .local v0, "txRemaining":I
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UDP]available tx buffer size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    return v0
.end method

.method public openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I
    .locals 6
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 1289
    const/4 v2, 0x0

    .line 1291
    .local v2, "ret":I
    :try_start_0
    const-string v3, "persist.service.bip.iot.test"

    sget v4, Lcom/android/internal/telephony/cat/bip/UdpChannel;->DEFAULT_IOTTEST_VALUE:I

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mIOTTest:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1296
    :goto_0
    const-string v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[UDP]link mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mLinkMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIOTTest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mIOTTest:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mLinkMode:I

    if-nez v3, :cond_1

    .line 1300
    :try_start_1
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    .line 1301
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mChannelStatus:I

    .line 1302
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    const/16 v4, 0x80

    iput v4, v3, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    .line 1303
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;-><init>(Lcom/android/internal/telephony/cat/bip/Channel;Ljava/net/DatagramSocket;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->rt:Ljava/lang/Thread;

    .line 1304
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->rt:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1305
    const-string v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[UDP]: sock status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mChannelStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1310
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/bip/UdpChannel;->checkBufferSize()I

    move-result v2

    .line 1311
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1312
    const-string v3, "[BIP]"

    const-string v4, "[UDP]openChannel: buffer size is modified"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mBufferSize:I

    iput v3, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    .line 1315
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mBufferSize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBuffer:[B

    .line 1316
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mBufferSize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mTxBuffer:[B

    .line 1319
    :cond_1
    return v2

    .line 1292
    :catch_0
    move-exception v1

    .line 1293
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    const-string v3, "[BIP]"

    const-string v4, "[UDP]key is illegal"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    sget v3, Lcom/android/internal/telephony/cat/bip/UdpChannel;->DEFAULT_IOTTEST_VALUE:I

    iput v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mIOTTest:I

    goto/16 :goto_0

    .line 1306
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1307
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public receiveData(ILcom/android/internal/telephony/cat/bip/ReceiveDataResult;)I
    .locals 9
    .param p1, "requestSize"    # I
    .param p2, "rdr"    # Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;

    .prologue
    const/4 v2, 0x5

    .line 1469
    const-string v3, "[BIP]"

    const-string v4, "[UDP]new receiveData method"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    const/4 v1, 0x0

    .line 1472
    .local v1, "ret":I
    if-nez p2, :cond_0

    .line 1473
    const-string v3, "[BIP]"

    const-string v4, "[UDP]rdr is null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    :goto_0
    return v2

    .line 1477
    :cond_0
    const-string v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[UDP]receiveData "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferCount:I

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

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    new-array v3, p1, [B

    iput-object v3, p2, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    .line 1480
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferCount:I

    if-lt v3, p1, :cond_3

    .line 1481
    const-string v3, "[BIP]"

    const-string v4, "[UDP]rx buffer has enough data - begin"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1485
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBuffer:[B

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferOffset:I

    iget-object v6, p2, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v7, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1486
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferOffset:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferOffset:I

    .line 1487
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferCount:I

    sub-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferCount:I

    .line 1488
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferCount:I

    if-nez v3, :cond_1

    .line 1489
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferOffset:I

    .line 1491
    :cond_1
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferCount:I

    iput v3, p2, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->remainingCount:I

    .line 1492
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferCount:I

    if-gtz v3, :cond_2

    .line 1493
    const-string v3, "[BIP]"

    const-string v5, ">= [UDP]notify to read data more to mRxBuffer"

    invoke-static {v3, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1496
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1501
    const-string v2, "[BIP]"

    const-string v3, "[UDP]rx buffer has enough data - end"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v2, v1

    .line 1527
    goto :goto_0

    .line 1496
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

    .line 1497
    :catch_0
    move-exception v0

    .line 1498
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "[BIP]"

    const-string v4, "[UDP]fail copy rx buffer out 1"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1503
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    const-string v3, "[BIP]"

    const-string v4, "[UDP]rx buffer is insufficient - being"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    :try_start_4
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1507
    :try_start_5
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBuffer:[B

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferOffset:I

    iget-object v6, p2, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferCount:I

    invoke-static {v3, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1508
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferOffset:I

    .line 1509
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferCount:I

    .line 1511
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferCount:I

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mBufferSize:I

    if-ge v3, v5, :cond_4

    .line 1512
    const-string v3, "[BIP]"

    const-string v5, "< [UDP]notify to read data more to mRxBuffer"

    invoke-static {v3, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1515
    :cond_4
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1516
    const/4 v3, 0x0

    :try_start_6
    iput v3, p2, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->remainingCount:I
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1517
    const/16 v1, 0x9

    .line 1524
    const-string v2, "[BIP]"

    const-string v3, "[UDP]rx buffer is insufficient - end"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1515
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

    .line 1519
    :catch_1
    move-exception v0

    .line 1521
    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "[BIP]"

    const-string v4, "[UDP]fail copy rx buffer out 2"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public receiveData(I)Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;
    .locals 11
    .param p1, "requestCount"    # I

    .prologue
    .line 1348
    new-instance v6, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;

    invoke-direct {v6}, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;-><init>()V

    .line 1349
    .local v6, "ret":Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;
    new-array v7, p1, [B

    iput-object v7, v6, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    .line 1351
    const-string v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[UDP]receiveData "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferCount:I

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

    iget v9, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferOffset:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    iget v7, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferCount:I

    if-lt v7, p1, :cond_1

    .line 1355
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBuffer:[B

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferOffset:I

    iget-object v9, v6, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1356
    iget v7, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferOffset:I

    add-int/2addr v7, p1

    iput v7, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferOffset:I

    .line 1357
    iget v7, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferCount:I

    sub-int/2addr v7, p1

    iput v7, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferCount:I

    .line 1358
    iget v7, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferCount:I

    iput v7, v6, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->remainingCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1406
    :cond_0
    :goto_0
    return-object v6

    .line 1362
    :cond_1
    move v4, p1

    .line 1363
    .local v4, "needCopy":I
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferCount:I

    .line 1364
    .local v0, "canCopy":I
    const/4 v2, 0x0

    .line 1365
    .local v2, "countCopied":I
    const/4 v1, 0x0

    .line 1367
    .local v1, "canExitLoop":Z
    :goto_1
    if-nez v1, :cond_0

    .line 1368
    if-le v4, v0, :cond_2

    .line 1370
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBuffer:[B

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferOffset:I

    iget-object v9, v6, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    invoke-static {v7, v8, v9, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1372
    add-int/2addr v2, v0

    .line 1373
    sub-int/2addr v4, v0

    .line 1374
    iget v7, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferOffset:I

    add-int/2addr v7, v0

    iput v7, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferOffset:I

    .line 1375
    iget v7, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferCount:I

    sub-int/2addr v7, v0

    iput v7, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferCount:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1390
    :goto_2
    if-nez v4, :cond_3

    .line 1391
    const/4 v1, 0x1

    goto :goto_1

    .line 1380
    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBuffer:[B

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferOffset:I

    iget-object v9, v6, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    invoke-static {v7, v8, v9, v2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1382
    iget v7, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferOffset:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferOffset:I

    .line 1383
    iget v7, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferCount:I

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferCount:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1384
    add-int/2addr v2, v4

    .line 1385
    const/4 v4, 0x0

    goto :goto_2

    .line 1394
    :cond_3
    :try_start_3
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    const/16 v8, 0xbb8

    invoke-virtual {v7, v8}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 1395
    new-instance v5, Ljava/net/DatagramPacket;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBuffer:[B

    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBuffer:[B

    array-length v8, v8

    invoke-direct {v5, v7, v8}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 1396
    .local v5, "packet":Ljava/net/DatagramPacket;
    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v7, v5}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 1397
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferOffset:I

    .line 1398
    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getLength()I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mRxBufferCount:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1399
    .end local v5    # "packet":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v3

    .line 1400
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1386
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    goto :goto_2

    .line 1376
    :catch_2
    move-exception v7

    goto :goto_2

    .line 1359
    .end local v0    # "canCopy":I
    .end local v1    # "canExitLoop":Z
    .end local v2    # "countCopied":I
    .end local v4    # "needCopy":I
    :catch_3
    move-exception v7

    goto :goto_0
.end method

.method public sendData([BI)I
    .locals 12
    .param p1, "data"    # [B
    .param p2, "mode"    # I

    .prologue
    const/4 v10, 0x5

    const/4 v11, 0x1

    .line 1410
    const/4 v8, 0x0

    .line 1411
    .local v8, "ret":I
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mTxBuffer:[B

    array-length v2, v2

    iget v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mTxBufferCount:I

    sub-int v9, v2, v3

    .line 1412
    .local v9, "txRemaining":I
    const/4 v1, 0x0

    .line 1414
    .local v1, "tmpBuffer":[B
    if-nez p1, :cond_0

    .line 1415
    const-string v2, "[BIP]"

    const-string v3, "[UDP]sendData - data null:"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v10

    .line 1459
    :goto_0
    return v2

    .line 1418
    :cond_0
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UDP]sendData: size of data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UDP]sendData: size of buffer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mTxBuffer:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mTxBufferCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    :try_start_0
    iget v2, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mTxBufferCount:I

    if-nez v2, :cond_2

    if-ne v11, p2, :cond_2

    .line 1422
    move-object v1, p1

    .line 1423
    array-length v2, p1

    iput v2, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mTxBufferCount:I

    .line 1438
    :goto_1
    if-ne p2, v11, :cond_1

    .line 1439
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UDP]Send data("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mAddress:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mTxBuffer:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mTxBufferCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    new-instance v0, Ljava/net/DatagramPacket;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mTxBufferCount:I

    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mAddress:Ljava/net/InetAddress;

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mPort:I

    invoke-direct/range {v0 .. v5}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 1442
    .local v0, "packet":Ljava/net/DatagramPacket;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mSocket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    .line 1444
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 1445
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mTxBufferCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0    # "packet":Ljava/net/DatagramPacket;
    :cond_1
    :goto_2
    move v2, v8

    .line 1459
    goto/16 :goto_0

    .line 1425
    :cond_2
    :try_start_2
    array-length v2, p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    if-lt v9, v2, :cond_3

    .line 1427
    const/4 v2, 0x0

    :try_start_3
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mTxBuffer:[B

    iget v4, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mTxBufferCount:I

    array-length v5, p1

    invoke-static {p1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1428
    iget v2, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mTxBufferCount:I

    array-length v3, p1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mTxBufferCount:I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1435
    :goto_3
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mTxBuffer:[B

    goto :goto_1

    .line 1429
    :catch_0
    move-exception v6

    .line 1430
    .local v6, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "[BIP]"

    const-string v3, "[UDP]sendData - IndexOutOfBoundsException"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 1454
    .end local v6    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v7

    .line 1455
    .local v7, "ne":Ljava/lang/NullPointerException;
    const-string v2, "[BIP]"

    const-string v3, "[UDP]sendData NE"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1457
    const/4 v8, 0x5

    goto :goto_2

    .line 1433
    .end local v7    # "ne":Ljava/lang/NullPointerException;
    :cond_3
    :try_start_5
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UDP]sendData - tx buffer is not enough:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1446
    .restart local v0    # "packet":Ljava/net/DatagramPacket;
    :catch_2
    move-exception v6

    .line 1447
    .local v6, "e":Ljava/lang/Exception;
    const-string v2, "[BIP]"

    const-string v3, "[UDP]sendData - Exception"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/UdpChannel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    .line 1449
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1

    move v2, v10

    .line 1450
    goto/16 :goto_0
.end method
