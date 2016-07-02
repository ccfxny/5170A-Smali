.class final Lcom/android/okhttp/HttpResponseCache$Entry;
.super Ljava/lang/Object;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/HttpResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field private final handshake:Lcom/android/okhttp/Handshake;

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lcom/android/okhttp/Headers;

.field private final statusLine:Ljava/lang/String;

.field private final url:Ljava/lang/String;

.field private final varyHeaders:Lcom/android/okhttp/Headers;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/android/okhttp/Response;

    .prologue
    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->url:Ljava/lang/String;

    .line 482
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/okhttp/Response;->getVaryFields()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Headers;->getAll(Ljava/util/Set;)Lcom/android/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    .line 483
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    .line 484
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->statusLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->statusLine:Ljava/lang/String;

    .line 485
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    .line 486
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->handshake:Lcom/android/okhttp/Handshake;

    .line 487
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 13
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    :try_start_0
    invoke-static {p1}, Lcom/android/okio/Okio;->source(Ljava/io/InputStream;)Lcom/android/okio/Source;

    move-result-object v10

    invoke-static {v10}, Lcom/android/okio/Okio;->buffer(Lcom/android/okio/Source;)Lcom/android/okio/BufferedSource;

    move-result-object v7

    .line 446
    .local v7, "source":Lcom/android/okio/BufferedSource;
    invoke-interface {v7}, Lcom/android/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->url:Ljava/lang/String;

    .line 447
    invoke-interface {v7}, Lcom/android/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    .line 448
    new-instance v8, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v8}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 449
    .local v8, "varyHeadersBuilder":Lcom/android/okhttp/Headers$Builder;
    # invokes: Lcom/android/okhttp/HttpResponseCache;->readInt(Lcom/android/okio/BufferedSource;)I
    invoke-static {v7}, Lcom/android/okhttp/HttpResponseCache;->access$400(Lcom/android/okio/BufferedSource;)I

    move-result v9

    .line 450
    .local v9, "varyRequestHeaderLineCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v9, :cond_0

    .line 451
    invoke-interface {v7}, Lcom/android/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/okhttp/Headers$Builder;->addLine(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 450
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 453
    :cond_0
    invoke-virtual {v8}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v10

    iput-object v10, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    .line 455
    invoke-interface {v7}, Lcom/android/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->statusLine:Ljava/lang/String;

    .line 456
    new-instance v6, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v6}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 457
    .local v6, "responseHeadersBuilder":Lcom/android/okhttp/Headers$Builder;
    # invokes: Lcom/android/okhttp/HttpResponseCache;->readInt(Lcom/android/okio/BufferedSource;)I
    invoke-static {v7}, Lcom/android/okhttp/HttpResponseCache;->access$400(Lcom/android/okio/BufferedSource;)I

    move-result v5

    .line 458
    .local v5, "responseHeaderLineCount":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    .line 459
    invoke-interface {v7}, Lcom/android/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/okhttp/Headers$Builder;->addLine(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 458
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 461
    :cond_1
    invoke-virtual {v6}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v10

    iput-object v10, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    .line 463
    invoke-direct {p0}, Lcom/android/okhttp/HttpResponseCache$Entry;->isHttps()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 464
    invoke-interface {v7}, Lcom/android/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "blank":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 466
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "expected \"\" but was \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    .end local v0    # "blank":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v5    # "responseHeaderLineCount":I
    .end local v6    # "responseHeadersBuilder":Lcom/android/okhttp/Headers$Builder;
    .end local v7    # "source":Lcom/android/okio/BufferedSource;
    .end local v8    # "varyHeadersBuilder":Lcom/android/okhttp/Headers$Builder;
    .end local v9    # "varyRequestHeaderLineCount":I
    :catchall_0
    move-exception v10

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v10

    .line 468
    .restart local v0    # "blank":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v5    # "responseHeaderLineCount":I
    .restart local v6    # "responseHeadersBuilder":Lcom/android/okhttp/Headers$Builder;
    .restart local v7    # "source":Lcom/android/okio/BufferedSource;
    .restart local v8    # "varyHeadersBuilder":Lcom/android/okhttp/Headers$Builder;
    .restart local v9    # "varyRequestHeaderLineCount":I
    :cond_2
    :try_start_1
    invoke-interface {v7}, Lcom/android/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "cipherSuite":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/okhttp/HttpResponseCache$Entry;->readCertificateList(Lcom/android/okio/BufferedSource;)Ljava/util/List;

    move-result-object v4

    .line 470
    .local v4, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-direct {p0, v7}, Lcom/android/okhttp/HttpResponseCache$Entry;->readCertificateList(Lcom/android/okio/BufferedSource;)Ljava/util/List;

    move-result-object v3

    .line 471
    .local v3, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-static {v1, v4, v3}, Lcom/android/okhttp/Handshake;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/okhttp/Handshake;

    move-result-object v10

    iput-object v10, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->handshake:Lcom/android/okhttp/Handshake;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    .end local v0    # "blank":Ljava/lang/String;
    .end local v1    # "cipherSuite":Ljava/lang/String;
    .end local v3    # "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v4    # "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 478
    return-void

    .line 473
    :cond_3
    const/4 v10, 0x0

    :try_start_2
    iput-object v10, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->handshake:Lcom/android/okhttp/Handshake;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private isHttps()Z
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->url:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertificateList(Lcom/android/okio/BufferedSource;)Ljava/util/List;
    .locals 9
    .param p1, "source"    # Lcom/android/okio/BufferedSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okio/BufferedSource;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    # invokes: Lcom/android/okhttp/HttpResponseCache;->readInt(Lcom/android/okio/BufferedSource;)I
    invoke-static {p1}, Lcom/android/okhttp/HttpResponseCache;->access$400(Lcom/android/okio/BufferedSource;)I

    move-result v4

    .line 521
    .local v4, "length":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 531
    :cond_0
    return-object v6

    .line 524
    :cond_1
    :try_start_0
    const-string v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 525
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 526
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 527
    invoke-interface {p1}, Lcom/android/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    .line 528
    .local v5, "line":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/okio/ByteString;->decodeBase64(Ljava/lang/String;)Lcom/android/okio/ByteString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/okio/ByteString;->toByteArray()[B

    move-result-object v0

    .line 529
    .local v0, "bytes":[B
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 532
    .end local v0    # "bytes":[B
    .end local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "i":I
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :catch_0
    move-exception v2

    .line 533
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private writeCertArray(Ljava/io/Writer;Ljava/util/List;)V
    .locals 7
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 539
    .local p2, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 540
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 541
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/Certificate;

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    .line 542
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/android/okio/ByteString;->of([B)Lcom/android/okio/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v3

    .line 543
    .local v3, "line":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 545
    .end local v0    # "bytes":[B
    .end local v2    # "i":I
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "size":I
    :catch_0
    move-exception v1

    .line 546
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 548
    .end local v1    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v2    # "i":I
    .restart local v4    # "size":I
    :cond_0
    return-void
.end method


# virtual methods
.method public matches(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;)Z
    .locals 2
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .param p2, "response"    # Lcom/android/okhttp/Response;

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {p2, v0, p1}, Lcom/android/okhttp/Response;->varyMatches(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public response(Lcom/android/okhttp/Request;Lcom/android/okhttp/internal/DiskLruCache$Snapshot;)Lcom/android/okhttp/Response;
    .locals 4
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .param p2, "snapshot"    # Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    .prologue
    .line 557
    iget-object v2, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 558
    .local v1, "contentType":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    const-string v3, "Content-Length"

    invoke-virtual {v2, v3}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, "contentLength":Ljava/lang/String;
    new-instance v2, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v2}, Lcom/android/okhttp/Response$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->statusLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/okhttp/Response$Builder;->statusLine(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v2, v3}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/okhttp/HttpResponseCache$CacheResponseBody;

    invoke-direct {v3, p2, v1, v0}, Lcom/android/okhttp/HttpResponseCache$CacheResponseBody;-><init>(Lcom/android/okhttp/internal/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/Response$Body;)Lcom/android/okhttp/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->handshake:Lcom/android/okhttp/Handshake;

    invoke-virtual {v2, v3}, Lcom/android/okhttp/Response$Builder;->handshake(Lcom/android/okhttp/Handshake;)Lcom/android/okhttp/Response$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v2

    return-object v2
.end method

.method public writeTo(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
    .locals 6
    .param p1, "editor"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 490
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v1

    .line 491
    .local v1, "out":Ljava/io/OutputStream;
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Lcom/android/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 493
    .local v2, "writer":Ljava/io/Writer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v4}, Lcom/android/okhttp/Headers;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 496
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v3}, Lcom/android/okhttp/Headers;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v4, v0}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v4, v0}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->statusLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v4}, Lcom/android/okhttp/Headers;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 502
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v3}, Lcom/android/okhttp/Headers;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v4, v0}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v4, v0}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 506
    :cond_1
    invoke-direct {p0}, Lcom/android/okhttp/HttpResponseCache$Entry;->isHttps()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 507
    invoke-virtual {v2, v5}, Ljava/io/Writer;->write(I)V

    .line 508
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->handshake:Lcom/android/okhttp/Handshake;

    invoke-virtual {v4}, Lcom/android/okhttp/Handshake;->cipherSuite()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 509
    iget-object v3, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->handshake:Lcom/android/okhttp/Handshake;

    invoke-virtual {v3}, Lcom/android/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/okhttp/HttpResponseCache$Entry;->writeCertArray(Ljava/io/Writer;Ljava/util/List;)V

    .line 510
    iget-object v3, p0, Lcom/android/okhttp/HttpResponseCache$Entry;->handshake:Lcom/android/okhttp/Handshake;

    invoke-virtual {v3}, Lcom/android/okhttp/Handshake;->localCertificates()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/okhttp/HttpResponseCache$Entry;->writeCertArray(Ljava/io/Writer;Ljava/util/List;)V

    .line 512
    :cond_2
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 513
    return-void
.end method
