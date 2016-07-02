.class public final Lcom/android/okhttp/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/Request$1;,
        Lcom/android/okhttp/Request$Builder;,
        Lcom/android/okhttp/Request$Body;,
        Lcom/android/okhttp/Request$ParsedHeaders;
    }
.end annotation


# instance fields
.field private final body:Lcom/android/okhttp/Request$Body;

.field private volatile cacheControl:Lcom/android/okhttp/CacheControl;

.field private final headers:Lcom/android/okhttp/Headers;

.field private final method:Ljava/lang/String;

.field private volatile parsedHeaders:Lcom/android/okhttp/Request$ParsedHeaders;

.field private final tag:Ljava/lang/Object;

.field private volatile uri:Ljava/net/URI;

.field private final url:Ljava/net/URL;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/Request$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/android/okhttp/Request$Builder;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    # getter for: Lcom/android/okhttp/Request$Builder;->url:Ljava/net/URL;
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->access$000(Lcom/android/okhttp/Request$Builder;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request;->url:Ljava/net/URL;

    .line 49
    # getter for: Lcom/android/okhttp/Request$Builder;->method:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->access$100(Lcom/android/okhttp/Request$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request;->method:Ljava/lang/String;

    .line 50
    # getter for: Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->access$200(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    .line 51
    # getter for: Lcom/android/okhttp/Request$Builder;->body:Lcom/android/okhttp/Request$Body;
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->access$300(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/Request$Body;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request;->body:Lcom/android/okhttp/Request$Body;

    .line 52
    # getter for: Lcom/android/okhttp/Request$Builder;->tag:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->access$400(Lcom/android/okhttp/Request$Builder;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/okhttp/Request$Builder;->tag:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->access$400(Lcom/android/okhttp/Request$Builder;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/okhttp/Request;->tag:Ljava/lang/Object;

    .line 53
    return-void

    :cond_0
    move-object v0, p0

    .line 52
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/Request$Builder;Lcom/android/okhttp/Request$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/okhttp/Request$Builder;
    .param p2, "x1"    # Lcom/android/okhttp/Request$1;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/okhttp/Request;-><init>(Lcom/android/okhttp/Request$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Request$Body;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Request;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/okhttp/Request;->body:Lcom/android/okhttp/Request$Body;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/okhttp/Request;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Request;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/okhttp/Request;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Headers;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Request;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/okhttp/Request;)Ljava/net/URL;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Request;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/okhttp/Request;->url:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/okhttp/Request;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Request;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/okhttp/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method private parsedHeaders()Lcom/android/okhttp/Request$ParsedHeaders;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/okhttp/Request;->parsedHeaders:Lcom/android/okhttp/Request$ParsedHeaders;

    .line 114
    .local v0, "result":Lcom/android/okhttp/Request$ParsedHeaders;
    if-eqz v0, :cond_0

    .end local v0    # "result":Lcom/android/okhttp/Request$ParsedHeaders;
    :goto_0
    return-object v0

    .restart local v0    # "result":Lcom/android/okhttp/Request$ParsedHeaders;
    :cond_0
    new-instance v0, Lcom/android/okhttp/Request$ParsedHeaders;

    .end local v0    # "result":Lcom/android/okhttp/Request$ParsedHeaders;
    iget-object v1, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    invoke-direct {v0, v1}, Lcom/android/okhttp/Request$ParsedHeaders;-><init>(Lcom/android/okhttp/Headers;)V

    iput-object v0, p0, Lcom/android/okhttp/Request;->parsedHeaders:Lcom/android/okhttp/Request$ParsedHeaders;

    goto :goto_0
.end method


# virtual methods
.method public body()Lcom/android/okhttp/Request$Body;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/okhttp/Request;->body:Lcom/android/okhttp/Request$Body;

    return-object v0
.end method

.method public cacheControl()Lcom/android/okhttp/CacheControl;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/okhttp/Request;->cacheControl:Lcom/android/okhttp/CacheControl;

    .line 123
    .local v0, "result":Lcom/android/okhttp/CacheControl;
    if-eqz v0, :cond_0

    .end local v0    # "result":Lcom/android/okhttp/CacheControl;
    :goto_0
    return-object v0

    .restart local v0    # "result":Lcom/android/okhttp/CacheControl;
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    invoke-static {v1}, Lcom/android/okhttp/CacheControl;->parse(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/CacheControl;

    move-result-object v0

    .end local v0    # "result":Lcom/android/okhttp/CacheControl;
    iput-object v0, p0, Lcom/android/okhttp/Request;->cacheControl:Lcom/android/okhttp/CacheControl;

    goto :goto_0
.end method

.method public getHeaders()Lcom/android/okhttp/Headers;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    return-object v0
.end method

.method public getProxyAuthorization()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/okhttp/Request;->parsedHeaders()Lcom/android/okhttp/Request$ParsedHeaders;

    move-result-object v0

    # getter for: Lcom/android/okhttp/Request$ParsedHeaders;->proxyAuthorization:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/okhttp/Request$ParsedHeaders;->access$700(Lcom/android/okhttp/Request$ParsedHeaders;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/okhttp/Request;->parsedHeaders()Lcom/android/okhttp/Request$ParsedHeaders;

    move-result-object v0

    # getter for: Lcom/android/okhttp/Request$ParsedHeaders;->userAgent:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/okhttp/Request$ParsedHeaders;->access$600(Lcom/android/okhttp/Request$ParsedHeaders;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public headers()Lcom/android/okhttp/Headers;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    return-object v0
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isHttps()Z
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/okhttp/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method public newBuilder()Lcom/android/okhttp/Request$Builder;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/android/okhttp/Request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/Request$Builder;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Request$1;)V

    return-object v0
.end method

.method public tag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/okhttp/Request;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public uri()Ljava/net/URI;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/Request;->uri:Ljava/net/URI;

    .line 62
    .local v1, "result":Ljava/net/URI;
    if-eqz v1, :cond_0

    .end local v1    # "result":Ljava/net/URI;
    :goto_0
    return-object v1

    .restart local v1    # "result":Ljava/net/URI;
    :cond_0
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v2

    iget-object v3, p0, Lcom/android/okhttp/Request;->url:Ljava/net/URL;

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/Platform;->toUriLenient(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v1

    .end local v1    # "result":Ljava/net/URI;
    iput-object v1, p0, Lcom/android/okhttp/Request;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public url()Ljava/net/URL;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/okhttp/Request;->url:Ljava/net/URL;

    return-object v0
.end method

.method public urlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/okhttp/Request;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
