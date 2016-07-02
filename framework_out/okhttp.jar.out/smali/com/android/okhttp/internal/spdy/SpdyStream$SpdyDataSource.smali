.class final Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;
.super Ljava/lang/Object;
.source "SpdyStream.java"

# interfaces
.implements Lcom/android/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/SpdyStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpdyDataSource"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private closed:Z

.field private finished:Z

.field private final maxByteCount:J

.field private final readBuffer:Lcom/android/okio/OkBuffer;

.field private final receiveBuffer:Lcom/android/okio/OkBuffer;

.field final synthetic this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 339
    const-class v0, Lcom/android/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/android/okhttp/internal/spdy/SpdyStream;J)V
    .locals 2
    .param p2, "maxByteCount"    # J

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    new-instance v0, Lcom/android/okio/OkBuffer;

    invoke-direct {v0}, Lcom/android/okio/OkBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->receiveBuffer:Lcom/android/okio/OkBuffer;

    .line 344
    new-instance v0, Lcom/android/okio/OkBuffer;

    invoke-direct {v0}, Lcom/android/okio/OkBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->readBuffer:Lcom/android/okio/OkBuffer;

    .line 359
    iput-wide p2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->maxByteCount:J

    .line 360
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/internal/spdy/SpdyStream;JLcom/android/okhttp/internal/spdy/SpdyStream$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyStream;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lcom/android/okhttp/internal/spdy/SpdyStream$1;

    .prologue
    .line 339
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;-><init>(Lcom/android/okhttp/internal/spdy/SpdyStream;J)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->finished:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;
    .param p1, "x1"    # Z

    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->finished:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->closed:Z

    return v0
.end method

