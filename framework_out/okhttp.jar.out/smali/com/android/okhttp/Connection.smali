.class public final Lcom/android/okhttp/Connection;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private connected:Z

.field private handshake:Lcom/android/okhttp/Handshake;

.field private httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

.field private httpMinorVersion:I

.field private idleStartTimeNs:J

.field private owner:Ljava/lang/Object;

.field private final pool:Lcom/android/okhttp/ConnectionPool;

.field private recycleCount:I

.field private final route:Lcom/android/okhttp/Route;

.field private socket:Ljava/net/Socket;

.field private spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Route;)V
    .locals 1
    .param p1, "pool"    # Lcom/android/okhttp/ConnectionPool;
    .param p2, "route"    # Lcom/android/okhttp/Route;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/okhttp/Connection;->connected:Z

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/okhttp/Connection;->httpMinorVersion:I

    .line 87
    iput-object p1, p0, Lcom/android/okhttp/Connection;->pool:Lcom/android/okhttp/ConnectionPool;

    .line 88
    iput-object p2, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    .line 89
    return-void
.end method

.method private makeTunnel(Lcom/android/okhttp/TunnelRequest;)V
    .locals 12
    .param p1, "tunnelRequest"    # Lcom/android/okhttp/TunnelRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    new-instance v6, Lcom/android/okhttp/internal/http/HttpConnection;

    iget-object v7, p0, Lcom/android/okhttp/Connection;->pool:Lcom/android/okhttp/ConnectionPool;

    iget-object v8, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-direct {v6, v7, p0, v8}, Lcom/android/okhttp/internal/http/HttpConnection;-><init>(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Connection;Ljava/net/Socket;)V

    .line 379
    .local v6, "tunnelConnection":Lcom/android/okhttp/internal/http/HttpConnection;
    invoke-virtual {p1}, Lcom/android/okhttp/TunnelRequest;->getRequest()Lcom/android/okhttp/Request;

    move-result-object v1

    .line 380
    .local v1, "request":Lcom/android/okhttp/Request;
    invoke-virtual {p1}, Lcom/android/okhttp/TunnelRequest;->requestLine()Ljava/lang/String;

    move-result-object v4

    .line 382
    .local v4, "requestLine":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lcom/android/okhttp/internal/http/HttpConnection;->writeRequest(Lcom/android/okhttp/Headers;Ljava/lang/String;)V

    .line 383
    invoke-virtual {v6}, Lcom/android/okhttp/internal/http/HttpConnection;->flush()V

    .line 384
    invoke-virtual {v6}, Lcom/android/okhttp/internal/http/HttpConnection;->readResponse()Lcom/android/okhttp/Response$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v5

    .line 387
    .local v5, "response":Lcom/android/okhttp/Response;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Response;)J

    move-result-wide v2

    .line 388
    .local v2, "contentLength":J
    const-wide/16 v8, -0x1

    cmp-long v7, v2, v8

    if-eqz v7, :cond_1

    .line 389
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2, v3}, Lcom/android/okhttp/internal/http/HttpConnection;->newFixedLengthSource(Ljava/net/CacheRequest;J)Lcom/android/okio/Source;

    move-result-object v0

    .line 390
    .local v0, "body":Lcom/android/okio/Source;
    const v7, 0x7fffffff

    invoke-static {v0, v7}, Lcom/android/okhttp/internal/Util;->skipAll(Lcom/android/okio/Source;I)Z

    .line 395
    .end local v0    # "body":Lcom/android/okio/Source;
    :goto_0
    invoke-virtual {v5}, Lcom/android/okhttp/Response;->code()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 413
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected response code for CONNECT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/okhttp/Response;->code()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 392
    :cond_1
    invoke-virtual {v6}, Lcom/android/okhttp/internal/http/HttpConnection;->emptyResponseBody()V

    goto :goto_0

    .line 401
    :sswitch_0
    invoke-virtual {v6}, Lcom/android/okhttp/internal/http/HttpConnection;->bufferSize()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    .line 402
    new-instance v7, Ljava/io/IOException;

    const-string v8, "TLS tunnel buffered too many bytes!"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 407
    :sswitch_1
    iget-object v7, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    iget-object v7, v7, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    iget-object v7, v7, Lcom/android/okhttp/Address;->authenticator:Lcom/android/okhttp/OkAuthenticator;

    iget-object v8, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    iget-object v8, v8, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-static {v7, v5, v8}, Lcom/android/okhttp/internal/http/HttpAuthenticator;->processAuthHeader(Lcom/android/okhttp/OkAuthenticator;Lcom/android/okhttp/Response;Ljava/net/Proxy;)Lcom/android/okhttp/Request;

    move-result-object v1

    .line 409
    if-nez v1, :cond_0

    .line 410
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Failed to authenticate with proxy"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 404
    :cond_2
    return-void

    .line 395
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method private upgradeToTls(Lcom/android/okhttp/TunnelRequest;)V
    .locals 12
    .param p1, "tunnelRequest"    # Lcom/android/okhttp/TunnelRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 167
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v2

    .line 170
    .local v2, "platform":Lcom/android/okhttp/internal/Platform;
    invoke-virtual {p0}, Lcom/android/okhttp/Connection;->requiresTunnel()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 171
    invoke-direct {p0, p1}, Lcom/android/okhttp/Connection;->makeTunnel(Lcom/android/okhttp/TunnelRequest;)V

    .line 175
    :cond_0
    iget-object v7, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    iget-object v7, v7, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    iget-object v7, v7, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v8, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    iget-object v9, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    iget-object v9, v9, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    iget-object v9, v9, Lcom/android/okhttp/Address;->uriHost:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    iget-object v10, v10, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    iget v10, v10, Lcom/android/okhttp/Address;->uriPort:I

    invoke-virtual {v7, v8, v9, v10, v11}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v7

    iput-object v7, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    .line 177
    iget-object v5, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    check-cast v5, Ljavax/net/ssl/SSLSocket;

    .line 178
    .local v5, "sslSocket":Ljavax/net/ssl/SSLSocket;
    iget-object v7, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    iget-boolean v7, v7, Lcom/android/okhttp/Route;->modernTls:Z

    if-eqz v7, :cond_2

    .line 179
    iget-object v7, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    iget-object v7, v7, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    iget-object v7, v7, Lcom/android/okhttp/Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v2, v5, v7}, Lcom/android/okhttp/internal/Platform;->enableTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 184
    :goto_0
    const/4 v6, 0x0

    .line 185
    .local v6, "useNpn":Z
    iget-object v7, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    iget-boolean v7, v7, Lcom/android/okhttp/Route;->modernTls:Z

    if-eqz v7, :cond_1

    .line 186
    iget-object v7, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    iget-object v7, v7, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    iget-object v7, v7, Lcom/android/okhttp/Address;->protocols:Ljava/util/List;

    sget-object v8, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 187
    .local v0, "http2":Z
    iget-object v7, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    iget-object v7, v7, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    iget-object v7, v7, Lcom/android/okhttp/Address;->protocols:Ljava/util/List;

    sget-object v8, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 188
    .local v4, "spdy3":Z
    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    .line 189
    sget-object v7, Lcom/android/okhttp/Protocol;->HTTP2_SPDY3_AND_HTTP:Ljava/util/List;

    invoke-virtual {v2, v5, v7}, Lcom/android/okhttp/internal/Platform;->setNpnProtocols(Ljavax/net/ssl/SSLSocket;Ljava/util/List;)V

    .line 190
    const/4 v6, 0x1

    .line 201
    .end local v0    # "http2":Z
    .end local v4    # "spdy3":Z
    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 204
    iget-object v7, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    iget-object v7, v7, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    iget-object v7, v7, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v8, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    iget-object v8, v8, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    iget-object v8, v8, Lcom/android/okhttp/Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 205
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Hostname \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    iget-object v9, v9, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    iget-object v9, v9, Lcom/android/okhttp/Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' was not verified"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 181
    .end local v6    # "useNpn":Z
    :cond_2
    invoke-virtual {v2, v5}, Lcom/android/okhttp/internal/Platform;->supportTlsIntolerantServer(Ljavax/net/ssl/SSLSocket;)V

    goto :goto_0

    .line 191
    .restart local v0    # "http2":Z
    .restart local v4    # "spdy3":Z
    .restart local v6    # "useNpn":Z
    :cond_3
    if-eqz v0, :cond_4

    .line 192
    sget-object v7, Lcom/android/okhttp/Protocol;->HTTP2_AND_HTTP_11:Ljava/util/List;

    invoke-virtual {v2, v5, v7}, Lcom/android/okhttp/internal/Platform;->setNpnProtocols(Ljavax/net/ssl/SSLSocket;Ljava/util/List;)V

    .line 193
    const/4 v6, 0x1

    goto :goto_1

    .line 194
    :cond_4
    if-eqz v4, :cond_1

    .line 195
    sget-object v7, Lcom/android/okhttp/Protocol;->SPDY3_AND_HTTP11:Ljava/util/List;

    invoke-virtual {v2, v5, v7}, Lcom/android/okhttp/internal/Platform;->setNpnProtocols(Ljavax/net/ssl/SSLSocket;Ljava/util/List;)V

    .line 196
    const/4 v6, 0x1

    goto :goto_1

    .line 208
    .end local v0    # "http2":Z
    .end local v4    # "spdy3":Z
    :cond_5
    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v7

    invoke-static {v7}, Lcom/android/okhttp/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lcom/android/okhttp/Handshake;

    move-result-object v7

    iput-object v7, p0, Lcom/android/okhttp/Connection;->handshake:Lcom/android/okhttp/Handshake;

    .line 211
    sget-object v3, Lcom/android/okhttp/Protocol;->HTTP_11:Lcom/android/okhttp/Protocol;

    .line 212
    .local v3, "selectedProtocol":Lcom/android/okhttp/Protocol;
    if-eqz v6, :cond_6

    invoke-virtual {v2, v5}, Lcom/android/okhttp/internal/Platform;->getNpnSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Lcom/android/okio/ByteString;

    move-result-object v1

    .local v1, "maybeProtocol":Lcom/android/okio/ByteString;
    if-eqz v1, :cond_6

    .line 213
    invoke-static {v1}, Lcom/android/okhttp/Protocol;->find(Lcom/android/okio/ByteString;)Lcom/android/okhttp/Protocol;

    move-result-object v3

    .line 216
    .end local v1    # "maybeProtocol":Lcom/android/okio/ByteString;
    :cond_6
    iget-boolean v7, v3, Lcom/android/okhttp/Protocol;->spdyVariant:Z

    if-eqz v7, :cond_7

    .line 217
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 218
    new-instance v7, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;

    iget-object v8, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    iget-object v8, v8, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v8}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-direct {v7, v8, v11, v9}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;-><init>(Ljava/lang/String;ZLjava/net/Socket;)V

    invoke-virtual {v7, v3}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->build()Lcom/android/okhttp/internal/spdy/SpdyConnection;

    move-result-object v7

    iput-object v7, p0, Lcom/android/okhttp/Connection;->spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    .line 220
    iget-object v7, p0, Lcom/android/okhttp/Connection;->spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v7}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->sendConnectionHeader()V

    .line 224
    :goto_2
    return-void

    .line 222
    :cond_7
    new-instance v7, Lcom/android/okhttp/internal/http/HttpConnection;

    iget-object v8, p0, Lcom/android/okhttp/Connection;->pool:Lcom/android/okhttp/ConnectionPool;

    iget-object v9, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-direct {v7, v8, p0, v9}, Lcom/android/okhttp/internal/http/HttpConnection;-><init>(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Connection;Ljava/net/Socket;)V

    iput-object v7, p0, Lcom/android/okhttp/Connection;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    goto :goto_2
