.class public final Llibcore/io/IoBridge;
.super Ljava/lang/Object;
.source "IoBridge.java"


# static fields
.field public static final JAVA_IP_MULTICAST_TTL:I = 0x11

.field public static final JAVA_MCAST_BLOCK_SOURCE:I = 0x17

.field public static final JAVA_MCAST_JOIN_GROUP:I = 0x13

.field public static final JAVA_MCAST_JOIN_SOURCE_GROUP:I = 0x15

.field public static final JAVA_MCAST_LEAVE_GROUP:I = 0x14

.field public static final JAVA_MCAST_LEAVE_SOURCE_GROUP:I = 0x16

.field public static final JAVA_MCAST_UNBLOCK_SOURCE:I = 0x18


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method private static IsBlocking(Ljava/io/FileDescriptor;)Z
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 693
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v3, Landroid/system/OsConstants;->F_GETFL:I

    invoke-interface {v2, p0, v3}, Llibcore/io/Os;->fcntlVoid(Ljava/io/FileDescriptor;I)I

    move-result v1

    .line 694
    .local v1, "flags":I
    sget v2, Landroid/system/OsConstants;->O_NONBLOCK:I

    and-int/2addr v2, v1

    sget v3, Landroid/system/OsConstants;->O_NONBLOCK:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    .line 695
    const/4 v2, 0x0

    .line 697
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 699
    .end local v1    # "flags":I
    :catch_0
    move-exception v0

    .line 700
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public static available(Ljava/io/FileDescriptor;)I
    .locals 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 62
    :try_start_0
    new-instance v0, Landroid/util/MutableInt;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Landroid/util/MutableInt;-><init>(I)V

    .line 63
    .local v0, "available":Landroid/util/MutableInt;
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v4, Landroid/system/OsConstants;->FIONREAD:I

    invoke-interface {v3, p0, v4, v0}, Llibcore/io/Os;->ioctlInt(Ljava/io/FileDescriptor;ILandroid/util/MutableInt;)I

    .line 64
    iget v3, v0, Landroid/util/MutableInt;->value:I

    if-gez v3, :cond_0

    .line 71
    const/4 v3, 0x0

    iput v3, v0, Landroid/util/MutableInt;->value:I

    .line 73
    :cond_0
    iget v2, v0, Landroid/util/MutableInt;->value:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v0    # "available":Landroid/util/MutableInt;
    :cond_1
    return v2

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "errnoException":Landroid/system/ErrnoException;
    iget v3, v1, Landroid/system/ErrnoException;->errno:I

    sget v4, Landroid/system/OsConstants;->ENOTTY:I

    if-eq v3, v4, :cond_1

    .line 79
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public static bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .locals 7
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 85
    instance-of v4, p1, Ljava/net/Inet6Address;

    if-eqz v4, :cond_1

    move-object v2, p1

    .line 86
    check-cast v2, Ljava/net/Inet6Address;

    .line 87
    .local v2, "inet6Address":Ljava/net/Inet6Address;
    invoke-virtual {v2}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v3

    .line 91
    .local v3, "nif":Ljava/net/NetworkInterface;
    if-nez v3, :cond_0

    .line 92
    new-instance v4, Ljava/net/SocketException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t bind to a link-local address without a scope id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 95
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v6

    invoke-static {v4, v5, v6}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 102
    .end local v2    # "inet6Address":Ljava/net/Inet6Address;
    .end local v3    # "nif":Ljava/net/NetworkInterface;
    :cond_1
    :try_start_1
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0, p1, p2}, Llibcore/io/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    return-void

    .line 96
    .restart local v2    # "inet6Address":Ljava/net/Inet6Address;
    .restart local v3    # "nif":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v1

    .line 97
    .local v1, "ex":Ljava/net/UnknownHostException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 103
    .end local v1    # "ex":Ljava/net/UnknownHostException;
    .end local v2    # "inet6Address":Ljava/net/Inet6Address;
    .end local v3    # "nif":Ljava/net/NetworkInterface;
    :catch_1
    move-exception v0

    .line 104
    .local v0, "errnoException":Landroid/system/ErrnoException;
    new-instance v4, Ljava/net/BindException;

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/net/BindException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static booleanFromInt(I)Z
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 343
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static booleanToInt(Z)I
    .locals 1
    .param p0, "b"    # Z

    .prologue
    .line 347
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    .locals 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    :try_start_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CDS]close["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Llibcore/io/IoBridge;->getSocketLocalPort(Ljava/io/FileDescriptor;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    .line 226
    :goto_1
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    .line 227
    .local v0, "intFd":I
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 228
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 229
    .local v1, "oldFd":Ljava/io/FileDescriptor;
    invoke-virtual {v1, v0}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 230
    invoke-static {v1}, Llibcore/io/AsynchronousCloseMonitor;->signalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 232
    :try_start_1
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, v1}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v2

    goto :goto_0

    .line 221
    .end local v0    # "intFd":I
    .end local v1    # "oldFd":Ljava/io/FileDescriptor;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .locals 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "inetAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v1}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "ex":Ljava/net/SocketTimeoutException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "inetAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "timeoutMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .prologue
    .line 127
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Llibcore/io/IoBridge;->connectErrno(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 137
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "errnoException":Landroid/system/ErrnoException;
    new-instance v2, Ljava/net/ConnectException;

    invoke-static {p1, p2, p3, v0}, Llibcore/io/IoBridge;->connectDetail(Ljava/net/InetAddress;IILandroid/system/ErrnoException;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 130
    .end local v0    # "errnoException":Landroid/system/ErrnoException;
    :catch_1
    move-exception v1

    .line 131
    .local v1, "ex":Ljava/net/SocketException;
    throw v1

    .line 132
    .end local v1    # "ex":Ljava/net/SocketException;
    :catch_2
    move-exception v1

    .line 133
    .local v1, "ex":Ljava/net/SocketTimeoutException;
    throw v1

    .line 134
    .end local v1    # "ex":Ljava/net/SocketTimeoutException;
    :catch_3
    move-exception v1

    .line 135
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/net/SocketException;

    invoke-direct {v2, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static connectDetail(Ljava/net/InetAddress;IILandroid/system/ErrnoException;)Ljava/lang/String;
    .locals 3
    .param p0, "inetAddress"    # Ljava/net/InetAddress;
    .param p1, "port"    # I
    .param p2, "timeoutMs"    # I
    .param p3, "cause"    # Landroid/system/ErrnoException;

    .prologue
    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "detail":Ljava/lang/String;
    if-lez p2, :cond_0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    :cond_0
    if-eqz p3, :cond_1

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    :cond_1
    return-object v0
.end method

.method private static connectErrno(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    .locals 9
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "inetAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "timeoutMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 143
    invoke-static {p0}, Llibcore/io/IoBridge;->IsBlocking(Ljava/io/FileDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p3, :cond_0

    .line 144
    const p3, 0x15f90

    .line 148
    :cond_0
    if-nez p3, :cond_1

    .line 150
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CDS]connect["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0, p1, p2}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 153
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CDS]port["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Llibcore/io/IoBridge;->getSocketLocalPort(Ljava/io/FileDescriptor;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    :goto_0
    return-void

    .line 165
    :cond_1
    const/4 v4, 0x0

    invoke-static {p0, v4}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, p3

    add-long v2, v4, v6

    .line 171
    .local v2, "finishTimeMs":J
    :try_start_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CDS]connect["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] tm:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-int/lit16 v6, p3, 0x3e8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 172
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0, p1, p2}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 173
    const/4 v4, 0x1

    invoke-static {p0, v4}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 175
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CDS]port["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Llibcore/io/IoBridge;->getSocketLocalPort(Ljava/io/FileDescriptor;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "errnoException":Landroid/system/ErrnoException;
    iget v4, v0, Landroid/system/ErrnoException;->errno:I

    sget v5, Landroid/system/OsConstants;->EINPROGRESS:I

    if-eq v4, v5, :cond_2

    .line 179
    throw v0

    .line 187
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v2, v4

    long-to-int v1, v4

    .line 188
    .local v1, "remainingTimeoutMs":I
    if-gtz v1, :cond_3

    .line 189
    new-instance v4, Ljava/net/SocketTimeoutException;

    const/4 v5, 0x0

    invoke-static {p1, p2, p3, v5}, Llibcore/io/IoBridge;->connectDetail(Ljava/net/InetAddress;IILandroid/system/ErrnoException;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 191
    :cond_3
    invoke-static {p0, p1, p2, p3, v1}, Llibcore/io/IoBridge;->isConnected(Ljava/io/FileDescriptor;Ljava/net/InetAddress;III)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 192
    invoke-static {p0, v8}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    goto/16 :goto_0
.end method

.method private static getGroupSourceReqOp(I)I
    .locals 3
    .param p0, "javaValue"    # I

    .prologue
    .line 456
    packed-switch p0, :pswitch_data_0

    .line 466
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown java value for setsocketopt op lookup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 458
    :pswitch_0
    sget v0, Landroid/system/OsConstants;->MCAST_JOIN_SOURCE_GROUP:I

    .line 464
    :goto_0
    return v0

    .line 460
    :pswitch_1
    sget v0, Landroid/system/OsConstants;->MCAST_LEAVE_SOURCE_GROUP:I

    goto :goto_0

    .line 462
    :pswitch_2
    sget v0, Landroid/system/OsConstants;->MCAST_BLOCK_SOURCE:I

    goto :goto_0

    .line 464
    :pswitch_3
    sget v0, Landroid/system/OsConstants;->MCAST_UNBLOCK_SOURCE:I

    goto :goto_0

    .line 456
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getSocketLocalAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;
    .locals 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 671
    :try_start_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v3

    .line 672
    .local v3, "sa":Ljava/net/SocketAddress;
    move-object v0, v3

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v2, v0

    .line 673
    .local v2, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 674
    .end local v2    # "isa":Ljava/net/InetSocketAddress;
    .end local v3    # "sa":Ljava/net/SocketAddress;
    :catch_0
    move-exception v1

    .line 675
    .local v1, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v4

    throw v4
.end method

.method public static getSocketLocalPort(Ljava/io/FileDescriptor;)I
    .locals 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 681
    :try_start_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v3

    .line 682
    .local v3, "sa":Ljava/net/SocketAddress;
    move-object v0, v3

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v2, v0

    .line 683
    .local v2, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 684
    .end local v2    # "isa":Ljava/net/InetSocketAddress;
    .end local v3    # "sa":Ljava/net/SocketAddress;
    :catch_0
    move-exception v1

    .line 685
    .local v1, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v4

    throw v4
.end method

.method public static getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    .locals 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 285
    :try_start_0
    invoke-static {p0, p1}, Llibcore/io/IoBridge;->getSocketOptionErrno(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method private static getSocketOptionErrno(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 292
    sparse-switch p1, :sswitch_data_0

    .line 338
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown socket option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 295
    :sswitch_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v3, Landroid/system/OsConstants;->IP_MULTICAST_IF:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInAddr(Ljava/io/FileDescriptor;II)Ljava/net/InetAddress;

    move-result-object v1

    .line 335
    :goto_0
    return-object v1

    .line 298
    :sswitch_1
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v3, Landroid/system/OsConstants;->IPV6_MULTICAST_IF:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 302
    :sswitch_2
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v3, Landroid/system/OsConstants;->IPV6_MULTICAST_LOOP:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 306
    :sswitch_3
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v3, Landroid/system/OsConstants;->IPV6_MULTICAST_HOPS:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 310
    :sswitch_4
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v3, Landroid/system/OsConstants;->IPV6_TCLASS:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 312
    :sswitch_5
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_BROADCAST:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 314
    :sswitch_6
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_KEEPALIVE:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 316
    :sswitch_7
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_LINGER:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptLinger(Ljava/io/FileDescriptor;II)Landroid/system/StructLinger;

    move-result-object v0

    .line 317
    .local v0, "linger":Landroid/system/StructLinger;
    invoke-virtual {v0}, Landroid/system/StructLinger;->isOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 320
    :cond_0
    iget v1, v0, Landroid/system/StructLinger;->l_linger:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 322
    .end local v0    # "linger":Landroid/system/StructLinger;
    :sswitch_8
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_OOBINLINE:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 324
    :sswitch_9
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_RCVBUF:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 326
    :sswitch_a
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_REUSEADDR:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 328
    :sswitch_b
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_SNDBUF:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 330
    :sswitch_c
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptTimeval(Ljava/io/FileDescriptor;II)Landroid/system/StructTimeval;

    move-result-object v1

    invoke-virtual {v1}, Landroid/system/StructTimeval;->toMillis()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 332
    :sswitch_d
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->IPPROTO_TCP:I

    sget v3, Landroid/system/OsConstants;->TCP_NODELAY:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 335
    :sswitch_e
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptTimeval(Ljava/io/FileDescriptor;II)Landroid/system/StructTimeval;

    move-result-object v1

    invoke-virtual {v1}, Landroid/system/StructTimeval;->toMillis()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 292
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_d
        0x3 -> :sswitch_4
        0x4 -> :sswitch_a
        0x8 -> :sswitch_6
        0x10 -> :sswitch_0
        0x11 -> :sswitch_3
        0x12 -> :sswitch_2
        0x1f -> :sswitch_1
        0x20 -> :sswitch_5
        0x80 -> :sswitch_7
        0x1001 -> :sswitch_b
        0x1002 -> :sswitch_9
        0x1003 -> :sswitch_8
        0x1005 -> :sswitch_e
        0x1006 -> :sswitch_c
    .end sparse-switch
.end method

.method public static isConnected(Ljava/io/FileDescriptor;Ljava/net/InetAddress;III)Z
    .locals 11
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "inetAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "timeoutMs"    # I
    .param p4, "remainingTimeoutMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 241
    const/4 v8, 0x1

    :try_start_0
    new-array v4, v8, [Landroid/system/StructPollfd;

    const/4 v8, 0x0

    new-instance v9, Landroid/system/StructPollfd;

    invoke-direct {v9}, Landroid/system/StructPollfd;-><init>()V

    aput-object v9, v4, v8

    .line 242
    .local v4, "pollFds":[Landroid/system/StructPollfd;
    const/4 v8, 0x0

    aget-object v8, v4, v8

    iput-object p0, v8, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 243
    const/4 v8, 0x0

    aget-object v8, v4, v8

    sget v9, Landroid/system/OsConstants;->POLLOUT:I

    int-to-short v9, v9

    iput-short v9, v8, Landroid/system/StructPollfd;->events:S

    .line 244
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v8, v4, p4}, Llibcore/io/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v5

    .line 245
    .local v5, "rc":I
    if-nez v5, :cond_1

    .line 258
    .end local v4    # "pollFds":[Landroid/system/StructPollfd;
    .end local v5    # "rc":I
    :cond_0
    :goto_0
    return v6

    .line 248
    .restart local v4    # "pollFds":[Landroid/system/StructPollfd;
    .restart local v5    # "rc":I
    :cond_1
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v10, Landroid/system/OsConstants;->SO_ERROR:I

    invoke-interface {v8, p0, v9, v10}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    .line 249
    .local v1, "connectError":I
    if-nez v1, :cond_2

    move v6, v7

    .line 250
    goto :goto_0

    .line 252
    :cond_2
    new-instance v7, Landroid/system/ErrnoException;

    const-string v8, "isConnected"

    invoke-direct {v7, v8, v1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v7
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v1    # "connectError":I
    .end local v4    # "pollFds":[Landroid/system/StructPollfd;
    .end local v5    # "rc":I
    :catch_0
    move-exception v3

    .line 254
    .local v3, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v7

    if-nez v7, :cond_3

    .line 255
    new-instance v6, Ljava/net/SocketException;

    const-string v7, "Socket closed"

    invoke-direct {v6, v7}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 257
    :cond_3
    iget v7, v3, Landroid/system/ErrnoException;->errno:I

    sget v8, Landroid/system/OsConstants;->EINTR:I

    if-eq v7, v8, :cond_0

    .line 260
    move-object v0, v3

    .line 263
    .local v0, "cause":Landroid/system/ErrnoException;
    invoke-static {p1, p2, p3, v0}, Llibcore/io/IoBridge;->connectDetail(Ljava/net/InetAddress;IILandroid/system/ErrnoException;)Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "detail":Ljava/lang/String;
    iget v6, v0, Landroid/system/ErrnoException;->errno:I

    sget v7, Landroid/system/OsConstants;->ETIMEDOUT:I

    if-ne v6, v7, :cond_4

    .line 265
    new-instance v6, Ljava/net/SocketTimeoutException;

    invoke-direct {v6, v2, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 267
    :cond_4
    new-instance v6, Ljava/net/ConnectException;

    invoke-direct {v6, v2, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static maybeThrowAfterRecvfrom(ZZLandroid/system/ErrnoException;)I
    .locals 2
    .param p0, "isRead"    # Z
    .param p1, "isConnected"    # Z
    .param p2, "errnoException"    # Landroid/system/ErrnoException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .prologue
    .line 628
    if-eqz p0, :cond_1

    .line 629
    iget v0, p2, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->EAGAIN:I

    if-ne v0, v1, :cond_0

    .line 631
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[CDS]EAGAIN in Recvfrom"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 632
    const/4 v0, 0x0

    return v0

    .line 634
    :cond_0
    invoke-virtual {p2}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v0

    throw v0

    .line 637
    :cond_1
    if-eqz p1, :cond_2

    iget v0, p2, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->ECONNREFUSED:I

    if-ne v0, v1, :cond_2

    .line 638
    new-instance v0, Ljava/net/PortUnreachableException;

    const-string v1, ""

    invoke-direct {v0, v1, p2}, Ljava/net/PortUnreachableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 639
    :cond_2
    iget v0, p2, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->EAGAIN:I

    if-ne v0, v1, :cond_3

    .line 640
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-direct {v0, p2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 642
    :cond_3
    invoke-virtual {p2}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v0

    throw v0
.end method

.method private static maybeThrowAfterSendto(ZLandroid/system/ErrnoException;)I
    .locals 3
    .param p0, "isDatagram"    # Z
    .param p1, "errnoException"    # Landroid/system/ErrnoException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 575
    if-eqz p0, :cond_1

    .line 576
    iget v0, p1, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->ECONNRESET:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->ECONNREFUSED:I

    if-ne v0, v1, :cond_2

    .line 583
    :cond_0
    return v2

    .line 580
    :cond_1
    iget v0, p1, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->EAGAIN:I

    if-eq v0, v1, :cond_0

    .line 586
    :cond_2
    invoke-virtual {p1}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v0

    throw v0
.end method

.method public static open(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 478
    const/4 v2, 0x0

    .line 481
    .local v2, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    sget v4, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v4, p1

    sget v5, Landroid/system/OsConstants;->O_RDONLY:I

    if-ne v4, v5, :cond_1

    const/4 v3, 0x0

    .line 482
    .local v3, "mode":I
    :goto_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0, p1, v3}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 485
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, v2}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v4

    iget v4, v4, Landroid/system/StructStat;->st_mode:I

    invoke-static {v4}, Landroid/system/OsConstants;->S_ISDIR(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 486
    new-instance v4, Landroid/system/ErrnoException;

    const-string v5, "open"

    sget v6, Landroid/system/OsConstants;->EISDIR:I

    invoke-direct {v4, v5, v6}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    .end local v3    # "mode":I
    :catch_0
    move-exception v0

    .line 491
    .local v0, "errnoException":Landroid/system/ErrnoException;
    if-eqz v2, :cond_0

    .line 492
    :try_start_1
    invoke-static {v2}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 496
    :cond_0
    :goto_1
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 497
    .local v1, "ex":Ljava/io/FileNotFoundException;
    invoke-virtual {v1, v0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 498
    throw v1

    .line 481
    .end local v0    # "errnoException":Landroid/system/ErrnoException;
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    :cond_1
    const/16 v3, 0x180

    goto :goto_0

    .line 494
    .restart local v0    # "errnoException":Landroid/system/ErrnoException;
    :catch_1
    move-exception v4

    goto :goto_1

    .line 488
    .end local v0    # "errnoException":Landroid/system/ErrnoException;
    .restart local v3    # "mode":I
    :cond_2
    return-object v2
.end method

.method private static postRecvfrom(ZLjava/net/DatagramPacket;ZLjava/net/InetSocketAddress;I)I
    .locals 1
    .param p0, "isRead"    # Z
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .param p2, "isConnected"    # Z
    .param p3, "srcAddress"    # Ljava/net/InetSocketAddress;
    .param p4, "byteCount"    # I

    .prologue
    .line 614
    if-eqz p0, :cond_1

    if-nez p4, :cond_1

    .line 615
    const/4 p4, -0x1

    .line 624
    .end local p4    # "byteCount":I
    :cond_0
    :goto_0
    return p4

    .line 617
    .restart local p4    # "byteCount":I
    :cond_1
    if-eqz p1, :cond_0

    .line 618
    invoke-virtual {p1, p4}, Ljava/net/DatagramPacket;->setReceivedLength(I)V

    .line 619
    if-nez p2, :cond_0

    .line 620
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 621
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    goto :goto_0
.end method

.method public static read(Ljava/io/FileDescriptor;[BII)I
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bytes"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 507
    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 508
    if-nez p3, :cond_1

    .line 520
    :cond_0
    :goto_0
    return v1

    .line 512
    :cond_1
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, p0, p1, p2, p3}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 513
    .local v1, "readCount":I
    if-nez v1, :cond_0

    .line 514
    const/4 v1, -0x1

    goto :goto_0

    .line 517
    .end local v1    # "readCount":I
    :catch_0
    move-exception v0

    .line 518
    .local v0, "errnoException":Landroid/system/ErrnoException;
    iget v2, v0, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->EAGAIN:I

    if-eq v2, v3, :cond_0

    .line 522
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public static recvfrom(ZLjava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/DatagramPacket;Z)I
    .locals 4
    .param p0, "isRead"    # Z
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "flags"    # I
    .param p4, "packet"    # Ljava/net/DatagramPacket;
    .param p5, "isConnected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 604
    if-eqz p4, :cond_0

    if-nez p5, :cond_0

    :try_start_0
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2}, Ljava/net/InetSocketAddress;-><init>()V

    .line 605
    .local v2, "srcAddress":Ljava/net/InetSocketAddress;
    :goto_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v3, p1, p2, p3, v2}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I

    move-result v1

    .line 606
    .local v1, "result":I
    invoke-static {p0, p4, p5, v2, v1}, Llibcore/io/IoBridge;->postRecvfrom(ZLjava/net/DatagramPacket;ZLjava/net/InetSocketAddress;I)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 610
    .end local v2    # "srcAddress":Ljava/net/InetSocketAddress;
    :goto_1
    return v1

    .line 604
    .end local v1    # "result":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-static {p0, p5, v0}, Llibcore/io/IoBridge;->maybeThrowAfterRecvfrom(ZZLandroid/system/ErrnoException;)I

    move-result v1

    .restart local v1    # "result":I
    goto :goto_1
.end method

.method public static recvfrom(ZLjava/io/FileDescriptor;[BIIILjava/net/DatagramPacket;Z)I
    .locals 11
    .param p0, "isRead"    # Z
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bytes"    # [B
    .param p3, "byteOffset"    # I
    .param p4, "byteCount"    # I
    .param p5, "flags"    # I
    .param p6, "packet"    # Ljava/net/DatagramPacket;
    .param p7, "isConnected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 592
    if-eqz p6, :cond_0

    if-nez p7, :cond_0

    :try_start_0
    new-instance v8, Ljava/net/InetSocketAddress;

    invoke-direct {v8}, Ljava/net/InetSocketAddress;-><init>()V

    .line 593
    .local v8, "srcAddress":Ljava/net/InetSocketAddress;
    :goto_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-interface/range {v2 .. v8}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    move-result v10

    .line 594
    .local v10, "result":I
    move-object/from16 v0, p6

    move/from16 v1, p7

    invoke-static {p0, v0, v1, v8, v10}, Llibcore/io/IoBridge;->postRecvfrom(ZLjava/net/DatagramPacket;ZLjava/net/InetSocketAddress;I)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 598
    .end local v8    # "srcAddress":Ljava/net/InetSocketAddress;
    :goto_1
    return v10

    .line 592
    .end local v10    # "result":I
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 595
    :catch_0
    move-exception v9

    .line 596
    .local v9, "errnoException":Landroid/system/ErrnoException;
    move/from16 v0, p7

    invoke-static {p0, v0, v9}, Llibcore/io/IoBridge;->maybeThrowAfterRecvfrom(ZZLandroid/system/ErrnoException;)I

    move-result v10

    .restart local v10    # "result":I
    goto :goto_1
.end method

.method public static sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    .locals 9
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "flags"    # I
    .param p3, "inetAddress"    # Ljava/net/InetAddress;
    .param p4, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 561
    if-eqz p3, :cond_0

    const/4 v7, 0x1

    .line 562
    .local v7, "isDatagram":Z
    :goto_0
    if-nez v7, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_1

    .line 571
    :goto_1
    return v8

    .end local v7    # "isDatagram":Z
    :cond_0
    move v7, v8

    .line 561
    goto :goto_0

    .line 567
    .restart local v7    # "isDatagram":Z
    :cond_1
    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .local v8, "result":I
    goto :goto_1

    .line 568
    .end local v8    # "result":I
    :catch_0
    move-exception v6

    .line 569
    .local v6, "errnoException":Landroid/system/ErrnoException;
    invoke-static {v7, v6}, Llibcore/io/IoBridge;->maybeThrowAfterSendto(ZLandroid/system/ErrnoException;)I

    move-result v8

    .restart local v8    # "result":I
    goto :goto_1
.end method

.method public static sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    .locals 11
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bytes"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .param p4, "flags"    # I
    .param p5, "inetAddress"    # Ljava/net/InetAddress;
    .param p6, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 547
    if-eqz p5, :cond_0

    const/4 v9, 0x1

    .line 548
    .local v9, "isDatagram":Z
    :goto_0
    if-nez v9, :cond_1

    if-gtz p3, :cond_1

    .line 549
    const/4 v10, 0x0

    .line 557
    :goto_1
    return v10

    .line 547
    .end local v9    # "isDatagram":Z
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 553
    .restart local v9    # "isDatagram":Z
    :cond_1
    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v0 .. v7}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .local v10, "result":I
    goto :goto_1

    .line 554
    .end local v10    # "result":I
    :catch_0
    move-exception v8

    .line 555
    .local v8, "errnoException":Landroid/system/ErrnoException;
    invoke-static {v9, v8}, Llibcore/io/IoBridge;->maybeThrowAfterSendto(ZLandroid/system/ErrnoException;)I

    move-result v10

    .restart local v10    # "result":I
    goto :goto_1
.end method

.method public static setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    .locals 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "option"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 356
    :try_start_0
    invoke-static {p0, p1, p2}, Llibcore/io/IoBridge;->setSocketOptionErrno(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method private static setSocketOptionErrno(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    .locals 18
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "option"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 363
    sparse-switch p1, :sswitch_data_0

    .line 451
    new-instance v13, Ljava/net/SocketException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown socket option: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 365
    :sswitch_0
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    const-string v14, "Use IP_MULTICAST_IF2 on Android"

    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 368
    :sswitch_1
    sget-object v14, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v15, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v16, Landroid/system/OsConstants;->IP_MULTICAST_IF:I

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v14, v0, v15, v1, v13}, Llibcore/io/Os;->setsockoptIpMreqn(Ljava/io/FileDescriptor;III)V

    .line 369
    sget-object v13, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v14, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v15, Landroid/system/OsConstants;->IPV6_MULTICAST_IF:I

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v13, v0, v14, v15, v1}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 448
    :goto_0
    return-void

    .line 373
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_2
    sget-object v14, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v15, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v16, Landroid/system/OsConstants;->IP_MULTICAST_LOOP:I

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-static {v13}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v13

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v14, v0, v15, v1, v13}, Llibcore/io/Os;->setsockoptByte(Ljava/io/FileDescriptor;III)V

    .line 374
    sget-object v13, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v14, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v15, Landroid/system/OsConstants;->IPV6_MULTICAST_LOOP:I

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    invoke-static/range {v16 .. v16}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v13, v0, v14, v15, v1}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto :goto_0

    .line 379
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_3
    sget-object v14, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v15, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v16, Landroid/system/OsConstants;->IP_MULTICAST_TTL:I

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v14, v0, v15, v1, v13}, Llibcore/io/Os;->setsockoptByte(Ljava/io/FileDescriptor;III)V

    .line 380
    sget-object v13, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v14, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v15, Landroid/system/OsConstants;->IPV6_MULTICAST_HOPS:I

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v13, v0, v14, v15, v1}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto :goto_0

    .line 383
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_4
    sget-object v14, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v15, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v16, Landroid/system/OsConstants;->IP_TOS:I

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v14, v0, v15, v1, v13}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 384
    sget-object v13, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v14, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v15, Landroid/system/OsConstants;->IPV6_TCLASS:I

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v13, v0, v14, v15, v1}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_0

    .line 387
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_5
    sget-object v13, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v14, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v15, Landroid/system/OsConstants;->SO_BROADCAST:I

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    invoke-static/range {v16 .. v16}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v13, v0, v14, v15, v1}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_0

    .line 390
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_6
    sget-object v13, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v14, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v15, Landroid/system/OsConstants;->SO_KEEPALIVE:I

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    invoke-static/range {v16 .. v16}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v13, v0, v14, v15, v1}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_0

    .line 393
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_7
    const/4 v7, 0x0

    .line 394
    .local v7, "on":Z
    const/4 v9, 0x0

    .line 395
    .local v9, "seconds":I
    move-object/from16 v0, p2

    instance-of v13, v0, Ljava/lang/Integer;

    if-eqz v13, :cond_0

    .line 396
    const/4 v7, 0x1

    .line 397
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const v14, 0xffff

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 399
    :cond_0
    new-instance v5, Landroid/system/StructLinger;

    invoke-static {v7}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v13

    invoke-direct {v5, v13, v9}, Landroid/system/StructLinger;-><init>(II)V

    .line 400
    .local v5, "linger":Landroid/system/StructLinger;
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "[CDS]IoBridge->SO_LINGER: l_onoff: %d ; l_linger: %d\n"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget v0, v5, Landroid/system/StructLinger;->l_onoff:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    iget v0, v5, Landroid/system/StructLinger;->l_linger:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 401
    sget-object v13, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v14, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v15, Landroid/system/OsConstants;->SO_LINGER:I

    move-object/from16 v0, p0

    invoke-interface {v13, v0, v14, v15, v5}, Llibcore/io/Os;->setsockoptLinger(Ljava/io/FileDescriptor;IILandroid/system/StructLinger;)V

    goto/16 :goto_0

    .line 404
    .end local v5    # "linger":Landroid/system/StructLinger;
    .end local v7    # "on":Z
    .end local v9    # "seconds":I
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_8
    sget-object v13, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v14, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v15, Landroid/system/OsConstants;->SO_OOBINLINE:I

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    invoke-static/range {v16 .. v16}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v13, v0, v14, v15, v1}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_0

    .line 407
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_9
    sget-object v13, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v14, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v15, Landroid/system/OsConstants;->SO_RCVBUF:I

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v13, v0, v14, v15, v1}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_0

    .line 410
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_a
    sget-object v13, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v14, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v15, Landroid/system/OsConstants;->SO_REUSEADDR:I

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    invoke-static/range {v16 .. v16}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v13, v0, v14, v15, v1}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_0

    .line 413
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_b
    sget-object v13, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v14, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v15, Landroid/system/OsConstants;->SO_SNDBUF:I

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v13, v0, v14, v15, v1}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_0

    .line 416
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_c
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 417
    .local v6, "millis":I
    int-to-long v14, v6

    invoke-static {v14, v15}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v12

    .line 418
    .local v12, "tv":Landroid/system/StructTimeval;
    sget-object v13, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v14, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v15, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    move-object/from16 v0, p0

    invoke-interface {v13, v0, v14, v15, v12}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    goto/16 :goto_0

    .line 421
    .end local v6    # "millis":I
    .end local v12    # "tv":Landroid/system/StructTimeval;
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_d
    sget-object v13, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v14, Landroid/system/OsConstants;->IPPROTO_TCP:I

    sget v15, Landroid/system/OsConstants;->TCP_NODELAY:I

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    invoke-static/range {v16 .. v16}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v13, v0, v14, v15, v1}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_0

    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_e
    move-object/from16 v2, p2

    .line 426
    check-cast v2, Landroid/system/StructGroupReq;

    .line 427
    .local v2, "groupReq":Landroid/system/StructGroupReq;
    iget-object v13, v2, Landroid/system/StructGroupReq;->gr_group:Ljava/net/InetAddress;

    instance-of v13, v13, Ljava/net/Inet4Address;

    if-eqz v13, :cond_1

    sget v4, Landroid/system/OsConstants;->IPPROTO_IP:I

    .line 428
    .local v4, "level":I
    :goto_1
    const/16 v13, 0x13

    move/from16 v0, p1

    if-ne v0, v13, :cond_2

    sget v8, Landroid/system/OsConstants;->MCAST_JOIN_GROUP:I

    .line 429
    .local v8, "op":I
    :goto_2
    sget-object v13, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, p0

    invoke-interface {v13, v0, v4, v8, v2}, Llibcore/io/Os;->setsockoptGroupReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupReq;)V

    goto/16 :goto_0

    .line 427
    .end local v4    # "level":I
    .end local v8    # "op":I
    :cond_1
    sget v4, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    goto :goto_1

    .line 428
    .restart local v4    # "level":I
    :cond_2
    sget v8, Landroid/system/OsConstants;->MCAST_LEAVE_GROUP:I

    goto :goto_2

    .line 434
    .end local v2    # "groupReq":Landroid/system/StructGroupReq;
    .end local v4    # "level":I
    :sswitch_f
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 435
    .local v10, "snd_millis":I
    int-to-long v14, v10

    invoke-static {v14, v15}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v11

    .line 436
    .local v11, "snd_tv":Landroid/system/StructTimeval;
    sget-object v13, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v14, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v15, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    move-object/from16 v0, p0

    invoke-interface {v13, v0, v14, v15, v11}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    goto/16 :goto_0

    .end local v10    # "snd_millis":I
    .end local v11    # "snd_tv":Landroid/system/StructTimeval;
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_10
    move-object/from16 v3, p2

    .line 443
    check-cast v3, Landroid/system/StructGroupSourceReq;

    .line 444
    .local v3, "groupSourceReq":Landroid/system/StructGroupSourceReq;
    iget-object v13, v3, Landroid/system/StructGroupSourceReq;->gsr_group:Ljava/net/InetAddress;

    instance-of v13, v13, Ljava/net/Inet4Address;

    if-eqz v13, :cond_3

    sget v4, Landroid/system/OsConstants;->IPPROTO_IP:I

    .line 446
    .restart local v4    # "level":I
    :goto_3
    invoke-static/range {p1 .. p1}, Llibcore/io/IoBridge;->getGroupSourceReqOp(I)I

    move-result v8

    .line 447
    .restart local v8    # "op":I
    sget-object v13, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, p0

    invoke-interface {v13, v0, v4, v8, v3}, Llibcore/io/Os;->setsockoptGroupSourceReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupSourceReq;)V

    goto/16 :goto_0

    .line 444
    .end local v4    # "level":I
    .end local v8    # "op":I
    :cond_3
    sget v4, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    goto :goto_3

    .line 363
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_d
        0x3 -> :sswitch_4
        0x4 -> :sswitch_a
        0x8 -> :sswitch_6
        0x10 -> :sswitch_0
        0x11 -> :sswitch_3
        0x12 -> :sswitch_2
        0x13 -> :sswitch_e
        0x14 -> :sswitch_e
        0x15 -> :sswitch_10
        0x16 -> :sswitch_10
        0x17 -> :sswitch_10
        0x18 -> :sswitch_10
        0x1f -> :sswitch_1
        0x20 -> :sswitch_5
        0x80 -> :sswitch_7
        0x1001 -> :sswitch_b
        0x1002 -> :sswitch_9
        0x1003 -> :sswitch_8
        0x1005 -> :sswitch_f
        0x1006 -> :sswitch_c
    .end sparse-switch
