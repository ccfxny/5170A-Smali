.class public final Lcom/android/okhttp/internal/http/HttpTransport;
.super Ljava/lang/Object;
.source "HttpTransport.java"

# interfaces
.implements Lcom/android/okhttp/internal/http/Transport;


# instance fields
.field private final httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

.field private final httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/internal/http/HttpConnection;)V
    .locals 0
    .param p1, "httpEngine"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .param p2, "httpConnection"    # Lcom/android/okhttp/internal/http/HttpConnection;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    .line 32
    iput-object p2, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    .line 33
    return-void
.end method


# virtual methods
.method public canReuseConnection()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 114
    const-string v1, "close"

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequest()Lcom/android/okhttp/Request;

    move-result-object v2

    const-string v3, "Connection"

    invoke-virtual {v2, v3}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    const-string v1, "close"

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v2

    const-string v3, "Connection"

    invoke-virtual {v2, v3}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpConnection;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public createRequestBody(Lcom/android/okhttp/Request;)Lcom/android/okio/Sink;
    .locals 6
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 36
    invoke-static {p1}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Request;)J

    move-result-wide v0

    .line 38
    .local v0, "contentLength":J
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-boolean v2, v2, Lcom/android/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    if-eqz v2, :cond_2

    .line 39
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 40
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 44
    :cond_0
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/http/HttpTransport;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    .line 47
    new-instance v2, Lcom/android/okhttp/internal/http/RetryableSink;

    long-to-int v3, v0

    invoke-direct {v2, v3}, Lcom/android/okhttp/internal/http/RetryableSink;-><init>(I)V

    .line 65
    :goto_0
    return-object v2

    .line 52
    :cond_1
    new-instance v2, Lcom/android/okhttp/internal/http/RetryableSink;

    invoke-direct {v2}, Lcom/android/okhttp/internal/http/RetryableSink;-><init>()V

    goto :goto_0

    .line 56
    :cond_2
    const-string v2, "chunked"

    const-string v3, "Transfer-Encoding"

    invoke-virtual {p1, v3}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/http/HttpTransport;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    .line 59
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpConnection;->newChunkedSink()Lcom/android/okio/Sink;

    move-result-object v2

    goto :goto_0

    .line 62
    :cond_3
    cmp-long v2, v0, v4

    if-eqz v2, :cond_4

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/http/HttpTransport;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    .line 65
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    invoke-virtual {v2, v0, v1}, Lcom/android/okhttp/internal/http/HttpConnection;->newFixedLengthSink(J)Lcom/android/okio/Sink;

    move-result-object v2

    goto :goto_0

    .line 68
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public disconnect(Lcom/android/okhttp/internal/http/HttpEngine;)V
    .locals 1
    .param p1, "engine"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/internal/http/HttpConnection;->closeIfOwnedBy(Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public emptyTransferStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->emptyResponseBody()V

    .line 132
    return-void
.end method

.method public flushRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->flush()V

    .line 74
    return-void
.end method

.method public getTransferStream(Ljava/net/CacheRequest;)Lcom/android/okio/Source;
    .locals 6
    .param p1, "cacheRequest"    # Ljava/net/CacheRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->hasResponseBody()Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, p1, v4, v5}, Lcom/android/okhttp/internal/http/HttpConnection;->newFixedLengthSource(Ljava/net/CacheRequest;J)Lcom/android/okio/Source;

    move-result-object v2

    .line 151
    :goto_0
    return-object v2

    .line 139
    :cond_0
    const-string v2, "chunked"

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v3

    const-string v4, "Transfer-Encoding"

    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2, p1, v3}, Lcom/android/okhttp/internal/http/HttpConnection;->newChunkedSource(Ljava/net/CacheRequest;Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okio/Source;

    move-result-object v2

    goto :goto_0

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Response;)J

    move-result-wide v0

    .line 144
    .local v0, "contentLength":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 145
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/okhttp/internal/http/HttpConnection;->newFixedLengthSource(Ljava/net/CacheRequest;J)Lcom/android/okio/Source;

    move-result-object v2

    goto :goto_0

    .line 151
    :cond_2
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    invoke-virtual {v2, p1}, Lcom/android/okhttp/internal/http/HttpConnection;->newUnknownLengthSource(Ljava/net/CacheRequest;)Lcom/android/okio/Source;

    move-result-object v2

    goto :goto_0
.end method

.method public readResponseHeaders()Lcom/android/okhttp/Response$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->readResponse()Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public releaseConnectionOnIdle()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpTransport;->canReuseConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->poolOnIdle()V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->closeOnIdle()V

    goto :goto_0
.end method

.method public writeRequestBody(Lcom/android/okhttp/internal/http/RetryableSink;)V
    .locals 1
    .param p1, "requestBody"    # Lcom/android/okhttp/internal/http/RetryableSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/internal/http/HttpConnection;->writeRequestBody(Lcom/android/okhttp/internal/http/RetryableSink;)V

    .line 78
    return-void
.end method

.method public writeRequestHeaders(Lcom/android/okhttp/Request;)V
    .locals 3
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->writingRequestHeaders()V

    .line 94
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->getConnection()Lcom/android/okhttp/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Connection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->getConnection()Lcom/android/okhttp/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Connection;->getHttpMinorVersion()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/android/okhttp/internal/http/RequestLine;->get(Lcom/android/okhttp/Request;Ljava/net/Proxy$Type;I)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "requestLine":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->getHeaders()Lcom/android/okhttp/Headers;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/okhttp/internal/http/HttpConnection;->writeRequest(Lcom/android/okhttp/Headers;Ljava/lang/String;)V

    .line 98
    return-void
.end method
