.class public Lcom/android/okhttp/HttpHandler;
.super Ljava/net/URLStreamHandler;
.source "HttpHandler.java"


# static fields
.field private static cache:Lcom/android/okhttp/HttpResponseCache;

.field private static sClassPerfServiceWrapper:Ljava/lang/Class;

.field private static sMethodBoostWechatFromNetWork:Ljava/lang/reflect/Method;

.field private static sObjectPerfServiceWrapper:Ljava/lang/Object;


# instance fields
.field private final configAwareConnectionPool:Lcom/android/okhttp/ConfigAwareConnectionPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    sput-object v0, Lcom/android/okhttp/HttpHandler;->sObjectPerfServiceWrapper:Ljava/lang/Object;

    .line 36
    sput-object v0, Lcom/android/okhttp/HttpHandler;->sClassPerfServiceWrapper:Ljava/lang/Class;

    .line 37
    sput-object v0, Lcom/android/okhttp/HttpHandler;->sMethodBoostWechatFromNetWork:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    .line 29
    invoke-static {}, Lcom/android/okhttp/ConfigAwareConnectionPool;->getInstance()Lcom/android/okhttp/ConfigAwareConnectionPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpHandler;->configAwareConnectionPool:Lcom/android/okhttp/ConfigAwareConnectionPool;

    return-void
.end method

.method public static createHttpOkHttpClient(Ljava/net/Proxy;)Lcom/android/okhttp/OkHttpClient;
    .locals 3
    .param p0, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 81
    new-instance v0, Lcom/android/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/android/okhttp/OkHttpClient;-><init>()V

    .line 82
    .local v0, "client":Lcom/android/okhttp/OkHttpClient;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/okhttp/OkHttpClient;->setFollowProtocolRedirects(Z)Lcom/android/okhttp/OkHttpClient;

    .line 83
    if-eqz p0, :cond_0

    .line 84
    invoke-virtual {v0, p0}, Lcom/android/okhttp/OkHttpClient;->setProxy(Ljava/net/Proxy;)Lcom/android/okhttp/OkHttpClient;

    .line 88
    :cond_0
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v1

    .line 89
    .local v1, "responseCache":Ljava/net/ResponseCache;
    if-eqz v1, :cond_1

    .line 90
    invoke-virtual {v0, v1}, Lcom/android/okhttp/OkHttpClient;->setResponseCache(Ljava/net/ResponseCache;)Lcom/android/okhttp/OkHttpClient;

    .line 93
    :cond_1
    return-object v0
.end method

.method private static initResponseCache()V
    .locals 6

    .prologue
    .line 99
    :try_start_0
    sget-object v3, Lcom/android/okhttp/HttpHandler;->cache:Lcom/android/okhttp/HttpResponseCache;

    if-nez v3, :cond_0

    .line 100
    const-string v3, "java.io.tmpdir"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "tmp":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    const-string v3, "HttpCache"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .local v0, "cacheDir":Ljava/io/File;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initResponseCache:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    new-instance v3, Lcom/android/okhttp/HttpResponseCache;

    const-wide/32 v4, 0x6400000

    invoke-direct {v3, v0, v4, v5}, Lcom/android/okhttp/HttpResponseCache;-><init>(Ljava/io/File;J)V

    sput-object v3, Lcom/android/okhttp/HttpHandler;->cache:Lcom/android/okhttp/HttpResponseCache;

    .line 105
    :cond_0
    sget-object v3, Lcom/android/okhttp/HttpHandler;->cache:Lcom/android/okhttp/HttpResponseCache;

    invoke-static {v3}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v0    # "cacheDir":Ljava/io/File;
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP response cache installation failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static speedDownload()V
    .locals 4

    .prologue
    .line 113
    :try_start_0
    sget-object v1, Lcom/android/okhttp/HttpHandler;->sClassPerfServiceWrapper:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 114
    const-string v1, "com.mediatek.perfservice.PerfServiceWrapper"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/okhttp/HttpHandler;->sClassPerfServiceWrapper:Ljava/lang/Class;

    .line 116
    :cond_0
    sget-object v1, Lcom/android/okhttp/HttpHandler;->sObjectPerfServiceWrapper:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 117
    sget-object v1, Lcom/android/okhttp/HttpHandler;->sClassPerfServiceWrapper:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/android/okhttp/HttpHandler;->sObjectPerfServiceWrapper:Ljava/lang/Object;

    .line 119
    :cond_1
    sget-object v1, Lcom/android/okhttp/HttpHandler;->sMethodBoostWechatFromNetWork:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    .line 120
    sget-object v1, Lcom/android/okhttp/HttpHandler;->sClassPerfServiceWrapper:Ljava/lang/Class;

    const-string v2, "boostWechatFromNetWork"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/okhttp/HttpHandler;->sMethodBoostWechatFromNetWork:Ljava/lang/reflect/Method;

    .line 122
    :cond_2
    sget-object v1, Lcom/android/okhttp/HttpHandler;->sMethodBoostWechatFromNetWork:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/android/okhttp/HttpHandler;->sObjectPerfServiceWrapper:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 134
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    return-void

    .line 123
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 124
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 125
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 127
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 131
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected getDefaultPort()I
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x50

    return v0
.end method

.method protected newOkHttpClient(Ljava/net/Proxy;)Lcom/android/okhttp/OkHttpClient;
    .locals 2
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 71
    invoke-static {p1}, Lcom/android/okhttp/HttpHandler;->createHttpOkHttpClient(Ljava/net/Proxy;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    .line 72
    .local v0, "okHttpClient":Lcom/android/okhttp/OkHttpClient;
    iget-object v1, p0, Lcom/android/okhttp/HttpHandler;->configAwareConnectionPool:Lcom/android/okhttp/ConfigAwareConnectionPool;

    invoke-virtual {v1}, Lcom/android/okhttp/ConfigAwareConnectionPool;->get()Lcom/android/okhttp/ConnectionPool;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/OkHttpClient;->setConnectionPool(Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/OkHttpClient;

    .line 73
    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://wx.gtimg.com/hongbao/img/hongbao.png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://wx.gtimg.com/hongbao/img/hb.png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    :cond_0
    invoke-static {}, Lcom/android/okhttp/HttpHandler;->speedDownload()V

    .line 46
    invoke-static {}, Lcom/android/okhttp/HttpHandler;->initResponseCache()V

    .line 49
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/okhttp/HttpHandler;->newOkHttpClient(Ljava/net/Proxy;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/okhttp/OkHttpClient;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null || proxy == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://wx.gtimg.com/hongbao/img/hongbao.png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://wx.gtimg.com/hongbao/img/hb.png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    :cond_2
    invoke-static {}, Lcom/android/okhttp/HttpHandler;->initResponseCache()V

    .line 63
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/okhttp/HttpHandler;->newOkHttpClient(Ljava/net/Proxy;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/okhttp/OkHttpClient;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method
