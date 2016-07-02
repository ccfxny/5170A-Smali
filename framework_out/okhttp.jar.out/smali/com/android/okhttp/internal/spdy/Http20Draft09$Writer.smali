.class final Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;
.super Ljava/lang/Object;
.source "Http20Draft09.java"

# interfaces
.implements Lcom/android/okhttp/internal/spdy/FrameWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/Http20Draft09;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final client:Z

.field private closed:Z

.field private final hpackBuffer:Lcom/android/okio/OkBuffer;

.field private final hpackWriter:Lcom/android/okhttp/internal/spdy/HpackDraft05$Writer;

.field private final sink:Lcom/android/okio/BufferedSink;


# direct methods
.method constructor <init>(Lcom/android/okio/BufferedSink;Z)V
    .locals 2
    .param p1, "sink"    # Lcom/android/okio/BufferedSink;
    .param p2, "client"    # Z

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->sink:Lcom/android/okio/BufferedSink;

    .line 300
    iput-boolean p2, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->client:Z

    .line 301
    new-instance v0, Lcom/android/okio/OkBuffer;

    invoke-direct {v0}, Lcom/android/okio/OkBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->hpackBuffer:Lcom/android/okio/OkBuffer;

    .line 302
    new-instance v0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Writer;

    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->hpackBuffer:Lcom/android/okio/OkBuffer;

    invoke-direct {v0, v1}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Writer;-><init>(Lcom/android/okio/OkBuffer;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->hpackWriter:Lcom/android/okhttp/internal/spdy/HpackDraft05$Writer;

    .line 303
    return-void
.end method

.method private headers(ZIILjava/util/List;)V
    .locals 9
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
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
    .local p4, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    const/4 v8, -0x1

    .line 363
    iget-boolean v3, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 364
    :cond_0
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->hpackBuffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v3}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 365
    :cond_1
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->hpackWriter:Lcom/android/okhttp/internal/spdy/HpackDraft05$Writer;

    invoke-virtual {v3, p4}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Writer;->writeHeaders(Ljava/util/List;)V

    .line 367
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->hpackBuffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v3}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v4

    long-to-int v1, v4

    .line 368
    .local v1, "length":I
    const/4 v2, 0x1

    .line 369
    .local v2, "type":B
    const/4 v0, 0x4

    .line 370
    .local v0, "flags":B
    if-eqz p1, :cond_2

    const/4 v3, 0x5

    int-to-byte v0, v3

    .line 371
    :cond_2
    if-eq p3, v8, :cond_3

    or-int/lit8 v3, v0, 0x8

    int-to-byte v0, v3

    .line 372
    :cond_3
    if-eq p3, v8, :cond_4

    add-int/lit8 v1, v1, 0x4

    .line 373
    :cond_4
    invoke-virtual {p0, v1, v2, v0, p2}, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->frameHeader(IBBI)V

    .line 374
    if-eq p3, v8, :cond_5

    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->sink:Lcom/android/okio/BufferedSink;

    const v4, 0x7fffffff

    and-int/2addr v4, p3

    invoke-interface {v3, v4}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 375
    :cond_5
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->sink:Lcom/android/okio/BufferedSink;

    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->hpackBuffer:Lcom/android/okio/OkBuffer;

    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->hpackBuffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v5}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v6

    invoke-interface {v3, v4, v6, v7}, Lcom/android/okio/BufferedSink;->write(Lcom/android/okio/OkBuffer;J)V

    .line 376
    return-void
.end method


