.class public final Lcom/android/okhttp/OkHttpClient;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/net/URLStreamHandlerFactory;
.implements Ljava/lang/Cloneable;


# instance fields
.field private authenticator:Lcom/android/okhttp/OkAuthenticator;

.field private connectTimeout:I

.field private connectionPool:Lcom/android/okhttp/ConnectionPool;

.field private cookieHandler:Ljava/net/CookieHandler;

.field private dispatcher:Lcom/android/okhttp/Dispatcher;

.field private followProtocolRedirects:Z

.field private hostResolver:Lcom/android/okhttp/HostResolver;

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private proxy:Ljava/net/Proxy;

.field private proxySelector:Ljava/net/ProxySelector;

.field private readTimeout:I

.field private responseCache:Lcom/android/okhttp/OkResponseCache;

.field private final routeDatabase:Lcom/android/okhttp/RouteDatabase;

.field private socketFactory:Ljavax/net/SocketFactory;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/OkHttpClient;->followProtocolRedirects:Z

    .line 75
    new-instance v0, Lcom/android/okhttp/RouteDatabase;

    invoke-direct {v0}, Lcom/android/okhttp/RouteDatabase;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->routeDatabase:Lcom/android/okhttp/RouteDatabase;

    .line 76
    new-instance v0, Lcom/android/okhttp/Dispatcher;

    invoke-direct {v0}, Lcom/android/okhttp/Dispatcher;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->dispatcher:Lcom/android/okhttp/Dispatcher;

    .line 77
    return-void
.end method