.end method

.method public static socket(Z)Ljava/io/FileDescriptor;
    .locals 6
    .param p0, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 650
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v4, Landroid/system/OsConstants;->AF_INET6:I

    if-eqz p0, :cond_1

    sget v2, Landroid/system/OsConstants;->SOCK_STREAM:I

    :goto_0
    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v5}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 659
    .local v1, "fd":Ljava/io/FileDescriptor;
    if-nez p0, :cond_0

    .line 660
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v3, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v4, Landroid/system/OsConstants;->IPV6_MULTICAST_HOPS:I

    const/4 v5, 0x1

    invoke-interface {v2, v1, v3, v4, v5}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 663
    :cond_0
    return-object v1

    .line 650
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :cond_1
    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v2

    throw v2
.end method

.method public static write(Ljava/io/FileDescriptor;[BII)V
    .locals 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bytes"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 532
    if-nez p3, :cond_1

    .line 544
    :cond_0
    return-void

    .line 536
    :cond_1
    :goto_0
    if-lez p3, :cond_0

    .line 537
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, p0, p1, p2, p3}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 538
    .local v0, "bytesWritten":I
    sub-int/2addr p3, v0

    .line 539
    add-int/2addr p2, v0

    .line 540
    goto :goto_0

    .line 541
    .end local v0    # "bytesWritten":I
    :catch_0
    move-exception v1

    .line 542
    .local v1, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method
