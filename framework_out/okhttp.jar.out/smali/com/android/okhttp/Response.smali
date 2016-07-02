.class public final Lcom/android/okhttp/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/Response$1;,
        Lcom/android/okhttp/Response$Builder;,
        Lcom/android/okhttp/Response$Receiver;,
        Lcom/android/okhttp/Response$ParsedHeaders;,
        Lcom/android/okhttp/Response$Body;
    }
.end annotation


# instance fields
.field private final body:Lcom/android/okhttp/Response$Body;

.field private volatile cacheControl:Lcom/android/okhttp/CacheControl;

.field private cacheResponse:Lcom/android/okhttp/Response;

.field private final handshake:Lcom/android/okhttp/Handshake;

.field private final headers:Lcom/android/okhttp/Headers;

.field private networkResponse:Lcom/android/okhttp/Response;

.field private volatile parsedHeaders:Lcom/android/okhttp/Response$ParsedHeaders;

.field private final priorResponse:Lcom/android/okhttp/Response;

.field private final request:Lcom/android/okhttp/Request;

.field private final statusLine:Lcom/android/okhttp/internal/http/StatusLine;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/Response$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/android/okhttp/Response$Builder;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    # getter for: Lcom/android/okhttp/Response$Builder;->request:Lcom/android/okhttp/Request;
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->access$000(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response;->request:Lcom/android/okhttp/Request;

    .line 61
    # getter for: Lcom/android/okhttp/Response$Builder;->statusLine:Lcom/android/okhttp/internal/http/StatusLine;
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->access$100(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response;->statusLine:Lcom/android/okhttp/internal/http/StatusLine;

    .line 62
    # getter for: Lcom/android/okhttp/Response$Builder;->handshake:Lcom/android/okhttp/Handshake;
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->access$200(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Handshake;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response;->handshake:Lcom/android/okhttp/Handshake;

    .line 63
    # getter for: Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->access$300(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response;->headers:Lcom/android/okhttp/Headers;

    .line 64
    # getter for: Lcom/android/okhttp/Response$Builder;->body:Lcom/android/okhttp/Response$Body;
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->access$400(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Response$Body;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response;->body:Lcom/android/okhttp/Response$Body;

    .line 65
    # getter for: Lcom/android/okhttp/Response$Builder;->networkResponse:Lcom/android/okhttp/Response;
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->access$500(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response;->networkResponse:Lcom/android/okhttp/Response;

    .line 66
    # getter for: Lcom/android/okhttp/Response$Builder;->cacheResponse:Lcom/android/okhttp/Response;
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->access$600(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response;->cacheResponse:Lcom/android/okhttp/Response;

    .line 67
    # getter for: Lcom/android/okhttp/Response$Builder;->priorResponse:Lcom/android/okhttp/Response;
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->access$700(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response;->priorResponse:Lcom/android/okhttp/Response;

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/Response$Builder;Lcom/android/okhttp/Response$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/okhttp/Response$Builder;
    .param p2, "x1"    # Lcom/android/okhttp/Response$1;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/okhttp/Response;-><init>(Lcom/android/okhttp/Response$Builder;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Request;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Response;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/okhttp/Response;->request:Lcom/android/okhttp/Request;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/StatusLine;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Response;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/okhttp/Response;->statusLine:Lcom/android/okhttp/internal/http/StatusLine;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Handshake;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Response;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/okhttp/Response;->handshake:Lcom/android/okhttp/Handshake;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Headers;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Response;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/okhttp/Response;->headers:Lcom/android/okhttp/Headers;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Body;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Response;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/okhttp/Response;->body:Lcom/android/okhttp/Response$Body;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Response;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/okhttp/Response;->networkResponse:Lcom/android/okhttp/Response;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Response;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/okhttp/Response;->cacheResponse:Lcom/android/okhttp/Response;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Response;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/okhttp/Response;->priorResponse:Lcom/android/okhttp/Response;

    return-object v0
.end method

.method private parsedHeaders()Lcom/android/okhttp/Response$ParsedHeaders;
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/okhttp/Response;->parsedHeaders:Lcom/android/okhttp/Response$ParsedHeaders;

    .line 301
    .local v0, "result":Lcom/android/okhttp/Response$ParsedHeaders;
    if-eqz v0, :cond_0

    .end local v0    # "result":Lcom/android/okhttp/Response$ParsedHeaders;
    :goto_0
    return-object v0

    .restart local v0    # "result":Lcom/android/okhttp/Response$ParsedHeaders;
    :cond_0
    new-instance v0, Lcom/android/okhttp/Response$ParsedHeaders;

    .end local v0    # "result":Lcom/android/okhttp/Response$ParsedHeaders;
    iget-object v1, p0, Lcom/android/okhttp/Response;->headers:Lcom/android/okhttp/Headers;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/okhttp/Response$ParsedHeaders;-><init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Response$1;)V

    iput-object v0, p0, Lcom/android/okhttp/Response;->parsedHeaders:Lcom/android/okhttp/Response$ParsedHeaders;

    goto :goto_0
.end method


# virtual methods
.method public body()Lcom/android/okhttp/Response$Body;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/okhttp/Response;->body:Lcom/android/okhttp/Response$Body;

    return-object v0
.end method

.method public cacheControl()Lcom/android/okhttp/CacheControl;
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/okhttp/Response;->cacheControl:Lcom/android/okhttp/CacheControl;

    .line 310
    .local v0, "result":Lcom/android/okhttp/CacheControl;
    if-eqz v0, :cond_0

    .end local v0    # "result":Lcom/android/okhttp/CacheControl;
    :goto_0
    return-object v0

    .restart local v0    # "result":Lcom/android/okhttp/CacheControl;
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/Response;->headers:Lcom/android/okhttp/Headers;

    invoke-static {v1}, Lcom/android/okhttp/CacheControl;->parse(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/CacheControl;

    move-result-object v0

    .end local v0    # "result":Lcom/android/okhttp/CacheControl;
    iput-object v0, p0, Lcom/android/okhttp/Response;->cacheControl:Lcom/android/okhttp/CacheControl;

    goto :goto_0
.end method

.method public cacheResponse()Lcom/android/okhttp/Response;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/okhttp/Response;->cacheResponse:Lcom/android/okhttp/Response;

    return-object v0
.end method

.method public code()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/okhttp/Response;->statusLine:Lcom/android/okhttp/internal/http/StatusLine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StatusLine;->code()I

    move-result v0

    return v0
.end method

.method public getVaryFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/okhttp/Response;->parsedHeaders()Lcom/android/okhttp/Response$ParsedHeaders;

    move-result-object v0

    # getter for: Lcom/android/okhttp/Response$ParsedHeaders;->varyFields:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/okhttp/Response$ParsedHeaders;->access$900(Lcom/android/okhttp/Response$ParsedHeaders;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public handshake()Lcom/android/okhttp/Handshake;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/okhttp/Response;->handshake:Lcom/android/okhttp/Handshake;

    return-object v0
.end method

.method public hasVaryAll()Z
    .locals 2

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/okhttp/Response;->parsedHeaders()Lcom/android/okhttp/Response$ParsedHeaders;

    move-result-object v0

    # getter for: Lcom/android/okhttp/Response$ParsedHeaders;->varyFields:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/okhttp/Response$ParsedHeaders;->access$900(Lcom/android/okhttp/Response$ParsedHeaders;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/okhttp/Response;->headers:Lcom/android/okhttp/Headers;

    invoke-virtual {v1, p1}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public headers()Lcom/android/okhttp/Headers;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/okhttp/Response;->headers:Lcom/android/okhttp/Headers;

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
    .line 111
    iget-object v0, p0, Lcom/android/okhttp/Response;->headers:Lcom/android/okhttp/Headers;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public httpMinorVersion()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/okhttp/Response;->statusLine:Lcom/android/okhttp/internal/http/StatusLine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StatusLine;->httpMinorVersion()I

    move-result v0

    return v0
.end method

.method public networkResponse()Lcom/android/okhttp/Response;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/okhttp/Response;->networkResponse:Lcom/android/okhttp/Response;

    return-object v0
.end method

.method public newBuilder()Lcom/android/okhttp/Response$Builder;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lcom/android/okhttp/Response$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/Response$Builder;-><init>(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response$1;)V

    return-object v0
.end method

.method public priorResponse()Lcom/android/okhttp/Response;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/okhttp/Response;->priorResponse:Lcom/android/okhttp/Response;

    return-object v0
.end method

.method public request()Lcom/android/okhttp/Request;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/okhttp/Response;->request:Lcom/android/okhttp/Request;

    return-object v0
.end method

.method public statusLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/okhttp/Response;->statusLine:Lcom/android/okhttp/internal/http/StatusLine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StatusLine;->getStatusLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public statusMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/okhttp/Response;->statusLine:Lcom/android/okhttp/internal/http/StatusLine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StatusLine;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate(Lcom/android/okhttp/Response;)Z
    .locals 6
    .param p1, "network"    # Lcom/android/okhttp/Response;

    .prologue
    const/4 v1, 0x1

    .line 196
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->code()I

    move-result v2

    const/16 v3, 0x130

    if-ne v2, v3, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v1

    .line 203
    :cond_1
    invoke-direct {p1}, Lcom/android/okhttp/Response;->parsedHeaders()Lcom/android/okhttp/Response$ParsedHeaders;

    move-result-object v0

    .line 204
    .local v0, "networkHeaders":Lcom/android/okhttp/Response$ParsedHeaders;
    invoke-direct {p0}, Lcom/android/okhttp/Response;->parsedHeaders()Lcom/android/okhttp/Response$ParsedHeaders;

    move-result-object v2

    iget-object v2, v2, Lcom/android/okhttp/Response$ParsedHeaders;->lastModified:Ljava/util/Date;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/okhttp/Response$ParsedHeaders;->lastModified:Ljava/util/Date;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/okhttp/Response$ParsedHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/okhttp/Response;->parsedHeaders()Lcom/android/okhttp/Response$ParsedHeaders;

    move-result-object v4

    iget-object v4, v4, Lcom/android/okhttp/Response$ParsedHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 210
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public varyMatches(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Request;)Z
    .locals 4
    .param p1, "varyHeaders"    # Lcom/android/okhttp/Headers;
    .param p2, "newRequest"    # Lcom/android/okhttp/Request;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/okhttp/Response;->parsedHeaders()Lcom/android/okhttp/Response$ParsedHeaders;

    move-result-object v2

    # getter for: Lcom/android/okhttp/Response$ParsedHeaders;->varyFields:Ljava/util/Set;
    invoke-static {v2}, Lcom/android/okhttp/Response$ParsedHeaders;->access$900(Lcom/android/okhttp/Response$ParsedHeaders;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 185
    .local v0, "field":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/okhttp/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v0}, Lcom/android/okhttp/Request;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 187
    .end local v0    # "field":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
