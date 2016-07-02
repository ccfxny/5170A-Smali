.class public final Lcom/android/okhttp/TunnelRequest;
.super Ljava/lang/Object;
.source "TunnelRequest.java"


# instance fields
.field final host:Ljava/lang/String;

.field final port:I

.field final proxyAuthorization:Ljava/lang/String;

.field final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "proxyAuthorization"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "userAgent == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    iput-object p1, p0, Lcom/android/okhttp/TunnelRequest;->host:Ljava/lang/String;

    .line 48
    iput p2, p0, Lcom/android/okhttp/TunnelRequest;->port:I

    .line 49
    iput-object p3, p0, Lcom/android/okhttp/TunnelRequest;->userAgent:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/android/okhttp/TunnelRequest;->proxyAuthorization:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method getRequest()Lcom/android/okhttp/Request;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v1, Lcom/android/okhttp/Request$Builder;

    invoke-direct {v1}, Lcom/android/okhttp/Request$Builder;-><init>()V

    new-instance v2, Ljava/net/URL;

    const-string v3, "https"

    iget-object v4, p0, Lcom/android/okhttp/TunnelRequest;->host:Ljava/lang/String;

    iget v5, p0, Lcom/android/okhttp/TunnelRequest;->port:I

    const-string v6, "/"

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Request$Builder;->url(Ljava/net/URL;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    .line 67
    .local v0, "result":Lcom/android/okhttp/Request$Builder;
    const-string v2, "Host"

    iget v1, p0, Lcom/android/okhttp/TunnelRequest;->port:I

    const-string v3, "https"

    invoke-static {v3}, Lcom/android/okhttp/internal/Util;->getDefaultPort(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/okhttp/TunnelRequest;->host:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 68
    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/android/okhttp/TunnelRequest;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 71
    iget-object v1, p0, Lcom/android/okhttp/TunnelRequest;->proxyAuthorization:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 72
    const-string v1, "Proxy-Authorization"

    iget-object v2, p0, Lcom/android/okhttp/TunnelRequest;->proxyAuthorization:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 77
    :cond_0
    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 78
    invoke-virtual {v0}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v1

    return-object v1

    .line 67
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/okhttp/TunnelRequest;->host:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/okhttp/TunnelRequest;->port:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method requestLine()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/TunnelRequest;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/okhttp/TunnelRequest;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HTTP/1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