.end method


# virtual methods
.method public clearOwner()Z
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lcom/android/okhttp/Connection;->pool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/Connection;->owner:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    monitor-exit v1

    .line 119
    :goto_0
    return v0

    .line 118
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/okhttp/Connection;->owner:Ljava/lang/Object;

    .line 119
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Close in OkHttp"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 257
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 258
    :cond_2
    return-void

    .line 252
    :catch_0
    move-exception v0

    goto :goto_1

    .line 249
    :catch_1
    move-exception v0

    goto :goto_1

    .line 241
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public closeIfOwnedBy(Ljava/lang/Object;)V
    .locals 2
    .param p1, "owner"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/okhttp/Connection;->isSpdy()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/Connection;->pool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/Connection;->owner:Ljava/lang/Object;

    if-eq v0, p1, :cond_1

    .line 131
    monitor-exit v1

    .line 139
    :goto_0
    return-void

    .line 134
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/okhttp/Connection;->owner:Ljava/lang/Object;

    .line 135
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    iget-object v0, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public connect(IILcom/android/okhttp/TunnelRequest;)V
    .locals 3
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "tunnelRequest"    # Lcom/android/okhttp/TunnelRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/okhttp/Connection;->connected:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    iget-object v0, v0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    iget-object v0, v0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_2

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    iget-object v0, v0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    iget-object v0, v0, Lcom/android/okhttp/Address;->socketFactory:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 152
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    iget-object v2, v2, Lcom/android/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/okhttp/internal/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V

    .line 154
    iget-object v0, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    iget-object v0, v0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    iget-object v0, v0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_3

    .line 155
    invoke-direct {p0, p3}, Lcom/android/okhttp/Connection;->upgradeToTls(Lcom/android/okhttp/TunnelRequest;)V

    .line 159
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/Connection;->connected:Z

    .line 160
    return-void

    .line 148
    :cond_2
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    iget-object v1, v1, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v0, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    goto :goto_0

    .line 157
    :cond_3
    new-instance v0, Lcom/android/okhttp/internal/http/HttpConnection;

    iget-object v1, p0, Lcom/android/okhttp/Connection;->pool:Lcom/android/okhttp/ConnectionPool;

    iget-object v2, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/okhttp/internal/http/HttpConnection;-><init>(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Connection;Ljava/net/Socket;)V

    iput-object v0, p0, Lcom/android/okhttp/Connection;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    goto :goto_1
