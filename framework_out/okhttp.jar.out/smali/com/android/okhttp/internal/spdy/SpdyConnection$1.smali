.class Lcom/android/okhttp/internal/spdy/SpdyConnection$1;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "SpdyConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/spdy/SpdyConnection;->writeSynResetLater(ILcom/android/okhttp/internal/spdy/ErrorCode;)V
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
    .line 327
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$1;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    iput p4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$1;->val$streamId:I

    iput-object p5, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$1;->val$errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;

    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$1;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$1;->val$streamId:I

    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$1;->val$errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->writeSynReset(ILcom/android/okhttp/internal/spdy/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    goto :goto_0
.end method
