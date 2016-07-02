.class final Lcom/android/okhttp/internal/http/HttpAuthenticator$1;
.super Ljava/lang/Object;
.source "HttpAuthenticator.java"

# interfaces
.implements Lcom/android/okhttp/OkAuthenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/HttpAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getConnectToInetAddress(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/InetAddress;
    .locals 2
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public authenticate(Ljava/net/Proxy;Ljava/net/URL;Ljava/util/List;)Lcom/android/okhttp/OkAuthenticator$Credential;
    .locals 12
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Proxy;",
            "Ljava/net/URL;",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/OkAuthenticator$Challenge;",
            ">;)",
            "Lcom/android/okhttp/OkAuthenticator$Credential;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    .local p3, "challenges":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/OkAuthenticator$Challenge;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v11

    .local v11, "size":I
    :goto_0
    if-ge v10, v11, :cond_2

    .line 45
    invoke-interface {p3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/okhttp/OkAuthenticator$Challenge;

    .line 46
    .local v9, "challenge":Lcom/android/okhttp/OkAuthenticator$Challenge;
    const-string v0, "Basic"

    invoke-virtual {v9}, Lcom/android/okhttp/OkAuthenticator$Challenge;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/http/HttpAuthenticator$1;->getConnectToInetAddress(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/URL;->getPort()I

    move-result v2

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/android/okhttp/OkAuthenticator$Challenge;->getRealm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/android/okhttp/OkAuthenticator$Challenge;->getScheme()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    move-object v6, p2

    invoke-static/range {v0 .. v7}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v8

    .line 53
    .local v8, "auth":Ljava/net/PasswordAuthentication;
    if-eqz v8, :cond_0

    .line 54
    invoke-virtual {v8}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0, v1}, Lcom/android/okhttp/OkAuthenticator$Credential;->basic(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/OkAuthenticator$Credential;

    move-result-object v0

    .line 57
    .end local v8    # "auth":Ljava/net/PasswordAuthentication;
    .end local v9    # "challenge":Lcom/android/okhttp/OkAuthenticator$Challenge;
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public authenticateProxy(Ljava/net/Proxy;Ljava/net/URL;Ljava/util/List;)Lcom/android/okhttp/OkAuthenticator$Credential;
    .locals 14
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Proxy;",
            "Ljava/net/URL;",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/OkAuthenticator$Challenge;",
            ">;)",
            "Lcom/android/okhttp/OkAuthenticator$Credential;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    .local p3, "challenges":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/OkAuthenticator$Challenge;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v13

    .local v13, "size":I
    :goto_0
    if-ge v11, v13, :cond_2

    .line 63
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/okhttp/OkAuthenticator$Challenge;

    .line 64
    .local v10, "challenge":Lcom/android/okhttp/OkAuthenticator$Challenge;
    const-string v1, "Basic"

    invoke-virtual {v10}, Lcom/android/okhttp/OkAuthenticator$Challenge;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v12

    check-cast v12, Ljava/net/InetSocketAddress;

    .line 69
    .local v12, "proxyAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v12}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-direct/range {p0 .. p2}, Lcom/android/okhttp/internal/http/HttpAuthenticator$1;->getConnectToInetAddress(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v12}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/android/okhttp/OkAuthenticator$Challenge;->getRealm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/android/okhttp/OkAuthenticator$Challenge;->getScheme()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    move-object/from16 v7, p2

    invoke-static/range {v1 .. v8}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v9

    .line 73
    .local v9, "auth":Ljava/net/PasswordAuthentication;
    if-eqz v9, :cond_0

    .line 74
    invoke-virtual {v9}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1, v2}, Lcom/android/okhttp/OkAuthenticator$Credential;->basic(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/OkAuthenticator$Credential;

    move-result-object v1

    .line 77
    .end local v9    # "auth":Ljava/net/PasswordAuthentication;
    .end local v10    # "challenge":Lcom/android/okhttp/OkAuthenticator$Challenge;
    .end local v12    # "proxyAddress":Ljava/net/InetSocketAddress;
    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
