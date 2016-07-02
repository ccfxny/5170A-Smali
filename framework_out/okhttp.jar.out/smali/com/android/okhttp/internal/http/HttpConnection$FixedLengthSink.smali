.class final Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;
.super Ljava/lang/Object;
.source "HttpConnection.java"

# interfaces
.implements Lcom/android/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FixedLengthSink"
.end annotation


# instance fields
.field private bytesRemaining:J

.field private closed:Z

.field final synthetic this$0:Lcom/android/okhttp/internal/http/HttpConnection;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/internal/http/HttpConnection;J)V
    .locals 0
    .param p2, "bytesRemaining"    # J

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-wide p2, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->bytesRemaining:J

    .line 278
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/internal/http/HttpConnection;JLcom/android/okhttp/internal/http/HttpConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/okhttp/internal/http/HttpConnection;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lcom/android/okhttp/internal/http/HttpConnection$1;

    .prologue
    .line 272
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;-><init>(Lcom/android/okhttp/internal/http/HttpConnection;J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    .line 305
    :goto_0
    return-void

    .line 302
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->closed:Z

    .line 303
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    const/4 v1, 0x3

    # setter for: Lcom/android/okhttp/internal/http/HttpConnection;->state:I
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/HttpConnection;->access$302(Lcom/android/okhttp/internal/http/HttpConnection;I)I

    goto :goto_0
.end method

.method public deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/Sink;
    .locals 0
    .param p1, "deadline"    # Lcom/android/okio/Deadline;

    .prologue
    .line 281
    return-object p0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/android/okhttp/internal/http/HttpConnection;->sink:Lcom/android/okio/BufferedSink;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->access$200(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/okio/BufferedSink;->flush()V

    goto :goto_0
.end method

.method public write(Lcom/android/okio/OkBuffer;J)V
    .locals 6
    .param p1, "source"    # Lcom/android/okio/OkBuffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_0
    invoke-virtual {p1}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/internal/Util;->checkOffsetAndCount(JJJ)V

    .line 287
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->bytesRemaining:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 288
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->bytesRemaining:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/android/okhttp/internal/http/HttpConnection;->sink:Lcom/android/okio/BufferedSink;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->access$200(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/okio/BufferedSink;->write(Lcom/android/okio/OkBuffer;J)V

    .line 292
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->bytesRemaining:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->bytesRemaining:J

    .line 293
    return-void
.end method