.method private declared-synchronized getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 5

    .prologue
    .line 526
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 528
    :try_start_1
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 529
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 530
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    .end local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :try_start_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 526
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private toOkResponseCache(Ljava/net/ResponseCache;)Lcom/android/okhttp/OkResponseCache;
    .locals 1
    .param p1, "responseCache"    # Ljava/net/ResponseCache;

    .prologue
    .line 548
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/okhttp/OkResponseCache;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p1, Lcom/android/okhttp/OkResponseCache;

    .end local p1    # "responseCache":Ljava/net/ResponseCache;
    :goto_0
    return-object p1

    .restart local p1    # "responseCache":Ljava/net/ResponseCache;
    :cond_1
    new-instance v0, Lcom/android/okhttp/internal/http/ResponseCacheAdapter;

    invoke-direct {v0, p1}, Lcom/android/okhttp/internal/http/ResponseCacheAdapter;-><init>(Ljava/net/ResponseCache;)V

    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method public cancel(Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->dispatcher:Lcom/android/okhttp/Dispatcher;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Dispatcher;->cancel(Ljava/lang/Object;)V

    .line 459
    return-void
.end method

.method public clone()Lcom/android/okhttp/OkHttpClient;
    .locals 2

    .prologue
    .line 541
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/okhttp/OkHttpClient;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->clone()Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method copyWithDefaults()Lcom/android/okhttp/OkHttpClient;
    .locals 2

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->clone()Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    .line 481
    .local v0, "result":Lcom/android/okhttp/OkHttpClient;
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    if-nez v1, :cond_0

    .line 482
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 484
    :cond_0
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    if-nez v1, :cond_1

    .line 485
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    .line 487
    :cond_1
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->responseCache:Lcom/android/okhttp/OkResponseCache;

    if-nez v1, :cond_2

    .line 488
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/okhttp/OkHttpClient;->toOkResponseCache(Ljava/net/ResponseCache;)Lcom/android/okhttp/OkResponseCache;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->responseCache:Lcom/android/okhttp/OkResponseCache;

    .line 490
    :cond_2
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    if-nez v1, :cond_3

    .line 491
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 493
    :cond_3
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_4

    .line 494
    invoke-direct {p0}, Lcom/android/okhttp/OkHttpClient;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 496
    :cond_4
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-nez v1, :cond_5

    .line 497
    sget-object v1, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->INSTANCE:Lcom/android/okhttp/internal/tls/OkHostnameVerifier;

    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 499
    :cond_5
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->authenticator:Lcom/android/okhttp/OkAuthenticator;

    if-nez v1, :cond_6

    .line 500
    sget-object v1, Lcom/android/okhttp/internal/http/HttpAuthenticator;->SYSTEM_DEFAULT:Lcom/android/okhttp/OkAuthenticator;

    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->authenticator:Lcom/android/okhttp/OkAuthenticator;

    .line 502
    :cond_6
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    if-nez v1, :cond_7

    .line 503
    invoke-static {}, Lcom/android/okhttp/ConnectionPool;->getDefault()Lcom/android/okhttp/ConnectionPool;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    .line 505
    :cond_7
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    if-nez v1, :cond_8

    .line 506
    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP2_SPDY3_AND_HTTP:Ljava/util/List;

    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    .line 508
    :cond_8
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->hostResolver:Lcom/android/okhttp/HostResolver;

    if-nez v1, :cond_9

    .line 509
    sget-object v1, Lcom/android/okhttp/HostResolver;->DEFAULT:Lcom/android/okhttp/HostResolver;

    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->hostResolver:Lcom/android/okhttp/HostResolver;

    .line 511
    :cond_9
    return-object v0
.end method

.method public createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 564
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 566
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/okhttp/OkHttpClient$1;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/OkHttpClient$1;-><init>(Lcom/android/okhttp/OkHttpClient;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enqueue(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response$Receiver;)V
    .locals 1
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .param p2, "responseReceiver"    # Lcom/android/okhttp/Response$Receiver;

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->dispatcher:Lcom/android/okhttp/Dispatcher;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/okhttp/Dispatcher;->enqueue(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;Lcom/android/okhttp/Response$Receiver;)V

    .line 451
    return-void
.end method

.method public execute(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;
    .locals 5
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->copyWithDefaults()Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    .line 433
    .local v0, "client":Lcom/android/okhttp/OkHttpClient;
    new-instance v1, Lcom/android/okhttp/Job;

    iget-object v3, p0, Lcom/android/okhttp/OkHttpClient;->dispatcher:Lcom/android/okhttp/Dispatcher;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, p1, v4}, Lcom/android/okhttp/Job;-><init>(Lcom/android/okhttp/Dispatcher;Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;Lcom/android/okhttp/Response$Receiver;)V

    .line 434
    .local v1, "job":Lcom/android/okhttp/Job;
    invoke-virtual {v1}, Lcom/android/okhttp/Job;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v2

    .line 435
    .local v2, "result":Lcom/android/okhttp/Response;
    iget-object v3, v1, Lcom/android/okhttp/Job;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/HttpEngine;->releaseConnection()V

    .line 436
    return-object v2
.end method

.method public getAuthenticator()Lcom/android/okhttp/OkAuthenticator;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->authenticator:Lcom/android/okhttp/OkAuthenticator;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/android/okhttp/OkHttpClient;->connectTimeout:I

    return v0
.end method

.method public getConnectionPool()Lcom/android/okhttp/ConnectionPool;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    return-object v0
.end method

.method public getCookieHandler()Ljava/net/CookieHandler;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    return-object v0
.end method

.method public getDispatcher()Lcom/android/okhttp/Dispatcher;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->dispatcher:Lcom/android/okhttp/Dispatcher;

    return-object v0
.end method

.method public getFollowProtocolRedirects()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/android/okhttp/OkHttpClient;->followProtocolRedirects:Z

    return v0
.end method

.method public getHostResolver()Lcom/android/okhttp/HostResolver;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->hostResolver:Lcom/android/okhttp/HostResolver;

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getOkResponseCache()Lcom/android/okhttp/OkResponseCache;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->responseCache:Lcom/android/okhttp/OkResponseCache;

    return-object v0
.end method

.method public getProtocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getProxySelector()Ljava/net/ProxySelector;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/android/okhttp/OkHttpClient;->readTimeout:I

    return v0
.end method

.method public getResponseCache()Ljava/net/ResponseCache;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->responseCache:Lcom/android/okhttp/OkResponseCache;

    instance-of v0, v0, Lcom/android/okhttp/internal/http/ResponseCacheAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->responseCache:Lcom/android/okhttp/OkResponseCache;

    check-cast v0, Lcom/android/okhttp/internal/http/ResponseCacheAdapter;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/ResponseCacheAdapter;->getDelegate()Ljava/net/ResponseCache;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRoutesDatabase()Lcom/android/okhttp/RouteDatabase;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->routeDatabase:Lcom/android/okhttp/RouteDatabase;

    return-object v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getTransports()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 375
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 376
    .local v2, "transports":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/android/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 377
    iget-object v3, p0, Lcom/android/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/okhttp/Protocol;

    iget-object v3, v3, Lcom/android/okhttp/Protocol;->name:Lcom/android/okio/ByteString;

    invoke-virtual {v3}, Lcom/android/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_0
    return-object v2
.end method

.method public open(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {p0, p1, v0}, Lcom/android/okhttp/OkHttpClient;->open(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method open(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 466
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, "protocol":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->copyWithDefaults()Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    .line 468
    .local v0, "copy":Lcom/android/okhttp/OkHttpClient;
    iput-object p2, v0, Lcom/android/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    .line 470
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;

    invoke-direct {v2, p1, v0}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;)V

    .line 471
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/okhttp/internal/http/HttpsURLConnectionImpl;

    invoke-direct {v2, p1, v0}, Lcom/android/okhttp/internal/http/HttpsURLConnectionImpl;-><init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;)V

    goto :goto_0

    .line 472
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected protocol: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setAuthenticator(Lcom/android/okhttp/OkAuthenticator;)Lcom/android/okhttp/OkHttpClient;
    .locals 0
    .param p1, "authenticator"    # Lcom/android/okhttp/OkAuthenticator;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->authenticator:Lcom/android/okhttp/OkAuthenticator;

    .line 253
    return-object p0
.end method

.method public setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 85
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 86
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "timeout < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_0
    if-nez p3, :cond_1

    .line 89
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unit == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 92
    .local v0, "millis":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 93
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too large."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_2
    long-to-int v2, v0

    iput v2, p0, Lcom/android/okhttp/OkHttpClient;->connectTimeout:I

    .line 96
    return-void
.end method

.method public setConnectionPool(Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/OkHttpClient;
    .locals 0
    .param p1, "connectionPool"    # Lcom/android/okhttp/ConnectionPool;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    .line 268
    return-object p0
.end method

.method public setCookieHandler(Ljava/net/CookieHandler;)Lcom/android/okhttp/OkHttpClient;
    .locals 0
    .param p1, "cookieHandler"    # Ljava/net/CookieHandler;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    .line 169
    return-object p0
.end method

.method public setDispatcher(Lcom/android/okhttp/Dispatcher;)Lcom/android/okhttp/OkHttpClient;
    .locals 2
    .param p1, "dispatcher"    # Lcom/android/okhttp/Dispatcher;

    .prologue
    .line 300
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dispatcher == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_0
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->dispatcher:Lcom/android/okhttp/Dispatcher;

    .line 302
    return-object p0
.end method

.method public setFollowProtocolRedirects(Z)Lcom/android/okhttp/OkHttpClient;
    .locals 0
    .param p1, "followProtocolRedirects"    # Z

    .prologue
    .line 283
    iput-boolean p1, p0, Lcom/android/okhttp/OkHttpClient;->followProtocolRedirects:Z

    .line 284
    return-object p0
.end method

.method public setHostResolver(Lcom/android/okhttp/HostResolver;)Lcom/android/okhttp/OkHttpClient;
    .locals 0
    .param p1, "hostResolver"    # Lcom/android/okhttp/HostResolver;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->hostResolver:Lcom/android/okhttp/HostResolver;

    .line 392
    return-object p0
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/android/okhttp/OkHttpClient;
    .locals 0
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 237
    return-object p0
.end method

.method public setOkResponseCache(Lcom/android/okhttp/OkResponseCache;)Lcom/android/okhttp/OkHttpClient;
    .locals 0
    .param p1, "responseCache"    # Lcom/android/okhttp/OkResponseCache;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->responseCache:Lcom/android/okhttp/OkResponseCache;

    .line 191
    return-object p0
.end method

.method public setProtocols(Ljava/util/List;)Lcom/android/okhttp/OkHttpClient;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;)",
            "Lcom/android/okhttp/OkHttpClient;"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/Protocol;>;"
    invoke-static {p1}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 358
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_11:Lcom/android/okhttp/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols doesn\'t contain http/1.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols must not contain null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_1
    invoke-static {p1}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    .line 365
    return-object p0
.end method

.method public setProxy(Ljava/net/Proxy;)Lcom/android/okhttp/OkHttpClient;
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    .line 135
    return-object p0
.end method

.method public setProxySelector(Ljava/net/ProxySelector;)Lcom/android/okhttp/OkHttpClient;
    .locals 0
    .param p1, "proxySelector"    # Ljava/net/ProxySelector;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 153
    return-object p0
.end method

.method public setReadTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 109
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 110
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "timeout < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    :cond_0
    if-nez p3, :cond_1

    .line 113
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unit == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 116
    .local v0, "millis":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 117
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too large."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_2
    long-to-int v2, v0

    iput v2, p0, Lcom/android/okhttp/OkHttpClient;->readTimeout:I

    .line 120
    return-void
.end method

.method public setResponseCache(Ljava/net/ResponseCache;)Lcom/android/okhttp/OkHttpClient;
    .locals 1
    .param p1, "responseCache"    # Ljava/net/ResponseCache;

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/android/okhttp/OkHttpClient;->toOkResponseCache(Ljava/net/ResponseCache;)Lcom/android/okhttp/OkResponseCache;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/okhttp/OkHttpClient;->setOkResponseCache(Lcom/android/okhttp/OkResponseCache;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)Lcom/android/okhttp/OkHttpClient;
    .locals 0
    .param p1, "socketFactory"    # Ljavax/net/SocketFactory;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 206
    return-object p0
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/android/okhttp/OkHttpClient;
    .locals 0
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 220
    return-object p0
.end method

.method public setTransports(Ljava/util/List;)Lcom/android/okhttp/OkHttpClient;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/okhttp/OkHttpClient;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 316
    .local p1, "transports":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 317
    .local v3, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/Protocol;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 319
    :try_start_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okio/ByteString;

    move-result-object v5

    invoke-static {v5}, Lcom/android/okhttp/Protocol;->find(Lcom/android/okio/ByteString;)Lcom/android/okhttp/Protocol;

    move-result-object v2

    .line 320
    .local v2, "protocol":Lcom/android/okhttp/Protocol;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    .end local v2    # "protocol":Lcom/android/okhttp/Protocol;
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 325
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/okhttp/OkHttpClient;->setProtocols(Ljava/util/List;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v5

    return-object v5
.end method
