.class public final Lcom/android/okhttp/internal/spdy/SpdyStream;
.super Ljava/lang/Object;
.source "SpdyStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/spdy/SpdyStream$1;,
        Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;,
        Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field bytesLeftInWriteWindow:J

.field private final connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

.field private errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field private final id:I

.field private final priority:I

.field private readTimeoutMillis:J

.field private final requestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation
.end field

.field private responseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation
.end field

.field final sink:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

.field private final source:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

.field unacknowledgedBytesRead:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/okhttp/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(ILcom/android/okhttp/internal/spdy/SpdyConnection;ZZILjava/util/List;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "connection"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;
    .param p3, "outFinished"    # Z
    .param p4, "inFinished"    # Z
    .param p5, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/okhttp/internal/spdy/SpdyConnection;",
            "ZZI",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    const/high16 v2, 0x10000

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->unacknowledgedBytesRead:J

    .line 57
    iput-wide v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->readTimeoutMillis:J

    .line 73
    iput-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;

    .line 77
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    if-nez p6, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    iput p1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->id:I

    .line 80
    iput-object p2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    .line 81
    iget-object v0, p2, Lcom/android/okhttp/internal/spdy/SpdyConnection;->peerSettings:Lcom/android/okhttp/internal/spdy/Settings;

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/spdy/Settings;->getInitialWindowSize(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->bytesLeftInWriteWindow:J

    .line 83
    new-instance v0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    iget-object v1, p2, Lcom/android/okhttp/internal/spdy/SpdyConnection;->okHttpSettings:Lcom/android/okhttp/internal/spdy/Settings;

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/spdy/Settings;->getInitialWindowSize(I)I

    move-result v1

    int-to-long v2, v1

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;-><init>(Lcom/android/okhttp/internal/spdy/SpdyStream;JLcom/android/okhttp/internal/spdy/SpdyStream$1;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->source:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    .line 85
    new-instance v0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;-><init>(Lcom/android/okhttp/internal/spdy/SpdyStream;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->sink:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    .line 86
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->source:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    # setter for: Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->finished:Z
    invoke-static {v0, p4}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->access$102(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;Z)Z

    .line 87
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->sink:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    # setter for: Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->finished:Z
    invoke-static {v0, p3}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->access$202(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;Z)Z

    .line 88
    iput p5, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->priority:I

    .line 89
    iput-object p6, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->requestHeaders:Ljava/util/List;

    .line 90
    return-void
.end method

.method static synthetic access$1000(Lcom/android/okhttp/internal/spdy/SpdyStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->checkOutNotClosed()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyStream;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/okhttp/internal/spdy/SpdyStream;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyStream;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->id:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/okhttp/internal/spdy/SpdyStream;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyStream;

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->readTimeoutMillis:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/ErrorCode;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyStream;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/okhttp/internal/spdy/SpdyStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->cancelStreamIfNecessary()V

    return-void
.end method

.method private cancelStreamIfNecessary()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    sget-boolean v2, Lcom/android/okhttp/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 493
    :cond_0
    monitor-enter p0

    .line 494
    :try_start_0
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->source:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->finished:Z
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->access$100(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->source:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->closed:Z
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->access$300(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->sink:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->finished:Z
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->access$200(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->sink:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->closed:Z
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->access$400(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 495
    .local v0, "cancel":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->isOpen()Z

    move-result v1

    .line 496
    .local v1, "open":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    if-eqz v0, :cond_4

    .line 502
    sget-object v2, Lcom/android/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {p0, v2}, Lcom/android/okhttp/internal/spdy/SpdyStream;->close(Lcom/android/okhttp/internal/spdy/ErrorCode;)V

    .line 506
    :cond_2
    :goto_1
    return-void

    .line 494
    .end local v0    # "cancel":Z
    .end local v1    # "open":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 496
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 503
    .restart local v0    # "cancel":Z
    .restart local v1    # "open":Z
    :cond_4
    if-nez v1, :cond_2

    .line 504
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    iget v3, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->id:I

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->removeStream(I)Lcom/android/okhttp/internal/spdy/SpdyStream;

    goto :goto_1
.end method

.method private checkOutNotClosed()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->sink:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->closed:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->access$400(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->sink:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->finished:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->access$200(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;

    if-eqz v0, :cond_2

    .line 588
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_2
    return-void
.end method

.method private closeInternal(Lcom/android/okhttp/internal/spdy/ErrorCode;)Z
    .locals 2
    .param p1, "errorCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;

    .prologue
    const/4 v0, 0x0

    .line 259
    sget-boolean v1, Lcom/android/okhttp/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 260
    :cond_0
    monitor-enter p0

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;

    if-eqz v1, :cond_1

    .line 262
    monitor-exit p0

    .line 271
    :goto_0
    return v0

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->source:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->finished:Z
    invoke-static {v1}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->access$100(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->sink:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->finished:Z
    invoke-static {v1}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->access$200(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    monitor-exit p0

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 267
    :cond_2
    :try_start_1
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;

    .line 268
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 269
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->id:I

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->removeStream(I)Lcom/android/okhttp/internal/spdy/SpdyStream;

    .line 271
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .locals 3
    .param p1, "delta"    # J

    .prologue
    .line 578
    iget-wide v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->bytesLeftInWriteWindow:J

    .line 579
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 580
    :cond_0
    return-void
.end method

.method public close(Lcom/android/okhttp/internal/spdy/ErrorCode;)V
    .locals 2
    .param p1, "rstStatusCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/spdy/SpdyStream;->closeInternal(Lcom/android/okhttp/internal/spdy/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->id:I

    invoke-virtual {v0, v1, p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->writeSynReset(ILcom/android/okhttp/internal/spdy/ErrorCode;)V

    goto :goto_0
.end method

.method public closeLater(Lcom/android/okhttp/internal/spdy/ErrorCode;)V
    .locals 2
    .param p1, "errorCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/spdy/SpdyStream;->closeInternal(Lcom/android/okhttp/internal/spdy/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->id:I

    invoke-virtual {v0, v1, p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->writeSynResetLater(ILcom/android/okhttp/internal/spdy/ErrorCode;)V

    goto :goto_0
.end method

.method public getConnection()Lcom/android/okhttp/internal/spdy/SpdyConnection;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    return-object v0
.end method

.method public declared-synchronized getErrorCode()Lcom/android/okhttp/internal/spdy/ErrorCode;
    .locals 1

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->id:I

    return v0
.end method

.method getPriority()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->priority:I

    return v0
.end method

.method public getReadTimeoutMillis()J
    .locals 2

    .prologue
    .line 212
    iget-wide v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->readTimeoutMillis:J

    return-wide v0
.end method

.method public getRequestHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->requestHeaders:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized getResponseHeaders()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    .line 137
    monitor-enter p0

    const-wide/16 v2, 0x0

    .line 138
    .local v2, "remaining":J
    const-wide/16 v4, 0x0

    .line 139
    .local v4, "start":J
    :try_start_0
    iget-wide v6, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->readTimeoutMillis:J

    cmp-long v6, v6, v12

    if-eqz v6, :cond_0

    .line 140
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    div-long v4, v6, v8

    .line 141
    iget-wide v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->readTimeoutMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_0
    :goto_0
    :try_start_1
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;

    if-nez v6, :cond_3

    .line 145
    iget-wide v6, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->readTimeoutMillis:J

    cmp-long v6, v6, v12

    if-nez v6, :cond_1

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 161
    .local v1, "rethrow":Ljava/io/InterruptedIOException;
    invoke-virtual {v1, v0}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 162
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "rethrow":Ljava/io/InterruptedIOException;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 147
    :cond_1
    cmp-long v6, v2, v12

    if-lez v6, :cond_2

    .line 148
    :try_start_3
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 149
    iget-wide v6, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->readTimeoutMillis:J

    add-long/2addr v6, v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    sub-long v2, v6, v8

    goto :goto_0

    .line 151
    :cond_2
    new-instance v6, Ljava/net/SocketTimeoutException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Read response header timeout. readTimeoutMillis: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->readTimeoutMillis:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 155
    :cond_3
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    if-eqz v6, :cond_4

    .line 156
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v6

    .line 158
    :cond_4
    :try_start_4
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stream was reset: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getSink()Lcom/android/okio/Sink;
    .locals 2

    .prologue
    .line 227
    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->isLocallyInitiated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->sink:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    return-object v0
.end method

.method public getSource()Lcom/android/okio/Source;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->source:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    return-object v0
.end method

.method public isLocallyInitiated()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 120
    iget v3, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->id:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 121
    .local v0, "streamIsClient":Z
    :goto_0
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    iget-boolean v3, v3, Lcom/android/okhttp/internal/spdy/SpdyConnection;->client:Z

    if-ne v3, v0, :cond_1

    :goto_1
    return v1

    .end local v0    # "streamIsClient":Z
    :cond_0
    move v0, v2

    .line 120
    goto :goto_0

    .restart local v0    # "streamIsClient":Z
    :cond_1
    move v1, v2

    .line 121
    goto :goto_1
.end method

.method public declared-synchronized isOpen()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 110
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->source:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->finished:Z
    invoke-static {v1}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->access$100(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->source:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->closed:Z
    invoke-static {v1}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->access$300(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->sink:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->finished:Z
    invoke-static {v1}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->access$200(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->sink:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->closed:Z
    invoke-static {v1}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->access$400(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 115
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method receiveData(Lcom/android/okio/BufferedSource;I)V
    .locals 4
    .param p1, "in"    # Lcom/android/okio/BufferedSource;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    sget-boolean v0, Lcom/android/okhttp/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->source:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->receive(Lcom/android/okio/BufferedSource;J)V

    .line 308
    return-void
.end method

.method receiveFin()V
    .locals 3

    .prologue
    .line 311
    sget-boolean v1, Lcom/android/okhttp/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 313
    :cond_0
    monitor-enter p0

    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->source:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    const/4 v2, 0x1

    # setter for: Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->finished:Z
    invoke-static {v1, v2}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->access$102(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;Z)Z

    .line 315
    invoke-virtual {p0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->isOpen()Z

    move-result v0

    .line 316
    .local v0, "open":Z
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 317
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    if-nez v0, :cond_1

    .line 319
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    iget v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->id:I

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->removeStream(I)Lcom/android/okhttp/internal/spdy/SpdyStream;

    .line 321
    :cond_1
    return-void

    .line 317
    .end local v0    # "open":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method receiveHeaders(Ljava/util/List;Lcom/android/okhttp/internal/spdy/HeadersMode;)V
    .locals 5
    .param p2, "headersMode"    # Lcom/android/okhttp/internal/spdy/HeadersMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;",
            "Lcom/android/okhttp/internal/spdy/HeadersMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    sget-boolean v3, Lcom/android/okhttp/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 276
    :cond_0
    const/4 v0, 0x0

    .line 277
    .local v0, "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    const/4 v2, 0x1

    .line 278
    .local v2, "open":Z
    monitor-enter p0

    .line 279
    :try_start_0
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    if-nez v3, :cond_3

    .line 280
    invoke-virtual {p2}, Lcom/android/okhttp/internal/spdy/HeadersMode;->failIfHeadersAbsent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 281
    sget-object v0, Lcom/android/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    .line 297
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    if-eqz v0, :cond_5

    .line 299
    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->closeLater(Lcom/android/okhttp/internal/spdy/ErrorCode;)V

    .line 303
    :cond_1
    :goto_1
    return-void

    .line 283
    :cond_2
    :try_start_1
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    .line 284
    invoke-virtual {p0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->isOpen()Z

    move-result v2

    .line 285
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 297
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 288
    :cond_3
    :try_start_2
    invoke-virtual {p2}, Lcom/android/okhttp/internal/spdy/HeadersMode;->failIfHeadersPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 289
    sget-object v0, Lcom/android/okhttp/internal/spdy/ErrorCode;->STREAM_IN_USE:Lcom/android/okhttp/internal/spdy/ErrorCode;

    goto :goto_0

    .line 291
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v1, "newHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 293
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 294
    iput-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 300
    .end local v1    # "newHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    :cond_5
    if-nez v2, :cond_1

    .line 301
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    iget v4, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->id:I

    invoke-virtual {v3, v4}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->removeStream(I)Lcom/android/okhttp/internal/spdy/SpdyStream;

    goto :goto_1
.end method

.method declared-synchronized receiveRstStream(Lcom/android/okhttp/internal/spdy/ErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;

    if-nez v0, :cond_0

    .line 325
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;

    .line 326
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    :cond_0
    monitor-exit p0

    return-void

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reply(Ljava/util/List;Z)V
    .locals 3
    .param p2, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    sget-boolean v1, Lcom/android/okhttp/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 182
    :cond_0
    const/4 v0, 0x0

    .line 183
    .local v0, "outFinished":Z
    monitor-enter p0

    .line 184
    if-nez p1, :cond_1

    .line 185
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "responseHeaders == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 187
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 188
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "reply already sent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_2
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    .line 191
    if-nez p2, :cond_3

    .line 192
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->sink:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    const/4 v2, 0x1

    # setter for: Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->finished:Z
    invoke-static {v1, v2}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->access$202(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;Z)Z

    .line 193
    const/4 v0, 0x1

    .line 195
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    iget v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->id:I

    invoke-virtual {v1, v2, v0, p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->writeSynReply(IZLjava/util/List;)V

    .line 198
    if-eqz v0, :cond_4

    .line 199
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->flush()V

    .line 201
    :cond_4
    return-void
.end method

.method public setReadTimeout(J)V
    .locals 1
    .param p1, "readTimeoutMillis"    # J

    .prologue
    .line 208
    iput-wide p1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->readTimeoutMillis:J

    .line 209
    return-void
.end method
