.class public final Lcom/android/okhttp/HttpsHandler;
.super Lcom/android/okhttp/HttpHandler;
.source "HttpsHandler.java"


# static fields
.field private static final ENABLED_PROTOCOLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final configAwareConnectionPool:Lcom/android/okhttp/ConfigAwareConnectionPool;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/okhttp/Protocol;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/okhttp/Protocol;->HTTP_11:Lcom/android/okhttp/Protocol;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/HttpsHandler;->ENABLED_PROTOCOLS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/okhttp/HttpHandler;-><init>()V

    .line 30
    invoke-static {}, Lcom/android/okhttp/ConfigAwareConnectionPool;->getInstance()Lcom/android/okhttp/ConfigAwareConnectionPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpsHandler;->configAwareConnectionPool:Lcom/android/okhttp/ConfigAwareConnectionPool;

    return-void
.end method

.method public static createHttpsOkHttpClient(Ljava/net/Proxy;)Lcom/android/okhttp/OkHttpClient;
    .locals 3
    .param p0, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 50
    invoke-static {p0}, Lcom/android/okhttp/HttpHandler;->createHttpOkHttpClient(Ljava/net/Proxy;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    .line 52
    .local v0, "client":Lcom/android/okhttp/OkHttpClient;
    sget-object v2, Lcom/android/okhttp/HttpsHandler;->ENABLED_PROTOCOLS:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/android/okhttp/OkHttpClient;->setProtocols(Ljava/util/List;)Lcom/android/okhttp/OkHttpClient;

    .line 54
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    .line 57
    .local v1, "verifier":Ljavax/net/ssl/HostnameVerifier;
    instance-of v2, v1, Ljavax/net/ssl/DefaultHostnameVerifier;

    if-nez v2, :cond_0

    .line 58
    invoke-virtual {v0, v1}, Lcom/android/okhttp/OkHttpClient;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/android/okhttp/OkHttpClient;

    .line 63
    :cond_0
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/OkHttpClient;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/android/okhttp/OkHttpClient;

    .line 65
    return-object v0
.end method


# virtual methods
.method protected getDefaultPort()I
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x1bb

    return v0
.end method

.method protected newOkHttpClient(Ljava/net/Proxy;)Lcom/android/okhttp/OkHttpClient;
    .locals 2
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 39
    invoke-static {p1}, Lcom/android/okhttp/HttpsHandler;->createHttpsOkHttpClient(Ljava/net/Proxy;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    .line 40
    .local v0, "okHttpClient":Lcom/android/okhttp/OkHttpClient;
    iget-object v1, p0, Lcom/android/okhttp/HttpsHandler;->configAwareConnectionPool:Lcom/android/okhttp/ConfigAwareConnectionPool;

    invoke-virtual {v1}, Lcom/android/okhttp/ConfigAwareConnectionPool;->get()Lcom/android/okhttp/ConnectionPool;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/OkHttpClient;->setConnectionPool(Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/OkHttpClient;

    .line 41
    return-object v0
.end method
