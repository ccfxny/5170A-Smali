.class Lcom/android/okhttp/internal/spdy/SpdyConnection$3;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "SpdyConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/spdy/SpdyConnection;->writePingLater(ZIILcom/android/okhttp/internal/spdy/Ping;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

.field final synthetic val$payload1:I

.field final synthetic val$payload2:I

.field final synthetic val$ping:Lcom/android/okhttp/internal/spdy/Ping;

.field final synthetic val$reply:Z


# direct methods
.method varargs constructor <init>(Lcom/android/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/android/okhttp/internal/spdy/Ping;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$3;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    iput-boolean p4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$3;->val$reply:Z

    iput p5, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$3;->val$payload1:I

    iput p6, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$3;->val$payload2:I

    iput-object p7, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$3;->val$ping:Lcom/android/okhttp/internal/spdy/Ping;

    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$3;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    iget-boolean v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$3;->val$reply:Z

    iget v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$3;->val$payload1:I

    iget v3, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$3;->val$payload2:I

    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$3;->val$ping:Lcom/android/okhttp/internal/spdy/Ping;

    # invokes: Lcom/android/okhttp/internal/spdy/SpdyConnection;->writePing(ZIILcom/android/okhttp/internal/spdy/Ping;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->access$800(Lcom/android/okhttp/internal/spdy/SpdyConnection;ZIILcom/android/okhttp/internal/spdy/Ping;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_0
    return-void

    .line 379
    :catch_0
    move-exception v0

    goto :goto_0
.end method
