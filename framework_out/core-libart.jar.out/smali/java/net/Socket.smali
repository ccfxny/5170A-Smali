.class public Ljava/net/Socket;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final DEBUG:Z

.field private static factory:Ljava/net/SocketImplFactory;

.field private static inx:J

.field private static mSocketCheckHandler:Ljava/net/SocketCheckHandler;


# instance fields
.field private final connectLock:Ljava/lang/Object;

.field final impl:Ljava/net/SocketImpl;

.field private isBound:Z

.field private isClosed:Z

.field private isConnected:Z

.field volatile isCreated:Z

.field private isInputShutdown:Z

.field private isOutputShutdown:Z

.field private localAddress:Ljava/net/InetAddress;

.field private final proxy:Ljava/net/Proxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const-wide/16 v0, 0x0

    sput-wide v0, Ljava/net/Socket;->inx:J

    .line 55
    const/4 v0, 0x0

    sput-object v0, Ljava/net/Socket;->mSocketCheckHandler:Ljava/net/SocketCheckHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    .line 43
    iput-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    .line 44
    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    .line 45
    iput-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    .line 46
    iput-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    .line 47
    iput-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    .line 49
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->connectLock:Ljava/lang/Object;

    .line 67
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    .line 69
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/net/PlainSocketImpl;

    invoke-direct {v0}, Ljava/net/PlainSocketImpl;-><init>()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "dstName"    # Ljava/lang/String;
    .param p2, "dstPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 161
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 6
    .param p1, "dstName"    # Ljava/lang/String;
    .param p2, "dstPort"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 188
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->tryAllAddresses(Ljava/lang/String;ILjava/net/InetAddress;IZ)V

    .line 189
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 6
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "streaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 218
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->tryAllAddresses(Ljava/lang/String;ILjava/net/InetAddress;IZ)V

    .line 219
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 6
    .param p1, "dstAddress"    # Ljava/net/InetAddress;
    .param p2, "dstPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 235
    invoke-direct {p0, p1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    .line 236
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    .line 237
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .locals 6
    .param p1, "dstAddress"    # Ljava/net/InetAddress;
    .param p2, "dstPort"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 259
    invoke-direct {p0, p1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    .line 260
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    .line 261
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;IZ)V
    .locals 6
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "streaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 284
    invoke-direct {p0, p1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    .line 285
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    .line 286
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;)V
    .locals 3
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    .line 43
    iput-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    .line 44
    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    .line 45
    iput-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    .line 46
    iput-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    .line 47
    iput-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    .line 49
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->connectLock:Ljava/lang/Object;

    .line 91
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_1

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid proxy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    iput-object p1, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    .line 95
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_2

    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 96
    return-void

    .line 95
    :cond_2
    new-instance v0, Ljava/net/PlainSocketImpl;

    invoke-direct {v0, p1}, Ljava/net/PlainSocketImpl;-><init>(Ljava/net/Proxy;)V

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/net/SocketImpl;)V
    .locals 1
    .param p1, "impl"    # Ljava/net/SocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    .line 43
    iput-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    .line 44
    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    .line 45
    iput-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    .line 46
    iput-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    .line 47
    iput-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    .line 49
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->connectLock:Ljava/lang/Object;

    .line 297
    iput-object p1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    .line 299
    return-void
.end method

.method private cacheLocalAddress()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1044
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    iget-object v0, v0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->getSocketLocalAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    .line 1045
    return-void
.end method

.method private checkDestination(Ljava/net/InetAddress;I)V
    .locals 3
    .param p1, "destAddr"    # Ljava/net/InetAddress;
    .param p2, "dstPort"    # I

    .prologue
    .line 311
    if-ltz p2, :cond_0

    const v0, 0xffff

    if-le p2, v0, :cond_1

    .line 312
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_1
    return-void
.end method

