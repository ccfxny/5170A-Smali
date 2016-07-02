.class public Lcom/android/okhttp/internal/http/HttpEngine;
.super Ljava/lang/Object;
.source "HttpEngine.java"


# instance fields
.field public final bufferRequestBody:Z

.field private bufferedRequestBody:Lcom/android/okio/BufferedSink;

.field private cacheResponse:Lcom/android/okhttp/Response;

.field final client:Lcom/android/okhttp/OkHttpClient;

.field private connection:Lcom/android/okhttp/Connection;

.field private networkRequest:Lcom/android/okhttp/Request;

.field private networkResponse:Lcom/android/okhttp/Response;

.field private final priorResponse:Lcom/android/okhttp/Response;

.field private requestBodyOut:Lcom/android/okio/Sink;

.field private responseBody:Lcom/android/okio/Source;

.field private responseBodyBytes:Ljava/io/InputStream;

.field private responseSource:Lcom/android/okhttp/ResponseSource;

.field private responseTransferSource:Lcom/android/okio/Source;

.field private route:Lcom/android/okhttp/Route;

.field private routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

.field sentRequestMillis:J

.field private storeRequest:Ljava/net/CacheRequest;

.field private transparentGzip:Z

.field private transport:Lcom/android/okhttp/internal/http/Transport;

.field private final userRequest:Lcom/android/okhttp/Request;

.field private userResponse:Lcom/android/okhttp/Response;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZLcom/android/okhttp/Connection;Lcom/android/okhttp/internal/http/RouteSelector;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V
    .locals 2
    .param p1, "client"    # Lcom/android/okhttp/OkHttpClient;
    .param p2, "request"    # Lcom/android/okhttp/Request;
    .param p3, "bufferRequestBody"    # Z
    .param p4, "connection"    # Lcom/android/okhttp/Connection;
    .param p5, "routeSelector"    # Lcom/android/okhttp/internal/http/RouteSelector;
    .param p6, "requestBodyOut"    # Lcom/android/okhttp/internal/http/RetryableSink;
    .param p7, "priorResponse"    # Lcom/android/okhttp/Response;

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    .line 167
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    .line 168
    iput-object p2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    .line 169
    iput-boolean p3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    .line 170
    iput-object p4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    .line 171
    iput-object p5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    .line 172
    iput-object p6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okio/Sink;

    .line 173
    iput-object p7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    .line 175
    if-eqz p4, :cond_0

    .line 176
    invoke-virtual {p4, p0}, Lcom/android/okhttp/Connection;->setOwner(Ljava/lang/Object;)V

    .line 177
    invoke-virtual {p4}, Lcom/android/okhttp/Connection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->route:Lcom/android/okhttp/Route;

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->route:Lcom/android/okhttp/Route;

    goto :goto_0
.end method

.method private static combine(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Headers;
    .locals 5
    .param p0, "cachedHeaders"    # Lcom/android/okhttp/Headers;
    .param p1, "networkHeaders"    # Lcom/android/okhttp/Headers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 696
    new-instance v2, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v2}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 698
    .local v2, "result":Lcom/android/okhttp/Headers$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/okhttp/Headers;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 699
    invoke-virtual {p0, v1}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    .line 701
    .local v3, "value":Ljava/lang/String;
    const-string v4, "Warning"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 698
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 704
    :cond_1
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v0}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 705
    :cond_2
    invoke-virtual {v2, v0, v3}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    goto :goto_1

    .line 709
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/android/okhttp/Headers;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 710
    invoke-virtual {p1, v1}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    .line 711
    .restart local v0    # "fieldName":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 712
    invoke-virtual {p1, v1}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 709
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 716
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v2}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v4

    return-object v4
.end method

