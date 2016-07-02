.class Lcom/android/okhttp/internal/spdy/SpdyConnection$6;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "SpdyConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushDataLater(ILcom/android/okio/BufferedSource;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

.field final synthetic val$buffer:Lcom/android/okio/OkBuffer;

.field final synthetic val$byteCount:I

.field final synthetic val$inFinished:Z

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lcom/android/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/android/okio/OkBuffer;IZ)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 816
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    iput p4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->val$streamId:I

    iput-object p5, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->val$buffer:Lcom/android/okio/OkBuffer;

    iput p6, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->val$byteCount:I

    iput-boolean p7, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->val$inFinished:Z

    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .prologue
    .line 819
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushObserver:Lcom/android/okhttp/internal/spdy/PushObserver;
    invoke-static {v1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$2600(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Lcom/android/okhttp/internal/spdy/PushObserver;

    move-result-object v1

    iget v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->val$streamId:I

    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->val$buffer:Lcom/android/okio/OkBuffer;

    iget v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->val$byteCount:I

    iget-boolean v5, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->val$inFinished:Z

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/okhttp/internal/spdy/PushObserver;->onData(ILcom/android/okio/BufferedSource;IZ)Z

    move-result v0

    .line 820
    .local v0, "cancel":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    iget-object v1, v1, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    iget v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->val$streamId:I

    sget-object v3, Lcom/android/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/spdy/ErrorCode;

    invoke-interface {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/FrameWriter;->rstStream(ILcom/android/okhttp/internal/spdy/ErrorCode;)V

    .line 821
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->val$inFinished:Z

    if-eqz v1, :cond_2

    .line 822
    :cond_1
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    :try_start_1
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection;->currentPushRequests:Ljava/util/Set;
    invoke-static {v1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$2700(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Set;

    move-result-object v1

    iget v3, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;->val$streamId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 824
    monitor-exit v2

    .line 828
    .end local v0    # "cancel":Z
    :cond_2
    :goto_0
    return-void

    .line 824
    .restart local v0    # "cancel":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 826
    .end local v0    # "cancel":Z
    :catch_0
    move-exception v1

    goto :goto_0
.end method
