.class public Lcom/android/okhttp/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private body:Lcom/android/okhttp/Request$Body;

.field private headers:Lcom/android/okhttp/Headers$Builder;

.field private method:Ljava/lang/String;

.field private tag:Ljava/lang/Object;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const-string v0, "GET"

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->method:Ljava/lang/String;

    .line 241
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    .line 242
    return-void
.end method

.method private constructor <init>(Lcom/android/okhttp/Request;)V
    .locals 1
    .param p1, "request"    # Lcom/android/okhttp/Request;

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    # getter for: Lcom/android/okhttp/Request;->url:Ljava/net/URL;
    invoke-static {p1}, Lcom/android/okhttp/Request;->access$800(Lcom/android/okhttp/Request;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->url:Ljava/net/URL;

    .line 246
    # getter for: Lcom/android/okhttp/Request;->method:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/okhttp/Request;->access$900(Lcom/android/okhttp/Request;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->method:Ljava/lang/String;

    .line 247
    # getter for: Lcom/android/okhttp/Request;->body:Lcom/android/okhttp/Request$Body;
    invoke-static {p1}, Lcom/android/okhttp/Request;->access$1000(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Request$Body;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->body:Lcom/android/okhttp/Request$Body;

    .line 248
    # getter for: Lcom/android/okhttp/Request;->tag:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/okhttp/Request;->access$1100(Lcom/android/okhttp/Request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->tag:Ljava/lang/Object;

    .line 249
    # getter for: Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;
    invoke-static {p1}, Lcom/android/okhttp/Request;->access$1200(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    .line 250
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Request$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/okhttp/Request;
    .param p2, "x1"    # Lcom/android/okhttp/Request$1;

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/android/okhttp/Request$Builder;-><init>(Lcom/android/okhttp/Request;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/okhttp/Request$Builder;)Ljava/net/URL;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Request$Builder;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->url:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/okhttp/Request$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Request$Builder;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/Headers$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Request$Builder;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/Request$Body;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Request$Builder;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->body:Lcom/android/okhttp/Request$Body;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/okhttp/Request$Builder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Request$Builder;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->tag:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 281
    return-object p0
.end method

.method public build()Lcom/android/okhttp/Request;
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->url:Ljava/net/URL;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_0
    new-instance v0, Lcom/android/okhttp/Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/Request;-><init>(Lcom/android/okhttp/Request$Builder;Lcom/android/okhttp/Request$1;)V

    return-object v0
.end method

.method public get()Lcom/android/okhttp/Request$Builder;
    .locals 2

    .prologue
    .line 300
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/Request$Body;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public head()Lcom/android/okhttp/Request$Builder;
    .locals 2

    .prologue
    .line 304
    const-string v0, "HEAD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/Request$Body;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 272
    return-object p0
.end method

.method public headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Request$Builder;
    .locals 1
    .param p1, "headers"    # Lcom/android/okhttp/Headers;

    .prologue
    .line 291
    invoke-virtual {p1}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    .line 292
    return-object p0
.end method

.method public method(Ljava/lang/String;Lcom/android/okhttp/Request$Body;)Lcom/android/okhttp/Request$Builder;
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "body"    # Lcom/android/okhttp/Request$Body;

    .prologue
    .line 316
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method == null || method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_1
    iput-object p1, p0, Lcom/android/okhttp/Request$Builder;->method:Ljava/lang/String;

    .line 320
    iput-object p2, p0, Lcom/android/okhttp/Request$Builder;->body:Lcom/android/okhttp/Request$Body;

    .line 321
    return-object p0
.end method

.method public post(Lcom/android/okhttp/Request$Body;)Lcom/android/okhttp/Request$Builder;
    .locals 1
    .param p1, "body"    # Lcom/android/okhttp/Request$Body;

    .prologue
    .line 308
    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/Request$Body;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/android/okhttp/Request$Body;)Lcom/android/okhttp/Request$Builder;
    .locals 1
    .param p1, "body"    # Lcom/android/okhttp/Request$Body;

    .prologue
    .line 312
    const-string v0, "PUT"

    invoke-virtual {p0, v0, p1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/Request$Body;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 286
    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 296
    const-string v0, "User-Agent"

    invoke-virtual {p0, v0, p1}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public tag(Ljava/lang/Object;)Lcom/android/okhttp/Request$Builder;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/okhttp/Request$Builder;->tag:Ljava/lang/Object;

    .line 331
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 254
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/okhttp/Request$Builder;->url(Ljava/net/URL;)Lcom/android/okhttp/Request$Builder;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public url(Ljava/net/URL;)Lcom/android/okhttp/Request$Builder;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 261
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    iput-object p1, p0, Lcom/android/okhttp/Request$Builder;->url:Ljava/net/URL;

    .line 263
    return-object p0
.end method
