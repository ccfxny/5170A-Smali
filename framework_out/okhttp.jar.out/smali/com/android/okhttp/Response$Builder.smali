.class public Lcom/android/okhttp/Response$Builder;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private body:Lcom/android/okhttp/Response$Body;

.field private cacheResponse:Lcom/android/okhttp/Response;

.field private handshake:Lcom/android/okhttp/Handshake;

.field private headers:Lcom/android/okhttp/Headers$Builder;

.field private networkResponse:Lcom/android/okhttp/Response;

.field private priorResponse:Lcom/android/okhttp/Response;

.field private request:Lcom/android/okhttp/Request;

.field private statusLine:Lcom/android/okhttp/internal/http/StatusLine;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    .line 393
    return-void
.end method

.method private constructor <init>(Lcom/android/okhttp/Response;)V
    .locals 1
    .param p1, "response"    # Lcom/android/okhttp/Response;

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    # getter for: Lcom/android/okhttp/Response;->request:Lcom/android/okhttp/Request;
    invoke-static {p1}, Lcom/android/okhttp/Response;->access$1100(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->request:Lcom/android/okhttp/Request;

    .line 397
    # getter for: Lcom/android/okhttp/Response;->statusLine:Lcom/android/okhttp/internal/http/StatusLine;
    invoke-static {p1}, Lcom/android/okhttp/Response;->access$1200(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->statusLine:Lcom/android/okhttp/internal/http/StatusLine;

    .line 398
    # getter for: Lcom/android/okhttp/Response;->handshake:Lcom/android/okhttp/Handshake;
    invoke-static {p1}, Lcom/android/okhttp/Response;->access$1300(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Handshake;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->handshake:Lcom/android/okhttp/Handshake;

    .line 399
    # getter for: Lcom/android/okhttp/Response;->headers:Lcom/android/okhttp/Headers;
    invoke-static {p1}, Lcom/android/okhttp/Response;->access$1400(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    .line 400
    # getter for: Lcom/android/okhttp/Response;->body:Lcom/android/okhttp/Response$Body;
    invoke-static {p1}, Lcom/android/okhttp/Response;->access$1500(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Body;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->body:Lcom/android/okhttp/Response$Body;

    .line 401
    # getter for: Lcom/android/okhttp/Response;->networkResponse:Lcom/android/okhttp/Response;
    invoke-static {p1}, Lcom/android/okhttp/Response;->access$1600(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->networkResponse:Lcom/android/okhttp/Response;

    .line 402
    # getter for: Lcom/android/okhttp/Response;->cacheResponse:Lcom/android/okhttp/Response;
    invoke-static {p1}, Lcom/android/okhttp/Response;->access$1700(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->cacheResponse:Lcom/android/okhttp/Response;

    .line 403
    # getter for: Lcom/android/okhttp/Response;->priorResponse:Lcom/android/okhttp/Response;
    invoke-static {p1}, Lcom/android/okhttp/Response;->access$1800(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->priorResponse:Lcom/android/okhttp/Response;

    .line 404
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/okhttp/Response;
    .param p2, "x1"    # Lcom/android/okhttp/Response$1;

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lcom/android/okhttp/Response$Builder;-><init>(Lcom/android/okhttp/Response;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Request;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Response$Builder;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->request:Lcom/android/okhttp/Request;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/internal/http/StatusLine;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Response$Builder;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->statusLine:Lcom/android/okhttp/internal/http/StatusLine;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Handshake;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Response$Builder;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->handshake:Lcom/android/okhttp/Handshake;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Headers$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Response$Builder;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Response$Body;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Response$Builder;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->body:Lcom/android/okhttp/Response$Body;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Response;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Response$Builder;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->networkResponse:Lcom/android/okhttp/Response;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Response;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Response$Builder;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->cacheResponse:Lcom/android/okhttp/Response;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Response;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Response$Builder;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->priorResponse:Lcom/android/okhttp/Response;

    return-object v0
.end method

.method private checkSupportResponse(Ljava/lang/String;Lcom/android/okhttp/Response;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "response"    # Lcom/android/okhttp/Response;

    .prologue
    .line 482
    # getter for: Lcom/android/okhttp/Response;->body:Lcom/android/okhttp/Response$Body;
    invoke-static {p2}, Lcom/android/okhttp/Response;->access$1500(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Body;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 483
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_0
    # getter for: Lcom/android/okhttp/Response;->networkResponse:Lcom/android/okhttp/Response;
    invoke-static {p2}, Lcom/android/okhttp/Response;->access$1600(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 485
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_1
    # getter for: Lcom/android/okhttp/Response;->cacheResponse:Lcom/android/okhttp/Response;
    invoke-static {p2}, Lcom/android/okhttp/Response;->access$1700(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 487
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_2
    # getter for: Lcom/android/okhttp/Response;->priorResponse:Lcom/android/okhttp/Response;
    invoke-static {p2}, Lcom/android/okhttp/Response;->access$1800(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 489
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_3
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 445
    return-object p0
.end method

.method public body(Lcom/android/okhttp/Response$Body;)Lcom/android/okhttp/Response$Builder;
    .locals 0
    .param p1, "body"    # Lcom/android/okhttp/Response$Body;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->body:Lcom/android/okhttp/Response$Body;

    .line 461
    return-object p0
.end method

.method public build()Lcom/android/okhttp/Response;
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->request:Lcom/android/okhttp/Request;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->statusLine:Lcom/android/okhttp/internal/http/StatusLine;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "statusLine == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_1
    new-instance v0, Lcom/android/okhttp/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/Response;-><init>(Lcom/android/okhttp/Response$Builder;Lcom/android/okhttp/Response$1;)V

    return-object v0
.end method

.method public cacheResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;
    .locals 1
    .param p1, "cacheResponse"    # Lcom/android/okhttp/Response;

    .prologue
    .line 476
    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lcom/android/okhttp/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lcom/android/okhttp/Response;)V

    .line 477
    :cond_0
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->cacheResponse:Lcom/android/okhttp/Response;

    .line 478
    return-object p0
.end method

.method public handshake(Lcom/android/okhttp/Handshake;)Lcom/android/okhttp/Response$Builder;
    .locals 0
    .param p1, "handshake"    # Lcom/android/okhttp/Handshake;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->handshake:Lcom/android/okhttp/Handshake;

    .line 427
    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 436
    return-object p0
.end method

.method public headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;
    .locals 1
    .param p1, "headers"    # Lcom/android/okhttp/Headers;

    .prologue
    .line 455
    invoke-virtual {p1}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    .line 456
    return-object p0
.end method

.method public networkResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;
    .locals 1
    .param p1, "networkResponse"    # Lcom/android/okhttp/Response;

    .prologue
    .line 470
    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lcom/android/okhttp/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lcom/android/okhttp/Response;)V

    .line 471
    :cond_0
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->networkResponse:Lcom/android/okhttp/Response;

    .line 472
    return-object p0
.end method

.method public priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;
    .locals 0
    .param p1, "priorResponse"    # Lcom/android/okhttp/Response;

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->priorResponse:Lcom/android/okhttp/Response;

    .line 495
    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 450
    return-object p0
.end method

.method public request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;
    .locals 0
    .param p1, "request"    # Lcom/android/okhttp/Request;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->request:Lcom/android/okhttp/Request;

    .line 408
    return-object p0
.end method

.method public setResponseSource(Lcom/android/okhttp/ResponseSource;)Lcom/android/okhttp/Response$Builder;
    .locals 3
    .param p1, "responseSource"    # Lcom/android/okhttp/ResponseSource;

    .prologue
    .line 466
    sget-object v0, Lcom/android/okhttp/internal/http/OkHeaders;->RESPONSE_SOURCE:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/Response$Builder;->statusLine:Lcom/android/okhttp/internal/http/StatusLine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/StatusLine;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public statusLine(Lcom/android/okhttp/internal/http/StatusLine;)Lcom/android/okhttp/Response$Builder;
    .locals 2
    .param p1, "statusLine"    # Lcom/android/okhttp/internal/http/StatusLine;

    .prologue
    .line 412
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "statusLine == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_0
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->statusLine:Lcom/android/okhttp/internal/http/StatusLine;

    .line 414
    return-object p0
.end method

.method public statusLine(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;
    .locals 2
    .param p1, "statusLine"    # Ljava/lang/String;

    .prologue
    .line 419
    :try_start_0
    new-instance v1, Lcom/android/okhttp/internal/http/StatusLine;

    invoke-direct {v1, p1}, Lcom/android/okhttp/internal/http/StatusLine;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/okhttp/Response$Builder;->statusLine(Lcom/android/okhttp/internal/http/StatusLine;)Lcom/android/okhttp/Response$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
