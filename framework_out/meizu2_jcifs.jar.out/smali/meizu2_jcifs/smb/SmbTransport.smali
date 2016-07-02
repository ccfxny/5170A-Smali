.class public Lmeizu2_jcifs/smb/SmbTransport;
.super Lmeizu2_jcifs/util/transport/Transport;
.source "SmbTransport.java"

# interfaces
.implements Lmeizu2_jcifs/smb/SmbConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu2_jcifs/smb/SmbTransport$ServerData;
    }
.end annotation


# static fields
.field static final BUF:[B

.field static final NEGOTIATE_REQUEST:Lmeizu2_jcifs/smb/SmbComNegotiate;

.field static dfsRoots:Ljava/util/HashMap;

.field static log:Lmeizu2_jcifs/util/LogStream;


# instance fields
.field address:Lmeizu2_jcifs/UniAddress;

.field capabilities:I

.field digest:Lmeizu2_jcifs/smb/SigningDigest;

.field flags2:I

.field in:Ljava/io/InputStream;

.field key:Lmeizu2_jcifs/smb/SmbComBlankResponse;

.field localAddr:Ljava/net/InetAddress;

.field localPort:I

.field maxMpxCount:I

.field mid:I

.field out:Ljava/io/OutputStream;

.field port:I

.field rcv_buf_size:I

.field referrals:Ljava/util/LinkedList;

.field sbuf:[B

.field server:Lmeizu2_jcifs/smb/SmbTransport$ServerData;

.field sessionExpiration:J

.field sessionKey:I

.field sessions:Ljava/util/LinkedList;

.field snd_buf_size:I

.field socket:Ljava/net/Socket;

.field tconHostName:Ljava/lang/String;

.field useUnicode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const v0, 0xffff

    new-array v0, v0, [B

    sput-object v0, Lmeizu2_jcifs/smb/SmbTransport;->BUF:[B

    .line 36
    new-instance v0, Lmeizu2_jcifs/smb/SmbComNegotiate;

    invoke-direct {v0}, Lmeizu2_jcifs/smb/SmbComNegotiate;-><init>()V

    sput-object v0, Lmeizu2_jcifs/smb/SmbTransport;->NEGOTIATE_REQUEST:Lmeizu2_jcifs/smb/SmbComNegotiate;

    .line 37
    invoke-static {}, Lmeizu2_jcifs/util/LogStream;->getInstance()Lmeizu2_jcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lmeizu2_jcifs/smb/SmbTransport;->dfsRoots:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Lmeizu2_jcifs/UniAddress;ILjava/net/InetAddress;I)V
    .locals 5
    .param p1, "address"    # Lmeizu2_jcifs/UniAddress;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I

    .prologue
    const/4 v4, 0x0

    .line 112
    invoke-direct {p0}, Lmeizu2_jcifs/util/transport/Transport;-><init>()V

    .line 95
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    .line 96
    new-instance v0, Lmeizu2_jcifs/smb/SmbComBlankResponse;

    invoke-direct {v0}, Lmeizu2_jcifs/smb/SmbComBlankResponse;-><init>()V

    iput-object v0, p0, Lmeizu2_jcifs/smb/SmbTransport;->key:Lmeizu2_jcifs/smb/SmbComBlankResponse;

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Lmeizu2_jcifs/smb/SmbTransport;->SO_TIMEOUT:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmeizu2_jcifs/smb/SmbTransport;->sessionExpiration:J

    .line 98
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmeizu2_jcifs/smb/SmbTransport;->referrals:Ljava/util/LinkedList;

    .line 99
    iput-object v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->digest:Lmeizu2_jcifs/smb/SigningDigest;

    .line 100
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmeizu2_jcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    .line 101
    new-instance v0, Lmeizu2_jcifs/smb/SmbTransport$ServerData;

    invoke-direct {v0, p0}, Lmeizu2_jcifs/smb/SmbTransport$ServerData;-><init>(Lmeizu2_jcifs/smb/SmbTransport;)V

    iput-object v0, p0, Lmeizu2_jcifs/smb/SmbTransport;->server:Lmeizu2_jcifs/smb/SmbTransport$ServerData;

    .line 103
    sget v0, Lmeizu2_jcifs/smb/SmbTransport;->FLAGS2:I

    iput v0, p0, Lmeizu2_jcifs/smb/SmbTransport;->flags2:I

    .line 104
    sget v0, Lmeizu2_jcifs/smb/SmbTransport;->MAX_MPX_COUNT:I

    iput v0, p0, Lmeizu2_jcifs/smb/SmbTransport;->maxMpxCount:I

    .line 105
    sget v0, Lmeizu2_jcifs/smb/SmbTransport;->SND_BUF_SIZE:I

    iput v0, p0, Lmeizu2_jcifs/smb/SmbTransport;->snd_buf_size:I

    .line 106
    sget v0, Lmeizu2_jcifs/smb/SmbTransport;->RCV_BUF_SIZE:I

    iput v0, p0, Lmeizu2_jcifs/smb/SmbTransport;->rcv_buf_size:I

    .line 107
    sget v0, Lmeizu2_jcifs/smb/SmbTransport;->CAPABILITIES:I

    iput v0, p0, Lmeizu2_jcifs/smb/SmbTransport;->capabilities:I

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lmeizu2_jcifs/smb/SmbTransport;->sessionKey:I

    .line 109
    sget-boolean v0, Lmeizu2_jcifs/smb/SmbTransport;->USE_UNICODE:Z

    iput-boolean v0, p0, Lmeizu2_jcifs/smb/SmbTransport;->useUnicode:Z

    .line 110
    iput-object v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lmeizu2_jcifs/smb/SmbTransport;->address:Lmeizu2_jcifs/UniAddress;

    .line 114
    iput p2, p0, Lmeizu2_jcifs/smb/SmbTransport;->port:I

    .line 115
    iput-object p3, p0, Lmeizu2_jcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    .line 116
    iput p4, p0, Lmeizu2_jcifs/smb/SmbTransport;->localPort:I

    .line 117
    return-void
.end method

.method static declared-synchronized getSmbTransport(Lmeizu2_jcifs/UniAddress;I)Lmeizu2_jcifs/smb/SmbTransport;
    .locals 4
    .param p0, "address"    # Lmeizu2_jcifs/UniAddress;
    .param p1, "port"    # I

    .prologue
    .line 41
    const-class v1, Lmeizu2_jcifs/smb/SmbTransport;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lmeizu2_jcifs/smb/SmbTransport;->LADDR:Ljava/net/InetAddress;

    sget v2, Lmeizu2_jcifs/smb/SmbTransport;->LPORT:I

    const/4 v3, 0x0

    invoke-static {p0, p1, v0, v2, v3}, Lmeizu2_jcifs/smb/SmbTransport;->getSmbTransport(Lmeizu2_jcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Lmeizu2_jcifs/smb/SmbTransport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized getSmbTransport(Lmeizu2_jcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Lmeizu2_jcifs/smb/SmbTransport;
    .locals 10
    .param p0, "address"    # Lmeizu2_jcifs/UniAddress;
    .param p1, "port"    # I
    .param p2, "localAddr"    # Ljava/net/InetAddress;
    .param p3, "localPort"    # I
    .param p4, "hostName"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v8, Lmeizu2_jcifs/smb/SmbTransport;

    monitor-enter v8

    :try_start_0
    sget-object v9, Lmeizu2_jcifs/smb/SmbTransport;->CONNECTIONS:Ljava/util/LinkedList;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    :try_start_1
    sget v1, Lmeizu2_jcifs/smb/SmbTransport;->SSN_LIMIT:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 49
    sget-object v1, Lmeizu2_jcifs/smb/SmbTransport;->CONNECTIONS:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    .line 50
    .local v7, "iter":Ljava/util/ListIterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu2_jcifs/smb/SmbTransport;

    .local v0, "conn":Lmeizu2_jcifs/smb/SmbTransport;
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 52
    invoke-virtual/range {v0 .. v5}, Lmeizu2_jcifs/smb/SmbTransport;->matches(Lmeizu2_jcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lmeizu2_jcifs/smb/SmbTransport;->SSN_LIMIT:I

    if-eqz v1, :cond_1

    iget-object v1, v0, Lmeizu2_jcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sget v2, Lmeizu2_jcifs/smb/SmbTransport;->SSN_LIMIT:I

    if-ge v1, v2, :cond_0

    .line 54
    :cond_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v0

    .line 63
    .end local v0    # "conn":Lmeizu2_jcifs/smb/SmbTransport;
    .end local v7    # "iter":Ljava/util/ListIterator;
    .local v6, "conn":Ljava/lang/Object;
    :goto_0
    monitor-exit v8

    return-object v6

    .line 59
    .end local v6    # "conn":Ljava/lang/Object;
    :cond_2
    :try_start_2
    new-instance v0, Lmeizu2_jcifs/smb/SmbTransport;

    invoke-direct {v0, p0, p1, p2, p3}, Lmeizu2_jcifs/smb/SmbTransport;-><init>(Lmeizu2_jcifs/UniAddress;ILjava/net/InetAddress;I)V

    .line 60
    .restart local v0    # "conn":Lmeizu2_jcifs/smb/SmbTransport;
    sget-object v1, Lmeizu2_jcifs/smb/SmbTransport;->CONNECTIONS:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 61
    monitor-exit v9

    move-object v6, v0

    .line 63
    .restart local v6    # "conn":Ljava/lang/Object;
    goto :goto_0

    .line 61
    .end local v0    # "conn":Lmeizu2_jcifs/smb/SmbTransport;
    .end local v6    # "conn":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 47
    :catchall_1
    move-exception v1

    monitor-exit v8

    throw v1
.end method

.method private negotiate(ILmeizu2_jcifs/smb/ServerMessageBlock;)V
    .locals 10
    .param p1, "port"    # I
    .param p2, "resp"    # Lmeizu2_jcifs/smb/ServerMessageBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v9, 0xffff

    const/4 v8, 0x6

    const/4 v7, 0x4

    .line 247
    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    monitor-enter v3

    .line 248
    const/16 v2, 0x8b

    if-ne p1, v2, :cond_2

    .line 249
    :try_start_0
    invoke-virtual {p0}, Lmeizu2_jcifs/smb/SmbTransport;->ssn139()V

    .line 271
    :goto_0
    iget v2, p0, Lmeizu2_jcifs/smb/SmbTransport;->mid:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmeizu2_jcifs/smb/SmbTransport;->mid:I

    const/16 v4, 0x7d00

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    iput v2, p0, Lmeizu2_jcifs/smb/SmbTransport;->mid:I

    .line 272
    :cond_0
    sget-object v2, Lmeizu2_jcifs/smb/SmbTransport;->NEGOTIATE_REQUEST:Lmeizu2_jcifs/smb/SmbComNegotiate;

    iget v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->mid:I

    iput v4, v2, Lmeizu2_jcifs/smb/SmbComNegotiate;->mid:I

    .line 273
    sget-object v2, Lmeizu2_jcifs/smb/SmbTransport;->NEGOTIATE_REQUEST:Lmeizu2_jcifs/smb/SmbComNegotiate;

    iget-object v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x4

    invoke-virtual {v2, v4, v5}, Lmeizu2_jcifs/smb/SmbComNegotiate;->encode([BI)I

    move-result v0

    .line 274
    .local v0, "n":I
    and-int v2, v0, v9

    iget-object v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lmeizu2_jcifs/util/Encdec;->enc_uint32be(I[BI)I

    .line 276
    sget-object v2, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    sget v2, Lmeizu2_jcifs/util/LogStream;->level:I

    if-lt v2, v7, :cond_1

    .line 277
    sget-object v2, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    sget-object v4, Lmeizu2_jcifs/smb/SmbTransport;->NEGOTIATE_REQUEST:Lmeizu2_jcifs/smb/SmbComNegotiate;

    invoke-virtual {v2, v4}, Lmeizu2_jcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 278
    sget-object v2, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    sget v2, Lmeizu2_jcifs/util/LogStream;->level:I

    if-lt v2, v8, :cond_1

    .line 279
    sget-object v2, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    iget-object v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x4

    invoke-static {v2, v4, v5, v0}, Lmeizu2_jcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 283
    :cond_1
    iget-object v2, p0, Lmeizu2_jcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x0

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v2, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 284
    iget-object v2, p0, Lmeizu2_jcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 288
    invoke-virtual {p0}, Lmeizu2_jcifs/smb/SmbTransport;->peekKey()Lmeizu2_jcifs/util/transport/Request;

    move-result-object v2

    if-nez v2, :cond_5

    .line 289
    new-instance v2, Ljava/io/IOException;

    const-string v4, "transport closed in negotiate"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 303
    .end local v0    # "n":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 251
    :cond_2
    if-nez p1, :cond_3

    .line 252
    const/16 p1, 0x1bd

    .line 261
    :cond_3
    :try_start_1
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    iput-object v2, p0, Lmeizu2_jcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 262
    iget-object v2, p0, Lmeizu2_jcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    if-eqz v2, :cond_4

    .line 263
    iget-object v2, p0, Lmeizu2_jcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lmeizu2_jcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    iget v6, p0, Lmeizu2_jcifs/smb/SmbTransport;->localPort:I

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v4}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 264
    :cond_4
    iget-object v2, p0, Lmeizu2_jcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lmeizu2_jcifs/smb/SmbTransport;->address:Lmeizu2_jcifs/UniAddress;

    invoke-virtual {v5}, Lmeizu2_jcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    sget v5, Lmeizu2_jcifs/smb/SmbTransport;->CONN_TIMEOUT:I

    invoke-virtual {v2, v4, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 265
    iget-object v2, p0, Lmeizu2_jcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    sget v4, Lmeizu2_jcifs/smb/SmbTransport;->SO_TIMEOUT:I

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 267
    iget-object v2, p0, Lmeizu2_jcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lmeizu2_jcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    .line 268
    iget-object v2, p0, Lmeizu2_jcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lmeizu2_jcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    goto/16 :goto_0

    .line 290
    .restart local v0    # "n":I
    :cond_5
    iget-object v2, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lmeizu2_jcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v2

    and-int v1, v2, v9

    .line 291
    .local v1, "size":I
    const/16 v2, 0x21

    if-lt v1, v2, :cond_6

    add-int/lit8 v2, v1, 0x4

    iget-object v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    array-length v4, v4

    if-le v2, v4, :cond_7

    .line 292
    :cond_6
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid payload size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 294
    :cond_7
    iget-object v2, p0, Lmeizu2_jcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    const/16 v5, 0x24

    add-int/lit8 v6, v1, -0x20

    invoke-static {v2, v4, v5, v6}, Lmeizu2_jcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    .line 295
    iget-object v2, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    const/4 v4, 0x4

    invoke-virtual {p2, v2, v4}, Lmeizu2_jcifs/smb/ServerMessageBlock;->decode([BI)I

    .line 297
    sget-object v2, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    sget v2, Lmeizu2_jcifs/util/LogStream;->level:I

    if-lt v2, v7, :cond_8

    .line 298
    sget-object v2, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    invoke-virtual {v2, p2}, Lmeizu2_jcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 299
    sget-object v2, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    sget v2, Lmeizu2_jcifs/util/LogStream;->level:I

    if-lt v2, v8, :cond_8

    .line 300
    sget-object v2, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    iget-object v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x4

    invoke-static {v2, v4, v5, v0}, Lmeizu2_jcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 303
    :cond_8
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    return-void
.end method


# virtual methods
.method __getDfsReferrals(Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)[Lmeizu2_jcifs/smb/DfsReferral;
    .locals 16
    .param p1, "auth"    # Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "rn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 746
    invoke-virtual/range {p0 .. p1}, Lmeizu2_jcifs/smb/SmbTransport;->getSmbSession(Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;)Lmeizu2_jcifs/smb/SmbSession;

    move-result-object v10

    const-string v11, "IPC$"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lmeizu2_jcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Lmeizu2_jcifs/smb/SmbTree;

    move-result-object v8

    .line 747
    .local v8, "ipc":Lmeizu2_jcifs/smb/SmbTree;
    new-instance v9, Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse;

    invoke-direct {v9}, Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse;-><init>()V

    .line 748
    .local v9, "resp":Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse;
    new-instance v10, Lmeizu2_jcifs/smb/Trans2GetDfsReferral;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Lmeizu2_jcifs/smb/Trans2GetDfsReferral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10, v9}, Lmeizu2_jcifs/smb/SmbTree;->send(Lmeizu2_jcifs/smb/ServerMessageBlock;Lmeizu2_jcifs/smb/ServerMessageBlock;)V

    .line 750
    if-eqz p3, :cond_0

    iget v10, v9, Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    move/from16 v0, p3

    if-ge v10, v0, :cond_1

    .line 751
    :cond_0
    iget v0, v9, Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    move/from16 p3, v0

    .line 754
    :cond_1
    move/from16 v0, p3

    new-array v5, v0, [Lmeizu2_jcifs/smb/DfsReferral;

    .line 755
    .local v5, "drs":[Lmeizu2_jcifs/smb/DfsReferral;
    const/4 v10, 0x4

    new-array v2, v10, [Ljava/lang/String;

    .line 756
    .local v2, "arr":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sget-wide v12, Lmeizu2_jcifs/smb/Dfs;->TTL:J

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    add-long v6, v10, v12

    .line 758
    .local v6, "expiration":J
    const/4 v3, 0x0

    .local v3, "di":I
    :goto_0
    array-length v10, v5

    if-ge v3, v10, :cond_3

    .line 759
    new-instance v4, Lmeizu2_jcifs/smb/DfsReferral;

    invoke-direct {v4}, Lmeizu2_jcifs/smb/DfsReferral;-><init>()V

    .line 762
    .local v4, "dr":Lmeizu2_jcifs/smb/DfsReferral;
    move-object/from16 v0, p1

    iget-boolean v10, v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    iput-boolean v10, v4, Lmeizu2_jcifs/smb/DfsReferral;->resolveHashes:Z

    .line 763
    iget-object v10, v9, Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v10, v10, v3

    iget v10, v10, Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->ttl:I

    int-to-long v10, v10

    iput-wide v10, v4, Lmeizu2_jcifs/smb/DfsReferral;->ttl:J

    .line 764
    iput-wide v6, v4, Lmeizu2_jcifs/smb/DfsReferral;->expiration:J

    .line 765
    const-string v10, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 766
    iget-object v10, v9, Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v10, v10, v3

    iget-object v10, v10, Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lmeizu2_jcifs/smb/DfsReferral;->server:Ljava/lang/String;

    .line 773
    :goto_1
    iget v10, v9, Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse;->pathConsumed:I

    iput v10, v4, Lmeizu2_jcifs/smb/DfsReferral;->pathConsumed:I

    .line 774
    aput-object v4, v5, v3

    .line 758
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 768
    :cond_2
    iget-object v10, v9, Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v10, v10, v3

    iget-object v10, v10, Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v2}, Lmeizu2_jcifs/smb/SmbTransport;->dfsPathSplit(Ljava/lang/String;[Ljava/lang/String;)V

    .line 769
    const/4 v10, 0x1

    aget-object v10, v2, v10

    iput-object v10, v4, Lmeizu2_jcifs/smb/DfsReferral;->server:Ljava/lang/String;

    .line 770
    const/4 v10, 0x2

    aget-object v10, v2, v10

    iput-object v10, v4, Lmeizu2_jcifs/smb/DfsReferral;->share:Ljava/lang/String;

    .line 771
    const/4 v10, 0x3

    aget-object v10, v2, v10

    iput-object v10, v4, Lmeizu2_jcifs/smb/DfsReferral;->path:Ljava/lang/String;

    goto :goto_1

    .line 777
    .end local v4    # "dr":Lmeizu2_jcifs/smb/DfsReferral;
    :cond_3
    return-object v5
.end method

.method checkStatus(Lmeizu2_jcifs/smb/ServerMessageBlock;Lmeizu2_jcifs/smb/ServerMessageBlock;)V
    .locals 5
    .param p1, "req"    # Lmeizu2_jcifs/smb/ServerMessageBlock;
    .param p2, "resp"    # Lmeizu2_jcifs/smb/ServerMessageBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 532
    iget v1, p2, Lmeizu2_jcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-static {v1}, Lmeizu2_jcifs/smb/SmbException;->getStatusByCode(I)I

    move-result v1

    iput v1, p2, Lmeizu2_jcifs/smb/ServerMessageBlock;->errorCode:I

    .line 533
    iget v1, p2, Lmeizu2_jcifs/smb/ServerMessageBlock;->errorCode:I

    sparse-switch v1, :sswitch_data_0

    .line 563
    new-instance v1, Lmeizu2_jcifs/smb/SmbException;

    iget v2, p2, Lmeizu2_jcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-direct {v1, v2, v4}, Lmeizu2_jcifs/smb/SmbException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 546
    :sswitch_0
    new-instance v1, Lmeizu2_jcifs/smb/SmbAuthException;

    iget v2, p2, Lmeizu2_jcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-direct {v1, v2}, Lmeizu2_jcifs/smb/SmbAuthException;-><init>(I)V

    throw v1

    .line 548
    :sswitch_1
    iget-object v1, p1, Lmeizu2_jcifs/smb/ServerMessageBlock;->auth:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    if-nez v1, :cond_0

    .line 549
    new-instance v1, Lmeizu2_jcifs/smb/SmbException;

    iget v2, p2, Lmeizu2_jcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-direct {v1, v2, v4}, Lmeizu2_jcifs/smb/SmbException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 552
    :cond_0
    iget-object v1, p1, Lmeizu2_jcifs/smb/ServerMessageBlock;->auth:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    iget-object v2, p1, Lmeizu2_jcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lmeizu2_jcifs/smb/SmbTransport;->getDfsReferrals(Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Lmeizu2_jcifs/smb/DfsReferral;

    move-result-object v0

    .line 553
    .local v0, "dr":Lmeizu2_jcifs/smb/DfsReferral;
    if-nez v0, :cond_1

    .line 554
    new-instance v1, Lmeizu2_jcifs/smb/SmbException;

    iget v2, p2, Lmeizu2_jcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-direct {v1, v2, v4}, Lmeizu2_jcifs/smb/SmbException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 556
    :cond_1
    sget-object v1, Lmeizu2_jcifs/smb/SmbFile;->dfs:Lmeizu2_jcifs/smb/Dfs;

    iget-object v2, p1, Lmeizu2_jcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lmeizu2_jcifs/smb/Dfs;->insert(Ljava/lang/String;Lmeizu2_jcifs/smb/DfsReferral;)V

    .line 557
    throw v0

    .line 565
    .end local v0    # "dr":Lmeizu2_jcifs/smb/DfsReferral;
    :sswitch_2
    iget-boolean v1, p2, Lmeizu2_jcifs/smb/ServerMessageBlock;->verifyFailed:Z

    if-eqz v1, :cond_2

    .line 566
    new-instance v1, Lmeizu2_jcifs/smb/SmbException;

    const-string v2, "Signature verification failed."

    invoke-direct {v1, v2}, Lmeizu2_jcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 568
    :cond_2
    return-void

    .line 533
    :sswitch_data_0
    .sparse-switch
        -0x7ffffffb -> :sswitch_2
        -0x3fffffea -> :sswitch_2
        -0x3fffffde -> :sswitch_0
        -0x3fffff96 -> :sswitch_0
        -0x3fffff93 -> :sswitch_0
        -0x3fffff92 -> :sswitch_0
        -0x3fffff91 -> :sswitch_0
        -0x3fffff90 -> :sswitch_0
        -0x3fffff8f -> :sswitch_0
        -0x3fffff8e -> :sswitch_0
        -0x3ffffe74 -> :sswitch_0
        -0x3ffffdcc -> :sswitch_0
        -0x3ffffda9 -> :sswitch_1
        0x0 -> :sswitch_2
    .end sparse-switch
.end method

.method public connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 307
    :try_start_0
    sget v1, Lmeizu2_jcifs/smb/SmbTransport;->RESPONSE_TIMEOUT:I

    int-to-long v2, v1

    invoke-super {p0, v2, v3}, Lmeizu2_jcifs/util/transport/Transport;->connect(J)V
    :try_end_0
    .catch Lmeizu2_jcifs/util/transport/TransportException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "te":Lmeizu2_jcifs/util/transport/TransportException;
    new-instance v1, Lmeizu2_jcifs/smb/SmbException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to connect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->address:Lmeizu2_jcifs/UniAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lmeizu2_jcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method dfsPathSplit(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "result"    # [Ljava/lang/String;

    .prologue
    .line 680
    const/4 v4, 0x0

    .local v4, "ri":I
    array-length v7, p2

    add-int/lit8 v6, v7, -0x1

    .line 681
    .local v6, "rlast":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v0, 0x0

    .local v0, "b":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "len":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    move v5, v4

    .line 684
    .end local v4    # "ri":I
    .local v5, "ri":I
    :goto_0
    if-ne v5, v6, :cond_1

    .line 685
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, p2, v6

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    move v4, v5

    .line 697
    .end local v5    # "ri":I
    .restart local v4    # "ri":I
    :cond_0
    return-void

    .line 688
    .end local v1    # "i":I
    .end local v4    # "ri":I
    .restart local v2    # "i":I
    .restart local v5    # "ri":I
    :cond_1
    if-eq v2, v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5c

    if-ne v7, v8, :cond_4

    .line 689
    :cond_2
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ri":I
    .restart local v4    # "ri":I
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, p2, v5

    .line 690
    add-int/lit8 v0, v2, 0x1

    .line 692
    :goto_1
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lt v2, v3, :cond_3

    .line 694
    :goto_2
    array-length v7, p2

    if-ge v4, v7, :cond_0

    .line 695
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ri":I
    .restart local v5    # "ri":I
    const-string v7, ""

    aput-object v7, p2, v4

    move v4, v5

    .end local v5    # "ri":I
    .restart local v4    # "ri":I
    goto :goto_2

    :cond_3
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    move v5, v4

    .end local v4    # "ri":I
    .restart local v5    # "ri":I
    goto :goto_0

    :cond_4
    move v4, v5

    .end local v5    # "ri":I
    .restart local v4    # "ri":I
    goto :goto_1
.end method

.method protected doConnect()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8b

    const/4 v7, 0x1

    const/16 v3, 0x1bd

    const/high16 v6, -0x80000000

    .line 317
    new-instance v2, Lmeizu2_jcifs/smb/SmbComNegotiateResponse;

    iget-object v5, p0, Lmeizu2_jcifs/smb/SmbTransport;->server:Lmeizu2_jcifs/smb/SmbTransport$ServerData;

    invoke-direct {v2, v5}, Lmeizu2_jcifs/smb/SmbComNegotiateResponse;-><init>(Lmeizu2_jcifs/smb/SmbTransport$ServerData;)V

    .line 319
    .local v2, "resp":Lmeizu2_jcifs/smb/SmbComNegotiateResponse;
    :try_start_0
    iget v5, p0, Lmeizu2_jcifs/smb/SmbTransport;->port:I

    invoke-direct {p0, v5, v2}, Lmeizu2_jcifs/smb/SmbTransport;->negotiate(ILmeizu2_jcifs/smb/ServerMessageBlock;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/NoRouteToHostException; {:try_start_0 .. :try_end_0} :catch_1

    .line 328
    :goto_0
    iget v3, v2, Lmeizu2_jcifs/smb/SmbComNegotiateResponse;->dialectIndex:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_4

    .line 329
    new-instance v3, Lmeizu2_jcifs/smb/SmbException;

    const-string v4, "This client does not support the negotiated dialect."

    invoke-direct {v3, v4}, Lmeizu2_jcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "ce":Ljava/net/ConnectException;
    iget v5, p0, Lmeizu2_jcifs/smb/SmbTransport;->port:I

    if-eqz v5, :cond_0

    iget v5, p0, Lmeizu2_jcifs/smb/SmbTransport;->port:I

    if-ne v5, v3, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    iput v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->port:I

    .line 322
    iget v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->port:I

    invoke-direct {p0, v3, v2}, Lmeizu2_jcifs/smb/SmbTransport;->negotiate(ILmeizu2_jcifs/smb/ServerMessageBlock;)V

    goto :goto_0

    .line 323
    .end local v0    # "ce":Ljava/net/ConnectException;
    :catch_1
    move-exception v1

    .line 324
    .local v1, "nr":Ljava/net/NoRouteToHostException;
    iget v5, p0, Lmeizu2_jcifs/smb/SmbTransport;->port:I

    if-eqz v5, :cond_2

    iget v5, p0, Lmeizu2_jcifs/smb/SmbTransport;->port:I

    if-ne v5, v3, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    iput v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->port:I

    .line 325
    iget v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->port:I

    invoke-direct {p0, v3, v2}, Lmeizu2_jcifs/smb/SmbTransport;->negotiate(ILmeizu2_jcifs/smb/ServerMessageBlock;)V

    goto :goto_0

    .line 331
    .end local v1    # "nr":Ljava/net/NoRouteToHostException;
    :cond_4
    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->server:Lmeizu2_jcifs/smb/SmbTransport$ServerData;

    iget v3, v3, Lmeizu2_jcifs/smb/SmbTransport$ServerData;->capabilities:I

    and-int/2addr v3, v6

    if-eq v3, v6, :cond_5

    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->server:Lmeizu2_jcifs/smb/SmbTransport$ServerData;

    iget v3, v3, Lmeizu2_jcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_5

    sget v3, Lmeizu2_jcifs/smb/SmbTransport;->LM_COMPATIBILITY:I

    if-nez v3, :cond_5

    .line 334
    new-instance v3, Lmeizu2_jcifs/smb/SmbException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected encryption key length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmeizu2_jcifs/smb/SmbTransport;->server:Lmeizu2_jcifs/smb/SmbTransport$ServerData;

    iget v5, v5, Lmeizu2_jcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lmeizu2_jcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 339
    :cond_5
    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->address:Lmeizu2_jcifs/UniAddress;

    invoke-virtual {v3}, Lmeizu2_jcifs/UniAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    .line 340
    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->server:Lmeizu2_jcifs/smb/SmbTransport$ServerData;

    iget-boolean v3, v3, Lmeizu2_jcifs/smb/SmbTransport$ServerData;->signaturesRequired:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->server:Lmeizu2_jcifs/smb/SmbTransport$ServerData;

    iget-boolean v3, v3, Lmeizu2_jcifs/smb/SmbTransport$ServerData;->signaturesEnabled:Z

    if-eqz v3, :cond_a

    sget-boolean v3, Lmeizu2_jcifs/smb/SmbTransport;->SIGNPREF:Z

    if-eqz v3, :cond_a

    .line 341
    :cond_6
    iget v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->flags2:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->flags2:I

    .line 345
    :goto_1
    iget v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->maxMpxCount:I

    iget-object v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->server:Lmeizu2_jcifs/smb/SmbTransport$ServerData;

    iget v4, v4, Lmeizu2_jcifs/smb/SmbTransport$ServerData;->maxMpxCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->maxMpxCount:I

    .line 346
    iget v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->maxMpxCount:I

    if-ge v3, v7, :cond_7

    iput v7, p0, Lmeizu2_jcifs/smb/SmbTransport;->maxMpxCount:I

    .line 347
    :cond_7
    iget v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->snd_buf_size:I

    iget-object v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->server:Lmeizu2_jcifs/smb/SmbTransport$ServerData;

    iget v4, v4, Lmeizu2_jcifs/smb/SmbTransport$ServerData;->maxBufferSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->snd_buf_size:I

    .line 348
    iget v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->capabilities:I

    iget-object v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->server:Lmeizu2_jcifs/smb/SmbTransport$ServerData;

    iget v4, v4, Lmeizu2_jcifs/smb/SmbTransport$ServerData;->capabilities:I

    and-int/2addr v3, v4

    iput v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->capabilities:I

    .line 349
    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->server:Lmeizu2_jcifs/smb/SmbTransport$ServerData;

    iget v3, v3, Lmeizu2_jcifs/smb/SmbTransport$ServerData;->capabilities:I

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_8

    .line 350
    iget v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->capabilities:I

    or-int/2addr v3, v6

    iput v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->capabilities:I

    .line 352
    :cond_8
    iget v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->capabilities:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_9

    .line 354
    sget-boolean v3, Lmeizu2_jcifs/smb/SmbTransport;->FORCE_UNICODE:Z

    if-eqz v3, :cond_b

    .line 355
    iget v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->capabilities:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->capabilities:I

    .line 361
    :cond_9
    :goto_2
    return-void

    .line 343
    :cond_a
    iget v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->flags2:I

    const v4, 0xfffb

    and-int/2addr v3, v4

    iput v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->flags2:I

    goto :goto_1

    .line 357
    :cond_b
    const/4 v3, 0x0

    iput-boolean v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->useUnicode:Z

    .line 358
    iget v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->flags2:I

    and-int/lit16 v3, v3, 0x7fff

    iput v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->flags2:I

    goto :goto_2
.end method

.method protected doDisconnect(Z)V
    .locals 4
    .param p1, "hard"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 363
    iget-object v2, p0, Lmeizu2_jcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 365
    .local v0, "iter":Ljava/util/ListIterator;
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmeizu2_jcifs/smb/SmbSession;

    .line 367
    .local v1, "ssn":Lmeizu2_jcifs/smb/SmbSession;
    invoke-virtual {v1, p1}, Lmeizu2_jcifs/smb/SmbSession;->logoff(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 374
    .end local v1    # "ssn":Lmeizu2_jcifs/smb/SmbSession;
    :catchall_0
    move-exception v2

    iput-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->digest:Lmeizu2_jcifs/smb/SigningDigest;

    .line 375
    iput-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 376
    iput-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    throw v2

    .line 369
    :cond_0
    :try_start_1
    iget-object v2, p0, Lmeizu2_jcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownOutput()V

    .line 370
    iget-object v2, p0, Lmeizu2_jcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 371
    iget-object v2, p0, Lmeizu2_jcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 372
    iget-object v2, p0, Lmeizu2_jcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    iput-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->digest:Lmeizu2_jcifs/smb/SigningDigest;

    .line 375
    iput-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 376
    iput-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    .line 378
    return-void
.end method

.method protected doRecv(Lmeizu2_jcifs/util/transport/Response;)V
    .locals 14
    .param p1, "response"    # Lmeizu2_jcifs/util/transport/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v9, -0x80000000

    const/4 v7, 0x0

    const/4 v13, 0x4

    .line 472
    move-object v5, p1

    check-cast v5, Lmeizu2_jcifs/smb/ServerMessageBlock;

    .line 473
    .local v5, "resp":Lmeizu2_jcifs/smb/ServerMessageBlock;
    iget-boolean v8, p0, Lmeizu2_jcifs/smb/SmbTransport;->useUnicode:Z

    iput-boolean v8, v5, Lmeizu2_jcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 474
    iget v8, p0, Lmeizu2_jcifs/smb/SmbTransport;->capabilities:I

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_0

    const/4 v7, 0x1

    :cond_0
    iput-boolean v7, v5, Lmeizu2_jcifs/smb/ServerMessageBlock;->extendedSecurity:Z

    .line 476
    sget-object v8, Lmeizu2_jcifs/smb/SmbTransport;->BUF:[B

    monitor-enter v8

    .line 477
    :try_start_0
    iget-object v7, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    const/4 v9, 0x0

    sget-object v10, Lmeizu2_jcifs/smb/SmbTransport;->BUF:[B

    const/4 v11, 0x0

    const/16 v12, 0x24

    invoke-static {v7, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 478
    sget-object v7, Lmeizu2_jcifs/smb/SmbTransport;->BUF:[B

    const/4 v9, 0x2

    invoke-static {v7, v9}, Lmeizu2_jcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v7

    const v9, 0xffff

    and-int v6, v7, v9

    .line 479
    .local v6, "size":I
    const/16 v7, 0x21

    if-lt v6, v7, :cond_1

    add-int/lit8 v7, v6, 0x4

    iget v9, p0, Lmeizu2_jcifs/smb/SmbTransport;->rcv_buf_size:I

    if-le v7, v9, :cond_2

    .line 480
    :cond_1
    new-instance v7, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid payload size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 520
    .end local v6    # "size":I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 482
    .restart local v6    # "size":I
    :cond_2
    :try_start_1
    sget-object v7, Lmeizu2_jcifs/smb/SmbTransport;->BUF:[B

    const/16 v9, 0x9

    invoke-static {v7, v9}, Lmeizu2_jcifs/util/Encdec;->dec_uint32le([BI)I

    move-result v7

    and-int/lit8 v1, v7, -0x1

    .line 483
    .local v1, "errorCode":I
    iget-byte v7, v5, Lmeizu2_jcifs/smb/ServerMessageBlock;->command:B

    const/16 v9, 0x2e

    if-ne v7, v9, :cond_8

    if-eqz v1, :cond_3

    const v7, -0x7ffffffb

    if-ne v1, v7, :cond_8

    .line 486
    :cond_3
    move-object v0, v5

    check-cast v0, Lmeizu2_jcifs/smb/SmbComReadAndXResponse;

    move-object v4, v0

    .line 487
    .local v4, "r":Lmeizu2_jcifs/smb/SmbComReadAndXResponse;
    const/16 v2, 0x20

    .line 489
    .local v2, "off":I
    iget-object v7, p0, Lmeizu2_jcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    sget-object v9, Lmeizu2_jcifs/smb/SmbTransport;->BUF:[B

    const/16 v10, 0x24

    const/16 v11, 0x1b

    invoke-static {v7, v9, v10, v11}, Lmeizu2_jcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    add-int/lit8 v2, v2, 0x1b

    .line 490
    sget-object v7, Lmeizu2_jcifs/smb/SmbTransport;->BUF:[B

    const/4 v9, 0x4

    invoke-virtual {v5, v7, v9}, Lmeizu2_jcifs/smb/ServerMessageBlock;->decode([BI)I

    .line 492
    iget v7, v4, Lmeizu2_jcifs/smb/SmbComReadAndXResponse;->dataOffset:I

    add-int/lit8 v3, v7, -0x3b

    .line 493
    .local v3, "pad":I
    iget v7, v4, Lmeizu2_jcifs/smb/SmbComReadAndXResponse;->byteCount:I

    if-lez v7, :cond_4

    if-lez v3, :cond_4

    if-ge v3, v13, :cond_4

    .line 494
    iget-object v7, p0, Lmeizu2_jcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    sget-object v9, Lmeizu2_jcifs/smb/SmbTransport;->BUF:[B

    const/16 v10, 0x3f

    invoke-static {v7, v9, v10, v3}, Lmeizu2_jcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    .line 496
    :cond_4
    iget v7, v4, Lmeizu2_jcifs/smb/SmbComReadAndXResponse;->dataLength:I

    if-lez v7, :cond_5

    .line 497
    iget-object v7, p0, Lmeizu2_jcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v9, v4, Lmeizu2_jcifs/smb/SmbComReadAndXResponse;->b:[B

    iget v10, v4, Lmeizu2_jcifs/smb/SmbComReadAndXResponse;->off:I

    iget v11, v4, Lmeizu2_jcifs/smb/SmbComReadAndXResponse;->dataLength:I

    invoke-static {v7, v9, v10, v11}, Lmeizu2_jcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    .line 510
    .end local v2    # "off":I
    .end local v3    # "pad":I
    .end local v4    # "r":Lmeizu2_jcifs/smb/SmbComReadAndXResponse;
    :cond_5
    :goto_0
    iget-object v7, p0, Lmeizu2_jcifs/smb/SmbTransport;->digest:Lmeizu2_jcifs/smb/SigningDigest;

    if-eqz v7, :cond_6

    iget v7, v5, Lmeizu2_jcifs/smb/ServerMessageBlock;->errorCode:I

    if-nez v7, :cond_6

    .line 511
    iget-object v7, p0, Lmeizu2_jcifs/smb/SmbTransport;->digest:Lmeizu2_jcifs/smb/SigningDigest;

    sget-object v9, Lmeizu2_jcifs/smb/SmbTransport;->BUF:[B

    const/4 v10, 0x4

    invoke-virtual {v7, v9, v10, v5}, Lmeizu2_jcifs/smb/SigningDigest;->verify([BILmeizu2_jcifs/smb/ServerMessageBlock;)Z

    .line 514
    :cond_6
    sget-object v7, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    sget v7, Lmeizu2_jcifs/util/LogStream;->level:I

    if-lt v7, v13, :cond_7

    .line 515
    sget-object v7, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    invoke-virtual {v7, p1}, Lmeizu2_jcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 516
    sget-object v7, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    sget v7, Lmeizu2_jcifs/util/LogStream;->level:I

    const/4 v9, 0x6

    if-lt v7, v9, :cond_7

    .line 517
    sget-object v7, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    sget-object v9, Lmeizu2_jcifs/smb/SmbTransport;->BUF:[B

    const/4 v10, 0x4

    invoke-static {v7, v9, v10, v6}, Lmeizu2_jcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 520
    :cond_7
    monitor-exit v8

    .line 521
    return-void

    .line 499
    :cond_8
    iget-object v7, p0, Lmeizu2_jcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    sget-object v9, Lmeizu2_jcifs/smb/SmbTransport;->BUF:[B

    const/16 v10, 0x24

    add-int/lit8 v11, v6, -0x20

    invoke-static {v7, v9, v10, v11}, Lmeizu2_jcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    .line 500
    sget-object v7, Lmeizu2_jcifs/smb/SmbTransport;->BUF:[B

    const/4 v9, 0x4

    invoke-virtual {v5, v7, v9}, Lmeizu2_jcifs/smb/ServerMessageBlock;->decode([BI)I

    .line 501
    instance-of v7, v5, Lmeizu2_jcifs/smb/SmbComTransactionResponse;

    if-eqz v7, :cond_5

    .line 502
    move-object v0, v5

    check-cast v0, Lmeizu2_jcifs/smb/SmbComTransactionResponse;

    move-object v7, v0

    invoke-virtual {v7}, Lmeizu2_jcifs/smb/SmbComTransactionResponse;->nextElement()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected doSend(Lmeizu2_jcifs/util/transport/Request;)V
    .locals 8
    .param p1, "request"    # Lmeizu2_jcifs/util/transport/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    .line 437
    sget-object v4, Lmeizu2_jcifs/smb/SmbTransport;->BUF:[B

    monitor-enter v4

    .line 438
    :try_start_0
    move-object v0, p1

    check-cast v0, Lmeizu2_jcifs/smb/ServerMessageBlock;

    move-object v2, v0

    .line 439
    .local v2, "smb":Lmeizu2_jcifs/smb/ServerMessageBlock;
    sget-object v3, Lmeizu2_jcifs/smb/SmbTransport;->BUF:[B

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v5}, Lmeizu2_jcifs/smb/ServerMessageBlock;->encode([BI)I

    move-result v1

    .line 440
    .local v1, "n":I
    const v3, 0xffff

    and-int/2addr v3, v1

    sget-object v5, Lmeizu2_jcifs/smb/SmbTransport;->BUF:[B

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lmeizu2_jcifs/util/Encdec;->enc_uint32be(I[BI)I

    .line 441
    sget-object v3, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    sget v3, Lmeizu2_jcifs/util/LogStream;->level:I

    if-lt v3, v7, :cond_2

    .line 443
    :cond_0
    sget-object v3, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    invoke-virtual {v3, v2}, Lmeizu2_jcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 444
    instance-of v3, v2, Lmeizu2_jcifs/smb/AndXServerMessageBlock;

    if-eqz v3, :cond_1

    check-cast v2, Lmeizu2_jcifs/smb/AndXServerMessageBlock;

    .end local v2    # "smb":Lmeizu2_jcifs/smb/ServerMessageBlock;
    iget-object v2, v2, Lmeizu2_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu2_jcifs/smb/ServerMessageBlock;

    .restart local v2    # "smb":Lmeizu2_jcifs/smb/ServerMessageBlock;
    if-nez v2, :cond_0

    .line 446
    :cond_1
    sget-object v3, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    sget v3, Lmeizu2_jcifs/util/LogStream;->level:I

    const/4 v5, 0x6

    if-lt v3, v5, :cond_2

    .line 447
    sget-object v3, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    sget-object v5, Lmeizu2_jcifs/smb/SmbTransport;->BUF:[B

    const/4 v6, 0x4

    invoke-static {v3, v5, v6, v1}, Lmeizu2_jcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 453
    :cond_2
    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    sget-object v5, Lmeizu2_jcifs/smb/SmbTransport;->BUF:[B

    const/4 v6, 0x0

    add-int/lit8 v7, v1, 0x4

    invoke-virtual {v3, v5, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 454
    monitor-exit v4

    .line 455
    return-void

    .line 454
    .end local v1    # "n":I
    .end local v2    # "smb":Lmeizu2_jcifs/smb/ServerMessageBlock;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected doSend0(Lmeizu2_jcifs/util/transport/Request;)V
    .locals 4
    .param p1, "request"    # Lmeizu2_jcifs/util/transport/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    :try_start_0
    invoke-virtual {p0, p1}, Lmeizu2_jcifs/smb/SmbTransport;->doSend(Lmeizu2_jcifs/util/transport/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    return-void

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "ioe":Ljava/io/IOException;
    sget-object v2, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    sget v2, Lmeizu2_jcifs/util/LogStream;->level:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 461
    sget-object v2, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    invoke-virtual {v0, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 463
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {p0, v2}, Lmeizu2_jcifs/smb/SmbTransport;->disconnect(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 467
    :goto_0
    throw v0

    .line 464
    :catch_1
    move-exception v1

    .line 465
    .local v1, "ioe2":Ljava/io/IOException;
    sget-object v2, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method protected doSkip()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    iget-object v1, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lmeizu2_jcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v1

    const v2, 0xffff

    and-int v0, v1, v2

    .line 524
    .local v0, "size":I
    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lmeizu2_jcifs/smb/SmbTransport;->rcv_buf_size:I

    if-le v1, v2, :cond_1

    .line 526
    :cond_0
    iget-object v1, p0, Lmeizu2_jcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lmeizu2_jcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 530
    :goto_0
    return-void

    .line 528
    :cond_1
    iget-object v1, p0, Lmeizu2_jcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    add-int/lit8 v2, v0, -0x20

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    goto :goto_0
.end method

.method getDfsReferrals(Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Lmeizu2_jcifs/smb/DfsReferral;
    .locals 16
    .param p1, "auth"    # Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "rn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 701
    invoke-virtual/range {p0 .. p1}, Lmeizu2_jcifs/smb/SmbTransport;->getSmbSession(Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;)Lmeizu2_jcifs/smb/SmbSession;

    move-result-object v9

    const-string v10, "IPC$"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lmeizu2_jcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Lmeizu2_jcifs/smb/SmbTree;

    move-result-object v5

    .line 702
    .local v5, "ipc":Lmeizu2_jcifs/smb/SmbTree;
    new-instance v8, Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse;

    invoke-direct {v8}, Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse;-><init>()V

    .line 703
    .local v8, "resp":Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse;
    new-instance v9, Lmeizu2_jcifs/smb/Trans2GetDfsReferral;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Lmeizu2_jcifs/smb/Trans2GetDfsReferral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9, v8}, Lmeizu2_jcifs/smb/SmbTree;->send(Lmeizu2_jcifs/smb/ServerMessageBlock;Lmeizu2_jcifs/smb/ServerMessageBlock;)V

    .line 705
    iget v9, v8, Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    if-nez v9, :cond_0

    .line 706
    const/4 v9, 0x0

    .line 741
    :goto_0
    return-object v9

    .line 707
    :cond_0
    if-eqz p3, :cond_1

    iget v9, v8, Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    move/from16 v0, p3

    if-ge v9, v0, :cond_2

    .line 708
    :cond_1
    iget v0, v8, Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    move/from16 p3, v0

    .line 711
    :cond_2
    new-instance v4, Lmeizu2_jcifs/smb/DfsReferral;

    invoke-direct {v4}, Lmeizu2_jcifs/smb/DfsReferral;-><init>()V

    .line 713
    .local v4, "dr":Lmeizu2_jcifs/smb/DfsReferral;
    const/4 v9, 0x4

    new-array v2, v9, [Ljava/lang/String;

    .line 714
    .local v2, "arr":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sget-wide v12, Lmeizu2_jcifs/smb/Dfs;->TTL:J

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    add-long v6, v10, v12

    .line 716
    .local v6, "expiration":J
    const/4 v3, 0x0

    .line 720
    .local v3, "di":I
    :goto_1
    move-object/from16 v0, p1

    iget-boolean v9, v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    iput-boolean v9, v4, Lmeizu2_jcifs/smb/DfsReferral;->resolveHashes:Z

    .line 721
    iget-object v9, v8, Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v9, v9, v3

    iget v9, v9, Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->ttl:I

    int-to-long v10, v9

    iput-wide v10, v4, Lmeizu2_jcifs/smb/DfsReferral;->ttl:J

    .line 722
    iput-wide v6, v4, Lmeizu2_jcifs/smb/DfsReferral;->expiration:J

    .line 723
    const-string v9, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 724
    iget-object v9, v8, Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v9, v9, v3

    iget-object v9, v9, Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lmeizu2_jcifs/smb/DfsReferral;->server:Ljava/lang/String;

    .line 731
    :goto_2
    iget v9, v8, Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse;->pathConsumed:I

    iput v9, v4, Lmeizu2_jcifs/smb/DfsReferral;->pathConsumed:I

    .line 733
    add-int/lit8 v3, v3, 0x1

    .line 734
    move/from16 v0, p3

    if-ne v3, v0, :cond_4

    .line 741
    iget-object v9, v4, Lmeizu2_jcifs/smb/DfsReferral;->next:Lmeizu2_jcifs/smb/DfsReferral;

    goto :goto_0

    .line 726
    :cond_3
    iget-object v9, v8, Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v9, v9, v3

    iget-object v9, v9, Lmeizu2_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, Lmeizu2_jcifs/smb/SmbTransport;->dfsPathSplit(Ljava/lang/String;[Ljava/lang/String;)V

    .line 727
    const/4 v9, 0x1

    aget-object v9, v2, v9

    iput-object v9, v4, Lmeizu2_jcifs/smb/DfsReferral;->server:Ljava/lang/String;

    .line 728
    const/4 v9, 0x2

    aget-object v9, v2, v9

    iput-object v9, v4, Lmeizu2_jcifs/smb/DfsReferral;->share:Ljava/lang/String;

    .line 729
    const/4 v9, 0x3

    aget-object v9, v2, v9

    iput-object v9, v4, Lmeizu2_jcifs/smb/DfsReferral;->path:Ljava/lang/String;

    goto :goto_2

    .line 737
    :cond_4
    new-instance v9, Lmeizu2_jcifs/smb/DfsReferral;

    invoke-direct {v9}, Lmeizu2_jcifs/smb/DfsReferral;-><init>()V

    invoke-virtual {v4, v9}, Lmeizu2_jcifs/smb/DfsReferral;->append(Lmeizu2_jcifs/smb/DfsReferral;)V

    .line 738
    iget-object v4, v4, Lmeizu2_jcifs/smb/DfsReferral;->next:Lmeizu2_jcifs/smb/DfsReferral;

    goto :goto_1
.end method

.method declared-synchronized getSmbSession()Lmeizu2_jcifs/smb/SmbSession;
    .locals 4

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    new-instance v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmeizu2_jcifs/smb/SmbTransport;->getSmbSession(Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;)Lmeizu2_jcifs/smb/SmbSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getSmbSession(Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;)Lmeizu2_jcifs/smb/SmbSession;
    .locals 10
    .param p1, "auth"    # Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lmeizu2_jcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    .line 127
    .local v6, "iter":Ljava/util/ListIterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu2_jcifs/smb/SmbSession;

    .line 129
    .local v0, "ssn":Lmeizu2_jcifs/smb/SmbSession;
    invoke-virtual {v0, p1}, Lmeizu2_jcifs/smb/SmbSession;->matches(Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iput-object p1, v0, Lmeizu2_jcifs/smb/SmbSession;->auth:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    .line 151
    .end local v0    # "ssn":Lmeizu2_jcifs/smb/SmbSession;
    .local v7, "ssn":Ljava/lang/Object;
    :goto_0
    monitor-exit p0

    return-object v7

    .line 136
    .end local v7    # "ssn":Ljava/lang/Object;
    :cond_1
    :try_start_1
    sget v1, Lmeizu2_jcifs/smb/SmbTransport;->SO_TIMEOUT:I

    if-lez v1, :cond_3

    iget-wide v2, p0, Lmeizu2_jcifs/smb/SmbTransport;->sessionExpiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .local v8, "now":J
    cmp-long v1, v2, v8

    if-gez v1, :cond_3

    .line 137
    sget v1, Lmeizu2_jcifs/smb/SmbTransport;->SO_TIMEOUT:I

    int-to-long v2, v1

    add-long/2addr v2, v8

    iput-wide v2, p0, Lmeizu2_jcifs/smb/SmbTransport;->sessionExpiration:J

    .line 138
    iget-object v1, p0, Lmeizu2_jcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    .line 139
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 140
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu2_jcifs/smb/SmbSession;

    .line 141
    .restart local v0    # "ssn":Lmeizu2_jcifs/smb/SmbSession;
    iget-wide v2, v0, Lmeizu2_jcifs/smb/SmbSession;->expiration:J

    cmp-long v1, v2, v8

    if-gez v1, :cond_2

    .line 142
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmeizu2_jcifs/smb/SmbSession;->logoff(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 126
    .end local v0    # "ssn":Lmeizu2_jcifs/smb/SmbSession;
    .end local v6    # "iter":Ljava/util/ListIterator;
    .end local v8    # "now":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 147
    .restart local v6    # "iter":Ljava/util/ListIterator;
    :cond_3
    :try_start_2
    new-instance v0, Lmeizu2_jcifs/smb/SmbSession;

    iget-object v1, p0, Lmeizu2_jcifs/smb/SmbTransport;->address:Lmeizu2_jcifs/UniAddress;

    iget v2, p0, Lmeizu2_jcifs/smb/SmbTransport;->port:I

    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    iget v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->localPort:I

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lmeizu2_jcifs/smb/SmbSession;-><init>(Lmeizu2_jcifs/UniAddress;ILjava/net/InetAddress;ILmeizu2_jcifs/smb/NtlmPasswordAuthentication;)V

    .line 148
    .restart local v0    # "ssn":Lmeizu2_jcifs/smb/SmbSession;
    iput-object p0, v0, Lmeizu2_jcifs/smb/SmbSession;->transport:Lmeizu2_jcifs/smb/SmbTransport;

    .line 149
    iget-object v1, p0, Lmeizu2_jcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v0

    .line 151
    .restart local v7    # "ssn":Ljava/lang/Object;
    goto :goto_0
.end method

.method hasCapability(I)Z
    .locals 4
    .param p1, "cap"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 168
    :try_start_0
    sget v1, Lmeizu2_jcifs/smb/SmbTransport;->RESPONSE_TIMEOUT:I

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lmeizu2_jcifs/smb/SmbTransport;->connect(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    iget v1, p0, Lmeizu2_jcifs/smb/SmbTransport;->capabilities:I

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lmeizu2_jcifs/smb/SmbException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lmeizu2_jcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 172
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isSignatureSetupRequired(Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;)Z
    .locals 1
    .param p1, "auth"    # Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    .prologue
    .line 175
    iget v0, p0, Lmeizu2_jcifs/smb/SmbTransport;->flags2:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmeizu2_jcifs/smb/SmbTransport;->digest:Lmeizu2_jcifs/smb/SigningDigest;

    if-nez v0, :cond_0

    sget-object v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->NULL:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    if-eq p1, v0, :cond_0

    sget-object v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->NULL:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, p1}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeKey(Lmeizu2_jcifs/util/transport/Request;)V
    .locals 2
    .param p1, "request"    # Lmeizu2_jcifs/util/transport/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    iget v0, p0, Lmeizu2_jcifs/smb/SmbTransport;->mid:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmeizu2_jcifs/smb/SmbTransport;->mid:I

    const/16 v1, 0x7d00

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lmeizu2_jcifs/smb/SmbTransport;->mid:I

    .line 383
    :cond_0
    check-cast p1, Lmeizu2_jcifs/smb/ServerMessageBlock;

    .end local p1    # "request":Lmeizu2_jcifs/util/transport/Request;
    iget v0, p0, Lmeizu2_jcifs/smb/SmbTransport;->mid:I

    iput v0, p1, Lmeizu2_jcifs/smb/ServerMessageBlock;->mid:I

    .line 384
    return-void
.end method

.method matches(Lmeizu2_jcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Lmeizu2_jcifs/UniAddress;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .param p5, "hostName"    # Ljava/lang/String;

    .prologue
    .line 154
    if-nez p5, :cond_0

    .line 155
    invoke-virtual {p1}, Lmeizu2_jcifs/UniAddress;->getHostName()Ljava/lang/String;

    move-result-object p5

    .line 156
    :cond_0
    iget-object v0, p0, Lmeizu2_jcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmeizu2_jcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lmeizu2_jcifs/smb/SmbTransport;->address:Lmeizu2_jcifs/UniAddress;

    invoke-virtual {p1, v0}, Lmeizu2_jcifs/UniAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_2

    iget v0, p0, Lmeizu2_jcifs/smb/SmbTransport;->port:I

    if-eq p2, v0, :cond_2

    const/16 v0, 0x1bd

    if-ne p2, v0, :cond_4

    iget v0, p0, Lmeizu2_jcifs/smb/SmbTransport;->port:I

    const/16 v1, 0x8b

    if-ne v0, v1, :cond_4

    :cond_2
    iget-object v0, p0, Lmeizu2_jcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    if-eq p3, v0, :cond_3

    if-eqz p3, :cond_4

    iget-object v0, p0, Lmeizu2_jcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    invoke-virtual {p3, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget v0, p0, Lmeizu2_jcifs/smb/SmbTransport;->localPort:I

    if-ne p4, v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected peekKey()Lmeizu2_jcifs/util/transport/Request;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v3, 0x0

    const/16 v9, 0x20

    const/4 v8, 0x0

    const/4 v7, 0x4

    .line 388
    :cond_0
    iget-object v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    invoke-static {v4, v5, v8, v7}, Lmeizu2_jcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    move-result v2

    .local v2, "n":I
    if-ge v2, v7, :cond_2

    .line 433
    :cond_1
    :goto_0
    return-object v3

    .line 390
    :cond_2
    iget-object v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    aget-byte v4, v4, v8

    const/16 v5, -0x7b

    if-eq v4, v5, :cond_0

    .line 392
    iget-object v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    invoke-static {v4, v5, v7, v9}, Lmeizu2_jcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    move-result v2

    if-lt v2, v9, :cond_1

    .line 394
    sget-object v4, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    sget v4, Lmeizu2_jcifs/util/LogStream;->level:I

    if-lt v4, v7, :cond_3

    .line 395
    sget-object v4, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New data read: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmeizu2_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 396
    sget-object v4, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    iget-object v5, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    invoke-static {v4, v5, v7, v9}, Lmeizu2_jcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 407
    :cond_3
    :goto_1
    iget-object v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    aget-byte v4, v4, v8

    if-nez v4, :cond_4

    iget-object v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    if-nez v4, :cond_4

    iget-object v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    aget-byte v4, v4, v7

    if-ne v4, v10, :cond_4

    iget-object v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x5

    aget-byte v4, v4, v5

    const/16 v5, 0x53

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x6

    aget-byte v4, v4, v5

    const/16 v5, 0x4d

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x7

    aget-byte v4, v4, v5

    const/16 v5, 0x42

    if-ne v4, v5, :cond_4

    .line 425
    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->key:Lmeizu2_jcifs/smb/SmbComBlankResponse;

    iget-object v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    const/16 v5, 0x22

    invoke-static {v4, v5}, Lmeizu2_jcifs/util/Encdec;->dec_uint16le([BI)S

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    iput v4, v3, Lmeizu2_jcifs/smb/SmbComBlankResponse;->mid:I

    .line 433
    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->key:Lmeizu2_jcifs/smb/SmbComBlankResponse;

    goto :goto_0

    .line 417
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v4, 0x23

    if-ge v1, v4, :cond_5

    .line 418
    iget-object v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    iget-object v5, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v5, v5, v6

    aput-byte v5, v4, v1

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 421
    :cond_5
    iget-object v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "b":I
    if-eq v0, v10, :cond_1

    .line 422
    iget-object v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    const/16 v5, 0x23

    int-to-byte v6, v0

    aput-byte v6, v4, v5

    goto :goto_1
.end method

.method send(Lmeizu2_jcifs/smb/ServerMessageBlock;Lmeizu2_jcifs/smb/ServerMessageBlock;)V
    .locals 14
    .param p1, "request"    # Lmeizu2_jcifs/smb/ServerMessageBlock;
    .param p2, "response"    # Lmeizu2_jcifs/smb/ServerMessageBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 571
    invoke-virtual {p0}, Lmeizu2_jcifs/smb/SmbTransport;->connect()V

    .line 573
    iget v10, p1, Lmeizu2_jcifs/smb/ServerMessageBlock;->flags2:I

    iget v11, p0, Lmeizu2_jcifs/smb/SmbTransport;->flags2:I

    or-int/2addr v10, v11

    iput v10, p1, Lmeizu2_jcifs/smb/ServerMessageBlock;->flags2:I

    .line 574
    iget-boolean v10, p0, Lmeizu2_jcifs/smb/SmbTransport;->useUnicode:Z

    iput-boolean v10, p1, Lmeizu2_jcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 575
    move-object/from16 v0, p2

    iput-object v0, p1, Lmeizu2_jcifs/smb/ServerMessageBlock;->response:Lmeizu2_jcifs/smb/ServerMessageBlock;

    .line 576
    iget-object v10, p1, Lmeizu2_jcifs/smb/ServerMessageBlock;->digest:Lmeizu2_jcifs/smb/SigningDigest;

    if-nez v10, :cond_0

    .line 577
    iget-object v10, p0, Lmeizu2_jcifs/smb/SmbTransport;->digest:Lmeizu2_jcifs/smb/SigningDigest;

    iput-object v10, p1, Lmeizu2_jcifs/smb/ServerMessageBlock;->digest:Lmeizu2_jcifs/smb/SigningDigest;

    .line 580
    :cond_0
    if-nez p2, :cond_1

    .line 581
    :try_start_0
    invoke-virtual {p0, p1}, Lmeizu2_jcifs/smb/SmbTransport;->doSend0(Lmeizu2_jcifs/util/transport/Request;)V

    .line 664
    :goto_0
    return-void

    .line 583
    :cond_1
    instance-of v10, p1, Lmeizu2_jcifs/smb/SmbComTransaction;

    if-eqz v10, :cond_9

    .line 584
    iget-byte v10, p1, Lmeizu2_jcifs/smb/ServerMessageBlock;->command:B

    move-object/from16 v0, p2

    iput-byte v10, v0, Lmeizu2_jcifs/smb/ServerMessageBlock;->command:B

    .line 585
    move-object v0, p1

    check-cast v0, Lmeizu2_jcifs/smb/SmbComTransaction;

    move-object v5, v0

    .line 586
    .local v5, "req":Lmeizu2_jcifs/smb/SmbComTransaction;
    move-object/from16 v0, p2

    check-cast v0, Lmeizu2_jcifs/smb/SmbComTransactionResponse;

    move-object v6, v0

    .line 588
    .local v6, "resp":Lmeizu2_jcifs/smb/SmbComTransactionResponse;
    iget v10, p0, Lmeizu2_jcifs/smb/SmbTransport;->snd_buf_size:I

    iput v10, v5, Lmeizu2_jcifs/smb/SmbComTransaction;->maxBufferSize:I

    .line 589
    invoke-virtual {v6}, Lmeizu2_jcifs/smb/SmbComTransactionResponse;->reset()V
    :try_end_0
    .catch Lmeizu2_jcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 592
    :try_start_1
    invoke-static {v5, v6}, Lmeizu2_jcifs/smb/BufferCache;->getBuffers(Lmeizu2_jcifs/smb/SmbComTransaction;Lmeizu2_jcifs/smb/SmbComTransactionResponse;)V

    .line 598
    invoke-virtual {v5}, Lmeizu2_jcifs/smb/SmbComTransaction;->nextElement()Ljava/lang/Object;

    .line 599
    invoke-virtual {v5}, Lmeizu2_jcifs/smb/SmbComTransaction;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 600
    new-instance v3, Lmeizu2_jcifs/smb/SmbComBlankResponse;

    invoke-direct {v3}, Lmeizu2_jcifs/smb/SmbComBlankResponse;-><init>()V

    .line 601
    .local v3, "interim":Lmeizu2_jcifs/smb/SmbComBlankResponse;
    sget v10, Lmeizu2_jcifs/smb/SmbTransport;->RESPONSE_TIMEOUT:I

    int-to-long v10, v10

    invoke-super {p0, v5, v3, v10, v11}, Lmeizu2_jcifs/util/transport/Transport;->sendrecv(Lmeizu2_jcifs/util/transport/Request;Lmeizu2_jcifs/util/transport/Response;J)V

    .line 602
    iget v10, v3, Lmeizu2_jcifs/smb/SmbComBlankResponse;->errorCode:I

    if-eqz v10, :cond_2

    .line 603
    invoke-virtual {p0, v5, v3}, Lmeizu2_jcifs/smb/SmbTransport;->checkStatus(Lmeizu2_jcifs/smb/ServerMessageBlock;Lmeizu2_jcifs/smb/ServerMessageBlock;)V

    .line 605
    :cond_2
    invoke-virtual {v5}, Lmeizu2_jcifs/smb/SmbComTransaction;->nextElement()Ljava/lang/Object;

    .line 610
    .end local v3    # "interim":Lmeizu2_jcifs/smb/SmbComBlankResponse;
    :goto_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 611
    const/4 v10, 0x0

    :try_start_2
    move-object/from16 v0, p2

    iput-boolean v10, v0, Lmeizu2_jcifs/smb/ServerMessageBlock;->received:Z

    .line 612
    const/4 v10, 0x0

    iput-boolean v10, v6, Lmeizu2_jcifs/smb/SmbComTransactionResponse;->isReceived:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 614
    :try_start_3
    iget-object v10, p0, Lmeizu2_jcifs/smb/SmbTransport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v10, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    :cond_3
    invoke-virtual {p0, v5}, Lmeizu2_jcifs/smb/SmbTransport;->doSend0(Lmeizu2_jcifs/util/transport/Request;)V

    .line 622
    invoke-virtual {v5}, Lmeizu2_jcifs/smb/SmbComTransaction;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v5}, Lmeizu2_jcifs/smb/SmbComTransaction;->nextElement()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_3

    .line 628
    :cond_4
    sget v10, Lmeizu2_jcifs/smb/SmbTransport;->RESPONSE_TIMEOUT:I

    int-to-long v8, v10

    .line 629
    .local v8, "timeout":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long/2addr v10, v8

    iput-wide v10, v6, Lmeizu2_jcifs/smb/SmbComTransactionResponse;->expiration:J

    .line 630
    :cond_5
    invoke-virtual {v6}, Lmeizu2_jcifs/smb/SmbComTransactionResponse;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 631
    invoke-virtual {p0, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 632
    iget-wide v10, v6, Lmeizu2_jcifs/smb/SmbComTransactionResponse;->expiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v8, v10, v12

    .line 633
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gtz v10, :cond_5

    .line 634
    new-instance v10, Lmeizu2_jcifs/util/transport/TransportException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " timedout waiting for response to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lmeizu2_jcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 642
    .end local v8    # "timeout":J
    :catch_0
    move-exception v2

    .line 643
    .local v2, "ie":Ljava/lang/InterruptedException;
    :try_start_4
    new-instance v10, Lmeizu2_jcifs/util/transport/TransportException;

    invoke-direct {v10, v2}, Lmeizu2_jcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 645
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v10

    :try_start_5
    iget-object v11, p0, Lmeizu2_jcifs/smb/SmbTransport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v10

    .line 647
    :catchall_1
    move-exception v10

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 649
    :catchall_2
    move-exception v10

    :try_start_7
    iget-object v11, v5, Lmeizu2_jcifs/smb/SmbComTransaction;->txn_buf:[B

    invoke-static {v11}, Lmeizu2_jcifs/smb/BufferCache;->releaseBuffer([B)V

    .line 650
    iget-object v11, v6, Lmeizu2_jcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    invoke-static {v11}, Lmeizu2_jcifs/smb/BufferCache;->releaseBuffer([B)V

    throw v10
    :try_end_7
    .catch Lmeizu2_jcifs/smb/SmbException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 657
    .end local v5    # "req":Lmeizu2_jcifs/smb/SmbComTransaction;
    .end local v6    # "resp":Lmeizu2_jcifs/smb/SmbComTransactionResponse;
    :catch_1
    move-exception v7

    .line 658
    .local v7, "se":Lmeizu2_jcifs/smb/SmbException;
    throw v7

    .line 607
    .end local v7    # "se":Lmeizu2_jcifs/smb/SmbException;
    .restart local v5    # "req":Lmeizu2_jcifs/smb/SmbComTransaction;
    .restart local v6    # "resp":Lmeizu2_jcifs/smb/SmbComTransactionResponse;
    :cond_6
    :try_start_8
    invoke-virtual {p0, v5}, Lmeizu2_jcifs/smb/SmbTransport;->makeKey(Lmeizu2_jcifs/util/transport/Request;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    .line 639
    .restart local v8    # "timeout":J
    :cond_7
    :try_start_9
    move-object/from16 v0, p2

    iget v10, v0, Lmeizu2_jcifs/smb/ServerMessageBlock;->errorCode:I

    if-eqz v10, :cond_8

    .line 640
    invoke-virtual {p0, v5, v6}, Lmeizu2_jcifs/smb/SmbTransport;->checkStatus(Lmeizu2_jcifs/smb/ServerMessageBlock;Lmeizu2_jcifs/smb/ServerMessageBlock;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 645
    :cond_8
    :try_start_a
    iget-object v10, p0, Lmeizu2_jcifs/smb/SmbTransport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 649
    :try_start_b
    iget-object v10, v5, Lmeizu2_jcifs/smb/SmbComTransaction;->txn_buf:[B

    invoke-static {v10}, Lmeizu2_jcifs/smb/BufferCache;->releaseBuffer([B)V

    .line 650
    iget-object v10, v6, Lmeizu2_jcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    invoke-static {v10}, Lmeizu2_jcifs/smb/BufferCache;->releaseBuffer([B)V
    :try_end_b
    .catch Lmeizu2_jcifs/smb/SmbException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 663
    .end local v5    # "req":Lmeizu2_jcifs/smb/SmbComTransaction;
    .end local v6    # "resp":Lmeizu2_jcifs/smb/SmbComTransactionResponse;
    .end local v8    # "timeout":J
    :goto_2
    invoke-virtual/range {p0 .. p2}, Lmeizu2_jcifs/smb/SmbTransport;->checkStatus(Lmeizu2_jcifs/smb/ServerMessageBlock;Lmeizu2_jcifs/smb/ServerMessageBlock;)V

    goto/16 :goto_0

    .line 654
    :cond_9
    :try_start_c
    iget-byte v10, p1, Lmeizu2_jcifs/smb/ServerMessageBlock;->command:B

    move-object/from16 v0, p2

    iput-byte v10, v0, Lmeizu2_jcifs/smb/ServerMessageBlock;->command:B

    .line 655
    sget v10, Lmeizu2_jcifs/smb/SmbTransport;->RESPONSE_TIMEOUT:I

    int-to-long v10, v10

    move-object/from16 v0, p2

    invoke-super {p0, p1, v0, v10, v11}, Lmeizu2_jcifs/util/transport/Transport;->sendrecv(Lmeizu2_jcifs/util/transport/Request;Lmeizu2_jcifs/util/transport/Response;J)V
    :try_end_c
    .catch Lmeizu2_jcifs/smb/SmbException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_2

    .line 659
    :catch_2
    move-exception v4

    .line 660
    .local v4, "ioe":Ljava/io/IOException;
    new-instance v10, Lmeizu2_jcifs/smb/SmbException;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v4}, Lmeizu2_jcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method

.method ssn139()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 182
    new-instance v0, Lmeizu2_jcifs/netbios/Name;

    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->address:Lmeizu2_jcifs/UniAddress;

    invoke-virtual {v3}, Lmeizu2_jcifs/UniAddress;->firstCalledName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v5}, Lmeizu2_jcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 193
    .local v0, "calledName":Lmeizu2_jcifs/netbios/Name;
    :cond_0
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    iput-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 194
    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    if-eqz v3, :cond_1

    .line 195
    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lmeizu2_jcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    iget v6, p0, Lmeizu2_jcifs/smb/SmbTransport;->localPort:I

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v3, v4}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 196
    :cond_1
    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lmeizu2_jcifs/smb/SmbTransport;->address:Lmeizu2_jcifs/UniAddress;

    invoke-virtual {v5}, Lmeizu2_jcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8b

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    sget v5, Lmeizu2_jcifs/smb/SmbTransport;->CONN_TIMEOUT:I

    invoke-virtual {v3, v4, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 197
    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    sget v4, Lmeizu2_jcifs/smb/SmbTransport;->SO_TIMEOUT:I

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 199
    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    .line 200
    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    .line 202
    new-instance v2, Lmeizu2_jcifs/netbios/SessionRequestPacket;

    invoke-static {}, Lmeizu2_jcifs/netbios/NbtAddress;->getLocalName()Lmeizu2_jcifs/netbios/Name;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lmeizu2_jcifs/netbios/SessionRequestPacket;-><init>(Lmeizu2_jcifs/netbios/Name;Lmeizu2_jcifs/netbios/Name;)V

    .line 204
    .local v2, "ssp":Lmeizu2_jcifs/netbios/SessionServicePacket;
    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    iget-object v5, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    invoke-virtual {v2, v5, v7}, Lmeizu2_jcifs/netbios/SessionServicePacket;->writeWireFormat([BI)I

    move-result v5

    invoke-virtual {v3, v4, v7, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 205
    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    invoke-static {v3, v4, v7, v10}, Lmeizu2_jcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    move-result v3

    if-ge v3, v10, :cond_2

    .line 207
    :try_start_0
    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    new-instance v3, Lmeizu2_jcifs/smb/SmbException;

    const-string v4, "EOF during NetBIOS session request"

    invoke-direct {v3, v4}, Lmeizu2_jcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 212
    :cond_2
    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->sbuf:[B

    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xff

    sparse-switch v3, :sswitch_data_0

    .line 234
    invoke-virtual {p0, v8}, Lmeizu2_jcifs/smb/SmbTransport;->disconnect(Z)V

    .line 235
    new-instance v3, Lmeizu2_jcifs/netbios/NbtException;

    invoke-direct {v3, v9, v7}, Lmeizu2_jcifs/netbios/NbtException;-><init>(II)V

    throw v3

    .line 214
    :sswitch_0
    sget-object v3, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    sget v3, Lmeizu2_jcifs/util/LogStream;->level:I

    if-lt v3, v10, :cond_3

    .line 215
    sget-object v3, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "session established ok with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmeizu2_jcifs/smb/SmbTransport;->address:Lmeizu2_jcifs/UniAddress;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmeizu2_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 216
    :cond_3
    return-void

    .line 218
    :sswitch_1
    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    and-int/lit16 v1, v3, 0xff

    .line 219
    .local v1, "errorCode":I
    packed-switch v1, :pswitch_data_0

    .line 225
    :pswitch_0
    invoke-virtual {p0, v8}, Lmeizu2_jcifs/smb/SmbTransport;->disconnect(Z)V

    .line 226
    new-instance v3, Lmeizu2_jcifs/netbios/NbtException;

    invoke-direct {v3, v9, v1}, Lmeizu2_jcifs/netbios/NbtException;-><init>(II)V

    throw v3

    .line 222
    :pswitch_1
    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 237
    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbTransport;->address:Lmeizu2_jcifs/UniAddress;

    invoke-virtual {v3}, Lmeizu2_jcifs/UniAddress;->nextCalledName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lmeizu2_jcifs/netbios/Name;->name:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 239
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to establish session with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmeizu2_jcifs/smb/SmbTransport;->address:Lmeizu2_jcifs/UniAddress;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 230
    .end local v1    # "errorCode":I
    :sswitch_2
    invoke-virtual {p0, v8}, Lmeizu2_jcifs/smb/SmbTransport;->disconnect(Z)V

    .line 231
    new-instance v3, Lmeizu2_jcifs/netbios/NbtException;

    const/4 v4, -0x1

    invoke-direct {v3, v9, v4}, Lmeizu2_jcifs/netbios/NbtException;-><init>(II)V

    throw v3

    .line 208
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 212
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x82 -> :sswitch_0
        0x83 -> :sswitch_1
    .end sparse-switch

    .line 219
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lmeizu2_jcifs/util/transport/Transport;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmeizu2_jcifs/smb/SmbTransport;->address:Lmeizu2_jcifs/UniAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmeizu2_jcifs/smb/SmbTransport;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