.method private connect(Lcom/android/okhttp/Request;)V
    .locals 13
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    if-nez v2, :cond_4

    .line 261
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "uriHost":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 263
    :cond_1
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 265
    :cond_2
    const/4 v4, 0x0

    .line 266
    .local v4, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v5, 0x0

    .line 267
    .local v5, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->isHttps()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 268
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/android/okhttp/OkHttpClient;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    .line 269
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/android/okhttp/OkHttpClient;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    .line 271
    :cond_3
    new-instance v0, Lcom/android/okhttp/Address;

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v2

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v3}, Lcom/android/okhttp/OkHttpClient;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v3

    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v6}, Lcom/android/okhttp/OkHttpClient;->getAuthenticator()Lcom/android/okhttp/OkAuthenticator;

    move-result-object v6

    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v7}, Lcom/android/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v7

    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v8}, Lcom/android/okhttp/OkHttpClient;->getProtocols()Ljava/util/List;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/android/okhttp/Address;-><init>(Ljava/lang/String;ILjavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/android/okhttp/OkAuthenticator;Ljava/net/Proxy;Ljava/util/List;)V

    .line 274
    .local v0, "address":Lcom/android/okhttp/Address;
    new-instance v6, Lcom/android/okhttp/internal/http/RouteSelector;

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v8

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/android/okhttp/OkHttpClient;->getProxySelector()Ljava/net/ProxySelector;

    move-result-object v9

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/android/okhttp/OkHttpClient;->getConnectionPool()Lcom/android/okhttp/ConnectionPool;

    move-result-object v10

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/android/okhttp/OkHttpClient;->getHostResolver()Lcom/android/okhttp/HostResolver;

    move-result-object v11

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/android/okhttp/OkHttpClient;->getRoutesDatabase()Lcom/android/okhttp/RouteDatabase;

    move-result-object v12

    move-object v7, v0

    invoke-direct/range {v6 .. v12}, Lcom/android/okhttp/internal/http/RouteSelector;-><init>(Lcom/android/okhttp/Address;Ljava/net/URI;Ljava/net/ProxySelector;Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/HostResolver;Lcom/android/okhttp/RouteDatabase;)V

    iput-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    .line 278
    .end local v0    # "address":Lcom/android/okhttp/Address;
    .end local v1    # "uriHost":Ljava/lang/String;
    .end local v4    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v5    # "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    :cond_4
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/RouteSelector;->next(Ljava/lang/String;)Lcom/android/okhttp/Connection;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    .line 279
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    invoke-virtual {v2, p0}, Lcom/android/okhttp/Connection;->setOwner(Ljava/lang/Object;)V

    .line 281
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    invoke-virtual {v2}, Lcom/android/okhttp/Connection;->isConnected()Z

    move-result v2

    if-nez v2, :cond_7

    .line 282
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v3}, Lcom/android/okhttp/OkHttpClient;->getConnectTimeout()I

    move-result v3

    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v6}, Lcom/android/okhttp/OkHttpClient;->getReadTimeout()I

    move-result v6

    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->getTunnelConfig()Lcom/android/okhttp/TunnelRequest;

    move-result-object v7

    invoke-virtual {v2, v3, v6, v7}, Lcom/android/okhttp/Connection;->connect(IILcom/android/okhttp/TunnelRequest;)V

    .line 283
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    invoke-virtual {v2}, Lcom/android/okhttp/Connection;->isSpdy()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/android/okhttp/OkHttpClient;->getConnectionPool()Lcom/android/okhttp/ConnectionPool;

    move-result-object v2

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    invoke-virtual {v2, v3}, Lcom/android/okhttp/ConnectionPool;->share(Lcom/android/okhttp/Connection;)V

    .line 284
    :cond_5
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/android/okhttp/OkHttpClient;->getRoutesDatabase()Lcom/android/okhttp/RouteDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    invoke-virtual {v3}, Lcom/android/okhttp/Connection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/RouteDatabase;->connected(Lcom/android/okhttp/Route;)V

    .line 289
    :cond_6
    :goto_0
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    invoke-virtual {v2}, Lcom/android/okhttp/Connection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->route:Lcom/android/okhttp/Route;

    .line 290
    return-void

    .line 285
    :cond_7
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    invoke-virtual {v2}, Lcom/android/okhttp/Connection;->isSpdy()Z

    move-result v2

    if-nez v2, :cond_6

    .line 286
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v3}, Lcom/android/okhttp/OkHttpClient;->getReadTimeout()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/Connection;->updateReadTimeout(I)V

    goto :goto_0