.method private checkNotClosed()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->closed:Z

    if-eqz v0, :cond_0

    .line 481
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->access$800(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/ErrorCode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 484
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream;->access$800(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/ErrorCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_1
    return-void
.end method

.method private waitUntilReadable()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/32 v8, 0xf4240

    const-wide/16 v12, 0x0

    .line 403
    const-wide/16 v4, 0x0

    .line 404
    .local v4, "start":J
    const-wide/16 v2, 0x0

    .line 405
    .local v2, "remaining":J
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream;->readTimeoutMillis:J
    invoke-static {v1}, Lcom/android/okhttp/internal/spdy/SpdyStream;->access$700(Lcom/android/okhttp/internal/spdy/SpdyStream;)J

    move-result-wide v6

    cmp-long v1, v6, v12

    if-eqz v1, :cond_0

    .line 406
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    div-long v4, v6, v8

    .line 407
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream;->readTimeoutMillis:J
    invoke-static {v1}, Lcom/android/okhttp/internal/spdy/SpdyStream;->access$700(Lcom/android/okhttp/internal/spdy/SpdyStream;)J

    move-result-wide v2

    .line 410
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->readBuffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v1}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v6

    cmp-long v1, v6, v12

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->finished:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->closed:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;
    invoke-static {v1}, Lcom/android/okhttp/internal/spdy/SpdyStream;->access$800(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/ErrorCode;

    move-result-object v1

    if-nez v1, :cond_3

    .line 411
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream;->readTimeoutMillis:J
    invoke-static {v1}, Lcom/android/okhttp/internal/spdy/SpdyStream;->access$700(Lcom/android/okhttp/internal/spdy/SpdyStream;)J

    move-result-wide v6

    cmp-long v1, v6, v12

    if-nez v1, :cond_1

    .line 412
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1

    .line 413
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    cmp-long v1, v2, v12

    if-lez v1, :cond_2

    .line 414
    :try_start_1
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 415
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream;->readTimeoutMillis:J
    invoke-static {v1}, Lcom/android/okhttp/internal/spdy/SpdyStream;->access$700(Lcom/android/okhttp/internal/spdy/SpdyStream;)J

    move-result-wide v6

    add-long/2addr v6, v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    sub-long v2, v6, v8

    goto :goto_0

    .line 417
    :cond_2
    new-instance v1, Ljava/net/SocketTimeoutException;

    const-string v6, "Read timed out"

    invoke-direct {v1, v6}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 423
    :cond_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    monitor-enter v1

    .line 472
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->closed:Z

    .line 473
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->readBuffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v0}, Lcom/android/okio/OkBuffer;->clear()V

    .line 474
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 475
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    # invokes: Lcom/android/okhttp/internal/spdy/SpdyStream;->cancelStreamIfNecessary()V
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->access$900(Lcom/android/okhttp/internal/spdy/SpdyStream;)V

    .line 477
    return-void

    .line 475
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/Source;
    .locals 0
    .param p1, "deadline"    # Lcom/android/okio/Deadline;

    .prologue
    .line 467
    return-object p0
.end method

.method public read(Lcom/android/okio/OkBuffer;J)J
    .locals 8
    .param p1, "sink"    # Lcom/android/okio/OkBuffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 364
    cmp-long v2, p2, v6

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "byteCount < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 367
    :cond_0
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    monitor-enter v3

    .line 368
    :try_start_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->waitUntilReadable()V

    .line 369
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->checkNotClosed()V

    .line 370
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->readBuffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v2}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v4

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    const-wide/16 v0, -0x1

    monitor-exit v3

    .line 394
    :goto_0
    return-wide v0

    .line 373
    :cond_1
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->readBuffer:Lcom/android/okio/OkBuffer;

    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->readBuffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v4}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v2, p1, v4, v5}, Lcom/android/okio/OkBuffer;->read(Lcom/android/okio/OkBuffer;J)J

    move-result-wide v0

    .line 376
    .local v0, "read":J
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    iget-wide v4, v2, Lcom/android/okhttp/internal/spdy/SpdyStream;->unacknowledgedBytesRead:J

    add-long/2addr v4, v0

    iput-wide v4, v2, Lcom/android/okhttp/internal/spdy/SpdyStream;->unacknowledgedBytesRead:J

    .line 377
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    iget-wide v4, v2, Lcom/android/okhttp/internal/spdy/SpdyStream;->unacknowledgedBytesRead:J

    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream;->access$500(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyConnection;

    move-result-object v2

    iget-object v2, v2, Lcom/android/okhttp/internal/spdy/SpdyConnection;->peerSettings:Lcom/android/okhttp/internal/spdy/Settings;

    const/high16 v6, 0x10000

    invoke-virtual {v2, v6}, Lcom/android/okhttp/internal/spdy/Settings;->getInitialWindowSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-ltz v2, :cond_2

    .line 379
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream;->access$500(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyConnection;

    move-result-object v2

    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream;->id:I
    invoke-static {v4}, Lcom/android/okhttp/internal/spdy/SpdyStream;->access$600(Lcom/android/okhttp/internal/spdy/SpdyStream;)I

    move-result v4

    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    iget-wide v6, v5, Lcom/android/okhttp/internal/spdy/SpdyStream;->unacknowledgedBytesRead:J

    invoke-virtual {v2, v4, v6, v7}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->writeWindowUpdateLater(IJ)V

    .line 380
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/android/okhttp/internal/spdy/SpdyStream;->unacknowledgedBytesRead:J

    .line 382
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 385
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream;->access$500(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyConnection;

    move-result-object v3

    monitor-enter v3

    .line 386
    :try_start_1
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream;->access$500(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyConnection;

    move-result-object v2

    iget-wide v4, v2, Lcom/android/okhttp/internal/spdy/SpdyConnection;->unacknowledgedBytesRead:J

    add-long/2addr v4, v0

    iput-wide v4, v2, Lcom/android/okhttp/internal/spdy/SpdyConnection;->unacknowledgedBytesRead:J

    .line 387
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream;->access$500(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyConnection;

    move-result-object v2

    iget-wide v4, v2, Lcom/android/okhttp/internal/spdy/SpdyConnection;->unacknowledgedBytesRead:J

    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream;->access$500(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyConnection;

    move-result-object v2

    iget-object v2, v2, Lcom/android/okhttp/internal/spdy/SpdyConnection;->peerSettings:Lcom/android/okhttp/internal/spdy/Settings;

    const/high16 v6, 0x10000

    invoke-virtual {v2, v6}, Lcom/android/okhttp/internal/spdy/Settings;->getInitialWindowSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-ltz v2, :cond_3

    .line 389
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream;->access$500(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyConnection;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;
    invoke-static {v5}, Lcom/android/okhttp/internal/spdy/SpdyStream;->access$500(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyConnection;

    move-result-object v5

    iget-wide v6, v5, Lcom/android/okhttp/internal/spdy/SpdyConnection;->unacknowledgedBytesRead:J

    invoke-virtual {v2, v4, v6, v7}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->writeWindowUpdateLater(IJ)V

    .line 390
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream;->access$500(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyConnection;

    move-result-object v2

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/android/okhttp/internal/spdy/SpdyConnection;->unacknowledgedBytesRead:J

    .line 392
    :cond_3
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 382
    .end local v0    # "read":J
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method receive(Lcom/android/okio/BufferedSource;J)V
    .locals 12
    .param p1, "in"    # Lcom/android/okio/BufferedSource;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    sget-boolean v5, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    invoke-static {v5}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 452
    .local v0, "finished":Z
    .local v1, "flowControlError":Z
    .local v2, "read":J
    :cond_0
    sub-long/2addr p2, v2

    .line 455
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    monitor-enter v6

    .line 456
    :try_start_0
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->readBuffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v5}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_7

    const/4 v4, 0x1

    .line 457
    .local v4, "wasEmpty":Z
    :goto_0
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->readBuffer:Lcom/android/okio/OkBuffer;

    iget-object v7, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->receiveBuffer:Lcom/android/okio/OkBuffer;

    iget-object v8, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->receiveBuffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v8}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v8

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/okio/OkBuffer;->write(Lcom/android/okio/OkBuffer;J)V

    .line 458
    if-eqz v4, :cond_1

    .line 459
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 461
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 428
    .end local v0    # "finished":Z
    .end local v1    # "flowControlError":Z
    .end local v2    # "read":J
    .end local v4    # "wasEmpty":Z
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-lez v5, :cond_3

    .line 431
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    monitor-enter v6

    .line 432
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->finished:Z

    .line 433
    .restart local v0    # "finished":Z
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->readBuffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v5}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v8

    add-long/2addr v8, p2

    iget-wide v10, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->maxByteCount:J

    cmp-long v5, v8, v10

    if-lez v5, :cond_4

    const/4 v1, 0x1

    .line 434
    .restart local v1    # "flowControlError":Z
    :goto_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    if-eqz v1, :cond_5

    .line 438
    invoke-interface {p1, p2, p3}, Lcom/android/okio/BufferedSource;->skip(J)V

    .line 439
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    sget-object v6, Lcom/android/okhttp/internal/spdy/ErrorCode;->FLOW_CONTROL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/spdy/SpdyStream;->closeLater(Lcom/android/okhttp/internal/spdy/ErrorCode;)V

    .line 463
    .end local v0    # "finished":Z
    .end local v1    # "flowControlError":Z
    :cond_3
    :goto_2
    return-void

    .line 433
    .restart local v0    # "finished":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 434
    .end local v0    # "finished":Z
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 444
    .restart local v0    # "finished":Z
    .restart local v1    # "flowControlError":Z
    :cond_5
    if-eqz v0, :cond_6

    .line 445
    invoke-interface {p1, p2, p3}, Lcom/android/okio/BufferedSource;->skip(J)V

    goto :goto_2

    .line 450
    :cond_6
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->receiveBuffer:Lcom/android/okio/OkBuffer;

    invoke-interface {p1, v5, p2, p3}, Lcom/android/okio/BufferedSource;->read(Lcom/android/okio/OkBuffer;J)J

    move-result-wide v2

    .line 451
    .restart local v2    # "read":J
    const-wide/16 v6, -0x1

    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v5

    .line 456
    :cond_7
    const/4 v4, 0x0

    goto :goto_0

    .line 461
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5
.end method