.method private checkOpenAndCreate(Z)V
    .locals 3
    .param p1, "create"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 684
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 685
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 687
    :cond_0
    if-nez p1, :cond_1

    .line 688
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 689
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is not connected"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 699
    :cond_1
    iget-boolean v1, p0, Ljava/net/Socket;->isCreated:Z

    if-eqz v1, :cond_3

    .line 715
    :cond_2
    :goto_0
    return-void

    .line 702
    :cond_3
    monitor-enter p0

    .line 703
    :try_start_0
    iget-boolean v1, p0, Ljava/net/Socket;->isCreated:Z

    if-eqz v1, :cond_4

    .line 704
    monitor-exit p0

    goto :goto_0

    .line 714
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 707
    :cond_4
    :try_start_1
    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->create(Z)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 713
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Ljava/net/Socket;->isCreated:Z

    .line 714
    monitor-exit p0

    goto :goto_0

    .line 708
    :catch_0
    move-exception v0

    .line 709
    .local v0, "e":Ljava/net/SocketException;
    throw v0

    .line 710
    .end local v0    # "e":Ljava/net/SocketException;
    :catch_1
    move-exception v0

    .line 711
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/net/SocketException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private isEmailSendPort(I)Z
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 1125
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1d1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x24b

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized setSocketImplFactory(Ljava/net/SocketImplFactory;)V
    .locals 3
    .param p0, "fac"    # Ljava/net/SocketImplFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 504
    const-class v1, Ljava/net/Socket;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_0

    .line 505
    new-instance v0, Ljava/net/SocketException;

    const-string v2, "Factory already set"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 507
    :cond_0
    :try_start_1
    sput-object p0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    monitor-exit v1

    return-void
.end method

.method public static setSocketMomCheckHandler(Ljava/net/SocketCheckHandler;)V
    .locals 0
    .param p0, "socketCheckHandler"    # Ljava/net/SocketCheckHandler;

    .prologue
    .line 1114
    sput-object p0, Ljava/net/Socket;->mSocketCheckHandler:Ljava/net/SocketCheckHandler;

    .line 1115
    return-void
.end method

