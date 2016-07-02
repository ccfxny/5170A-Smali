.class Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;
.super Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;
.source "HttpConnection.java"

# interfaces
.implements Lcom/android/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedLengthSource"
.end annotation


# instance fields
.field private bytesRemaining:J

.field final synthetic this$0:Lcom/android/okhttp/internal/http/HttpConnection;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/internal/http/HttpConnection;Ljava/net/CacheRequest;J)V
    .locals 5
    .param p2, "cacheRequest"    # Ljava/net/CacheRequest;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    .line 433
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;-><init>(Lcom/android/okhttp/internal/http/HttpConnection;Ljava/net/CacheRequest;)V

    .line 434
    iput-wide p3, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    .line 435
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 436
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->endOfInput(Z)V

    .line 438
    :cond_0
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
    .line 466
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->closed:Z

    if-eqz v0, :cond_0

    .line 473
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    const/16 v1, 0x64

    invoke-virtual {v0, p0, v1}, Lcom/android/okhttp/internal/http/HttpConnection;->discard(Lcom/android/okio/Source;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 469
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->unexpectedEndOfInput()V

    .line 472
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->closed:Z

    goto :goto_0
.end method

.method public deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/Source;
    .locals 1
    .param p1, "deadline"    # Lcom/android/okio/Deadline;

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/android/okhttp/internal/http/HttpConnection;->source:Lcom/android/okio/BufferedSource;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->access$900(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okio/BufferedSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/okio/BufferedSource;->deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/Source;

    .line 462
    return-object p0
.end method

.method public read(Lcom/android/okio/OkBuffer;J)J
    .locals 10
    .param p1, "sink"    # Lcom/android/okio/OkBuffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    const-wide/16 v8, 0x0

    .line 442
    cmp-long v4, p2, v8

    if-gez v4, :cond_0

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

    .line 443
    :cond_0
    iget-boolean v4, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->closed:Z

    if-eqz v4, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 444
    :cond_1
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_3

    move-wide v0, v2

    .line 457
    :cond_2
    :goto_0
    return-wide v0

    .line 446
    :cond_3
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/android/okhttp/internal/http/HttpConnection;->source:Lcom/android/okio/BufferedSource;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/HttpConnection;->access$900(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okio/BufferedSource;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    invoke-static {v6, v7, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-interface {v4, p1, v6, v7}, Lcom/android/okio/BufferedSource;->read(Lcom/android/okio/OkBuffer;J)J

    move-result-wide v0

    .line 447
    .local v0, "read":J
    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    .line 448
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->unexpectedEndOfInput()V

    .line 449
    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "unexpected end of stream"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 452
    :cond_4
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    .line 453
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->cacheWrite(Lcom/android/okio/OkBuffer;J)V

    .line 454
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_2

    .line 455
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->endOfInput(Z)V

    goto :goto_0
.end method
