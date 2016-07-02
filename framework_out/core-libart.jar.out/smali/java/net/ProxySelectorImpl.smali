.class final Ljava/net/ProxySelectorImpl;
.super Ljava/net/ProxySelector;
.source "ProxySelectorImpl.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    return-void
.end method

.method private getSystemPropertyInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 137
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "string":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 140
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 144
    .end local p2    # "defaultValue":I
    :cond_0
    :goto_0
    return p2

    .line 141
    .restart local p2    # "defaultValue":I
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static final isLocalHost(Ljava/net/URI;)Z
    .locals 3
    .param p0, "uri"    # Ljava/net/URI;

    .prologue
    const/4 v1, 0x0

    .line 178
    if-nez p0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v1

    .line 181
    :cond_1
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 185
    const-string v2, "localhost"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "127.0.0.1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isNonProxyHost(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "nonProxyHosts"    # Ljava/lang/String;

    .prologue
    .line 152
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 153
    :cond_0
    const/4 v4, 0x0

    .line 173
    :goto_0
    return v4

    .line 157
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v3, "patternBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 159
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 160
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 168
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 162
    :sswitch_0
    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 165
    :sswitch_1
    const-string v4, ".*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 172
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "pattern":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 160
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_1
        0x2e -> :sswitch_0
    .end sparse-switch
.end method

.method private lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;
    .locals 4
    .param p1, "hostKey"    # Ljava/lang/String;
    .param p2, "portKey"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/net/Proxy$Type;
    .param p4, "defaultPort"    # I

    .prologue
    .line 127
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    :cond_0
    const/4 v2, 0x0

    .line 133
    :goto_0
    return-object v2

    .line 132
    :cond_1
    invoke-direct {p0, p2, p4}, Ljava/net/ProxySelectorImpl;->getSystemPropertyInt(Ljava/lang/String;I)I

    move-result v1

    .line 133
    .local v1, "port":I
    new-instance v2, Ljava/net/Proxy;

    invoke-static {v0, v1}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-direct {v2, p3, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    goto :goto_0
.end method

.method private selectOneProxy(Ljava/net/URI;)Ljava/net/Proxy;
    .locals 12
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "uri == null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 48
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 49
    .local v7, "scheme":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 50
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "scheme == null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 54
    :cond_1
    const-string v1, ""

    .line 55
    .local v1, "host":Ljava/lang/String;
    invoke-static {p1}, Ljava/net/ProxySelectorImpl;->isLocalHost(Ljava/net/URI;)Z

    move-result v3

    .line 56
    .local v3, "isLocal":Z
    new-instance v0, Ljava/net/Proxy;

    sget-object v8, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    const-string v9, "10.0.0.172"

    const/16 v10, 0x50

    invoke-static {v9, v10}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 60
    .local v0, "chinaProxy":Ljava/net/Proxy;
    const/4 v5, -0x1

    .line 61
    .local v5, "port":I
    const/4 v6, 0x0

    .line 62
    .local v6, "proxy":Ljava/net/Proxy;
    const/4 v4, 0x0

    .line 63
    .local v4, "nonProxyHostsKey":Ljava/lang/String;
    const/4 v2, 0x1

    .line 64
    .local v2, "httpProxyOkay":Z
    const-string v8, "http"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 65
    const/16 v5, 0x50

    .line 66
    const-string v4, "http.nonProxyHosts"

    .line 67
    const-string v8, "http.proxyHost"

    const-string v9, "http.proxyPort"

    sget-object v10, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {p0, v8, v9, v10, v5}, Ljava/net/ProxySelectorImpl;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    move-result-object v6

    .line 82
    :goto_0
    if-eqz v4, :cond_6

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Ljava/net/ProxySelectorImpl;->isNonProxyHost(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 84
    sget-object v8, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 119
    :goto_1
    return-object v8

    .line 68
    :cond_2
    const-string v8, "https"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 69
    const/16 v5, 0x1bb

    .line 70
    const-string v4, "https.nonProxyHosts"

    .line 71
    const-string v8, "https.proxyHost"

    const-string v9, "https.proxyPort"

    sget-object v10, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {p0, v8, v9, v10, v5}, Ljava/net/ProxySelectorImpl;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    move-result-object v6

    goto :goto_0

    .line 72
    :cond_3
    const-string v8, "ftp"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 73
    const/16 v5, 0x50

    .line 74
    const-string v4, "ftp.nonProxyHosts"

    .line 75
    const-string v8, "ftp.proxyHost"

    const-string v9, "ftp.proxyPort"

    sget-object v10, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {p0, v8, v9, v10, v5}, Ljava/net/ProxySelectorImpl;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    move-result-object v6

    goto :goto_0

    .line 76
    :cond_4
    const-string v8, "socket"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 77
    const/4 v2, 0x0

    goto :goto_0

    .line 79
    :cond_5
    sget-object v8, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_1

    .line 87
    :cond_6
    if-eqz v6, :cond_8

    .line 90
    if-ne v6, v0, :cond_7

    if-eqz v3, :cond_7

    .line 91
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "No proxy for 10.0.0.172 & localhost"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    sget-object v8, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_1

    :cond_7
    move-object v8, v6

    .line 96
    goto :goto_1

    .line 99
    :cond_8
    if-eqz v2, :cond_a

    .line 100
    const-string v8, "proxyHost"

    const-string v9, "proxyPort"

    sget-object v10, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {p0, v8, v9, v10, v5}, Ljava/net/ProxySelectorImpl;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    move-result-object v6

    .line 101
    if-eqz v6, :cond_a

    .line 104
    if-ne v6, v0, :cond_9

    if-eqz v3, :cond_9

    .line 105
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "No proxy for 10.0.0.172 & localhost"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    sget-object v8, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_1

    :cond_9
    move-object v8, v6

    .line 110
    goto :goto_1

    .line 114
    :cond_a
    const-string v8, "socksProxyHost"

    const-string v9, "socksProxyPort"

    sget-object v10, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    const/16 v11, 0x438

    invoke-direct {p0, v8, v9, v10, v11}, Ljava/net/ProxySelectorImpl;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    move-result-object v6

    .line 115
    if-eqz v6, :cond_b

    move-object v8, v6

    .line 116
    goto :goto_1

    .line 119
    :cond_b
    sget-object v8, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_1
.end method


# virtual methods
.method public connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "sa"    # Ljava/net/SocketAddress;
    .param p3, "ioe"    # Ljava/io/IOException;

    .prologue
    .line 35
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 38
    :cond_1
    return-void
.end method

.method public select(Ljava/net/URI;)Ljava/util/List;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ljava/net/ProxySelectorImpl;->selectOneProxy(Ljava/net/URI;)Ljava/net/Proxy;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