.end method

.method public static getDefaultUserAgent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 578
    const-string v1, "http.agent"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, "agent":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "agent":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "agent":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Java"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "java.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTunnelConfig()Lcom/android/okhttp/TunnelRequest;
    .locals 6

    .prologue
    .line 735
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v2}, Lcom/android/okhttp/Request;->isHttps()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 741
    :goto_0
    return-object v2

    .line 737
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v2}, Lcom/android/okhttp/Request;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    .line 738
    .local v1, "userAgent":Ljava/lang/String;
    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/okhttp/internal/http/HttpEngine;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v1

    .line 740
    :cond_1
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v2}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v0

    .line 741
    .local v0, "url":Ljava/net/URL;
    new-instance v2, Lcom/android/okhttp/TunnelRequest;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v4

    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v5}, Lcom/android/okhttp/Request;->getProxyAuthorization()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/android/okhttp/TunnelRequest;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static hostHeader(Ljava/net/URL;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 583
    invoke-static {p0}, Lcom/android/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v0

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->getDefaultPort(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initContentStream(Lcom/android/okio/Source;)V
    .locals 3
    .param p1, "transferSource"    # Lcom/android/okio/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->responseTransferSource:Lcom/android/okio/Source;

    .line 491
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transparentGzip:Z

    if-eqz v0, :cond_0

    const-string v0, "gzip"

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    const-string v2, "Content-Encoding"

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Response$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Response$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    .line 496
    new-instance v0, Lcom/android/okio/GzipSource;

    invoke-direct {v0, p1}, Lcom/android/okio/GzipSource;-><init>(Lcom/android/okio/Source;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->responseBody:Lcom/android/okio/Source;

    .line 500
    :goto_0
    return-void

    .line 498
    :cond_0
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->responseBody:Lcom/android/okio/Source;

    goto :goto_0
.end method

.method private static isEndToEnd(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 724
    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRecoverable(Ljava/io/IOException;)Z
    .locals 5
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 379
    instance-of v4, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/security/cert/CertificateException;

    if-eqz v4, :cond_0

    move v1, v2

    .line 381
    .local v1, "sslFailure":Z
    :goto_0
    instance-of v0, p1, Ljava/net/ProtocolException;

    .line 382
    .local v0, "protocolFailure":Z
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return v2

    .end local v0    # "protocolFailure":Z
    .end local v1    # "sslFailure":Z
    :cond_0
    move v1, v3

    .line 379
    goto :goto_0

    .restart local v0    # "protocolFailure":Z
    .restart local v1    # "sslFailure":Z
    :cond_1
    move v2, v3

    .line 382
    goto :goto_1
.end method

.method private maybeCache()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->getOkResponseCache()Lcom/android/okhttp/OkResponseCache;

    move-result-object v0

    .line 395
    .local v0, "responseCache":Lcom/android/okhttp/OkResponseCache;
    if-nez v0, :cond_0

    .line 405
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-static {v1, v2}, Lcom/android/okhttp/internal/http/CacheStrategy;->isCacheable(Lcom/android/okhttp/Response;Lcom/android/okhttp/Request;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 399
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-interface {v0, v1}, Lcom/android/okhttp/OkResponseCache;->maybeRemove(Lcom/android/okhttp/Request;)Z

    goto :goto_0

    .line 404
    :cond_1
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-static {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/okhttp/OkResponseCache;->put(Lcom/android/okhttp/Response;)Ljava/net/CacheRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->storeRequest:Ljava/net/CacheRequest;

    goto :goto_0
.end method

.method private networkRequest(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Request;
    .locals 6
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 537
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v3

    .line 539
    .local v3, "result":Lcom/android/okhttp/Request$Builder;
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 540
    invoke-static {}, Lcom/android/okhttp/internal/http/HttpEngine;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/okhttp/Request$Builder;->setUserAgent(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 543
    :cond_0
    const-string v4, "Host"

    invoke-virtual {p1, v4}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 544
    const-string v4, "Host"

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v5

    invoke-static {v5}, Lcom/android/okhttp/internal/http/HttpEngine;->hostHeader(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 547
    :cond_1
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    invoke-virtual {v4}, Lcom/android/okhttp/Connection;->getHttpMinorVersion()I

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const-string v4, "Connection"

    invoke-virtual {p1, v4}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 549
    const-string v4, "Connection"

    const-string v5, "Keep-Alive"

    invoke-virtual {v3, v4, v5}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 552
    :cond_3
    const-string v4, "Accept-Encoding"

    invoke-virtual {p1, v4}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 553
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transparentGzip:Z

    .line 554
    const-string v4, "Accept-Encoding"

    const-string v5, "gzip"

    invoke-virtual {v3, v4, v5}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 557
    :cond_4
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->hasRequestBody()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "Content-Type"

    invoke-virtual {p1, v4}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    .line 558
    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v3, v4, v5}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 561
    :cond_5
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v4}, Lcom/android/okhttp/OkHttpClient;->getCookieHandler()Ljava/net/CookieHandler;

    move-result-object v0

    .line 562
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-eqz v0, :cond_6

    .line 566
    invoke-virtual {v3}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 568
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 571
    .local v1, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v3, v1}, Lcom/android/okhttp/internal/http/OkHeaders;->addCookies(Lcom/android/okhttp/Request$Builder;Ljava/util/Map;)V

    .line 574
    .end local v1    # "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_6
    invoke-virtual {v3}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v4

    return-object v4
.end method

.method private static stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
    .locals 2
    .param p0, "response"    # Lcom/android/okhttp/Response;

    .prologue
    .line 251
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/Response$Body;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/Response$Body;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object p0

    .end local p0    # "response":Lcom/android/okhttp/Response;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public final close()Lcom/android/okhttp/Connection;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 436
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okio/BufferedSink;

    if-eqz v2, :cond_1

    .line 438
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okio/BufferedSink;

    invoke-static {v2}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 444
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->responseBody:Lcom/android/okio/Source;

    if-nez v2, :cond_2

    .line 445
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    invoke-static {v2}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 446
    iput-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    move-object v0, v1

    .line 470
    :goto_1
    return-object v0

    .line 439
    :cond_1
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okio/Sink;

    if-eqz v2, :cond_0

    .line 440
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okio/Sink;

    invoke-static {v2}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 451
    :cond_2
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->responseBody:Lcom/android/okio/Source;

    invoke-static {v2}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 454
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->responseBodyBytes:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 457
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    invoke-interface {v2}, Lcom/android/okhttp/internal/http/Transport;->canReuseConnection()Z

    move-result v2

    if-nez v2, :cond_3

    .line 458
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    invoke-static {v2}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 459
    iput-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    move-object v0, v1

    .line 460
    goto :goto_1

    .line 464
    :cond_3
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    invoke-virtual {v2}, Lcom/android/okhttp/Connection;->clearOwner()Z

    move-result v2

    if-nez v2, :cond_4

    .line 465
    iput-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    .line 468
    :cond_4
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    .line 469
    .local v0, "result":Lcom/android/okhttp/Connection;
    iput-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    goto :goto_1
.end method

.method public final disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    invoke-interface {v0, p0}, Lcom/android/okhttp/internal/http/Transport;->disconnect(Lcom/android/okhttp/internal/http/HttpEngine;)V

    .line 429
    :cond_0
    return-void
.end method

.method public final getBufferedRequestBody()Lcom/android/okio/BufferedSink;
    .locals 3

    .prologue
    .line 312
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okio/BufferedSink;

    .line 313
    .local v1, "result":Lcom/android/okio/BufferedSink;
    if-eqz v1, :cond_0

    .line 315
    .end local v1    # "result":Lcom/android/okio/BufferedSink;
    :goto_0
    return-object v1

    .line 314
    .restart local v1    # "result":Lcom/android/okio/BufferedSink;
    :cond_0
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequestBody()Lcom/android/okio/Sink;

    move-result-object v0

    .line 315
    .local v0, "requestBody":Lcom/android/okio/Sink;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/okio/Okio;->buffer(Lcom/android/okio/Sink;)Lcom/android/okio/BufferedSink;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okio/BufferedSink;

    :goto_1
    move-object v1, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final getConnection()Lcom/android/okhttp/Connection;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    return-object v0
.end method

.method public final getRequest()Lcom/android/okhttp/Request;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    return-object v0
.end method

.method public final getRequestBody()Lcom/android/okio/Sink;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->responseSource:Lcom/android/okhttp/ResponseSource;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okio/Sink;

    return-object v0
.end method

.method public final getResponse()Lcom/android/okhttp/Response;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    return-object v0
.end method

.method public final getResponseBody()Lcom/android/okio/Source;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->responseBody:Lcom/android/okio/Source;

    return-object v0
.end method

.method public final getResponseBodyBytes()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->responseBodyBytes:Ljava/io/InputStream;

    .line 342
    .local v0, "result":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .end local v0    # "result":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/io/InputStream;
    :cond_0
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponseBody()Lcom/android/okio/Source;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okio/Okio;->buffer(Lcom/android/okio/Source;)Lcom/android/okio/BufferedSource;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/okio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v0

    .end local v0    # "result":Ljava/io/InputStream;
    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->responseBodyBytes:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public getRoute()Lcom/android/okhttp/Route;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->route:Lcom/android/okhttp/Route;

    return-object v0
.end method

.method hasRequestBody()Z
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpMethod;->hasRequestBody(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final hasResponse()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasResponseBody()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 508
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v3}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HEAD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 527
    :cond_0
    :goto_0
    return v1

    .line 512
    :cond_1
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v3}, Lcom/android/okhttp/Response;->code()I

    move-result v0

    .line 513
    .local v0, "responseCode":I
    const/16 v3, 0x64

    if-lt v0, v3, :cond_2

    const/16 v3, 0xc8

    if-lt v0, v3, :cond_3

    :cond_2
    const/16 v3, 0xcc

    if-eq v0, v3, :cond_3

    const/16 v3, 0x130

    if-eq v0, v3, :cond_3

    move v1, v2

    .line 516
    goto :goto_0

    .line 522
    :cond_3
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkResponse:Lcom/android/okhttp/Response;

    invoke-static {v3}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Response;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    const-string v3, "chunked"

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkResponse:Lcom/android/okhttp/Response;

    const-string v5, "Transfer-Encoding"

    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    .line 524
    goto :goto_0
.end method

.method public final readResponse()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    .line 593
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    if-eqz v3, :cond_1

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    if-nez v3, :cond_2

    .line 597
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "call sendRequest() first!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 599
    :cond_2
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    if-eqz v3, :cond_0

    .line 604
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okio/BufferedSink;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okio/BufferedSink;->buffer()Lcom/android/okio/OkBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 605
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okio/BufferedSink;->flush()V

    .line 608
    :cond_3
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_5

    .line 609
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-static {v3}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Request;)J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okio/Sink;

    instance-of v3, v3, Lcom/android/okhttp/internal/http/RetryableSink;

    if-eqz v3, :cond_4

    .line 612
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okio/Sink;

    check-cast v3, Lcom/android/okhttp/internal/http/RetryableSink;

    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/RetryableSink;->contentLength()J

    move-result-wide v0

    .line 613
    .local v0, "contentLength":J
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v3}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v3

    const-string v4, "Content-Length"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v3

    iput-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    .line 617
    .end local v0    # "contentLength":J
    :cond_4
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "[OkHttp] sendRequest>>"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 618
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-interface {v3, v4}, Lcom/android/okhttp/internal/http/Transport;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    .line 621
    :cond_5
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okio/Sink;

    if-eqz v3, :cond_6

    .line 622
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okio/BufferedSink;

    if-eqz v3, :cond_7

    .line 624
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okio/BufferedSink;->close()V

    .line 628
    :goto_1
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okio/Sink;

    instance-of v3, v3, Lcom/android/okhttp/internal/http/RetryableSink;

    if-eqz v3, :cond_6

    .line 629
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okio/Sink;

    check-cast v3, Lcom/android/okhttp/internal/http/RetryableSink;

    invoke-interface {v4, v3}, Lcom/android/okhttp/internal/http/Transport;->writeRequestBody(Lcom/android/okhttp/internal/http/RetryableSink;)V

    .line 632
    :cond_6
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "[OkHttp] sendRequest<<"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 634
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    invoke-interface {v3}, Lcom/android/okhttp/internal/http/Transport;->flushRequest()V

    .line 636
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    invoke-interface {v3}, Lcom/android/okhttp/internal/http/Transport;->readResponseHeaders()Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    invoke-virtual {v4}, Lcom/android/okhttp/Connection;->getHandshake()Lcom/android/okhttp/Handshake;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->handshake(Lcom/android/okhttp/Handshake;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    sget-object v4, Lcom/android/okhttp/internal/http/OkHeaders;->SENT_MILLIS:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/okhttp/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    sget-object v4, Lcom/android/okhttp/internal/http/OkHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/okhttp/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->responseSource:Lcom/android/okhttp/ResponseSource;

    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->setResponseSource(Lcom/android/okhttp/ResponseSource;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v3

    iput-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkResponse:Lcom/android/okhttp/Response;

    .line 643
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v4}, Lcom/android/okhttp/Response;->httpMinorVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/okhttp/Connection;->setHttpMinorVersion(I)V

    .line 644
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v3}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/okhttp/internal/http/HttpEngine;->receiveHeaders(Lcom/android/okhttp/Headers;)V

    .line 646
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->responseSource:Lcom/android/okhttp/ResponseSource;

    sget-object v4, Lcom/android/okhttp/ResponseSource;->CONDITIONAL_CACHE:Lcom/android/okhttp/ResponseSource;

    if-ne v3, v4, :cond_9

    .line 647
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response;->validate(Lcom/android/okhttp/Response;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 648
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v3}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    invoke-static {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v4}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v4

    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v5}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/okhttp/internal/http/HttpEngine;->combine(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Headers;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-static {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->cacheResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkResponse:Lcom/android/okhttp/Response;

    invoke-static {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->networkResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v3

    iput-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    .line 655
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    invoke-interface {v3}, Lcom/android/okhttp/internal/http/Transport;->emptyTransferStream()V

    .line 656
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->releaseConnection()V

    .line 660
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v3}, Lcom/android/okhttp/OkHttpClient;->getOkResponseCache()Lcom/android/okhttp/OkResponseCache;

    move-result-object v2

    .line 661
    .local v2, "responseCache":Lcom/android/okhttp/OkResponseCache;
    invoke-interface {v2}, Lcom/android/okhttp/OkResponseCache;->trackConditionalCacheHit()V

    .line 662
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-static {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/okhttp/OkResponseCache;->update(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V

    .line 663
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v3}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/Response$Body;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 664
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v3}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/Response$Body;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/Response$Body;->source()Lcom/android/okio/Source;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/okhttp/internal/http/HttpEngine;->initContentStream(Lcom/android/okio/Source;)V

    goto/16 :goto_0

    .line 626
    .end local v2    # "responseCache":Lcom/android/okhttp/OkResponseCache;
    :cond_7
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okio/Sink;

    invoke-interface {v3}, Lcom/android/okio/Sink;->close()V

    goto/16 :goto_1

    .line 669
    :cond_8
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v3}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/Response$Body;

    move-result-object v3

    invoke-static {v3}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 673
    :cond_9
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v3}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    invoke-static {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-static {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->cacheResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkResponse:Lcom/android/okhttp/Response;

    invoke-static {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->networkResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v3

    iput-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    .line 680
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->hasResponseBody()Z

    move-result v3

    if-nez v3, :cond_a

    .line 682
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->storeRequest:Ljava/net/CacheRequest;

    invoke-interface {v3, v4}, Lcom/android/okhttp/internal/http/Transport;->getTransferStream(Ljava/net/CacheRequest;)Lcom/android/okio/Source;

    move-result-object v3

    iput-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->responseTransferSource:Lcom/android/okio/Source;

    .line 683
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->responseTransferSource:Lcom/android/okio/Source;

    iput-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->responseBody:Lcom/android/okio/Source;

    goto/16 :goto_0

    .line 687
    :cond_a
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->maybeCache()V

    .line 688
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->storeRequest:Ljava/net/CacheRequest;

    invoke-interface {v3, v4}, Lcom/android/okhttp/internal/http/Transport;->getTransferStream(Ljava/net/CacheRequest;)Lcom/android/okio/Source;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/okhttp/internal/http/HttpEngine;->initContentStream(Lcom/android/okio/Source;)V

    goto/16 :goto_0
.end method

.method public receiveHeaders(Lcom/android/okhttp/Headers;)V
    .locals 3
    .param p1, "headers"    # Lcom/android/okhttp/Headers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 746
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->getCookieHandler()Ljava/net/CookieHandler;

    move-result-object v0

    .line 747
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-eqz v0, :cond_0

    .line 748
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v1}, Lcom/android/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 750
    :cond_0
    return-void
.end method

.method public recover(Ljava/io/IOException;)Lcom/android/okhttp/internal/http/HttpEngine;
    .locals 9
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    invoke-virtual {v0, v1, p1}, Lcom/android/okhttp/internal/http/RouteSelector;->connectFailed(Lcom/android/okhttp/Connection;Ljava/io/IOException;)V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okio/Sink;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okio/Sink;

    instance-of v0, v0, Lcom/android/okhttp/internal/http/RetryableSink;

    if-eqz v0, :cond_5

    :cond_1
    const/4 v8, 0x1

    .line 362
    .local v8, "canRetryRequestBody":Z
    :goto_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/HttpEngine;->isRecoverable(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v8, :cond_6

    .line 366
    :cond_4
    const/4 v0, 0x0

    .line 372
    :goto_1
    return-object v0

    .line 361
    .end local v8    # "canRetryRequestBody":Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_0

    .line 369
    .restart local v8    # "canRetryRequestBody":Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/Connection;

    move-result-object v4

    .line 372
    .local v4, "connection":Lcom/android/okhttp/Connection;
    new-instance v0, Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    iget-boolean v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okio/Sink;

    check-cast v6, Lcom/android/okhttp/internal/http/RetryableSink;

    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    invoke-direct/range {v0 .. v7}, Lcom/android/okhttp/internal/http/HttpEngine;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZLcom/android/okhttp/Connection;Lcom/android/okhttp/internal/http/RouteSelector;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V

    goto :goto_1
.end method

.method public final releaseConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    invoke-interface {v0}, Lcom/android/okhttp/internal/http/Transport;->releaseConnectionOnIdle()V

    .line 416
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    .line 417
    return-void
.end method

.method public final sendRequest()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 189
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->responseSource:Lcom/android/okhttp/ResponseSource;

    if-eqz v7, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    if-eqz v7, :cond_2

    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 192
    :cond_2
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-direct {p0, v7}, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Request;

    move-result-object v4

    .line 194
    .local v4, "request":Lcom/android/okhttp/Request;
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v7}, Lcom/android/okhttp/OkHttpClient;->getOkResponseCache()Lcom/android/okhttp/OkResponseCache;

    move-result-object v5

    .line 195
    .local v5, "responseCache":Lcom/android/okhttp/OkResponseCache;
    if-eqz v5, :cond_7

    invoke-interface {v5, v4}, Lcom/android/okhttp/OkResponseCache;->get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;

    move-result-object v0

    .line 198
    .local v0, "cacheCandidate":Lcom/android/okhttp/Response;
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 199
    .local v2, "now":J
    new-instance v7, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;

    invoke-direct {v7, v2, v3, v4, v0}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;-><init>(JLcom/android/okhttp/Request;Lcom/android/okhttp/Response;)V

    invoke-virtual {v7}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->get()Lcom/android/okhttp/internal/http/CacheStrategy;

    move-result-object v1

    .line 200
    .local v1, "cacheStrategy":Lcom/android/okhttp/internal/http/CacheStrategy;
    iget-object v7, v1, Lcom/android/okhttp/internal/http/CacheStrategy;->source:Lcom/android/okhttp/ResponseSource;

    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->responseSource:Lcom/android/okhttp/ResponseSource;

    .line 201
    iget-object v7, v1, Lcom/android/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/android/okhttp/Request;

    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    .line 202
    iget-object v7, v1, Lcom/android/okhttp/internal/http/CacheStrategy;->cacheResponse:Lcom/android/okhttp/Response;

    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    .line 204
    if-eqz v5, :cond_3

    .line 205
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->responseSource:Lcom/android/okhttp/ResponseSource;

    invoke-interface {v5, v7}, Lcom/android/okhttp/OkResponseCache;->trackResponse(Lcom/android/okhttp/ResponseSource;)V

    .line 208
    :cond_3
    if-eqz v0, :cond_5

    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->responseSource:Lcom/android/okhttp/ResponseSource;

    sget-object v8, Lcom/android/okhttp/ResponseSource;->NONE:Lcom/android/okhttp/ResponseSource;

    if-eq v7, v8, :cond_4

    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    if-nez v7, :cond_5

    .line 210
    :cond_4
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/Response$Body;

    move-result-object v7

    invoke-static {v7}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 213
    :cond_5
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    if-eqz v7, :cond_9

    .line 215
    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    if-nez v6, :cond_6

    .line 216
    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-direct {p0, v6}, Lcom/android/okhttp/internal/http/HttpEngine;->connect(Lcom/android/okhttp/Request;)V

    .line 220
    :cond_6
    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    invoke-virtual {v6}, Lcom/android/okhttp/Connection;->getOwner()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p0, :cond_8

    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    invoke-virtual {v6}, Lcom/android/okhttp/Connection;->isSpdy()Z

    move-result v6

    if-nez v6, :cond_8

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .end local v0    # "cacheCandidate":Lcom/android/okhttp/Response;
    .end local v1    # "cacheStrategy":Lcom/android/okhttp/internal/http/CacheStrategy;
    .end local v2    # "now":J
    :cond_7
    move-object v0, v6

    .line 195
    goto :goto_1

    .line 222
    .restart local v0    # "cacheCandidate":Lcom/android/okhttp/Response;
    .restart local v1    # "cacheStrategy":Lcom/android/okhttp/internal/http/CacheStrategy;
    .restart local v2    # "now":J
    :cond_8
    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    invoke-virtual {v6, p0}, Lcom/android/okhttp/Connection;->newTransport(Lcom/android/okhttp/internal/http/HttpEngine;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/okhttp/internal/http/Transport;

    iput-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    .line 226
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->hasRequestBody()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okio/Sink;

    if-nez v6, :cond_0

    .line 227
    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    invoke-interface {v6, v4}, Lcom/android/okhttp/internal/http/Transport;->createRequestBody(Lcom/android/okhttp/Request;)Lcom/android/okio/Sink;

    move-result-object v6

    iput-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okio/Sink;

    goto/16 :goto_0

    .line 232
    :cond_9
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    if-eqz v7, :cond_a

    .line 233
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v7}, Lcom/android/okhttp/OkHttpClient;->getConnectionPool()Lcom/android/okhttp/ConnectionPool;

    move-result-object v7

    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    invoke-virtual {v7, v8}, Lcom/android/okhttp/ConnectionPool;->recycle(Lcom/android/okhttp/Connection;)V

    .line 234
    iput-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    .line 238
    :cond_a
    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v6}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v6, v7}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    invoke-static {v7}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/okhttp/Response$Builder;->priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-static {v7}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/okhttp/Response$Builder;->cacheResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v6

    iput-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    .line 243
    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v6}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/Response$Body;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 244
    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v6}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/Response$Body;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/okhttp/Response$Body;->source()Lcom/android/okio/Source;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/okhttp/internal/http/HttpEngine;->initContentStream(Lcom/android/okio/Source;)V

    goto/16 :goto_0
.end method

.method public writingRequestHeaders()V
    .locals 4

    .prologue
    .line 297
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 298
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    .line 299
    return-void
.end method
