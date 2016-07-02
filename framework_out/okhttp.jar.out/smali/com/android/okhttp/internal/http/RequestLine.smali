.class public final Lcom/android/okhttp/internal/http/RequestLine;
.super Ljava/lang/Object;
.source "RequestLine.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method static get(Lcom/android/okhttp/Request;Ljava/net/Proxy$Type;I)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # Lcom/android/okhttp/Request;
    .param p1, "proxyType"    # Ljava/net/Proxy$Type;
    .param p2, "httpMinorVersion"    # I

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/http/RequestLine;->includeAuthorityInRequestLine(Lcom/android/okhttp/Request;Ljava/net/Proxy$Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    :goto_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-static {p2}, Lcom/android/okhttp/internal/http/RequestLine;->version(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/internal/http/RequestLine;->requestPath(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static includeAuthorityInRequestLine(Lcom/android/okhttp/Request;Ljava/net/Proxy$Type;)Z
    .locals 1
    .param p0, "request"    # Lcom/android/okhttp/Request;
    .param p1, "proxyType"    # Ljava/net/Proxy$Type;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->isHttps()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static requestPath(Ljava/net/URL;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 46
    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "pathAndQuery":Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v0, "/"

    .line 49
    .end local v0    # "pathAndQuery":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 48
    .restart local v0    # "pathAndQuery":Ljava/lang/String;
    :cond_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static version(I)Ljava/lang/String;
    .locals 1
    .param p0, "httpMinorVersion"    # I

    .prologue
    .line 53
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string v0, "HTTP/1.1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "HTTP/1.0"

    goto :goto_0
.end method
