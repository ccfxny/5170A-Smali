.class public Lcom/android/okhttp/internal/http/ResponseCacheAdapter;
.super Ljava/lang/Object;
.source "ResponseCacheAdapter.java"

# interfaces
.implements Lcom/android/okhttp/OkResponseCache;


# instance fields
.field private final delegate:Ljava/net/ResponseCache;


# direct methods
.method public constructor <init>(Ljava/net/ResponseCache;)V
    .locals 0
    .param p1, "delegate"    # Ljava/net/ResponseCache;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/okhttp/internal/http/ResponseCacheAdapter;->delegate:Ljava/net/ResponseCache;

    .line 41
    return-void
.end method

.method private getJavaCachedResponse(Lcom/android/okhttp/Request;)Ljava/net/CacheResponse;
    .locals 4
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {p1}, Lcom/android/okhttp/internal/http/JavaApiConverter;->extractJavaHeaders(Lcom/android/okhttp/Request;)Ljava/util/Map;

    move-result-object v0

    .line 98
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/okhttp/internal/http/ResponseCacheAdapter;->delegate:Ljava/net/ResponseCache;

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/net/ResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;
    .locals 2
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/ResponseCacheAdapter;->getJavaCachedResponse(Lcom/android/okhttp/Request;)Ljava/net/CacheResponse;

    move-result-object v0

    .line 50
    .local v0, "javaResponse":Ljava/net/CacheResponse;
    if-nez v0, :cond_0

    .line 51
    const/4 v1, 0x0

    .line 53
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1, v0}, Lcom/android/okhttp/internal/http/JavaApiConverter;->createOkResponse(Lcom/android/okhttp/Request;Ljava/net/CacheResponse;)Lcom/android/okhttp/Response;

    move-result-object v1

    goto :goto_0
.end method

.method public getDelegate()Ljava/net/ResponseCache;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/okhttp/internal/http/ResponseCacheAdapter;->delegate:Ljava/net/ResponseCache;

    return-object v0
.end method

.method public maybeRemove(Lcom/android/okhttp/Request;)Z
    .locals 1
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public put(Lcom/android/okhttp/Response;)Ljava/net/CacheRequest;
    .locals 3
    .param p1, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v1

    .line 59
    .local v1, "uri":Ljava/net/URI;
    invoke-static {p1}, Lcom/android/okhttp/internal/http/JavaApiConverter;->createJavaUrlConnection(Lcom/android/okhttp/Response;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 60
    .local v0, "connection":Ljava/net/HttpURLConnection;
    iget-object v2, p0, Lcom/android/okhttp/internal/http/ResponseCacheAdapter;->delegate:Ljava/net/ResponseCache;

    invoke-virtual {v2, v1, v0}, Ljava/net/ResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v2

    return-object v2
.end method

.method public trackConditionalCacheHit()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public trackResponse(Lcom/android/okhttp/ResponseSource;)V
    .locals 0
    .param p1, "source"    # Lcom/android/okhttp/ResponseSource;

    .prologue
    .line 90
    return-void
.end method

.method public update(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V
    .locals 0
    .param p1, "cached"    # Lcom/android/okhttp/Response;
    .param p2, "network"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    return-void
.end method
