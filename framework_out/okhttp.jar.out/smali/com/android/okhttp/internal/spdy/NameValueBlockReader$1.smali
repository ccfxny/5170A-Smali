.class Lcom/android/okhttp/internal/spdy/NameValueBlockReader$1;
.super Ljava/lang/Object;
.source "NameValueBlockReader.java"

# interfaces
.implements Lcom/android/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/spdy/NameValueBlockReader;-><init>(Lcom/android/okio/BufferedSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/internal/spdy/NameValueBlockReader;

.field final synthetic val$source:Lcom/android/okio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/android/okhttp/internal/spdy/NameValueBlockReader;Lcom/android/okio/BufferedSource;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader$1;->this$0:Lcom/android/okhttp/internal/spdy/NameValueBlockReader;

    iput-object p2, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader$1;->val$source:Lcom/android/okio/BufferedSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader$1;->val$source:Lcom/android/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okio/BufferedSource;->close()V

    .line 51
    return-void
.end method

.method public deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/Source;
    .locals 1
    .param p1, "deadline"    # Lcom/android/okio/Deadline;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader$1;->val$source:Lcom/android/okio/BufferedSource;

    invoke-interface {v0, p1}, Lcom/android/okio/BufferedSource;->deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/Source;

    .line 55
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
    const-wide/16 v2, -0x1

    .line 42
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader$1;->this$0:Lcom/android/okhttp/internal/spdy/NameValueBlockReader;

    # getter for: Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I
    invoke-static {v4}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->access$000(Lcom/android/okhttp/internal/spdy/NameValueBlockReader;)I

    move-result v4

    if-nez v4, :cond_0

    move-wide v0, v2

    .line 46
    :goto_0
    return-wide v0

    .line 43
    :cond_0
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader$1;->val$source:Lcom/android/okio/BufferedSource;

    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader$1;->this$0:Lcom/android/okhttp/internal/spdy/NameValueBlockReader;

    # getter for: Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I
    invoke-static {v5}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->access$000(Lcom/android/okhttp/internal/spdy/NameValueBlockReader;)I

    move-result v5

    int-to-long v6, v5

    invoke-static {p2, p3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-interface {v4, p1, v6, v7}, Lcom/android/okio/BufferedSource;->read(Lcom/android/okio/OkBuffer;J)J

    move-result-wide v0

    .line 44
    .local v0, "read":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    move-wide v0, v2

    goto :goto_0

    .line 45
    :cond_1
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader$1;->this$0:Lcom/android/okhttp/internal/spdy/NameValueBlockReader;

    # -= operator for: Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I
    invoke-static {v2, v0, v1}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->access$022(Lcom/android/okhttp/internal/spdy/NameValueBlockReader;J)I

    goto :goto_0
.end method
