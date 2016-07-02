.class public Ljava/net/PlainSocketImpl;
.super Ljava/net/SocketImpl;
.source "PlainSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/PlainSocketImpl$PlainSocketOutputStream;,
        Ljava/net/PlainSocketImpl$PlainSocketInputStream;
    }
.end annotation


# static fields
.field private static lastConnectedAddress:Ljava/net/InetAddress;

.field private static lastConnectedPort:I


# instance fields
.field private final guard:Ldalvik/system/CloseGuard;

.field private proxy:Ljava/net/Proxy;

.field private shutdownInput:Z

.field private streaming:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    invoke-direct {p0, v0}, Ljava/net/PlainSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/PlainSocketImpl;->streaming:Z

    .line 57
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 60
    iput-object p1, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 61
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "localport"    # I
    .param p3, "addr"    # Ljava/net/InetAddress;
    .param p4, "port"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/PlainSocketImpl;->streaming:Z

    .line 57
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 76
    iput-object p1, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 77
    iput p2, p0, Ljava/net/PlainSocketImpl;->localport:I

    .line 78
    iput-object p3, p0, Ljava/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 79
    iput p4, p0, Ljava/net/PlainSocketImpl;->port:I

    .line 80
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;)V
    .locals 1
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 67
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    invoke-direct {p0, v0}, Ljava/net/PlainSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    .line 68
    iput-object p1, p0, Ljava/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    .line 69
    return-void
.end method

.method static synthetic access$000(Ljava/net/PlainSocketImpl;[BII)I
    .locals 1
    .param p0, "x0"    # Ljava/net/PlainSocketImpl;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Ljava/net/PlainSocketImpl;->read([BII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/net/PlainSocketImpl;[BII)V
    .locals 0
    .param p0, "x0"    # Ljava/net/PlainSocketImpl;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Ljava/net/PlainSocketImpl;->write([BII)V

    return-void
.end method

.method private checkNotClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    return-void
.end method

.method private connect(Ljava/net/InetAddress;II)V
    .locals 2
    .param p1, "anAddr"    # Ljava/net/InetAddress;
    .param p2, "aPort"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 186
    .local v0, "normalAddr":Ljava/net/InetAddress;
    :goto_0
    iget-boolean v1, p0, Ljava/net/PlainSocketImpl;->streaming:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->usingSocks()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Ljava/net/PlainSocketImpl;->socksConnect(Ljava/net/InetAddress;II)V

    .line 191
    :goto_1
    iput-object v0, p0, Ljava/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 192
    iput p2, p0, Ljava/net/PlainSocketImpl;->port:I

    .line 193
    return-void

    .end local v0    # "normalAddr":Ljava/net/InetAddress;
    :cond_0
    move-object v0, p1

    .line 185
    goto :goto_0

    .line 189
    .restart local v0    # "normalAddr":Ljava/net/InetAddress;
    :cond_1
    iget-object v1, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1, v0, p2, p3}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V

    goto :goto_1
.end method

.method public static native nativeTraceBegin(Ljava/lang/String;I)V
.end method

.method public static native nativeTraceEnd()V
.end method

