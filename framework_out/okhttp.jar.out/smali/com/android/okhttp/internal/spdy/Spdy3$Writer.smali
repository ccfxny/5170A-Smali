.class final Lcom/android/okhttp/internal/spdy/Spdy3$Writer;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lcom/android/okhttp/internal/spdy/FrameWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/Spdy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final client:Z

.field private closed:Z

.field private final headerBlockBuffer:Lcom/android/okio/OkBuffer;

.field private final headerBlockOut:Lcom/android/okio/BufferedSink;

.field private final sink:Lcom/android/okio/BufferedSink;


# direct methods
.method constructor <init>(Lcom/android/okio/BufferedSink;Z)V
    .locals 3
    .param p1, "sink"    # Lcom/android/okio/BufferedSink;
    .param p2, "client"    # Z

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    .line 302
    iput-boolean p2, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->client:Z

    .line 304
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    .line 305
    .local v0, "deflater":Ljava/util/zip/Deflater;
    sget-object v1, Lcom/android/okhttp/internal/spdy/Spdy3;->DICTIONARY:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setDictionary([B)V

    .line 306
    new-instance v1, Lcom/android/okio/OkBuffer;

    invoke-direct {v1}, Lcom/android/okio/OkBuffer;-><init>()V

    iput-object v1, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okio/OkBuffer;

    .line 307
    new-instance v1, Lcom/android/okio/DeflaterSink;

    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okio/OkBuffer;

    invoke-direct {v1, v2, v0}, Lcom/android/okio/DeflaterSink;-><init>(Lcom/android/okio/Sink;Ljava/util/zip/Deflater;)V

    invoke-static {v1}, Lcom/android/okio/Okio;->buffer(Lcom/android/okio/Sink;)Lcom/android/okio/BufferedSink;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lcom/android/okio/BufferedSink;

    .line 308
    return-void
.end method

.method private writeNameValueBlockToBuffer(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v4}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 417
    :cond_0
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lcom/android/okio/BufferedSink;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 418
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 419
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/okhttp/internal/spdy/Header;

    iget-object v1, v4, Lcom/android/okhttp/internal/spdy/Header;->name:Lcom/android/okio/ByteString;

    .line 420
    .local v1, "name":Lcom/android/okio/ByteString;
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lcom/android/okio/BufferedSink;

    invoke-virtual {v1}, Lcom/android/okio/ByteString;->size()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 421
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lcom/android/okio/BufferedSink;

    invoke-interface {v4, v1}, Lcom/android/okio/BufferedSink;->write(Lcom/android/okio/ByteString;)Lcom/android/okio/BufferedSink;

    .line 422
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/okhttp/internal/spdy/Header;

    iget-object v3, v4, Lcom/android/okhttp/internal/spdy/Header;->value:Lcom/android/okio/ByteString;

    .line 423
    .local v3, "value":Lcom/android/okio/ByteString;
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lcom/android/okio/BufferedSink;

    invoke-virtual {v3}, Lcom/android/okio/ByteString;->size()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 424
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lcom/android/okio/BufferedSink;

    invoke-interface {v4, v3}, Lcom/android/okio/BufferedSink;->write(Lcom/android/okio/ByteString;)Lcom/android/okio/BufferedSink;

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    .end local v1    # "name":Lcom/android/okio/ByteString;
    .end local v3    # "value":Lcom/android/okio/ByteString;
    :cond_1
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lcom/android/okio/BufferedSink;

    invoke-interface {v4}, Lcom/android/okio/BufferedSink;->flush()V

    .line 427
    return-void
.end method


# virtual methods
.method public ackSettings()V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    .line 496
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lcom/android/okio/BufferedSink;

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/Util;->closeAll(Ljava/io/Closeable;Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    monitor-exit p0

    return-void

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionHeader()V
    .locals 0

    .prologue
    .line 322
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized data(ZILcom/android/okio/OkBuffer;)V
    .locals 2
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lcom/android/okio/OkBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    invoke-virtual {p3}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->data(ZILcom/android/okio/OkBuffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    monitor-exit p0

    return-void

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized data(ZILcom/android/okio/OkBuffer;I)V
    .locals 2
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lcom/android/okio/OkBuffer;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 399
    .local v0, "flags":I
    :goto_0
    :try_start_0
    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sendDataFrame(IILcom/android/okio/OkBuffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    monitor-exit p0

    return-void

    .line 398
    .end local v0    # "flags":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "flags":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 326
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized goAway(ILcom/android/okhttp/internal/spdy/ErrorCode;[B)V
    .locals 5
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;
    .param p3, "ignored"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 464
    :cond_0
    :try_start_1
    iget v3, p2, Lcom/android/okhttp/internal/spdy/ErrorCode;->spdyGoAwayCode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 465
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "errorCode.spdyGoAwayCode == -1"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 467
    :cond_1
    const/4 v2, 0x7

    .line 468
    .local v2, "type":I
    const/4 v0, 0x0

    .line 469
    .local v0, "flags":I
    const/16 v1, 0x8

    .line 470
    .local v1, "length":I
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    const v4, -0x7ffcfff9

    invoke-interface {v3, v4}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 471
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 472
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v3, p1}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 473
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    iget v4, p2, Lcom/android/okhttp/internal/spdy/ErrorCode;->spdyGoAwayCode:I

    invoke-interface {v3, v4}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 474
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized headers(ILjava/util/List;)V
    .locals 8
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    .local p2, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 366
    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, "flags":I
    const/16 v2, 0x8

    .line 369
    .local v2, "type":I
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v3}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    long-to-int v1, v4

    .line 371
    .local v1, "length":I
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    const v4, -0x7ffcfff8

    invoke-interface {v3, v4}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 372
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    const v4, 0xffffff

    and-int/2addr v4, v1

    or-int/lit8 v4, v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 373
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    const v4, 0x7fffffff

    and-int/2addr v4, p1

    invoke-interface {v3, v4}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 374
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okio/OkBuffer;

    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v5}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v6

    invoke-interface {v3, v4, v6, v7}, Lcom/android/okio/BufferedSink;->write(Lcom/android/okio/OkBuffer;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized ping(ZII)V
    .locals 7
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 449
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    if-eqz v5, :cond_0

    new-instance v4, Ljava/io/IOException;

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 450
    :cond_0
    :try_start_1
    iget-boolean v6, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->client:Z

    and-int/lit8 v5, p2, 0x1

    if-ne v5, v2, :cond_1

    move v5, v2

    :goto_0
    if-eq v6, v5, :cond_2

    .line 451
    .local v2, "payloadIsReply":Z
    :goto_1
    if-eq p1, v2, :cond_3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "payload != reply"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "payloadIsReply":Z
    :cond_1
    move v5, v4

    .line 450
    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    .line 452
    .restart local v2    # "payloadIsReply":Z
    :cond_3
    const/4 v3, 0x6

    .line 453
    .local v3, "type":I
    const/4 v0, 0x0

    .line 454
    .local v0, "flags":I
    const/4 v1, 0x4

    .line 455
    .local v1, "length":I
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    const v5, -0x7ffcfffa

    invoke-interface {v4, v5}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 456
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    const/4 v5, 0x4

    invoke-interface {v4, v5}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 457
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v4, p2}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 458
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v4}, Lcom/android/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 459
    monitor-exit p0

    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 0
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    return-void
.end method

.method public declared-synchronized rstStream(ILcom/android/okhttp/internal/spdy/ErrorCode;)V
    .locals 5
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 380
    :cond_0
    :try_start_1
    iget v3, p2, Lcom/android/okhttp/internal/spdy/ErrorCode;->spdyRstCode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 381
    :cond_1
    const/4 v0, 0x0

    .line 382
    .local v0, "flags":I
    const/4 v2, 0x3

    .line 383
    .local v2, "type":I
    const/16 v1, 0x8

    .line 384
    .local v1, "length":I
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    const v4, -0x7ffcfffd

    invoke-interface {v3, v4}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 385
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 386
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    const v4, 0x7fffffff

    and-int/2addr v4, p1

    invoke-interface {v3, v4}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 387
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    iget v4, p2, Lcom/android/okhttp/internal/spdy/ErrorCode;->spdyRstCode:I

    invoke-interface {v3, v4}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 388
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    monitor-exit p0

    return-void
.end method

.method sendDataFrame(IILcom/android/okio/OkBuffer;I)V
    .locals 4
    .param p1, "streamId"    # I
    .param p2, "flags"    # I
    .param p3, "buffer"    # Lcom/android/okio/OkBuffer;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_0
    int-to-long v0, p4

    const-wide/32 v2, 0xffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 406
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FRAME_TOO_LARGE max size is 16Mib: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 409
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p4

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 410
    if-lez p4, :cond_2

    .line 411
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    int-to-long v2, p4

    invoke-interface {v0, p3, v2, v3}, Lcom/android/okio/BufferedSink;->write(Lcom/android/okio/OkBuffer;J)V

    .line 413
    :cond_2
    return-void
.end method

.method public declared-synchronized settings(Lcom/android/okhttp/internal/spdy/Settings;)V
    .locals 10
    .param p1, "settings"    # Lcom/android/okhttp/internal/spdy/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v9, 0xffffff

    .line 430
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/io/IOException;

    const-string v7, "closed"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 431
    :cond_0
    const/4 v5, 0x4

    .line 432
    .local v5, "type":I
    const/4 v0, 0x0

    .line 433
    .local v0, "flags":I
    :try_start_1
    invoke-virtual {p1}, Lcom/android/okhttp/internal/spdy/Settings;->size()I

    move-result v4

    .line 434
    .local v4, "size":I
    mul-int/lit8 v6, v4, 0x8

    add-int/lit8 v2, v6, 0x4

    .line 435
    .local v2, "length":I
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    const v7, -0x7ffcfffc

    invoke-interface {v6, v7}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 436
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    and-int v7, v2, v9

    or-int/lit8 v7, v7, 0x0

    invoke-interface {v6, v7}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 437
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v6, v4}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 438
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v6, 0xa

    if-gt v1, v6, :cond_2

    .line 439
    invoke-virtual {p1, v1}, Lcom/android/okhttp/internal/spdy/Settings;->isSet(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 438
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/okhttp/internal/spdy/Settings;->flags(I)I

    move-result v3

    .line 441
    .local v3, "settingsFlags":I
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    and-int/lit16 v7, v3, 0xff

    shl-int/lit8 v7, v7, 0x18

    and-int v8, v1, v9

    or-int/2addr v7, v8

    invoke-interface {v6, v7}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 442
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    invoke-virtual {p1, v1}, Lcom/android/okhttp/internal/spdy/Settings;->get(I)I

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    goto :goto_1

    .line 444
    .end local v3    # "settingsFlags":I
    :cond_2
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v6}, Lcom/android/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synReply(ZILjava/util/List;)V
    .locals 8
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 351
    :cond_0
    :try_start_1
    invoke-direct {p0, p3}, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 352
    const/4 v2, 0x2

    .line 353
    .local v2, "type":I
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 354
    .local v0, "flags":I
    :goto_0
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v3}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    long-to-int v1, v4

    .line 356
    .local v1, "length":I
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    const v4, -0x7ffcfffe

    invoke-interface {v3, v4}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 357
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    and-int/lit16 v4, v0, 0xff

    shl-int/lit8 v4, v4, 0x18

    const v5, 0xffffff

    and-int/2addr v5, v1

    or-int/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 358
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    const v4, 0x7fffffff

    and-int/2addr v4, p2

    invoke-interface {v3, v4}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 359
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okio/OkBuffer;

    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v5}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v6

    invoke-interface {v3, v4, v6, v7}, Lcom/android/okio/BufferedSink;->write(Lcom/android/okio/OkBuffer;J)V

    .line 360
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    monitor-exit p0

    return-void

    .line 353
    .end local v0    # "flags":I
    .end local v1    # "length":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized synStream(ZZIIIILjava/util/List;)V
    .locals 8
    .param p1, "outFinished"    # Z
    .param p2, "inFinished"    # Z
    .param p3, "streamId"    # I
    .param p4, "associatedStreamId"    # I
    .param p5, "priority"    # I
    .param p6, "slot"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZIIII",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    .local p7, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/IOException;

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 333
    :cond_0
    :try_start_1
    invoke-direct {p0, p7}, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 334
    const-wide/16 v4, 0xa

    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v6}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v1, v4

    .line 335
    .local v1, "length":I
    const/4 v2, 0x1

    .line 336
    .local v2, "type":I
    if-eqz p1, :cond_1

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    if-eqz p2, :cond_2

    const/4 v4, 0x2

    :goto_1
    or-int v0, v5, v4

    .line 338
    .local v0, "flags":I
    const/4 v3, 0x0

    .line 339
    .local v3, "unused":I
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    const v5, -0x7ffcffff

    invoke-interface {v4, v5}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 340
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    and-int/lit16 v5, v0, 0xff

    shl-int/lit8 v5, v5, 0x18

    const v6, 0xffffff

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    invoke-interface {v4, v5}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 341
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    const v5, 0x7fffffff

    and-int/2addr v5, p3

    invoke-interface {v4, v5}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 342
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    const v5, 0x7fffffff

    and-int/2addr v5, p4

    invoke-interface {v4, v5}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 343
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    and-int/lit8 v5, p5, 0x7

    shl-int/lit8 v5, v5, 0xd

    or-int/lit8 v5, v5, 0x0

    and-int/lit16 v6, p6, 0xff

    or-int/2addr v5, v6

    invoke-interface {v4, v5}, Lcom/android/okio/BufferedSink;->writeShort(I)Lcom/android/okio/BufferedSink;

    .line 344
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okio/OkBuffer;

    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v6}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Lcom/android/okio/BufferedSink;->write(Lcom/android/okio/OkBuffer;J)V

    .line 345
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v4}, Lcom/android/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    monitor-exit p0

    return-void

    .line 336
    .end local v0    # "flags":I
    .end local v3    # "unused":I
    :cond_1
    const/4 v4, 0x0

    move v5, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .locals 6
    .param p1, "streamId"    # I
    .param p2, "increment"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 479
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 480
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-eqz v3, :cond_1

    const-wide/32 v4, 0x7fffffff

    cmp-long v3, p2, v4

    if-lez v3, :cond_2

    .line 481
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "windowSizeIncrement must be between 1 and 0x7fffffff: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 484
    :cond_2
    const/16 v2, 0x9

    .line 485
    .local v2, "type":I
    const/4 v0, 0x0

    .line 486
    .local v0, "flags":I
    const/16 v1, 0x8

    .line 487
    .local v1, "length":I
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    const v4, -0x7ffcfff7

    invoke-interface {v3, v4}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 488
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 489
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v3, p1}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 490
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    long-to-int v4, p2

    invoke-interface {v3, v4}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 491
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 492
    monitor-exit p0

    return-void
.end method
