.class public final Lcom/android/okhttp/internal/http/JavaApiConverter;
.super Ljava/lang/Object;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpsURLConnection;,
        Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static synthetic access$000()Ljava/lang/RuntimeException;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/RuntimeException;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->throwRequestHeaderAccessException()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/RuntimeException;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->throwResponseBodyAccessException()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/RuntimeException;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->throwRequestSslAccessException()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method public static createJavaCacheResponse(Lcom/android/okhttp/Response;)Ljava/net/CacheResponse;
    .locals 4
    .param p0, "response"    # Lcom/android/okhttp/Response;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v2

    .line 179
    .local v2, "headers":Lcom/android/okhttp/Headers;
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/Response$Body;

    move-result-object v0

    .line 180
    .local v0, "body":Lcom/android/okhttp/Response$Body;
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/Request;->isHttps()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object v1

    .line 182
    .local v1, "handshake":Lcom/android/okhttp/Handshake;
    new-instance v3, Lcom/android/okhttp/internal/http/JavaApiConverter$1;

    invoke-direct {v3, v1, v2, p0, v0}, Lcom/android/okhttp/internal/http/JavaApiConverter$1;-><init>(Lcom/android/okhttp/Handshake;Lcom/android/okhttp/Headers;Lcom/android/okhttp/Response;Lcom/android/okhttp/Response$Body;)V

    .line 229
    .end local v1    # "handshake":Lcom/android/okhttp/Handshake;
    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Lcom/android/okhttp/internal/http/JavaApiConverter$2;

    invoke-direct {v3, v2, p0, v0}, Lcom/android/okhttp/internal/http/JavaApiConverter$2;-><init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Response;Lcom/android/okhttp/Response$Body;)V

    goto :goto_0
.end method