.method private read([BII)I
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v9, -0x1

    const/4 v5, 0x0

    .line 487
    const-string v1, "read"

    invoke-static {v1, p3}, Ljava/net/PlainSocketImpl;->nativeTraceBegin(Ljava/lang/String;I)V

    .line 488
    if-nez p3, :cond_0

    .line 509
    :goto_0
    return v5

    .line 491
    :cond_0
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 492
    iget-boolean v1, p0, Ljava/net/PlainSocketImpl;->shutdownInput:Z

    if-eqz v1, :cond_1

    .line 494
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[CDS]shutdownInput in read"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v5, v9

    .line 495
    goto :goto_0

    .line 497
    :cond_1
    iget-object v1, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v7, v5

    invoke-static/range {v0 .. v7}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;[BIIILjava/net/DatagramPacket;Z)I

    move-result v8

    .line 499
    .local v8, "readCount":I
    if-nez v8, :cond_2

    .line 501
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[CDS]read byte is 0"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 502
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-direct {v0}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v0

    .line 505
    :cond_2
    if-ne v8, v9, :cond_3

    .line 506
    iput-boolean v0, p0, Ljava/net/PlainSocketImpl;->shutdownInput:Z

    .line 508
    :cond_3
    invoke-static {}, Ljava/net/PlainSocketImpl;->nativeTraceEnd()V

    move v5, v8

    .line 509
    goto :goto_0
.end method

.method private socksBind()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    :try_start_0
    iget-object v3, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksGetServerAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksGetServerPort()I

    move-result v5

    invoke-static {v3, v4, v5}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    sget-object v3, Ljava/net/PlainSocketImpl;->lastConnectedAddress:Ljava/net/InetAddress;

    if-nez v3, :cond_0

    .line 399
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "Invalid SOCKS client"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to connect to SOCKS server"

    invoke-direct {v3, v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 403
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x2

    sget-object v4, Ljava/net/PlainSocketImpl;->lastConnectedAddress:Ljava/net/InetAddress;

    sget v5, Ljava/net/PlainSocketImpl;->lastConnectedPort:I

    invoke-direct {p0, v3, v4, v5}, Ljava/net/PlainSocketImpl;->socksSendRequest(ILjava/net/InetAddress;I)V

    .line 405
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksReadReply()Ljava/net/Socks4Message;

    move-result-object v1

    .line 407
    .local v1, "reply":Ljava/net/Socks4Message;
    invoke-virtual {v1}, Ljava/net/Socks4Message;->getCommandOrResult()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_1

    .line 408
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/net/Socks4Message;->getCommandOrResult()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/net/Socks4Message;->getErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 413
    :cond_1
    invoke-virtual {v1}, Ljava/net/Socks4Message;->getIP()I

    move-result v3

    if-nez v3, :cond_2

    .line 414
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksGetServerAddress()Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Ljava/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 423
    :goto_0
    invoke-virtual {v1}, Ljava/net/Socks4Message;->getPort()I

    move-result v3

    iput v3, p0, Ljava/net/PlainSocketImpl;->localport:I

    .line 424
    return-void

    .line 419
    :cond_2
    const/4 v3, 0x4

    new-array v2, v3, [B

    .line 420
    .local v2, "replyBytes":[B
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/net/Socks4Message;->getIP()I

    move-result v4

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v3, v4, v5}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 421
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Ljava/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    goto :goto_0
.end method

.method private socksConnect(Ljava/net/InetAddress;II)V
    .locals 4
    .param p1, "applicationServerAddress"    # Ljava/net/InetAddress;
    .param p2, "applicationServerPort"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    :try_start_0
    iget-object v1, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksGetServerAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksGetServerPort()I

    move-result v3

    invoke-static {v1, v2, v3, p3}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    invoke-direct {p0, p1, p2}, Ljava/net/PlainSocketImpl;->socksRequestConnection(Ljava/net/InetAddress;I)V

    .line 334
    sput-object p1, Ljava/net/PlainSocketImpl;->lastConnectedAddress:Ljava/net/InetAddress;

    .line 335
    sput p2, Ljava/net/PlainSocketImpl;->lastConnectedPort:I

    .line 336
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "SOCKS connection failed"

    invoke-direct {v1, v2, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private socksGetServerAddress()Ljava/net/InetAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 314
    iget-object v2, p0, Ljava/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 315
    .local v0, "addr":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "proxyName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 317
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 319
    :cond_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2
.end method

.method private socksGetServerPort()I
    .locals 2

    .prologue
    .line 302
    iget-object v1, p0, Ljava/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 303
    .local v0, "addr":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    return v1
.end method

.method private socksReadReply()Ljava/net/Socks4Message;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    .line 443
    new-instance v2, Ljava/net/Socks4Message;

    invoke-direct {v2}, Ljava/net/Socks4Message;-><init>()V

    .line 444
    .local v2, "reply":Ljava/net/Socks4Message;
    const/4 v0, 0x0

    .line 445
    .local v0, "bytesRead":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 446
    invoke-virtual {p0}, Ljava/net/PlainSocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/Socks4Message;->getBytes()[B

    move-result-object v4

    rsub-int/lit8 v5, v0, 0x8

    invoke-virtual {v3, v4, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 448
    .local v1, "count":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 453
    .end local v1    # "count":I
    :cond_0
    if-eq v6, v0, :cond_2

    .line 454
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "Malformed reply from SOCKS server"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 451
    .restart local v1    # "count":I
    :cond_1
    add-int/2addr v0, v1

    .line 452
    goto :goto_0

    .line 456
    .end local v1    # "count":I
    :cond_2
    return-object v2
.end method

.method private socksRequestConnection(Ljava/net/InetAddress;I)V
    .locals 3
    .param p1, "applicationServerAddress"    # Ljava/net/InetAddress;
    .param p2, "applicationServerPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, p2}, Ljava/net/PlainSocketImpl;->socksSendRequest(ILjava/net/InetAddress;I)V

    .line 346
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksReadReply()Ljava/net/Socks4Message;

    move-result-object v0

    .line 347
    .local v0, "reply":Ljava/net/Socks4Message;
    invoke-virtual {v0}, Ljava/net/Socks4Message;->getCommandOrResult()I

    move-result v1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    .line 348
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/Socks4Message;->getCommandOrResult()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/Socks4Message;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 350
    :cond_0
    return-void
.end method

.method private socksSendRequest(ILjava/net/InetAddress;I)V
    .locals 5
    .param p1, "command"    # I
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    new-instance v0, Ljava/net/Socks4Message;

    invoke-direct {v0}, Ljava/net/Socks4Message;-><init>()V

    .line 431
    .local v0, "request":Ljava/net/Socks4Message;
    invoke-virtual {v0, p1}, Ljava/net/Socks4Message;->setCommandOrResult(I)V

    .line 432
    invoke-virtual {v0, p3}, Ljava/net/Socks4Message;->setPort(I)V

    .line 433
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/Socks4Message;->setIP([B)V

    .line 434
    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/net/Socks4Message;->setUserId(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Ljava/net/PlainSocketImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/Socks4Message;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/net/Socks4Message;->getLength()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 437
    return-void
.end method

.method private usingSocks()Z
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private write([BII)V
    .locals 9
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 516
    const-string v0, "write"

    invoke-static {v0, p3}, Ljava/net/PlainSocketImpl;->nativeTraceBegin(Ljava/lang/String;I)V

    .line 517
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 518
    iget-boolean v0, p0, Ljava/net/PlainSocketImpl;->streaming:Z

    if-eqz v0, :cond_5

    .line 519
    :goto_0
    if-lez p3, :cond_4

    .line 520
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, v4

    invoke-static/range {v0 .. v6}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    move-result v7

    .line 524
    .local v7, "bytesWritten":I
    if-nez v7, :cond_0

    .line 525
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CDS]write is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 527
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "write timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_0
    if-eq v7, p3, :cond_1

    .line 532
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CDS]write is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 534
    const-string v0, "SO_SND_TIMEOUT"

    const-string v1, "0"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 536
    .local v8, "exceptionCount":I
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CDS]write exceptionCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 538
    if-nez v8, :cond_2

    .line 548
    .end local v8    # "exceptionCount":I
    :cond_1
    :goto_1
    sub-int/2addr p3, v7

    .line 549
    add-int/2addr p2, v7

    .line 550
    goto/16 :goto_0

    .line 540
    .restart local v8    # "exceptionCount":I
    :cond_2
    add-int/lit8 v8, v8, -0x1

    if-nez v8, :cond_3

    .line 541
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "write byteCount err"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_3
    const-string v0, "SO_SND_TIMEOUT"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 551
    .end local v7    # "bytesWritten":I
    .end local v8    # "exceptionCount":I
    :cond_4
    invoke-static {}, Ljava/net/PlainSocketImpl;->nativeTraceEnd()V

    .line 559
    :goto_2
    return-void

    .line 556
    :cond_5
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v5, p0, Ljava/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    iget v6, p0, Ljava/net/PlainSocketImpl;->port:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    .line 557
    invoke-static {}, Ljava/net/PlainSocketImpl;->nativeTraceEnd()V

    goto :goto_2
.end method


# virtual methods
.method protected accept(Ljava/net/SocketImpl;)V
    .locals 5
    .param p1, "newImpl"    # Ljava/net/SocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->usingSocks()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 88
    check-cast v3, Ljava/net/PlainSocketImpl;

    invoke-direct {v3}, Ljava/net/PlainSocketImpl;->socksBind()V

    .line 89
    check-cast p1, Ljava/net/PlainSocketImpl;

    .end local p1    # "newImpl":Ljava/net/SocketImpl;
    invoke-virtual {p1}, Ljava/net/PlainSocketImpl;->socksAccept()V

    .line 114
    :goto_0
    return-void

    .line 94
    .restart local p1    # "newImpl":Ljava/net/SocketImpl;
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2}, Ljava/net/InetSocketAddress;-><init>()V

    .line 95
    .local v2, "peerAddress":Ljava/net/InetSocketAddress;
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v3, v4, v2}, Llibcore/io/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 99
    .local v0, "clientFd":Ljava/io/FileDescriptor;
    iget-object v3, p1, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 101
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p1, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    .line 102
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    iput v3, p1, Ljava/net/SocketImpl;->port:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    const/16 v3, 0x1006

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 113
    iget-object v3, p1, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3}, Llibcore/io/IoBridge;->getSocketLocalPort(Ljava/io/FileDescriptor;)I

    move-result v3

    iput v3, p1, Ljava/net/SocketImpl;->localport:I

    goto :goto_0

    .line 103
    .end local v0    # "clientFd":Ljava/io/FileDescriptor;
    .end local v2    # "peerAddress":Ljava/net/InetSocketAddress;
    :catch_0
    move-exception v1

    .line 104
    .local v1, "errnoException":Landroid/system/ErrnoException;
    iget v3, v1, Landroid/system/ErrnoException;->errno:I

    sget v4, Landroid/system/OsConstants;->EAGAIN:I

    if-ne v3, v4, :cond_1

    .line 105
    new-instance v3, Ljava/net/SocketTimeoutException;

    invoke-direct {v3, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 107
    :cond_1
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v3

    throw v3
.end method

.method protected declared-synchronized available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->checkNotClosed()V

    .line 131
    iget-boolean v0, p0, Ljava/net/PlainSocketImpl;->shutdownInput:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 134
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->available(Ljava/io/FileDescriptor;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected bind(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2}, Llibcore/io/IoBridge;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 139
    if-eqz p2, :cond_0

    .line 140
    iput p2, p0, Ljava/net/PlainSocketImpl;->localport:I

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->getSocketLocalPort(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Ljava/net/PlainSocketImpl;->localport:I

    goto :goto_0
.end method

.method protected declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 154
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected connect(Ljava/lang/String;I)V
    .locals 1
    .param p1, "aHost"    # Ljava/lang/String;
    .param p2, "aPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/InetAddress;I)V

    .line 165
    return-void
.end method

.method protected connect(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "anAddr"    # Ljava/net/InetAddress;
    .param p2, "aPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/InetAddress;II)V

    .line 170
    return-void
.end method

.method protected connect(Ljava/net/SocketAddress;I)V
    .locals 3
    .param p1, "remoteAddr"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 462
    .local v0, "inetAddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-direct {p0, v1, v2, p2}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/InetAddress;II)V

    .line 463
    return-void
.end method

.method protected create(Z)V
    .locals 1
    .param p1, "streaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    iput-boolean p1, p0, Ljava/net/PlainSocketImpl;->streaming:Z

    .line 204
    invoke-static {p1}, Llibcore/io/IoBridge;->socket(Z)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 205
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 209
    :try_start_0
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 212
    :cond_0
    invoke-virtual {p0}, Ljava/net/PlainSocketImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 216
    return-void

    .line 214
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method protected declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->checkNotClosed()V

    .line 220
    new-instance v0, Ljava/net/PlainSocketImpl$PlainSocketInputStream;

    invoke-direct {v0, p0}, Ljava/net/PlainSocketImpl$PlainSocketInputStream;-><init>(Ljava/net/PlainSocketImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 1
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Llibcore/io/IoBridge;->getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->checkNotClosed()V

    .line 253
    new-instance v0, Ljava/net/PlainSocketImpl$PlainSocketOutputStream;

    invoke-direct {v0, p0}, Ljava/net/PlainSocketImpl$PlainSocketOutputStream;-><init>(Ljava/net/PlainSocketImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected listen(I)V
    .locals 3
    .param p1, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->usingSocks()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    :goto_0
    return-void

    .line 284
    :cond_0
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2, p1}, Llibcore/io/Os;->listen(Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method public onBind(Ljava/net/InetAddress;I)V
    .locals 0
    .param p1, "localAddress"    # Ljava/net/InetAddress;
    .param p2, "localPort"    # I

    .prologue
    .line 148
    iput p2, p0, Ljava/net/PlainSocketImpl;->localport:I

    .line 149
    return-void
.end method

.method public onClose()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 160
    return-void
.end method

.method public onConnect(Ljava/net/InetAddress;I)V
    .locals 0
    .param p1, "remoteAddress"    # Ljava/net/InetAddress;
    .param p2, "remotePort"    # I

    .prologue
    .line 197
    iput-object p1, p0, Ljava/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 198
    iput p2, p0, Ljava/net/PlainSocketImpl;->port:I

    .line 199
    return-void
.end method

.method protected sendUrgentData(I)V
    .locals 9
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [B

    const/4 v0, 0x0

    int-to-byte v1, p1

    aput-byte v1, v2, v0

    .line 474
    .local v2, "buffer":[B
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget v5, Landroid/system/OsConstants;->MSG_OOB:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    return-void

    .line 475
    .end local v2    # "buffer":[B
    :catch_0
    move-exception v8

    .line 476
    .local v8, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v8}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v0

    throw v0
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 1
    .param p1, "option"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 293
    return-void
.end method

.method protected shutdownInput()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/PlainSocketImpl;->shutdownInput:Z

    .line 369
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SHUT_RD:I

    invoke-interface {v1, v2, v3}, Llibcore/io/Os;->shutdown(Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method protected shutdownOutput()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SHUT_WR:I

    invoke-interface {v1, v2, v3}, Llibcore/io/Os;->shutdown(Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method public socksAccept()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksReadReply()Ljava/net/Socks4Message;

    move-result-object v0

    .line 357
    .local v0, "reply":Ljava/net/Socks4Message;
    invoke-virtual {v0}, Ljava/net/Socks4Message;->getCommandOrResult()I

    move-result v1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    .line 358
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/Socks4Message;->getCommandOrResult()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/Socks4Message;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 360
    :cond_0
    return-void
.end method

.method protected supportsUrgentData()Z
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x1

    return v0
.end method
