.class Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "SpdyConnection.java"

# interfaces
.implements Lcom/android/okhttp/internal/spdy/FrameReader$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/SpdyConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Reader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/internal/spdy/SpdyConnection;)V
    .locals 4

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    .line 543
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$1000(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/internal/spdy/SpdyConnection;Lcom/android/okhttp/internal/spdy/SpdyConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;
    .param p2, "x1"    # Lcom/android/okhttp/internal/spdy/SpdyConnection$1;

    .prologue
    .line 541
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;-><init>(Lcom/android/okhttp/internal/spdy/SpdyConnection;)V

    return-void
.end method

.method private ackSettingsLater()V
    .locals 6

    .prologue
    .line 685
    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$2000()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader$2;

    const-string v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$1000(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader$2;-><init>(Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 693
    return-void
.end method


# virtual methods
.method public ackSettings()V
    .locals 0

    .prologue
    .line 697
    return-void
.end method

.method public data(ZILcom/android/okio/BufferedSource;I)V
    .locals 4
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lcom/android/okio/BufferedSource;
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushedStream(I)Z
    invoke-static {v1, p2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$1200(Lcom/android/okhttp/internal/spdy/SpdyConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 571
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushDataLater(ILcom/android/okio/BufferedSource;IZ)V
    invoke-static {v1, p2, p3, p4, p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$1300(Lcom/android/okhttp/internal/spdy/SpdyConnection;ILcom/android/okio/BufferedSource;IZ)V

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v1, p2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->getStream(I)Lcom/android/okhttp/internal/spdy/SpdyStream;

    move-result-object v0

    .line 575
    .local v0, "dataStream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    if-nez v0, :cond_2

    .line 576
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    sget-object v2, Lcom/android/okhttp/internal/spdy/ErrorCode;->INVALID_STREAM:Lcom/android/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v1, p2, v2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->writeSynResetLater(ILcom/android/okhttp/internal/spdy/ErrorCode;)V

    .line 577
    int-to-long v2, p4

    invoke-interface {p3, v2, v3}, Lcom/android/okio/BufferedSource;->skip(J)V

    goto :goto_0

    .line 580
    :cond_2
    invoke-virtual {v0, p3, p4}, Lcom/android/okhttp/internal/spdy/SpdyStream;->receiveData(Lcom/android/okio/BufferedSource;I)V

    .line 581
    if-eqz p1, :cond_0

    .line 582
    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->receiveFin()V

    goto :goto_0
.end method

.method protected execute()V
    .locals 5

    .prologue
    .line 547
    sget-object v0, Lcom/android/okhttp/internal/spdy/ErrorCode;->INTERNAL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    .line 548
    .local v0, "connectionErrorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    sget-object v2, Lcom/android/okhttp/internal/spdy/ErrorCode;->INTERNAL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    .line 550
    .local v2, "streamErrorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    :try_start_0
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    iget-boolean v3, v3, Lcom/android/okhttp/internal/spdy/SpdyConnection;->client:Z

    if-nez v3, :cond_0

    .line 551
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    iget-object v3, v3, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameReader:Lcom/android/okhttp/internal/spdy/FrameReader;

    invoke-interface {v3}, Lcom/android/okhttp/internal/spdy/FrameReader;->readConnectionHeader()V

    .line 553
    :cond_0
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    iget-object v3, v3, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameReader:Lcom/android/okhttp/internal/spdy/FrameReader;

    invoke-interface {v3, p0}, Lcom/android/okhttp/internal/spdy/FrameReader;->nextFrame(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 555
    sget-object v0, Lcom/android/okhttp/internal/spdy/ErrorCode;->NO_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    .line 556
    sget-object v2, Lcom/android/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/spdy/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    :try_start_1
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/android/okhttp/internal/spdy/SpdyConnection;->close(Lcom/android/okhttp/internal/spdy/ErrorCode;Lcom/android/okhttp/internal/spdy/ErrorCode;)V
    invoke-static {v3, v0, v2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$1100(Lcom/android/okhttp/internal/spdy/SpdyConnection;Lcom/android/okhttp/internal/spdy/ErrorCode;Lcom/android/okhttp/internal/spdy/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 566
    :goto_0
    return-void

    .line 557
    :catch_0
    move-exception v1

    .line 558
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v0, Lcom/android/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    .line 559
    sget-object v2, Lcom/android/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 562
    :try_start_3
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/android/okhttp/internal/spdy/SpdyConnection;->close(Lcom/android/okhttp/internal/spdy/ErrorCode;Lcom/android/okhttp/internal/spdy/ErrorCode;)V
    invoke-static {v3, v0, v2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$1100(Lcom/android/okhttp/internal/spdy/SpdyConnection;Lcom/android/okhttp/internal/spdy/ErrorCode;Lcom/android/okhttp/internal/spdy/ErrorCode;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 563
    :catch_1
    move-exception v3

    goto :goto_0

    .line 561
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 562
    :try_start_4
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/android/okhttp/internal/spdy/SpdyConnection;->close(Lcom/android/okhttp/internal/spdy/ErrorCode;Lcom/android/okhttp/internal/spdy/ErrorCode;)V
    invoke-static {v4, v0, v2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$1100(Lcom/android/okhttp/internal/spdy/SpdyConnection;Lcom/android/okhttp/internal/spdy/ErrorCode;Lcom/android/okhttp/internal/spdy/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 564
    :goto_1
    throw v3

    .line 563
    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public goAway(ILcom/android/okhttp/internal/spdy/ErrorCode;Lcom/android/okio/ByteString;)V
    .locals 6
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;
    .param p3, "debugData"    # Lcom/android/okio/ByteString;

    .prologue
    .line 712
    invoke-virtual {p3}, Lcom/android/okio/ByteString;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 714
    :cond_0
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    monitor-enter v4

    .line 715
    :try_start_0
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    const/4 v5, 0x1

    # setter for: Lcom/android/okhttp/internal/spdy/SpdyConnection;->shutdown:Z
    invoke-static {v3, v5}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$1502(Lcom/android/okhttp/internal/spdy/SpdyConnection;Z)Z

    .line 718
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$1800(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 719
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/okhttp/internal/spdy/SpdyStream;>;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 720
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 721
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/okhttp/internal/spdy/SpdyStream;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 722
    .local v2, "streamId":I
    if-le v2, p1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v3}, Lcom/android/okhttp/internal/spdy/SpdyStream;->isLocallyInitiated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 723
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/okhttp/internal/spdy/SpdyStream;

    sget-object v5, Lcom/android/okhttp/internal/spdy/ErrorCode;->REFUSED_STREAM:Lcom/android/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v3, v5}, Lcom/android/okhttp/internal/spdy/SpdyStream;->receiveRstStream(Lcom/android/okhttp/internal/spdy/ErrorCode;)V

    .line 724
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 727
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/okhttp/internal/spdy/SpdyStream;>;"
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/okhttp/internal/spdy/SpdyStream;>;>;"
    .end local v2    # "streamId":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/okhttp/internal/spdy/SpdyStream;>;>;"
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 728
    return-void
.end method

.method public headers(ZZIIILjava/util/List;Lcom/android/okhttp/internal/spdy/HeadersMode;)V
    .locals 11
    .param p1, "outFinished"    # Z
    .param p2, "inFinished"    # Z
    .param p3, "streamId"    # I
    .param p4, "associatedStreamId"    # I
    .param p5, "priority"    # I
    .param p7, "headersMode"    # Lcom/android/okhttp/internal/spdy/HeadersMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZIII",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;",
            "Lcom/android/okhttp/internal/spdy/HeadersMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 588
    .local p6, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushedStream(I)Z
    invoke-static {v3, p3}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$1200(Lcom/android/okhttp/internal/spdy/SpdyConnection;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 589
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    move-object/from16 v0, p6

    # invokes: Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushHeadersLater(ILjava/util/List;Z)V
    invoke-static {v3, p3, v0, p2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$1400(Lcom/android/okhttp/internal/spdy/SpdyConnection;ILjava/util/List;Z)V

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    iget-object v10, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    monitor-enter v10

    .line 595
    :try_start_0
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection;->shutdown:Z
    invoke-static {v3}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$1500(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Z

    move-result v3

    if-eqz v3, :cond_2

    monitor-exit v10

    goto :goto_0

    .line 628
    :catchall_0
    move-exception v3

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 597
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v3, p3}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->getStream(I)Lcom/android/okhttp/internal/spdy/SpdyStream;

    move-result-object v9

    .line 599
    .local v9, "stream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    if-nez v9, :cond_6

    .line 601
    invoke-virtual/range {p7 .. p7}, Lcom/android/okhttp/internal/spdy/HeadersMode;->failIfStreamAbsent()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 602
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    sget-object v4, Lcom/android/okhttp/internal/spdy/ErrorCode;->INVALID_STREAM:Lcom/android/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v3, p3, v4}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->writeSynResetLater(ILcom/android/okhttp/internal/spdy/ErrorCode;)V

    .line 603
    monitor-exit v10

    goto :goto_0

    .line 607
    :cond_3
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection;->lastGoodStreamId:I
    invoke-static {v3}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$1600(Lcom/android/okhttp/internal/spdy/SpdyConnection;)I

    move-result v3

    if-gt p3, v3, :cond_4

    monitor-exit v10

    goto :goto_0

    .line 610
    :cond_4
    rem-int/lit8 v3, p3, 0x2

    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I
    invoke-static {v4}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$1700(Lcom/android/okhttp/internal/spdy/SpdyConnection;)I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_5

    monitor-exit v10

    goto :goto_0

    .line 613
    :cond_5
    new-instance v2, Lcom/android/okhttp/internal/spdy/SpdyStream;

    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    move v3, p3

    move v5, p1

    move v6, p2

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/okhttp/internal/spdy/SpdyStream;-><init>(ILcom/android/okhttp/internal/spdy/SpdyConnection;ZZILjava/util/List;)V

    .line 615
    .local v2, "newStream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    # setter for: Lcom/android/okhttp/internal/spdy/SpdyConnection;->lastGoodStreamId:I
    invoke-static {v3, p3}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$1602(Lcom/android/okhttp/internal/spdy/SpdyConnection;I)I

    .line 616
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$1800(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$2000()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader$1;

    const-string v5, "OkHttp %s stream %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$1000(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v4, p0, v5, v6, v2}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader$1;-><init>(Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/android/okhttp/internal/spdy/SpdyStream;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 626
    monitor-exit v10

    goto/16 :goto_0

    .line 628
    .end local v2    # "newStream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    :cond_6
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 631
    invoke-virtual/range {p7 .. p7}, Lcom/android/okhttp/internal/spdy/HeadersMode;->failIfStreamPresent()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 632
    sget-object v3, Lcom/android/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v9, v3}, Lcom/android/okhttp/internal/spdy/SpdyStream;->closeLater(Lcom/android/okhttp/internal/spdy/ErrorCode;)V

    .line 633
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v3, p3}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->removeStream(I)Lcom/android/okhttp/internal/spdy/SpdyStream;

    goto/16 :goto_0

    .line 638
    :cond_7
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {v9, v0, v1}, Lcom/android/okhttp/internal/spdy/SpdyStream;->receiveHeaders(Ljava/util/List;Lcom/android/okhttp/internal/spdy/HeadersMode;)V

    .line 639
    if-eqz p2, :cond_0

    invoke-virtual {v9}, Lcom/android/okhttp/internal/spdy/SpdyStream;->receiveFin()V

    goto/16 :goto_0
.end method

.method public ping(ZII)V
    .locals 4
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I

    .prologue
    .line 700
    if-eqz p1, :cond_1

    .line 701
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/android/okhttp/internal/spdy/SpdyConnection;->removePing(I)Lcom/android/okhttp/internal/spdy/Ping;
    invoke-static {v1, p2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$2300(Lcom/android/okhttp/internal/spdy/SpdyConnection;I)Lcom/android/okhttp/internal/spdy/Ping;

    move-result-object v0

    .line 702
    .local v0, "ping":Lcom/android/okhttp/internal/spdy/Ping;
    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/Ping;->receive()V

    .line 709
    .end local v0    # "ping":Lcom/android/okhttp/internal/spdy/Ping;
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    # invokes: Lcom/android/okhttp/internal/spdy/SpdyConnection;->writePingLater(ZIILcom/android/okhttp/internal/spdy/Ping;)V
    invoke-static {v1, v2, p2, p3, v3}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$2400(Lcom/android/okhttp/internal/spdy/SpdyConnection;ZIILcom/android/okhttp/internal/spdy/Ping;)V

    goto :goto_0
.end method

.method public priority(II)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "priority"    # I

    .prologue
    .line 748
    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 752
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushRequestLater(ILjava/util/List;)V
    invoke-static {v0, p2, p3}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$2500(Lcom/android/okhttp/internal/spdy/SpdyConnection;ILjava/util/List;)V

    .line 753
    return-void
.end method

.method public rstStream(ILcom/android/okhttp/internal/spdy/ErrorCode;)V
    .locals 2
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;

    .prologue
    .line 643
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushedStream(I)Z
    invoke-static {v1, p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$1200(Lcom/android/okhttp/internal/spdy/SpdyConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 644
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushResetLater(ILcom/android/okhttp/internal/spdy/ErrorCode;)V
    invoke-static {v1, p1, p2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$2100(Lcom/android/okhttp/internal/spdy/SpdyConnection;ILcom/android/okhttp/internal/spdy/ErrorCode;)V

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v1, p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->removeStream(I)Lcom/android/okhttp/internal/spdy/SpdyStream;

    move-result-object v0

    .line 648
    .local v0, "rstStream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {v0, p2}, Lcom/android/okhttp/internal/spdy/SpdyStream;->receiveRstStream(Lcom/android/okhttp/internal/spdy/ErrorCode;)V

    goto :goto_0
.end method

.method public settings(ZLcom/android/okhttp/internal/spdy/Settings;)V
    .locals 12
    .param p1, "clearPrevious"    # Z
    .param p2, "newSettings"    # Lcom/android/okhttp/internal/spdy/Settings;

    .prologue
    .line 654
    const-wide/16 v2, 0x0

    .line 655
    .local v2, "delta":J
    const/4 v8, 0x0

    .line 656
    .local v8, "streamsToNotify":[Lcom/android/okhttp/internal/spdy/SpdyStream;
    iget-object v10, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    monitor-enter v10

    .line 657
    :try_start_0
    iget-object v9, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    iget-object v9, v9, Lcom/android/okhttp/internal/spdy/SpdyConnection;->peerSettings:Lcom/android/okhttp/internal/spdy/Settings;

    const/high16 v11, 0x10000

    invoke-virtual {v9, v11}, Lcom/android/okhttp/internal/spdy/Settings;->getInitialWindowSize(I)I

    move-result v6

    .line 658
    .local v6, "priorWriteWindowSize":I
    if-eqz p1, :cond_0

    iget-object v9, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    iget-object v9, v9, Lcom/android/okhttp/internal/spdy/SpdyConnection;->peerSettings:Lcom/android/okhttp/internal/spdy/Settings;

    invoke-virtual {v9}, Lcom/android/okhttp/internal/spdy/Settings;->clear()V

    .line 659
    :cond_0
    iget-object v9, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    iget-object v9, v9, Lcom/android/okhttp/internal/spdy/SpdyConnection;->peerSettings:Lcom/android/okhttp/internal/spdy/Settings;

    invoke-virtual {v9, p2}, Lcom/android/okhttp/internal/spdy/Settings;->merge(Lcom/android/okhttp/internal/spdy/Settings;)V

    .line 660
    iget-object v9, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v9}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->getProtocol()Lcom/android/okhttp/Protocol;

    move-result-object v9

    sget-object v11, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-ne v9, v11, :cond_1

    .line 661
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->ackSettingsLater()V

    .line 663
    :cond_1
    iget-object v9, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    iget-object v9, v9, Lcom/android/okhttp/internal/spdy/SpdyConnection;->peerSettings:Lcom/android/okhttp/internal/spdy/Settings;

    const/high16 v11, 0x10000

    invoke-virtual {v9, v11}, Lcom/android/okhttp/internal/spdy/Settings;->getInitialWindowSize(I)I

    move-result v5

    .line 664
    .local v5, "peerInitialWindowSize":I
    const/4 v9, -0x1

    if-eq v5, v9, :cond_3

    if-eq v5, v6, :cond_3

    .line 665
    sub-int v9, v5, v6

    int-to-long v2, v9

    .line 666
    iget-object v9, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection;->receivedInitialPeerSettings:Z
    invoke-static {v9}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$2200(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 667
    iget-object v9, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v9, v2, v3}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->addBytesToWriteWindow(J)V

    .line 668
    iget-object v9, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    const/4 v11, 0x1

    # setter for: Lcom/android/okhttp/internal/spdy/SpdyConnection;->receivedInitialPeerSettings:Z
    invoke-static {v9, v11}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$2202(Lcom/android/okhttp/internal/spdy/SpdyConnection;Z)Z

    .line 670
    :cond_2
    iget-object v9, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;
    invoke-static {v9}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$1800(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 671
    iget-object v9, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;
    invoke-static {v9}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$1800(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    iget-object v11, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;
    invoke-static {v11}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$1800(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    new-array v11, v11, [Lcom/android/okhttp/internal/spdy/SpdyStream;

    invoke-interface {v9, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, [Lcom/android/okhttp/internal/spdy/SpdyStream;

    move-object v8, v0

    .line 674
    :cond_3
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 675
    if-eqz v8, :cond_4

    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-eqz v9, :cond_4

    .line 676
    iget-object v9, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;
    invoke-static {v9}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$1800(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/okhttp/internal/spdy/SpdyStream;

    .line 677
    .local v7, "stream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    monitor-enter v7

    .line 678
    :try_start_1
    invoke-virtual {v7, v2, v3}, Lcom/android/okhttp/internal/spdy/SpdyStream;->addBytesToWriteWindow(J)V

    .line 679
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 674
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "peerInitialWindowSize":I
    .end local v6    # "priorWriteWindowSize":I
    .end local v7    # "stream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    :catchall_1
    move-exception v9

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v9

    .line 682
    .restart local v5    # "peerInitialWindowSize":I
    .restart local v6    # "priorWriteWindowSize":I
    :cond_4
    return-void
.end method

.method public windowUpdate(IJ)V
    .locals 6
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J

    .prologue
    .line 731
    if-nez p1, :cond_1

    .line 732
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    monitor-enter v2

    .line 733
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    iget-wide v4, v1, Lcom/android/okhttp/internal/spdy/SpdyConnection;->bytesLeftInWriteWindow:J

    add-long/2addr v4, p2

    iput-wide v4, v1, Lcom/android/okhttp/internal/spdy/SpdyConnection;->bytesLeftInWriteWindow:J

    .line 734
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 735
    monitor-exit v2

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 735
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 737
    :cond_1
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v1, p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->getStream(I)Lcom/android/okhttp/internal/spdy/SpdyStream;

    move-result-object v0

    .line 738
    .local v0, "stream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    if-eqz v0, :cond_0

    .line 739
    monitor-enter v0

    .line 740
    :try_start_1
    invoke-virtual {v0, p2, p3}, Lcom/android/okhttp/internal/spdy/SpdyStream;->addBytesToWriteWindow(J)V

    .line 741
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