.end method

.method public getHandshake()Lcom/android/okhttp/Handshake;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/okhttp/Connection;->handshake:Lcom/android/okhttp/Handshake;

    return-object v0
.end method

.method public getHttpMinorVersion()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/android/okhttp/Connection;->httpMinorVersion:I

    return v0
.end method

.method public getIdleStartTimeNs()J
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/okhttp/Connection;->spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/okhttp/Connection;->idleStartTimeNs:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/Connection;->spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->getIdleStartTimeNs()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getOwner()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 92
    iget-object v1, p0, Lcom/android/okhttp/Connection;->pool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/Connection;->owner:Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRoute()Lcom/android/okhttp/Route;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public incrementRecycleCount()V
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/android/okhttp/Connection;->recycleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/Connection;->recycleCount:I

    .line 362
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/android/okhttp/Connection;->connected:Z

    return v0
.end method

.method public isExpired(J)Z
    .locals 5
    .param p1, "keepAliveDurationNs"    # J

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/android/okhttp/Connection;->getIdleStartTimeNs()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/okhttp/Connection;->spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/okhttp/Connection;->spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadable()Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/okhttp/Connection;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/okhttp/Connection;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->isReadable()Z

    move-result v0

    .line 285
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSpdy()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/okhttp/Connection;->spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newTransport(Lcom/android/okhttp/internal/http/HttpEngine;)Ljava/lang/Object;
    .locals 2
    .param p1, "httpEngine"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/okhttp/Connection;->spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/okhttp/internal/http/SpdyTransport;

    iget-object v1, p0, Lcom/android/okhttp/Connection;->spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    invoke-direct {v0, p1, v1}, Lcom/android/okhttp/internal/http/SpdyTransport;-><init>(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/internal/spdy/SpdyConnection;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/okhttp/internal/http/HttpTransport;

    iget-object v1, p0, Lcom/android/okhttp/Connection;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    invoke-direct {v0, p1, v1}, Lcom/android/okhttp/internal/http/HttpTransport;-><init>(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/internal/http/HttpConnection;)V

    goto :goto_0
.end method

.method public recycleCount()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/android/okhttp/Connection;->recycleCount:I

    return v0
.end method

.method public requiresTunnel()Z
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    iget-object v0, v0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    iget-object v0, v0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    iget-object v0, v0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetIdleStartTime()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/okhttp/Connection;->spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "spdyConnection != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/okhttp/Connection;->idleStartTimeNs:J

    .line 291
    return-void
.end method

.method public setHttpMinorVersion(I)V
    .locals 0
    .param p1, "httpMinorVersion"    # I

    .prologue
    .line 343
    iput p1, p0, Lcom/android/okhttp/Connection;->httpMinorVersion:I

    .line 344
    return-void
.end method

.method public setOwner(Ljava/lang/Object;)V
    .locals 3
    .param p1, "owner"    # Ljava/lang/Object;

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/okhttp/Connection;->isSpdy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/Connection;->pool:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/Connection;->owner:Ljava/lang/Object;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Connection already has an owner!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 101
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/android/okhttp/Connection;->owner:Ljava/lang/Object;

    .line 102
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public updateReadTimeout(I)V
    .locals 2
    .param p1, "newTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/android/okhttp/Connection;->connected:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "updateReadTimeout - not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 358
    return-void
.end method
