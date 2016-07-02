.class final Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;
.super Ljava/lang/Object;
.source "SpdyStream.java"

# interfaces
.implements Lcom/android/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/SpdyStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SpdyDataSink"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private closed:Z

.field private finished:Z

.field final synthetic this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 512
    const-class v0, Lcom/android/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/okhttp/internal/spdy/SpdyStream;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->finished:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;
    .param p1, "x1"    # Z

    .prologue
    .line 512
    iput-boolean p1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->finished:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->closed:Z

    return v0
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 558
    sget-boolean v0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 559
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    monitor-enter v1

    .line 560
    :try_start_0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->closed:Z

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 570
    :goto_0
    return-void

    .line 561
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    iget-object v0, v0, Lcom/android/okhttp/internal/spdy/SpdyStream;->sink:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    iget-boolean v0, v0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->finished:Z

    if-nez v0, :cond_2

    .line 563
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->access$500(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream;->id:I
    invoke-static {v1}, Lcom/android/okhttp/internal/spdy/SpdyStream;->access$600(Lcom/android/okhttp/internal/spdy/SpdyStream;)I

    move-result v1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->writeData(IZLcom/android/okio/OkBuffer;J)V

    .line 565
    :cond_2
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    monitor-enter v1

    .line 566
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->closed:Z

    .line 567
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 568
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->access$500(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->flush()V

    .line 569
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    # invokes: Lcom/android/okhttp/internal/spdy/SpdyStream;->cancelStreamIfNecessary()V
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->access$900(Lcom/android/okhttp/internal/spdy/SpdyStream;)V

    goto :goto_0

    .line 561
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 567
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/Sink;
    .locals 0
    .param p1, "deadline"    # Lcom/android/okio/Deadline;

    .prologue
    .line 554
    return-object p0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    sget-boolean v0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 546
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    monitor-enter v1

    .line 547
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    # invokes: Lcom/android/okhttp/internal/spdy/SpdyStream;->checkOutNotClosed()V
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->access$1000(Lcom/android/okhttp/internal/spdy/SpdyStream;)V

    .line 548
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->access$500(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->flush()V

    .line 550
    return-void

    .line 548
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public write(Lcom/android/okio/OkBuffer;J)V
    .locals 10
    .param p1, "source"    # Lcom/android/okio/OkBuffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 522
    sget-boolean v0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 534
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    # invokes: Lcom/android/okhttp/internal/spdy/SpdyStream;->checkOutNotClosed()V
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->access$1000(Lcom/android/okhttp/internal/spdy/SpdyStream;)V

    .line 535
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    iget-wide v2, v0, Lcom/android/okhttp/internal/spdy/SpdyStream;->bytesLeftInWriteWindow:J

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 536
    .local v4, "toWrite":J
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    iget-wide v2, v0, Lcom/android/okhttp/internal/spdy/SpdyStream;->bytesLeftInWriteWindow:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/okhttp/internal/spdy/SpdyStream;->bytesLeftInWriteWindow:J

    .line 537
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    sub-long/2addr p2, v4

    .line 540
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->access$500(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyStream;->id:I
    invoke-static {v1}, Lcom/android/okhttp/internal/spdy/SpdyStream;->access$600(Lcom/android/okhttp/internal/spdy/SpdyStream;)I

    move-result v1

    const/4 v2, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->writeData(IZLcom/android/okio/OkBuffer;J)V

    .line 523
    .end local v4    # "toWrite":J
    :cond_1
    cmp-long v0, p2, v8

    if-lez v0, :cond_2

    .line 525
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    monitor-enter v1

    .line 527
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    iget-wide v2, v0, Lcom/android/okhttp/internal/spdy/SpdyStream;->bytesLeftInWriteWindow:J

    cmp-long v0, v2, v8

    if-gtz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 530
    :catch_0
    move-exception v6

    .line 531
    .local v6, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 537
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 542
    :cond_2
    return-void
.end method