.method private startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V
    .locals 5
    .param p1, "dstAddress"    # Ljava/net/InetAddress;
    .param p2, "dstPort"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .param p5, "streaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 596
    if-ltz p4, :cond_0

    const v2, 0xffff

    if-le p4, v2, :cond_1

    .line 597
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Local port out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 600
    :cond_1
    if-nez p3, :cond_4

    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .line 601
    .local v0, "addr":Ljava/net/InetAddress;
    :goto_0
    monitor-enter p0

    .line 602
    :try_start_0
    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2, p5}, Ljava/net/SocketImpl;->create(Z)V

    .line 603
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/net/Socket;->isCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    if-eqz p5, :cond_2

    :try_start_1
    invoke-direct {p0}, Ljava/net/Socket;->usingSocks()Z

    move-result v2

    if-nez v2, :cond_3

    .line 606
    :cond_2
    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2, v0, p4}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 608
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/net/Socket;->isBound:Z

    .line 609
    invoke-direct {p0}, Ljava/net/Socket;->cacheLocalAddress()V

    .line 610
    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2, p1, p2}, Ljava/net/SocketImpl;->connect(Ljava/net/InetAddress;I)V

    .line 611
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/net/Socket;->isConnected:Z

    .line 612
    invoke-direct {p0}, Ljava/net/Socket;->cacheLocalAddress()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 617
    :try_start_2
    monitor-exit p0

    .line 618
    return-void

    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_4
    move-object v0, p3

    .line 600
    goto :goto_0

    .line 613
    .restart local v0    # "addr":Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 614
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2}, Ljava/net/SocketImpl;->close()V

    .line 615
    throw v1

    .line 617
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private tryAllAddresses(Ljava/lang/String;ILjava/net/InetAddress;IZ)V
    .locals 8
    .param p1, "dstName"    # Ljava/lang/String;
    .param p2, "dstPort"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .param p5, "streaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v6

    .line 124
    .local v6, "dstAddresses":[Ljava/net/InetAddress;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_0

    .line 125
    aget-object v1, v6, v7

    .line 127
    .local v1, "dstAddress":Ljava/net/InetAddress;
    :try_start_0
    invoke-direct {p0, v1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 128
    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_1
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 124
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "dstAddress":Ljava/net/InetAddress;
    :cond_0
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    aget-object v1, v6, v0

    .line 137
    .restart local v1    # "dstAddress":Ljava/net/InetAddress;
    invoke-direct {p0, v1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 138
    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    goto :goto_1
.end method

.method private usingSocks()Z
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

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


# virtual methods
.method accepted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1039
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    iput-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    .line 1040
    invoke-direct {p0}, Ljava/net/Socket;->cacheLocalAddress()V

    .line 1041
    return-void
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .locals 7
    .param p1, "localAddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 786
    invoke-direct {p0, v4}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 787
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 788
    new-instance v4, Ljava/net/BindException;

    const-string v5, "Socket is already bound"

    invoke-direct {v4, v5}, Ljava/net/BindException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 793
    :cond_0
    if-nez p1, :cond_1

    .line 794
    const/4 v3, 0x0

    .line 795
    .local v3, "port":I
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .line 808
    .local v0, "addr":Ljava/net/InetAddress;
    :goto_0
    monitor-enter p0

    .line 810
    :try_start_0
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4, v0, v3}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 811
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/Socket;->isBound:Z

    .line 812
    invoke-direct {p0}, Ljava/net/Socket;->cacheLocalAddress()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 818
    return-void

    .line 797
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v3    # "port":I
    :cond_1
    instance-of v4, p1, Ljava/net/InetSocketAddress;

    if-nez v4, :cond_2

    .line 798
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Local address not an InetSocketAddress: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    move-object v2, p1

    .line 801
    check-cast v2, Ljava/net/InetSocketAddress;

    .line 802
    .local v2, "inetAddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .restart local v0    # "addr":Ljava/net/InetAddress;
    if-nez v0, :cond_3

    .line 803
    new-instance v4, Ljava/net/UnknownHostException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Host is unresolved: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 805
    :cond_3
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    .restart local v3    # "port":I
    goto :goto_0

    .line 813
    .end local v2    # "inetAddr":Ljava/net/InetSocketAddress;
    :catch_0
    move-exception v1

    .line 814
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4}, Ljava/net/SocketImpl;->close()V

    .line 815
    throw v1

    .line 817
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    .line 328
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    .line 329
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    monitor-exit p0

    return-void

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "remoteAddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 845
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 846
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 10
    .param p1, "remoteAddr"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 867
    invoke-direct {p0, v4}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 868
    if-gez p2, :cond_0

    .line 869
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "timeout < 0"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 871
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 872
    new-instance v4, Ljava/net/SocketException;

    const-string v5, "Already connected"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 874
    :cond_1
    if-nez p1, :cond_2

    .line 875
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "remoteAddr == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 878
    :cond_2
    instance-of v4, p1, Ljava/net/InetSocketAddress;

    if-nez v4, :cond_3

    .line 879
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote address not an InetSocketAddress: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    move-object v2, p1

    .line 882
    check-cast v2, Ljava/net/InetSocketAddress;

    .line 884
    .local v2, "inetAddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .local v0, "addr":Ljava/net/InetAddress;
    if-nez v0, :cond_4

    .line 885
    new-instance v4, Ljava/net/UnknownHostException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Host is unresolved: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 887
    :cond_4
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    .line 889
    .local v3, "port":I
    invoke-direct {p0, v0, v3}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    .line 892
    sget-object v4, Ljava/net/Socket;->mSocketCheckHandler:Ljava/net/SocketCheckHandler;

    if-eqz v4, :cond_5

    invoke-direct {p0, v3}, Ljava/net/Socket;->isEmailSendPort(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 893
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Match Mom Check"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 894
    sget-object v4, Ljava/net/Socket;->mSocketCheckHandler:Ljava/net/SocketCheckHandler;

    invoke-interface {v4}, Ljava/net/SocketCheckHandler;->checkEmailSendRequest()Z

    move-result v4

    if-nez v4, :cond_5

    .line 895
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Fail to send due to mom user permission"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 896
    new-instance v4, Ljava/net/UnknownHostException;

    const-string v5, "User dendied by MoM"

    invoke-direct {v4, v5}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 901
    :cond_5
    iget-object v5, p0, Ljava/net/Socket;->connectLock:Ljava/lang/Object;

    monitor-enter v5

    .line 903
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v4

    if-nez v4, :cond_7

    .line 908
    invoke-direct {p0}, Ljava/net/Socket;->usingSocks()Z

    move-result v4

    if-nez v4, :cond_6

    .line 909
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    sget-object v6, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 911
    :cond_6
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/Socket;->isBound:Z

    .line 916
    :cond_7
    sget-wide v6, Ljava/net/Socket;->inx:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    sput-wide v6, Ljava/net/Socket;->inx:J

    .line 919
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4, p1, p2}, Ljava/net/SocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 920
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/Socket;->isConnected:Z

    .line 921
    invoke-direct {p0}, Ljava/net/Socket;->cacheLocalAddress()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 932
    :try_start_1
    monitor-exit v5

    .line 933
    return-void

    .line 925
    :catch_0
    move-exception v1

    .line 929
    .local v1, "e":Ljava/io/IOException;
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4}, Ljava/net/SocketImpl;->close()V

    .line 930
    throw v1

    .line 932
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .prologue
    .line 1056
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    iget-object v0, v0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    const/4 v0, 0x0

    .line 359
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 374
    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket input is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getKeepAlive()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 384
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 385
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    const/4 v0, -0x1

    .line 404
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v0

    goto :goto_0
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    .prologue
    .line 724
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 725
    const/4 v0, 0x0

    .line 727
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_0
.end method

