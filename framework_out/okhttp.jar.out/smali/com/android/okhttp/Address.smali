.class public final Lcom/android/okhttp/Address;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field final authenticator:Lcom/android/okhttp/OkAuthenticator;

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final proxy:Ljava/net/Proxy;

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field final uriHost:Ljava/lang/String;

.field final uriPort:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/android/okhttp/OkAuthenticator;Ljava/net/Proxy;Ljava/util/List;)V
    .locals 3
    .param p1, "uriHost"    # Ljava/lang/String;
    .param p2, "uriPort"    # I
    .param p3, "socketFactory"    # Ljavax/net/SocketFactory;
    .param p4, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p5, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;
    .param p6, "authenticator"    # Lcom/android/okhttp/OkAuthenticator;
    .param p7, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lcom/android/okhttp/OkAuthenticator;",
            "Ljava/net/Proxy;",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 51
    .local p8, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/Protocol;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uriHost == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    if-gtz p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uriPort <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    if-nez p6, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_2
    if-nez p8, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_3
    iput-object p7, p0, Lcom/android/okhttp/Address;->proxy:Ljava/net/Proxy;

    .line 57
    iput-object p1, p0, Lcom/android/okhttp/Address;->uriHost:Ljava/lang/String;

    .line 58
    iput p2, p0, Lcom/android/okhttp/Address;->uriPort:I

    .line 59
    iput-object p3, p0, Lcom/android/okhttp/Address;->socketFactory:Ljavax/net/SocketFactory;

    .line 60
    iput-object p4, p0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 61
    iput-object p5, p0, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 62
    iput-object p6, p0, Lcom/android/okhttp/Address;->authenticator:Lcom/android/okhttp/OkAuthenticator;

    .line 63
    invoke-static {p8}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Address;->protocols:Ljava/util/List;

    .line 64
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 126
    instance-of v2, p1, Lcom/android/okhttp/Address;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 127
    check-cast v0, Lcom/android/okhttp/Address;

    .line 128
    .local v0, "that":Lcom/android/okhttp/Address;
    iget-object v2, p0, Lcom/android/okhttp/Address;->proxy:Ljava/net/Proxy;

    iget-object v3, v0, Lcom/android/okhttp/Address;->proxy:Ljava/net/Proxy;

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/okhttp/Address;->uriHost:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/okhttp/Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/okhttp/Address;->uriPort:I

    iget v3, v0, Lcom/android/okhttp/Address;->uriPort:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v3, v0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v3, v0, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/okhttp/Address;->authenticator:Lcom/android/okhttp/OkAuthenticator;

    iget-object v3, v0, Lcom/android/okhttp/Address;->authenticator:Lcom/android/okhttp/OkAuthenticator;

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/okhttp/Address;->protocols:Ljava/util/List;

    iget-object v3, v0, Lcom/android/okhttp/Address;->protocols:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 136
    .end local v0    # "that":Lcom/android/okhttp/Address;
    :cond_0
    return v1
.end method

.method public getAuthenticator()Lcom/android/okhttp/OkAuthenticator;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/okhttp/Address;->authenticator:Lcom/android/okhttp/OkAuthenticator;

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getProtocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/okhttp/Address;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/okhttp/Address;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/okhttp/Address;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getUriHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/okhttp/Address;->uriHost:Ljava/lang/String;

    return-object v0
.end method

.method public getUriPort()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/android/okhttp/Address;->uriPort:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 140
    const/16 v0, 0x11

    .line 141
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/okhttp/Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 142
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/android/okhttp/Address;->uriPort:I

    add-int v0, v1, v3

    .line 143
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 144
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 145
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/android/okhttp/Address;->authenticator:Lcom/android/okhttp/OkAuthenticator;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/okhttp/Address;->authenticator:Lcom/android/okhttp/OkAuthenticator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int v0, v3, v1

    .line 146
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/android/okhttp/Address;->proxy:Ljava/net/Proxy;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/okhttp/Address;->proxy:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 147
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/Address;->protocols:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 148
    return v0

    :cond_1
    move v1, v2

    .line 143
    goto :goto_0

    :cond_2
    move v1, v2

    .line 144
    goto :goto_1

    :cond_3
    move v1, v2

    .line 145
    goto :goto_2
.end method
