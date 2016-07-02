.class public final Lcom/android/okhttp/internal/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final GET_ALPN_SELECTED_PROTOCOL:Lcom/android/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/okhttp/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final GET_NPN_SELECTED_PROTOCOL:Lcom/android/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/okhttp/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final PLATFORM:Lcom/android/okhttp/internal/Platform;

.field private static final SET_ALPN_PROTOCOLS:Lcom/android/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/okhttp/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_HOSTNAME:Lcom/android/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/okhttp/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_NPN_PROTOCOLS:Lcom/android/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/okhttp/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_USE_SESSION_TICKETS:Lcom/android/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/okhttp/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    new-instance v0, Lcom/android/okhttp/internal/Platform;

    invoke-direct {v0}, Lcom/android/okhttp/internal/Platform;-><init>()V

    sput-object v0, Lcom/android/okhttp/internal/Platform;->PLATFORM:Lcom/android/okhttp/internal/Platform;

    .line 48
    new-instance v0, Lcom/android/okhttp/internal/OptionalMethod;

    const-string v1, "setUseSessionTickets"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-direct {v0, v6, v1, v2}, Lcom/android/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/android/okhttp/internal/Platform;->SET_USE_SESSION_TICKETS:Lcom/android/okhttp/internal/OptionalMethod;

    .line 51
    new-instance v0, Lcom/android/okhttp/internal/OptionalMethod;

    const-string v1, "setHostname"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-direct {v0, v6, v1, v2}, Lcom/android/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/android/okhttp/internal/Platform;->SET_HOSTNAME:Lcom/android/okhttp/internal/OptionalMethod;

    .line 54
    new-instance v0, Lcom/android/okhttp/internal/OptionalMethod;

    const-class v1, [B

    const-string v2, "getAlpnSelectedProtocol"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/android/okhttp/internal/Platform;->GET_ALPN_SELECTED_PROTOCOL:Lcom/android/okhttp/internal/OptionalMethod;

    .line 57
    new-instance v0, Lcom/android/okhttp/internal/OptionalMethod;

    const-string v1, "setAlpnProtocols"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, [B

    aput-object v3, v2, v4

    invoke-direct {v0, v6, v1, v2}, Lcom/android/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/android/okhttp/internal/Platform;->SET_ALPN_PROTOCOLS:Lcom/android/okhttp/internal/OptionalMethod;

    .line 60
    new-instance v0, Lcom/android/okhttp/internal/OptionalMethod;

    const-class v1, [B

    const-string v2, "getNpnSelectedProtocol"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/android/okhttp/internal/Platform;->GET_NPN_SELECTED_PROTOCOL:Lcom/android/okhttp/internal/OptionalMethod;

    .line 63
    new-instance v0, Lcom/android/okhttp/internal/OptionalMethod;

    const-string v1, "setNpnProtocols"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, [B

    aput-object v3, v2, v4

    invoke-direct {v0, v6, v1, v2}, Lcom/android/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/android/okhttp/internal/Platform;->SET_NPN_PROTOCOLS:Lcom/android/okhttp/internal/OptionalMethod;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static concatLengthPrefixed(Ljava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/Protocol;>;"
    const/4 v6, 0x0

    .line 189
    .local v6, "size":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/okhttp/Protocol;

    .line 190
    .local v4, "protocol":Lcom/android/okhttp/Protocol;
    iget-object v7, v4, Lcom/android/okhttp/Protocol;->name:Lcom/android/okio/ByteString;

    invoke-virtual {v7}, Lcom/android/okio/ByteString;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    .line 191
    goto :goto_0

    .line 192
    .end local v4    # "protocol":Lcom/android/okhttp/Protocol;
    :cond_0
    new-array v5, v6, [B

    .line 193
    .local v5, "result":[B
    const/4 v2, 0x0

    .line 194
    .local v2, "pos":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/okhttp/Protocol;

    .line 195
    .restart local v4    # "protocol":Lcom/android/okhttp/Protocol;
    iget-object v7, v4, Lcom/android/okhttp/Protocol;->name:Lcom/android/okio/ByteString;

    invoke-virtual {v7}, Lcom/android/okio/ByteString;->size()I

    move-result v1

    .line 196
    .local v1, "nameSize":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    int-to-byte v7, v1

    aput-byte v7, v5, v2

    .line 198
    iget-object v7, v4, Lcom/android/okhttp/Protocol;->name:Lcom/android/okio/ByteString;

    invoke-virtual {v7}, Lcom/android/okio/ByteString;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v5, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 199
    add-int v2, v3, v1

    .line 200
    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    goto :goto_1

    .line 201
    .end local v1    # "nameSize":I
    .end local v4    # "protocol":Lcom/android/okhttp/Protocol;
    :cond_1
    return-object v5
.end method

.method public static get()Lcom/android/okhttp/internal/Platform;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/okhttp/internal/Platform;->PLATFORM:Lcom/android/okhttp/internal/Platform;

    return-object v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "address"    # Ljava/net/InetSocketAddress;
    .param p3, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 175
    return-void
.end method

.method public enableTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 5
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "uriHost"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 83
    sget-object v0, Lcom/android/okhttp/internal/Platform;->SET_USE_SESSION_TICKETS:Lcom/android/okhttp/internal/OptionalMethod;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, v1}, Lcom/android/okhttp/internal/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/okhttp/internal/Platform;->SET_HOSTNAME:Lcom/android/okhttp/internal/OptionalMethod;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-virtual {v0, p1, v1}, Lcom/android/okhttp/internal/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public getNpnSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Lcom/android/okio/ByteString;
    .locals 8
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 116
    sget-object v4, Lcom/android/okhttp/internal/Platform;->GET_ALPN_SELECTED_PROTOCOL:Lcom/android/okhttp/internal/OptionalMethod;

    invoke-virtual {v4, p1}, Lcom/android/okhttp/internal/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    move-result v1

    .line 117
    .local v1, "alpnSupported":Z
    sget-object v4, Lcom/android/okhttp/internal/Platform;->GET_NPN_SELECTED_PROTOCOL:Lcom/android/okhttp/internal/OptionalMethod;

    invoke-virtual {v4, p1}, Lcom/android/okhttp/internal/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    move-result v3

    .line 118
    .local v3, "npnSupported":Z
    if-nez v1, :cond_0

    if-nez v3, :cond_0

    move-object v4, v5

    .line 137
    :goto_0
    return-object v4

    .line 123
    :cond_0
    if-eqz v1, :cond_1

    .line 124
    sget-object v4, Lcom/android/okhttp/internal/Platform;->GET_ALPN_SELECTED_PROTOCOL:Lcom/android/okhttp/internal/OptionalMethod;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v6}, Lcom/android/okhttp/internal/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    .line 126
    .local v0, "alpnResult":[B
    if-eqz v0, :cond_1

    .line 127
    invoke-static {v0}, Lcom/android/okio/ByteString;->of([B)Lcom/android/okio/ByteString;

    move-result-object v4

    goto :goto_0

    .line 130
    .end local v0    # "alpnResult":[B
    :cond_1
    if-eqz v3, :cond_2

    .line 131
    sget-object v4, Lcom/android/okhttp/internal/Platform;->GET_NPN_SELECTED_PROTOCOL:Lcom/android/okhttp/internal/OptionalMethod;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v6}, Lcom/android/okhttp/internal/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v2, v4

    check-cast v2, [B

    .line 133
    .local v2, "npnResult":[B
    if-eqz v2, :cond_2

    .line 134
    invoke-static {v2}, Lcom/android/okio/ByteString;->of([B)Lcom/android/okio/ByteString;

    move-result-object v4

    goto :goto_0

    .end local v2    # "npnResult":[B
    :cond_2
    move-object v4, v5

    .line 137
    goto :goto_0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    const-string v0, "X-Android"

    return-object v0
.end method

.method public logW(Ljava/lang/String;)V
    .locals 0
    .param p1, "warning"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p1}, Ljava/lang/System;->logW(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public newDeflaterOutputStream(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)Ljava/io/OutputStream;
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "deflater"    # Ljava/util/zip/Deflater;
    .param p3, "syncFlush"    # Z

    .prologue
    .line 169
    new-instance v0, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v0, p1, p2, p3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V

    return-object v0
.end method

.method public setNpnProtocols(Ljavax/net/ssl/SSLSocket;Ljava/util/List;)V
    .locals 7
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "npnProtocols":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/Protocol;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 145
    sget-object v3, Lcom/android/okhttp/internal/Platform;->SET_ALPN_PROTOCOLS:Lcom/android/okhttp/internal/OptionalMethod;

    invoke-virtual {v3, p1}, Lcom/android/okhttp/internal/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    move-result v0

    .line 146
    .local v0, "alpnSupported":Z
    sget-object v3, Lcom/android/okhttp/internal/Platform;->SET_NPN_PROTOCOLS:Lcom/android/okhttp/internal/OptionalMethod;

    invoke-virtual {v3, p1}, Lcom/android/okhttp/internal/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    move-result v1

    .line 147
    .local v1, "npnSupported":Z
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-static {p2}, Lcom/android/okhttp/internal/Platform;->concatLengthPrefixed(Ljava/util/List;)[B

    move-result-object v2

    .line 152
    .local v2, "protocols":[B
    if-eqz v0, :cond_2

    .line 153
    sget-object v3, Lcom/android/okhttp/internal/Platform;->SET_ALPN_PROTOCOLS:Lcom/android/okhttp/internal/OptionalMethod;

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-virtual {v3, p1, v4}, Lcom/android/okhttp/internal/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_2
    if-eqz v1, :cond_0

    .line 157
    sget-object v3, Lcom/android/okhttp/internal/Platform;->SET_NPN_PROTOCOLS:Lcom/android/okhttp/internal/OptionalMethod;

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-virtual {v3, p1, v4}, Lcom/android/okhttp/internal/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public supportTlsIntolerantServer(Ljavax/net/ssl/SSLSocket;)V
    .locals 10
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    const/4 v9, 0x0

    .line 90
    const-string v1, "TLS_FALLBACK_SCSV"

    .line 91
    .local v1, "fallbackScsv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 92
    .local v4, "socketSupportsFallbackScsv":Z
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, "supportedCipherSuites":[Ljava/lang/String;
    array-length v7, v6

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 94
    aget-object v5, v6, v2

    .line 95
    .local v5, "supportedCipherSuite":Ljava/lang/String;
    const-string v7, "TLS_FALLBACK_SCSV"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 96
    const/4 v4, 0x1

    .line 100
    .end local v5    # "supportedCipherSuite":Ljava/lang/String;
    :cond_0
    if-eqz v4, :cond_1

    .line 102
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "enabledCipherSuites":[Ljava/lang/String;
    array-length v7, v0

    add-int/lit8 v7, v7, 0x1

    new-array v3, v7, [Ljava/lang/String;

    .line 104
    .local v3, "newEnabledCipherSuites":[Ljava/lang/String;
    array-length v7, v0

    invoke-static {v0, v9, v3, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    const-string v8, "TLS_FALLBACK_SCSV"

    aput-object v8, v3, v7

    .line 107
    invoke-virtual {p1, v3}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 109
    .end local v0    # "enabledCipherSuites":[Ljava/lang/String;
    .end local v3    # "newEnabledCipherSuites":[Ljava/lang/String;
    :cond_1
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "SSLv3"

    aput-object v8, v7, v9

    invoke-virtual {p1, v7}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 110
    return-void

    .line 93
    .restart local v5    # "supportedCipherSuite":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public tagSocket(Ljava/net/Socket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldalvik/system/SocketTagger;->tag(Ljava/net/Socket;)V

    .line 72
    return-void
.end method

.method public toUriLenient(Ljava/net/URL;)Ljava/net/URI;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p1}, Ljava/net/URL;->toURILenient()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public untagSocket(Ljava/net/Socket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldalvik/system/SocketTagger;->untag(Ljava/net/Socket;)V

    .line 76
    return-void
.end method