.method public getOOBInline()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 996
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 997
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 419
    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket output is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 430
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    const/4 v0, 0x0

    .line 433
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized getReceiveBufferSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 455
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 456
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    .prologue
    .line 737
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    const/4 v0, 0x0

    .line 740
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_0
.end method

.method public getReuseAddress()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 980
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 981
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getSendBufferSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 463
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 464
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSoLinger()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 441
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 443
    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 444
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 445
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 447
    :goto_0
    return v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public declared-synchronized getSoSndTimeout()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1090
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 1091
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1005

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 1090
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSoTimeout()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 471
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 472
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTcpNoDelay()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 479
    invoke-direct {p0, v1}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 480
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getTrafficClass()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1015
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 1016
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 750
    iget-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 768
    iget-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 759
    iget-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    return v0
.end method

.method public isInputShutdown()Z
    .locals 1

    .prologue
    .line 954
    iget-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .prologue
    .line 965
    iget-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    return v0
.end method

.method public onBind(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "localAddress"    # Ljava/net/InetAddress;
    .param p2, "localPort"    # I

    .prologue
    .line 827
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    .line 828
    iput-object p1, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    .line 829
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, p1, p2}, Ljava/net/SocketImpl;->onBind(Ljava/net/InetAddress;I)V

    .line 830
    return-void
.end method

.method public onClose()V
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    .line 347
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    .line 348
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->onClose()V

    .line 349
    return-void
.end method

.method public onConnect(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/InetAddress;
    .param p2, "remotePort"    # I

    .prologue
    .line 942
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    .line 943
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, p1, p2}, Ljava/net/SocketImpl;->onConnect(Ljava/net/InetAddress;I)V

    .line 944
    return-void
.end method

.method public sendUrgentData(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1029
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/SocketImpl;->sendUrgentData(I)V

    .line 1030
    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 3
    .param p1, "keepAlive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_0

    .line 488
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 489
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x8

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 491
    :cond_0
    return-void
.end method

.method public setOOBInline(Z)V
    .locals 3
    .param p1, "oobinline"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 988
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 989
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1003

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 990
    return-void
.end method

.method public setPerformancePreferences(III)V
    .locals 0
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .prologue
    .line 1082
    return-void
.end method

.method public declared-synchronized setReceiveBufferSize(I)V
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 526
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 527
    if-ge p1, v1, :cond_0

    .line 528
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 530
    :cond_0
    :try_start_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CDS]SO_RCVBUF:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1002

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    monitor-exit p0

    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 3
    .param p1, "reuse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 972
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 973
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 974
    return-void
.end method

.method public declared-synchronized setSendBufferSize(I)V
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 514
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 515
    if-ge p1, v1, :cond_0

    .line 516
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 519
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1001

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    monitor-exit p0

    return-void
.end method

.method public setSoLinger(ZI)V
    .locals 4
    .param p1, "on"    # Z
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x80

    .line 539
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 541
    if-eqz p1, :cond_0

    if-gez p2, :cond_0

    .line 542
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CDS]SO_LINGER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 545
    if-eqz p1, :cond_1

    .line 546
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 550
    :goto_0
    return-void

    .line 548
    :cond_1
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public declared-synchronized setSoSndTimeout(I)V
    .locals 3
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1102
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 1103
    if-gez p1, :cond_0

    .line 1104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1107
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1005

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1108
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setSoTimeout(I)V
    .locals 3
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 558
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 559
    if-gez p1, :cond_0

    .line 560
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 565
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1006

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 566
    monitor-exit p0

    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 572
    invoke-direct {p0, v2}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 573
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 574
    return-void
.end method

.method public setTrafficClass(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1004
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 1005
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 1006
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value doesn\'t fit in an unsigned byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1008
    :cond_1
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1009
    return-void
.end method

.method public shutdownInput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 649
    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket input is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 652
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 653
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->shutdownInput()V

    .line 654
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    .line 655
    return-void
.end method

.method public shutdownOutput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 668
    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket output is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 672
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->shutdownOutput()V

    .line 673
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    .line 674
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 632
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    const-string v0, "Socket[unconnected]"

    .line 635
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
