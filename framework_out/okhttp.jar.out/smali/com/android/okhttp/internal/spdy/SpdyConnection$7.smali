.class Lcom/android/okhttp/internal/spdy/SpdyConnection$7;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "SpdyConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushResetLater(ILcom/android/okhttp/internal/spdy/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

.field final synthetic val$errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lcom/android/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/android/okhttp/internal/spdy/ErrorCode;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 833
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$7;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    iput p4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$7;->val$streamId:I

    iput-object p5, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$7;->val$errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;

    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$7;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushObserver:Lcom/android/okhttp/internal/spdy/PushObserver;
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$2600(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Lcom/android/okhttp/internal/spdy/PushObserver;

    move-result-object v0

    iget v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$7;->val$streamId:I

    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$7;->val$errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/android/okhttp/internal/spdy/PushObserver;->onReset(ILcom/android/okhttp/internal/spdy/ErrorCode;)V

    .line 836
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$7;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    monitor-enter v1

    .line 837
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$7;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection;->currentPushRequests:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$2700(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$7;->val$streamId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 838
    monitor-exit v1

    .line 839
    return-void

    .line 838
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