# virtual methods
.method public declared-synchronized ackSettings()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->closed:Z

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

    .line 312
    :cond_0
    const/4 v1, 0x0

    .line 313
    .local v1, "length":I
    const/4 v3, 0x4

    .line 314
    .local v3, "type":B
    const/4 v0, 0x1

    .line 315
    .local v0, "flags":B
    const/4 v2, 0x0

    .line 316
    .local v2, "streamId":I
    :try_start_1
    invoke-virtual {p0, v1, v3, v0, v2}, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->frameHeader(IBBI)V

    .line 317
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v4}, Lcom/android/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->closed:Z

    .line 474
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okio/BufferedSink;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    monitor-exit p0

    return-void

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->closed:Z

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

    .line 322
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->client:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 325
    :goto_0
    monitor-exit p0

    return-void

    .line 323
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->sink:Lcom/android/okio/BufferedSink;

    # getter for: Lcom/android/okhttp/internal/spdy/Http20Draft09;->CONNECTION_HEADER:Lcom/android/okio/ByteString;
    invoke-static {}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->access$000()Lcom/android/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okio/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/okio/BufferedSink;->write([B)Lcom/android/okio/BufferedSink;

    .line 324
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okio/BufferedSink;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
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

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->data(ZILcom/android/okio/OkBuffer;I)V
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
    .locals 3
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

    :try_start_0
    iget-boolean v1, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->closed:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 399
    :cond_0
    const/4 v0, 0x0

    .line 400
    .local v0, "flags":B
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    int-to-byte v0, v1

    .line 401
    :cond_1
    :try_start_1
    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->dataFrame(IBLcom/android/okio/OkBuffer;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    monitor-exit p0

    return-void
.end method

.method dataFrame(IBLcom/android/okio/OkBuffer;I)V
    .locals 4
    .param p1, "streamId"    # I
    .param p2, "flags"    # B
    .param p3, "buffer"    # Lcom/android/okio/OkBuffer;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "type":B
    invoke-virtual {p0, p4, v0, p2, p1}, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->frameHeader(IBBI)V

    .line 407
    if-lez p4, :cond_0

    .line 408
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->sink:Lcom/android/okio/BufferedSink;

    int-to-long v2, p4

    invoke-interface {v1, p3, v2, v3}, Lcom/android/okio/BufferedSink;->write(Lcom/android/okio/OkBuffer;J)V

    .line 410
    :cond_0
    return-void
.end method

.method public declared-synchronized flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->closed:Z

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

    .line 307
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    monitor-exit p0

    return-void
.end method

.method frameHeader(IBBI)V
    .locals 4
    .param p1, "length"    # I
    .param p2, "type"    # B
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 478
    const/16 v0, 0x3fff

    if-le p1, v0, :cond_0

    const-string v0, "FRAME_SIZE_ERROR length > 16383: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    # invokes: Lcom/android/okhttp/internal/spdy/Http20Draft09;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 479
    :cond_0
    const/high16 v0, -0x80000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_1

    const-string v0, "reserved bit set: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    # invokes: Lcom/android/okhttp/internal/spdy/Http20Draft09;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->sink:Lcom/android/okio/BufferedSink;

    and-int/lit16 v1, p1, 0x3fff

    shl-int/lit8 v1, v1, 0x10

    and-int/lit16 v2, p2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    and-int/lit16 v2, p3, 0xff

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 481
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->sink:Lcom/android/okio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr v1, p4

    invoke-interface {v0, v1}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 482
    return-void
.end method

.method public declared-synchronized goAway(ILcom/android/okhttp/internal/spdy/ErrorCode;[B)V
    .locals 6
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;
    .param p3, "debugData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 442
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->closed:Z

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

    .line 443
    :cond_0
    :try_start_1
    iget v4, p2, Lcom/android/okhttp/internal/spdy/ErrorCode;->httpCode:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    const-string v4, "errorCode.httpCode == -1"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    # invokes: Lcom/android/okhttp/internal/spdy/Http20Draft09;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    invoke-static {v4, v5}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 444
    :cond_1
    array-length v4, p3

    add-int/lit8 v1, v4, 0x8

    .line 445
    .local v1, "length":I
    const/4 v3, 0x7

    .line 446
    .local v3, "type":B
    const/4 v0, 0x0

    .line 447
    .local v0, "flags":B
    const/4 v2, 0x0

    .line 448
    .local v2, "streamId":I
    invoke-virtual {p0, v1, v3, v0, v2}, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->frameHeader(IBBI)V

    .line 449
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v4, p1}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 450
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->sink:Lcom/android/okio/BufferedSink;

    iget v5, p2, Lcom/android/okhttp/internal/spdy/ErrorCode;->httpCode:I

    invoke-interface {v4, v5}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 451
    array-length v4, p3

    if-lez v4, :cond_2

    .line 452
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v4, p3}, Lcom/android/okio/BufferedSink;->write([B)Lcom/android/okio/BufferedSink;

    .line 454
    :cond_2
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v4}, Lcom/android/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized headers(ILjava/util/List;)V
    .locals 2
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
    .line 343
    .local p2, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->closed:Z

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

    .line 344
    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_1
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->headers(ZIILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized ping(ZII)V
    .locals 6
    .param p1, "ack"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->closed:Z

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

    .line 430
    :cond_0
    const/16 v1, 0x8

    .line 431
    .local v1, "length":I
    const/4 v3, 0x6

    .line 432
    .local v3, "type":B
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 433
    .local v0, "flags":B
    :goto_0
    const/4 v2, 0x0

    .line 434
    .local v2, "streamId":I
    :try_start_1
    invoke-virtual {p0, v1, v3, v0, v2}, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->frameHeader(IBBI)V

    .line 435
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v4, p2}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 436
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v4, p3}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 437
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v4}, Lcom/android/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    monitor-exit p0

    return-void

    .line 432
    .end local v0    # "flags":B
    .end local v2    # "streamId":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized pushPromise(IILjava/util/List;)V
    .locals 8
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
    .line 349
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->closed:Z

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

    .line 350
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->hpackBuffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v3}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 351
    :cond_1
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->hpackWriter:Lcom/android/okhttp/internal/spdy/HpackDraft05$Writer;

    invoke-virtual {v3, p3}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Writer;->writeHeaders(Ljava/util/List;)V

    .line 353
    const-wide/16 v4, 0x4

    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->hpackBuffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v3}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v1, v4

    .line 354
    .local v1, "length":I
    const/4 v2, 0x5

    .line 355
    .local v2, "type":B
    const/4 v0, 0x4

    .line 356
    .local v0, "flags":B
    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->frameHeader(IBBI)V

    .line 357
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->sink:Lcom/android/okio/BufferedSink;

    const v4, 0x7fffffff

    and-int/2addr v4, p2

    invoke-interface {v3, v4}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 358
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->sink:Lcom/android/okio/BufferedSink;

    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->hpackBuffer:Lcom/android/okio/OkBuffer;

    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->hpackBuffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v5}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v6

    invoke-interface {v3, v4, v6, v7}, Lcom/android/okio/BufferedSink;->write(Lcom/android/okio/OkBuffer;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    monitor-exit p0

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
    .line 380
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->closed:Z

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

    .line 381
    :cond_0
    :try_start_1
    iget v3, p2, Lcom/android/okhttp/internal/spdy/ErrorCode;->spdyRstCode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 383
    :cond_1
    const/4 v1, 0x4

    .line 384
    .local v1, "length":I
    const/4 v2, 0x3

    .line 385
    .local v2, "type":B
    const/4 v0, 0x0

    .line 386
    .local v0, "flags":B
    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->frameHeader(IBBI)V

    .line 387
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->sink:Lcom/android/okio/BufferedSink;

    iget v4, p2, Lcom/android/okhttp/internal/spdy/ErrorCode;->httpCode:I

    invoke-interface {v3, v4}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 388
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized settings(Lcom/android/okhttp/internal/spdy/Settings;)V
    .locals 7
    .param p1, "settings"    # Lcom/android/okhttp/internal/spdy/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->closed:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/io/IOException;

    const-string v6, "closed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 414
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/okhttp/internal/spdy/Settings;->size()I

    move-result v5

    mul-int/lit8 v2, v5, 0x8

    .line 415
    .local v2, "length":I
    const/4 v4, 0x4

    .line 416
    .local v4, "type":B
    const/4 v0, 0x0

    .line 417
    .local v0, "flags":B
    const/4 v3, 0x0

    .line 418
    .local v3, "streamId":I
    invoke-virtual {p0, v2, v4, v0, v3}, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->frameHeader(IBBI)V

    .line 419
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v5, 0xa

    if-ge v1, v5, :cond_2

    .line 420
    invoke-virtual {p1, v1}, Lcom/android/okhttp/internal/spdy/Settings;->isSet(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 419
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    :cond_1
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->sink:Lcom/android/okio/BufferedSink;

    const v6, 0xffffff

    and-int/2addr v6, v1

    invoke-interface {v5, v6}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 422
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->sink:Lcom/android/okio/BufferedSink;

    invoke-virtual {p1, v1}, Lcom/android/okhttp/internal/spdy/Settings;->get(I)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    goto :goto_1

    .line 424
    :cond_2
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v5}, Lcom/android/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synReply(ZILjava/util/List;)V
    .locals 2
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
    .line 337
    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->closed:Z

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

    .line 338
    :cond_0
    const/4 v0, -0x1

    :try_start_1
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->headers(ZIILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synStream(ZZIIIILjava/util/List;)V
    .locals 2
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
    .line 330
    .local p7, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 331
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->closed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_1
    invoke-direct {p0, p1, p3, p5, p7}, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->headers(ZIILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .locals 8
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->closed:Z

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

    .line 460
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-eqz v3, :cond_1

    const-wide/32 v4, 0x7fffffff

    cmp-long v3, p2, v4

    if-lez v3, :cond_2

    .line 461
    :cond_1
    :try_start_1
    const-string v3, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    # invokes: Lcom/android/okhttp/internal/spdy/Http20Draft09;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    invoke-static {v3, v4}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    .line 464
    :cond_2
    const/4 v1, 0x4

    .line 465
    .local v1, "length":I
    const/16 v2, 0x9

    .line 466
    .local v2, "type":B
    const/4 v0, 0x0

    .line 467
    .local v0, "flags":B
    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->frameHeader(IBBI)V

    .line 468
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->sink:Lcom/android/okio/BufferedSink;

    long-to-int v4, p2

    invoke-interface {v3, v4}, Lcom/android/okio/BufferedSink;->writeInt(I)Lcom/android/okio/BufferedSink;

    .line 469
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    monitor-exit p0

    return-void
.end method
