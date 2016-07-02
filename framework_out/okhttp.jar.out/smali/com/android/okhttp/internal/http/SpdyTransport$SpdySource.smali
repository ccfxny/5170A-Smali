.class Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;
.super Ljava/lang/Object;
.source "SpdyTransport.java"

# interfaces
.implements Lcom/android/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/SpdyTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpdySource"
.end annotation


# instance fields
.field private final cacheBody:Ljava/io/OutputStream;

.field private final cacheRequest:Ljava/net/CacheRequest;

.field private closed:Z

.field private inputExhausted:Z

.field private final source:Lcom/android/okio/Source;

.field private final stream:Lcom/android/okhttp/internal/spdy/SpdyStream;


# direct methods
.method constructor <init>(Lcom/android/okhttp/internal/spdy/SpdyStream;Ljava/net/CacheRequest;)V
    .locals 2
    .param p1, "stream"    # Lcom/android/okhttp/internal/spdy/SpdyStream;
    .param p2, "cacheRequest"    # Ljava/net/CacheRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;->stream:Lcom/android/okhttp/internal/spdy/SpdyStream;

    .line 253
    invoke-virtual {p1}, Lcom/android/okhttp/internal/spdy/SpdyStream;->getSource()Lcom/android/okio/Source;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;->source:Lcom/android/okio/Source;

    .line 256
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/net/CacheRequest;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    .line 257
    .local v0, "cacheBody":Ljava/io/OutputStream;
    :goto_0
    if-nez v0, :cond_0

    .line 258
    const/4 p2, 0x0

    .line 261
    :cond_0
    iput-object v0, p0, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;->cacheBody:Ljava/io/OutputStream;

    .line 262
    iput-object p2, p0, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;->cacheRequest:Ljava/net/CacheRequest;

    .line 263
    return-void

    .line 256
    .end local v0    # "cacheBody":Ljava/io/OutputStream;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private discardStream()Z
    .locals 6

    .prologue
    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;->stream:Lcom/android/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/spdy/SpdyStream;->getReadTimeoutMillis()J

    move-result-wide v2

    .line 312
    .local v2, "socketTimeout":J
    iget-object v1, p0, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;->stream:Lcom/android/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/SpdyStream;->setReadTimeout(J)V

    .line 313
    iget-object v1, p0, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;->stream:Lcom/android/okhttp/internal/spdy/SpdyStream;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v4, v5}, Lcom/android/okhttp/internal/spdy/SpdyStream;->setReadTimeout(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    const/16 v1, 0x64

    :try_start_1
    invoke-static {p0, v1}, Lcom/android/okhttp/internal/Util;->skipAll(Lcom/android/okio/Source;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    const/4 v1, 0x1

    .line 318
    :try_start_2
    iget-object v4, p0, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;->stream:Lcom/android/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v4, v2, v3}, Lcom/android/okhttp/internal/spdy/SpdyStream;->setReadTimeout(J)V

    .line 321
    .end local v2    # "socketTimeout":J
    :goto_0
    return v1

    .line 318
    .restart local v2    # "socketTimeout":J
    :catchall_0
    move-exception v1

    iget-object v4, p0, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;->stream:Lcom/android/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v4, v2, v3}, Lcom/android/okhttp/internal/spdy/SpdyStream;->setReadTimeout(J)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 320
    .end local v2    # "socketTimeout":J
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
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
    .line 293
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;->closed:Z

    if-eqz v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;->inputExhausted:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;->cacheBody:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 296
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;->discardStream()Z

    .line 299
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;->closed:Z

    .line 301
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;->inputExhausted:Z

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;->stream:Lcom/android/okhttp/internal/spdy/SpdyStream;

    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/spdy/SpdyStream;->closeLater(Lcom/android/okhttp/internal/spdy/ErrorCode;)V

    .line 303
    iget-object v0, p0, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;->cacheRequest:Ljava/net/CacheRequest;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;->cacheRequest:Ljava/net/CacheRequest;

    invoke-virtual {v0}, Ljava/net/CacheRequest;->abort()V

    goto :goto_0
.end method

.method public deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/Source;
    .locals 1
    .param p1, "deadline"    # Lcom/android/okio/Deadline;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;->source:Lcom/android/okio/Source;

    invoke-interface {v0, p1}, Lcom/android/okio/Source;->deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/Source;

    .line 289
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
    const-wide/16 v0, -0x1

    .line 267
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    iget-boolean v2, p0, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;->closed:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_1
    iget-boolean v2, p0, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;->inputExhausted:Z

    if-eqz v2, :cond_3

    move-wide v4, v0

    .line 284
    :cond_2
    :goto_0
    return-wide v4

    .line 271
    :cond_3
    iget-object v2, p0, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;->source:Lcom/android/okio/Source;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/okio/Source;->read(Lcom/android/okio/OkBuffer;J)J

    move-result-wide v4

    .line 272
    .local v4, "read":J
    cmp-long v2, v4, v0

    if-nez v2, :cond_5

    .line 273
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;->inputExhausted:Z

    .line 274
    iget-object v2, p0, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;->cacheRequest:Ljava/net/CacheRequest;

    if-eqz v2, :cond_4

    .line 275
    iget-object v2, p0, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;->cacheBody:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_4
    move-wide v4, v0

    .line 277
    goto :goto_0

    .line 280
    :cond_5
    iget-object v0, p0, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;->cacheBody:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 281
    invoke-virtual {p1}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v0

    sub-long v2, v0, v4

    iget-object v6, p0, Lcom/android/okhttp/internal/http/SpdyTransport$SpdySource;->cacheBody:Ljava/io/OutputStream;

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/okio/Okio;->copy(Lcom/android/okio/OkBuffer;JJLjava/io/OutputStream;)V

    goto :goto_0
.end method