.method static createJavaUrlConnection(Lcom/android/okhttp/Response;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p0, "okResponse"    # Lcom/android/okhttp/Response;

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v0

    .line 252
    .local v0, "request":Lcom/android/okhttp/Request;
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->isHttps()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    new-instance v1, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpsURLConnection;

    new-instance v2, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;

    invoke-direct {v2, p0}, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;-><init>(Lcom/android/okhttp/Response;)V

    invoke-direct {v1, v2}, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpsURLConnection;-><init>(Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;)V

    .line 255
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;

    invoke-direct {v1, p0}, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;-><init>(Lcom/android/okhttp/Response;)V

    goto :goto_0
.end method

.method private static createOkBody(Lcom/android/okhttp/Headers;Ljava/io/InputStream;)Lcom/android/okhttp/Response$Body;
    .locals 1
    .param p0, "okHeaders"    # Lcom/android/okhttp/Headers;
    .param p1, "body"    # Ljava/io/InputStream;

    .prologue
    .line 340
    new-instance v0, Lcom/android/okhttp/internal/http/JavaApiConverter$3;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/internal/http/JavaApiConverter$3;-><init>(Lcom/android/okhttp/Headers;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static createOkRequest(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Lcom/android/okhttp/Request;
    .locals 4
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/android/okhttp/Request;"
        }
    .end annotation

    .prologue
    .line 162
    .local p2, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v2, Lcom/android/okhttp/Request$Builder;

    invoke-direct {v2}, Lcom/android/okhttp/Request$Builder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/Request$Body;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    .line 166
    .local v0, "builder":Lcom/android/okhttp/Request$Builder;
    if-eqz p2, :cond_0

    .line 167
    invoke-static {p2}, Lcom/android/okhttp/internal/http/JavaApiConverter;->extractOkHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;

    move-result-object v1

    .line 168
    .local v1, "headers":Lcom/android/okhttp/Headers;
    invoke-virtual {v0, v1}, Lcom/android/okhttp/Request$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Request$Builder;

    .line 170
    .end local v1    # "headers":Lcom/android/okhttp/Headers;
    :cond_0
    invoke-virtual {v0}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v2

    return-object v2
.end method

.method static createOkResponse(Lcom/android/okhttp/Request;Ljava/net/CacheResponse;)Lcom/android/okhttp/Response;
    .locals 9
    .param p0, "request"    # Lcom/android/okhttp/Request;
    .param p1, "javaResponse"    # Ljava/net/CacheResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v6, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v6}, Lcom/android/okhttp/Response$Builder;-><init>()V

    .line 113
    .local v6, "okResponseBuilder":Lcom/android/okhttp/Response$Builder;
    invoke-virtual {v6, p0}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    .line 116
    invoke-static {p1}, Lcom/android/okhttp/internal/http/JavaApiConverter;->extractStatusLine(Ljava/net/CacheResponse;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/okhttp/Response$Builder;->statusLine(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    .line 119
    invoke-static {p1}, Lcom/android/okhttp/internal/http/JavaApiConverter;->extractOkHeaders(Ljava/net/CacheResponse;)Lcom/android/okhttp/Headers;

    move-result-object v5

    .line 120
    .local v5, "okHeaders":Lcom/android/okhttp/Headers;
    invoke-virtual {v6, v5}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    .line 123
    sget-object v8, Lcom/android/okhttp/ResponseSource;->CACHE:Lcom/android/okhttp/ResponseSource;

    invoke-virtual {v6, v8}, Lcom/android/okhttp/Response$Builder;->setResponseSource(Lcom/android/okhttp/ResponseSource;)Lcom/android/okhttp/Response$Builder;

    .line 126
    invoke-virtual {p1}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/okhttp/internal/http/JavaApiConverter;->createOkBody(Lcom/android/okhttp/Headers;Ljava/io/InputStream;)Lcom/android/okhttp/Response$Body;

    move-result-object v4

    .line 127
    .local v4, "okBody":Lcom/android/okhttp/Response$Body;
    invoke-virtual {v6, v4}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/Response$Body;)Lcom/android/okhttp/Response$Builder;

    .line 130
    instance-of v8, p1, Ljava/net/SecureCacheResponse;

    if-eqz v8, :cond_1

    move-object v2, p1

    .line 131
    check-cast v2, Ljava/net/SecureCacheResponse;

    .line 136
    .local v2, "javaSecureCacheResponse":Ljava/net/SecureCacheResponse;
    :try_start_0
    invoke-virtual {v2}, Ljava/net/SecureCacheResponse;->getServerCertificateChain()Ljava/util/List;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 140
    .local v7, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_0
    invoke-virtual {v2}, Ljava/net/SecureCacheResponse;->getLocalCertificateChain()Ljava/util/List;

    move-result-object v3

    .line 141
    .local v3, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-nez v3, :cond_0

    .line 142
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 144
    :cond_0
    invoke-virtual {v2}, Ljava/net/SecureCacheResponse;->getCipherSuite()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7, v3}, Lcom/android/okhttp/Handshake;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/okhttp/Handshake;

    move-result-object v1

    .line 146
    .local v1, "handshake":Lcom/android/okhttp/Handshake;
    invoke-virtual {v6, v1}, Lcom/android/okhttp/Response$Builder;->handshake(Lcom/android/okhttp/Handshake;)Lcom/android/okhttp/Response$Builder;

    .line 149
    .end local v1    # "handshake":Lcom/android/okhttp/Handshake;
    .end local v2    # "javaSecureCacheResponse":Ljava/net/SecureCacheResponse;
    .end local v3    # "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v7    # "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_1
    invoke-virtual {v6}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v8

    return-object v8

    .line 137
    .restart local v2    # "javaSecureCacheResponse":Ljava/net/SecureCacheResponse;
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .restart local v7    # "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    goto :goto_0
.end method

.method public static createOkResponse(Ljava/net/URI;Ljava/net/URLConnection;)Lcom/android/okhttp/Response;
    .locals 15
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "urlConnection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    move-object/from16 v2, p1

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 59
    .local v2, "httpUrlConnection":Ljava/net/HttpURLConnection;
    new-instance v8, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v8}, Lcom/android/okhttp/Response$Builder;-><init>()V

    .line 63
    .local v8, "okResponseBuilder":Lcom/android/okhttp/Response$Builder;
    const/4 v10, 0x0

    .line 64
    .local v10, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12, v10}, Lcom/android/okhttp/internal/http/JavaApiConverter;->createOkRequest(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Lcom/android/okhttp/Request;

    move-result-object v7

    .line 65
    .local v7, "okRequest":Lcom/android/okhttp/Request;
    invoke-virtual {v8, v7}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    .line 68
    invoke-static {v2}, Lcom/android/okhttp/internal/http/JavaApiConverter;->extractStatusLine(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v11

    .line 69
    .local v11, "statusLine":Ljava/lang/String;
    invoke-virtual {v8, v11}, Lcom/android/okhttp/Response$Builder;->statusLine(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    .line 72
    invoke-static {v2}, Lcom/android/okhttp/internal/http/JavaApiConverter;->extractOkResponseHeaders(Ljava/net/HttpURLConnection;)Lcom/android/okhttp/Headers;

    move-result-object v6

    .line 73
    .local v6, "okHeaders":Lcom/android/okhttp/Headers;
    invoke-virtual {v8, v6}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    .line 76
    sget-object v12, Lcom/android/okhttp/ResponseSource;->NETWORK:Lcom/android/okhttp/ResponseSource;

    invoke-virtual {v8, v12}, Lcom/android/okhttp/Response$Builder;->setResponseSource(Lcom/android/okhttp/ResponseSource;)Lcom/android/okhttp/Response$Builder;

    .line 79
    invoke-virtual/range {p1 .. p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/android/okhttp/internal/http/JavaApiConverter;->createOkBody(Lcom/android/okhttp/Headers;Ljava/io/InputStream;)Lcom/android/okhttp/Response$Body;

    move-result-object v5

    .line 80
    .local v5, "okBody":Lcom/android/okhttp/Response$Body;
    invoke-virtual {v8, v5}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/Response$Body;)Lcom/android/okhttp/Response$Builder;

    .line 83
    instance-of v12, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v12, :cond_0

    move-object v3, v2

    .line 84
    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    .line 88
    .local v3, "httpsUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :try_start_0
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 93
    .local v9, "peerCertificates":[Ljava/security/cert/Certificate;
    :goto_0
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v4

    .line 95
    .local v4, "localCertificates":[Ljava/security/cert/Certificate;
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9}, Lcom/android/okhttp/internal/http/JavaApiConverter;->nullSafeImmutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-static {v4}, Lcom/android/okhttp/internal/http/JavaApiConverter;->nullSafeImmutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/android/okhttp/Handshake;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/okhttp/Handshake;

    move-result-object v1

    .line 98
    .local v1, "handshake":Lcom/android/okhttp/Handshake;
    invoke-virtual {v8, v1}, Lcom/android/okhttp/Response$Builder;->handshake(Lcom/android/okhttp/Handshake;)Lcom/android/okhttp/Response$Builder;

    .line 101
    .end local v1    # "handshake":Lcom/android/okhttp/Handshake;
    .end local v3    # "httpsUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v4    # "localCertificates":[Ljava/security/cert/Certificate;
    .end local v9    # "peerCertificates":[Ljava/security/cert/Certificate;
    :cond_0
    invoke-virtual {v8}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v12

    return-object v12

    .line 89
    .restart local v3    # "httpsUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    const/4 v9, 0x0

    .restart local v9    # "peerCertificates":[Ljava/security/cert/Certificate;
    goto :goto_0
.end method

.method static extractJavaHeaders(Lcom/android/okhttp/Request;)Ljava/util/Map;
    .locals 2
    .param p0, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/Request;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static extractOkHeaders(Ljava/net/CacheResponse;)Lcom/android/okhttp/Headers;
    .locals 2
    .param p0, "javaResponse"    # Ljava/net/CacheResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-virtual {p0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 272
    .local v0, "javaResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v0}, Lcom/android/okhttp/internal/http/JavaApiConverter;->extractOkHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;

    move-result-object v1

    return-object v1
.end method

.method static extractOkHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/android/okhttp/Headers;"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "javaHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v4, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v4}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 291
    .local v4, "okHeadersBuilder":Lcom/android/okhttp/Headers$Builder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 292
    .local v2, "javaHeader":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 293
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 300
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 301
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v4, v3, v5}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    goto :goto_0

    .line 304
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "javaHeader":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v6

    return-object v6
.end method

.method private static extractOkResponseHeaders(Ljava/net/HttpURLConnection;)Lcom/android/okhttp/Headers;
    .locals 2
    .param p0, "httpUrlConnection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 280
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 281
    .local v0, "javaResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v0}, Lcom/android/okhttp/internal/http/JavaApiConverter;->extractOkHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;

    move-result-object v1

    return-object v1
.end method

.method private static extractStatusLine(Ljava/net/CacheResponse;)Ljava/lang/String;
    .locals 2
    .param p0, "javaResponse"    # Ljava/net/CacheResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-virtual {p0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 324
    .local v0, "javaResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v0}, Lcom/android/okhttp/internal/http/JavaApiConverter;->extractStatusLine(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static extractStatusLine(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "httpUrlConnection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static extractStatusLine(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "javaResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .line 329
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 330
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method private static nullSafeImmutableList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 680
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private static throwRequestHeaderAccessException()Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 668
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ResponseCache cannot access request headers"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwRequestModificationException()Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 664
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ResponseCache cannot modify the request."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwRequestSslAccessException()Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 672
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ResponseCache cannot access SSL internals"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwResponseBodyAccessException()Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 676
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ResponseCache cannot access the response body."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
