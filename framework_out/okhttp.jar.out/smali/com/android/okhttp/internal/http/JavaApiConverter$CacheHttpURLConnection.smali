.class final Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;
.super Ljava/net/HttpURLConnection;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/JavaApiConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheHttpURLConnection"
.end annotation


# instance fields
.field private final request:Lcom/android/okhttp/Request;

.field private final response:Lcom/android/okhttp/Response;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/android/okhttp/Response;

    .prologue
    const/4 v0, 0x1

    .line 380
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 381
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/android/okhttp/Request;

    .line 382
    iput-object p1, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    .line 385
    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;->connected:Z

    .line 386
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/Response$Body;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;->doOutput:Z

    .line 389
    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/android/okhttp/Request;

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;->method:Ljava/lang/String;

    .line 390
    return-void

    .line 386
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;)Lcom/android/okhttp/Response;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    return-object v0
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 413
    # invokes: Lcom/android/okhttp/internal/http/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    # invokes: Lcom/android/okhttp/internal/http/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 401
    # invokes: Lcom/android/okhttp/internal/http/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .prologue
    .line 595
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 550
    # invokes: Lcom/android/okhttp/internal/http/JavaApiConverter;->throwResponseBodyAccessException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->access$200()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "classes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 555
    # invokes: Lcom/android/okhttp/internal/http/JavaApiConverter;->throwResponseBodyAccessException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->access$200()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .prologue
    .line 620
    invoke-super {p0}, Ljava/net/HttpURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .prologue
    .line 575
    const/4 v0, 0x1

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/android/okhttp/Request;

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->body()Lcom/android/okhttp/Request$Body;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 481
    if-gez p1, :cond_0

    .line 482
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid header index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_0
    if-nez p1, :cond_1

    .line 485
    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->statusLine()Ljava/lang/String;

    move-result-object v0

    .line 487
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 492
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->statusLine()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 469
    if-gez p1, :cond_0

    .line 470
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid header index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_0
    if-nez p1, :cond_1

    .line 473
    const/4 v0, 0x0

    .line 475
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    .line 497
    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    invoke-virtual {v1}, Lcom/android/okhttp/Response;->statusLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .prologue
    .line 615
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 560
    # invokes: Lcom/android/okhttp/internal/http/JavaApiConverter;->throwResponseBodyAccessException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->access$200()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .prologue
    .line 451
    invoke-super {p0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    # invokes: Lcom/android/okhttp/internal/http/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/android/okhttp/Request;

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    .line 425
    # invokes: Lcom/android/okhttp/internal/http/JavaApiConverter;->throwRequestHeaderAccessException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;->request:Lcom/android/okhttp/Request;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->code()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->statusMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .prologue
    .line 605
    invoke-super {p0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1
    .param p1, "allowUserInteraction"    # Z

    .prologue
    .line 590
    # invokes: Lcom/android/okhttp/internal/http/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1
    .param p1, "chunklen"    # I

    .prologue
    .line 440
    # invokes: Lcom/android/okhttp/internal/http/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setConnectTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 528
    # invokes: Lcom/android/okhttp/internal/http/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setDefaultUseCaches(Z)V
    .locals 0
    .param p1, "defaultUseCaches"    # Z

    .prologue
    .line 625
    invoke-super {p0, p1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 626
    return-void
.end method

.method public setDoInput(Z)V
    .locals 1
    .param p1, "doInput"    # Z

    .prologue
    .line 570
    # invokes: Lcom/android/okhttp/internal/http/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setDoOutput(Z)V
    .locals 1
    .param p1, "doOutput"    # Z

    .prologue
    .line 580
    # invokes: Lcom/android/okhttp/internal/http/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1
    .param p1, "contentLength"    # I

    .prologue
    .line 430
    # invokes: Lcom/android/okhttp/internal/http/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 1
    .param p1, "contentLength"    # J

    .prologue
    .line 435
    # invokes: Lcom/android/okhttp/internal/http/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setIfModifiedSince(J)V
    .locals 1
    .param p1, "ifModifiedSince"    # J

    .prologue
    .line 610
    # invokes: Lcom/android/okhttp/internal/http/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1
    .param p1, "followRedirects"    # Z

    .prologue
    .line 445
    # invokes: Lcom/android/okhttp/internal/http/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setReadTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 539
    # invokes: Lcom/android/okhttp/internal/http/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 456
    # invokes: Lcom/android/okhttp/internal/http/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 408
    # invokes: Lcom/android/okhttp/internal/http/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setUseCaches(Z)V
    .locals 1
    .param p1, "useCaches"    # Z

    .prologue
    .line 600
    # invokes: Lcom/android/okhttp/internal/http/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/http/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public usingProxy()Z
    .locals 1

    .prologue
    .line 521
    const/4 v0, 0x0

    return v0
.end method
