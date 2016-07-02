.class Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;
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
    name = "ChunkedSource"
.end annotation


# static fields
.field private static final NO_CHUNK_YET:I = -0x1


# instance fields
.field private bytesRemainingInChunk:I

.field private hasMoreChunks:Z

.field private final httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

.field final synthetic this$0:Lcom/android/okhttp/internal/http/HttpConnection;


# direct methods
.method constructor <init>(Lcom/android/okhttp/internal/http/HttpConnection;Ljava/net/CacheRequest;Lcom/android/okhttp/internal/http/HttpEngine;)V
    .locals 1
    .param p2, "cacheRequest"    # Ljava/net/CacheRequest;
    .param p3, "httpEngine"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    .line 484
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;-><init>(Lcom/android/okhttp/internal/http/HttpConnection;Ljava/net/CacheRequest;)V

    .line 479
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:I

    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->hasMoreChunks:Z

    .line 485
    iput-object p3, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    .line 486
    return-void
.end method

.method private readChunkSize()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 511
    iget v4, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:I

    if-eq v4, v5, :cond_0

    .line 512
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/android/okhttp/internal/http/HttpConnection;->source:Lcom/android/okio/BufferedSource;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/HttpConnection;->access$900(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okio/BufferedSource;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    .line 514
    :cond_0
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/android/okhttp/internal/http/HttpConnection;->source:Lcom/android/okio/BufferedSource;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/HttpConnection;->access$900(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okio/BufferedSource;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "chunkSizeString":Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 516
    .local v2, "index":I
    if-eq v2, v5, :cond_1

    .line 517
    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 520
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    iget v4, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:I

    if-nez v4, :cond_2

    .line 525
    iput-boolean v6, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->hasMoreChunks:Z

    .line 526
    new-instance v3, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v3}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 527
    .local v3, "trailersBuilder":Lcom/android/okhttp/Headers$Builder;
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    invoke-virtual {v4, v3}, Lcom/android/okhttp/internal/http/HttpConnection;->readHeaders(Lcom/android/okhttp/Headers$Builder;)V

    .line 528
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v3}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/http/HttpEngine;->receiveHeaders(Lcom/android/okhttp/Headers;)V

    .line 529
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->endOfInput(Z)V

    .line 531
    .end local v3    # "trailersBuilder":Lcom/android/okhttp/Headers$Builder;
    :cond_2
    return-void

    .line 521
    :catch_0
    move-exception v1

    .line 522
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected a hex chunk size but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4
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
    .line 539
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->closed:Z

    if-eqz v0, :cond_0

    .line 544
    :goto_0
    return-void

    .line 540
    :cond_0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->hasMoreChunks:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    const/16 v1, 0x64

    invoke-virtual {v0, p0, v1}, Lcom/android/okhttp/internal/http/HttpConnection;->discard(Lcom/android/okio/Source;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 541
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->unexpectedEndOfInput()V

    .line 543
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->closed:Z

    goto :goto_0
.end method

.method public deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/Source;
    .locals 1
    .param p1, "deadline"    # Lcom/android/okio/Deadline;

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/android/okhttp/internal/http/HttpConnection;->source:Lcom/android/okio/BufferedSource;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->access$900(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okio/BufferedSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/okio/BufferedSource;->deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/Source;

    .line 535
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

    .line 490
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

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

    .line 491
    :cond_0
    iget-boolean v4, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->closed:Z

    if-eqz v4, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 492
    :cond_1
    iget-boolean v4, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->hasMoreChunks:Z

    if-nez v4, :cond_2

    move-wide v0, v2

    .line 506
    :goto_0
    return-wide v0

    .line 494
    :cond_2
    iget v4, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:I

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 495
    :cond_3
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->readChunkSize()V

    .line 496
    iget-boolean v4, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->hasMoreChunks:Z

    if-nez v4, :cond_4

    move-wide v0, v2

    goto :goto_0

    .line 499
    :cond_4
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/android/okhttp/internal/http/HttpConnection;->source:Lcom/android/okio/BufferedSource;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/HttpConnection;->access$900(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okio/BufferedSource;

    move-result-object v4

    iget v5, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:I

    int-to-long v6, v5

    invoke-static {p2, p3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-interface {v4, p1, v6, v7}, Lcom/android/okio/BufferedSource;->read(Lcom/android/okio/OkBuffer;J)J

    move-result-wide v0

    .line 500
    .local v0, "read":J
    cmp-long v2, v0, v2

    if-nez v2, :cond_5

    .line 501
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->unexpectedEndOfInput()V

    .line 502
    new-instance v2, Ljava/io/IOException;

    const-string v3, "unexpected end of stream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 504
    :cond_5
    iget v2, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:I

    int-to-long v2, v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:I

    .line 505
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->cacheWrite(Lcom/android/okio/OkBuffer;J)V

    goto :goto_0
.end method
