.class public Lcom/android/okhttp/Route;
.super Ljava/lang/Object;
.source "Route.java"


# instance fields
.field final address:Lcom/android/okhttp/Address;

.field final inetSocketAddress:Ljava/net/InetSocketAddress;

.field final modernTls:Z

.field final proxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;Z)V
    .locals 2
    .param p1, "address"    # Lcom/android/okhttp/Address;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .param p3, "inetSocketAddress"    # Ljava/net/InetSocketAddress;
    .param p4, "modernTls"    # Z

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "address == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxy == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inetSocketAddress == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_2
    iput-object p1, p0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    .line 48
    iput-object p2, p0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    .line 49
    iput-object p3, p0, Lcom/android/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    .line 50
    iput-boolean p4, p0, Lcom/android/okhttp/Route;->modernTls:Z

    .line 51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 79
    instance-of v2, p1, Lcom/android/okhttp/Route;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 80
    check-cast v0, Lcom/android/okhttp/Route;

    .line 81
    .local v0, "other":Lcom/android/okhttp/Route;
    iget-object v2, p0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    iget-object v3, v0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v2, v3}, Lcom/android/okhttp/Address;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    iget-object v3, v0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v2, v3}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    iget-object v3, v0, Lcom/android/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v2, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/okhttp/Route;->modernTls:Z

    iget-boolean v3, v0, Lcom/android/okhttp/Route;->modernTls:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 86
    .end local v0    # "other":Lcom/android/okhttp/Route;
    :cond_0
    return v1
.end method

.method public getAddress()Lcom/android/okhttp/Address;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 90
    const/16 v0, 0x11

    .line 91
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v1}, Lcom/android/okhttp/Address;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 92
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 93
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 94
    iget-boolean v1, p0, Lcom/android/okhttp/Route;->modernTls:Z

    if-eqz v1, :cond_0

    mul-int/lit8 v1, v0, 0x1f

    :goto_0
    add-int/2addr v0, v1

    .line 95
    return v0

    .line 94
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isModernTls()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/okhttp/Route;->modernTls:Z

    return v0
.end method
