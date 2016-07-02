.class public Lcom/android/org/conscrypt/OpenSSLEngineImpl;
.super Ljavax/net/ssl/SSLEngine;
.source "OpenSSLEngineImpl.java"

# interfaces
.implements Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
.implements Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;
.implements Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLEngineImpl$1;,
        Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    }
.end annotation


# static fields
.field private static nullSource:Lcom/android/org/conscrypt/OpenSSLBIOSource;


# instance fields
.field channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

.field private engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

.field private handshakeSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

.field private handshakeSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

.field private final localToRemoteSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

.field private sslNativePointer:J

.field private final sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

.field private final stateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLBIOSource;->wrap(Ljava/nio/ByteBuffer;)Lcom/android/org/conscrypt/OpenSSLBIOSource;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->nullSource:Lcom/android/org/conscrypt/OpenSSLBIOSource;

    return-void
.end method

.method public constructor <init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 1
    .param p1, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;

    .prologue
    .line 122
    invoke-direct {p0}, Ljavax/net/ssl/SSLEngine;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->NEW:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    .line 108
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->create()Lcom/android/org/conscrypt/OpenSSLBIOSink;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->localToRemoteSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

    .line 123
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLEngine;-><init>(Ljava/lang/String;I)V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->NEW:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    .line 108
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->create()Lcom/android/org/conscrypt/OpenSSLBIOSink;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->localToRemoteSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

    .line 128
    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 129
    return-void
.end method

.method private static checkIndex(III)V
    .locals 2
    .param p0, "length"    # I
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 376
    if-gez p1, :cond_0

    .line 377
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "offset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_0
    if-gez p2, :cond_1

    .line 379
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "count < 0"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_1
    if-le p1, p0, :cond_2

    .line 381
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "offset > length"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_2
    sub-int v0, p0, p2

    if-le p1, v0, :cond_3

    .line 383
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "offset + count > length"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_3
    return-void
.end method

.method private free()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 709
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 714
    :goto_0
    return-void

    .line 712
    :cond_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_free(J)V

    .line 713
    iput-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    goto :goto_0
.end method

.method private getNextAvailableByteBuffer([Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 505
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 506
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_0

    .line 507
    aget-object v1, p1, v0

    .line 510
    :goto_1
    return-object v1

    .line 505
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 510
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private shutdown()V
    .locals 7

    .prologue
    .line 690
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->nullSource:Lcom/android/org/conscrypt/OpenSSLBIOSource;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLBIOSource;->getContext()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->localToRemoteSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->getContext()J

    move-result-wide v4

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_shutdown_BIO(JJJLcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :goto_0
    return-void

    .line 692
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private shutdownAndFreeSslNative()V
    .locals 1

    .prologue
    .line 702
    :try_start_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 704
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->free()V

    .line 706
    return-void

    .line 704
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->free()V

    throw v0
.end method

.method private static writeSinkToByteBuffer(Lcom/android/org/conscrypt/OpenSSLBIOSink;Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p0, "sink"    # Lcom/android/org/conscrypt/OpenSSLBIOSink;
    .param p1, "dst"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->available()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 608
    .local v0, "toWrite":I
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->position()I

    move-result v2

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 609
    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->skip(J)J

    .line 610
    return v0
.end method


# virtual methods
.method public beginHandshake()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v5, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-eq v1, v5, :cond_0

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v5, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_OUTBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-eq v1, v5, :cond_0

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v5, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_INBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-ne v1, v5, :cond_1

    .line 136
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v5, "Engine has already been closed"

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 138
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v5, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_STARTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-ne v1, v5, :cond_2

    .line 139
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v5, "Handshake has already been started"

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_2
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v5, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->MODE_SET:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-eq v1, v5, :cond_3

    .line 142
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v5, "Client/server mode must be set before handshake"

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_3
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getUseClientMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 145
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_WANTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    .line 149
    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    const/4 v11, 0x1

    .line 153
    .local v11, "releaseResources":Z
    :try_start_2
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v12

    .line 154
    .local v12, "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    iget-wide v2, v12, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    .line 155
    .local v2, "sslCtxNativePointer":J
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_new(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    .line 156
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getPeerPort()I

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionToReuse(JLjava/lang/String;I)Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    .line 158
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v8

    move-object v6, p0

    move-object v7, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/org/conscrypt/SSLParametersImpl;->setSSLParameters(JJLcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-virtual {v1, v4, v5}, Lcom/android/org/conscrypt/SSLParametersImpl;->setCertificateValidation(J)V

    .line 161
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/org/conscrypt/SSLParametersImpl;->setTlsChannelId(JLcom/android/org/conscrypt/OpenSSLKey;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getUseClientMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 163
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_connect_state(J)V

    .line 167
    :goto_1
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->create()Lcom/android/org/conscrypt/OpenSSLBIOSink;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 168
    const/4 v11, 0x0

    .line 179
    if-eqz v11, :cond_4

    .line 180
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 181
    :try_start_3
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    .line 182
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 183
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->shutdownAndFreeSslNative()V

    .line 186
    :cond_4
    return-void

    .line 147
    .end local v2    # "sslCtxNativePointer":J
    .end local v11    # "releaseResources":Z
    .end local v12    # "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :cond_5
    :try_start_4
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_STARTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 165
    .restart local v2    # "sslCtxNativePointer":J
    .restart local v11    # "releaseResources":Z
    .restart local v12    # "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :cond_6
    :try_start_5
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_accept_state(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 169
    .end local v2    # "sslCtxNativePointer":J
    .end local v12    # "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 173
    .local v10, "message":Ljava/lang/String;
    const-string v1, "unexpected CCS"

    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 174
    const-string v1, "ssl_unexpected_ccs: host=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 175
    .local v9, "logMessage":Ljava/lang/String;
    invoke-static {v9}, Lcom/android/org/conscrypt/Platform;->logEvent(Ljava/lang/String;)V

    .line 177
    .end local v9    # "logMessage":Ljava/lang/String;
    :cond_7
    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 179
    .end local v0    # "e":Ljava/io/IOException;
    .end local v10    # "message":Ljava/lang/String;
    :catchall_1
    move-exception v1

    if-eqz v11, :cond_8

    .line 180
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 181
    :try_start_7
    sget-object v5, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    iput-object v5, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    .line 182
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 183
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->shutdownAndFreeSslNative()V

    :cond_8
    throw v1

    .line 182
    .restart local v2    # "sslCtxNativePointer":J
    .restart local v12    # "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :catchall_2
    move-exception v1

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1

    .end local v2    # "sslCtxNativePointer":J
    .end local v12    # "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :catchall_3
    move-exception v1

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v1
.end method

.method public chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "issuers"    # [Ljavax/security/auth/x500/X500Principal;
    .param p3, "keyTypes"    # [Ljava/lang/String;

    .prologue
    .line 738
    instance-of v1, p1, Ljavax/net/ssl/X509ExtendedKeyManager;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 739
    check-cast v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 740
    .local v0, "ekm":Ljavax/net/ssl/X509ExtendedKeyManager;
    invoke-virtual {v0, p3, p2, p0}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v1

    .line 742
    .end local v0    # "ekm":Ljavax/net/ssl/X509ExtendedKeyManager;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, p3, p2, v1}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public chooseClientPSKIdentity(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;
    .param p2, "identityHint"    # Ljava/lang/String;

    .prologue
    .line 753
    invoke-interface {p1, p2, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->chooseClientKeyIdentity(Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "keyType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 727
    instance-of v1, p1, Ljavax/net/ssl/X509ExtendedKeyManager;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 728
    check-cast v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 729
    .local v0, "ekm":Ljavax/net/ssl/X509ExtendedKeyManager;
    invoke-virtual {v0, p2, v2, p0}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v1

    .line 731
    .end local v0    # "ekm":Ljavax/net/ssl/X509ExtendedKeyManager;
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p1, p2, v2, v2}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public chooseServerPSKIdentityHint(Lcom/android/org/conscrypt/PSKKeyManager;)Ljava/lang/String;
    .locals 1
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;

    .prologue
    .line 748
    invoke-interface {p1, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->chooseServerKeyIdentityHint(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clientCertificateRequested([B[[B)V
    .locals 7
    .param p1, "keyTypeBytes"    # [B
    .param p2, "asn1DerEncodedPrincipals"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 684
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    move-object v2, p1

    move-object v3, p2

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/org/conscrypt/SSLParametersImpl;->chooseClientCertificate([B[[BJLcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;)V

    .line 686
    return-void
.end method

.method public clientPSKKeyRequested(Ljava/lang/String;[B[B)I
    .locals 1
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # [B
    .param p3, "key"    # [B

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clientPSKKeyRequested(Ljava/lang/String;[B[BLcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)I

    move-result v0

    return v0
.end method

.method public closeInbound()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-ne v0, v2, :cond_0

    .line 192
    monitor-exit v1

    .line 201
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_OUTBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-ne v0, v2, :cond_1

    .line 195
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    .line 199
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 197
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_INBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public closeOutbound()V
    .locals 3

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_OUTBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-ne v0, v2, :cond_1

    .line 207
    :cond_0
    monitor-exit v1

    .line 219
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->MODE_SET:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->NEW:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-eq v0, v2, :cond_2

    .line 210
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->shutdownAndFreeSslNative()V

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_INBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-ne v0, v2, :cond_3

    .line 213
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    .line 217
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->shutdown()V

    goto :goto_0

    .line 215
    :cond_3
    :try_start_1
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_OUTBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    goto :goto_1

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 719
    :try_start_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->free()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 723
    return-void

    .line 721
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDelegatedTask()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 4

    .prologue
    .line 244
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 245
    :try_start_0
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$1;->$SwitchMap$org$conscrypt$OpenSSLEngineImpl$EngineState:[I

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 277
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected engine state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 247
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    monitor-exit v1

    .line 273
    :goto_0
    return-object v0

    .line 250
    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    monitor-exit v1

    goto :goto_0

    .line 253
    :pswitch_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->available()I

    move-result v0

    if-lez v0, :cond_1

    .line 254
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    monitor-exit v1

    goto :goto_0

    .line 256
    :cond_1
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    monitor-exit v1

    goto :goto_0

    .line 259
    :pswitch_2
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->available()I

    move-result v0

    if-nez v0, :cond_2

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

    .line 261
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->READY:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    .line 262
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    monitor-exit v1

    goto :goto_0

    .line 264
    :cond_2
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    monitor-exit v1

    goto :goto_0

    .line 273
    :pswitch_3
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getNeedClientAuth()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 1
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;
    .param p2, "identityHint"    # Ljava/lang/String;
    .param p3, "identity"    # Ljava/lang/String;

    .prologue
    .line 758
    invoke-interface {p1, p2, p3, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->getKey(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    if-nez v0, :cond_0

    .line 289
    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 291
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    goto :goto_0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public isInboundDone()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 316
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 317
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 318
    :try_start_0
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_INBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-ne v3, v4, :cond_2

    :cond_0
    :goto_0
    monitor-exit v2

    .line 322
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, v1

    .line 318
    goto :goto_0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 322
    :cond_3
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_shutdown(J)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_1
.end method

.method public isOutboundDone()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 328
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 329
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 330
    :try_start_0
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_OUTBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-ne v3, v4, :cond_2

    :cond_0
    :goto_0
    monitor-exit v2

    .line 334
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, v1

    .line 330
    goto :goto_0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 334
    :cond_3
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_shutdown(J)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_1
.end method

.method public onSSLStateChange(JII)V
    .locals 4
    .param p1, "sslSessionNativePtr"    # J
    .param p3, "type"    # I
    .param p4, "val"    # I

    .prologue
    .line 625
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 626
    sparse-switch p3, :sswitch_data_0

    .line 641
    :goto_0
    :try_start_0
    monitor-exit v1

    .line 642
    return-void

    .line 628
    :sswitch_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_STARTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->READY_HANDSHAKE_CUT_THROUGH:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-eq v0, v2, :cond_0

    .line 630
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Completed handshake while in mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 633
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_COMPLETED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    goto :goto_0

    .line 638
    :sswitch_1
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_STARTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 626
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 1
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "key"    # [B

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[BLcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)I

    move-result v0

    return v0
.end method

.method public setEnableSessionCreation(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnableSessionCreation(Z)V

    .line 351
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1
    .param p1, "suites"    # [Ljava/lang/String;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1
    .param p1, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 1
    .param p1, "need"    # Z

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setNeedClientAuth(Z)V

    .line 356
    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 4
    .param p1, "mode"    # Z

    .prologue
    .line 360
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->MODE_SET:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->NEW:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-eq v0, v2, :cond_0

    .line 362
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not change mode after handshake: engineState == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 365
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->MODE_SET:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    .line 366
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    .line 368
    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1
    .param p1, "want"    # Z

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setWantClientAuth(Z)V

    .line 373
    return-void
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 38
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 390
    if-nez p1, :cond_0

    .line 391
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "src == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 392
    :cond_0
    if-nez p2, :cond_1

    .line 393
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "dsts == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 395
    :cond_1
    move-object/from16 v0, p2

    array-length v4, v0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v4, v0, v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->checkIndex(III)V

    .line 396
    const/16 v24, 0x0

    .line 397
    .local v24, "dstRemaining":I
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v4, v0

    move/from16 v0, v27

    if-ge v0, v4, :cond_5

    .line 398
    aget-object v23, p2, v27

    .line 399
    .local v23, "dst":Ljava/nio/ByteBuffer;
    if-nez v23, :cond_2

    .line 400
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "one of the dst == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 401
    :cond_2
    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 402
    new-instance v4, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v4}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v4

    .line 404
    :cond_3
    move/from16 v0, v27

    move/from16 v1, p3

    if-lt v0, v1, :cond_4

    add-int v4, p3, p4

    move/from16 v0, v27

    if-ge v0, v4, :cond_4

    .line 405
    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int v24, v24, v4

    .line 397
    :cond_4
    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    .line 409
    .end local v23    # "dst":Ljava/nio/ByteBuffer;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v5

    .line 411
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v8, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-eq v4, v8, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v8, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_INBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-ne v4, v8, :cond_7

    .line 412
    :cond_6
    new-instance v4, Ljavax/net/ssl/SSLEngineResult;

    sget-object v8, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v4, v8, v9, v10, v11}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v5

    .line 499
    :goto_1
    return-object v4

    .line 414
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v8, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->NEW:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-eq v4, v8, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v8, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->MODE_SET:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-ne v4, v8, :cond_9

    .line 415
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->beginHandshake()V

    .line 417
    :cond_9
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v26

    .line 421
    .local v26, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-object/from16 v0, v26

    if-ne v0, v4, :cond_f

    .line 422
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v29

    .line 423
    .local v29, "positionBeforeHandshake":I
    invoke-static/range {p1 .. p1}, Lcom/android/org/conscrypt/OpenSSLBIOSource;->wrap(Ljava/nio/ByteBuffer;)Lcom/android/org/conscrypt/OpenSSLBIOSource;

    move-result-object v33

    .line 424
    .local v33, "source":Lcom/android/org/conscrypt/OpenSSLBIOSource;
    const-wide/16 v36, 0x0

    .line 426
    .local v36, "sslSessionCtx":J
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-virtual/range {v33 .. v33}, Lcom/android/org/conscrypt/OpenSSLBIOSource;->getContext()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

    invoke-virtual {v8}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->getContext()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getUseClientMode()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v12, v10, Lcom/android/org/conscrypt/SSLParametersImpl;->npnProtocols:[B

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v13, v10, Lcom/android/org/conscrypt/SSLParametersImpl;->alpnProtocols:[B

    move-object/from16 v10, p0

    invoke-static/range {v4 .. v13}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_do_handshake_bio(JJJLcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Z[B[B)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-wide v6

    .line 429
    .end local v36    # "sslSessionCtx":J
    .local v6, "sslSessionCtx":J
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-eqz v4, :cond_b

    .line 430
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v5, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_STARTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-ne v4, v5, :cond_a

    .line 431
    sget-object v4, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->READY_HANDSHAKE_CUT_THROUGH:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    .line 433
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getPeerPort()I

    move-result v12

    const/4 v13, 0x1

    invoke-virtual/range {v5 .. v13}, Lcom/android/org/conscrypt/SSLParametersImpl;->setupSession(JJLcom/android/org/conscrypt/OpenSSLSessionImpl;Ljava/lang/String;IZ)Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    .line 436
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->position()I

    move-result v21

    .line 437
    .local v21, "bytesWritten":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int v20, v4, v29

    .line 438
    .local v20, "bytesConsumed":I
    new-instance v4, Ljavax/net/ssl/SSLEngineResult;

    if-lez v20, :cond_d

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v4, v5, v8, v0, v1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 444
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    if-nez v5, :cond_c

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_c

    .line 445
    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_free(J)V

    .line 447
    :cond_c
    invoke-virtual/range {v33 .. v33}, Lcom/android/org/conscrypt/OpenSSLBIOSource;->release()V

    goto/16 :goto_1

    .line 417
    .end local v6    # "sslSessionCtx":J
    .end local v20    # "bytesConsumed":I
    .end local v21    # "bytesWritten":I
    .end local v26    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v29    # "positionBeforeHandshake":I
    .end local v33    # "source":Lcom/android/org/conscrypt/OpenSSLBIOSource;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 438
    .restart local v6    # "sslSessionCtx":J
    .restart local v20    # "bytesConsumed":I
    .restart local v21    # "bytesWritten":I
    .restart local v26    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v29    # "positionBeforeHandshake":I
    .restart local v33    # "source":Lcom/android/org/conscrypt/OpenSSLBIOSource;
    :cond_d
    :try_start_4
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 440
    .end local v6    # "sslSessionCtx":J
    .end local v20    # "bytesConsumed":I
    .end local v21    # "bytesWritten":I
    .restart local v36    # "sslSessionCtx":J
    :catch_0
    move-exception v25

    move-wide/from16 v6, v36

    .line 441
    .end local v36    # "sslSessionCtx":J
    .restart local v6    # "sslSessionCtx":J
    .local v25, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    new-instance v4, Ljavax/net/ssl/SSLHandshakeException;

    const-string v5, "Handshake failed"

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SSLHandshakeException;

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 444
    .end local v25    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    if-nez v5, :cond_e

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_e

    .line 445
    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_free(J)V

    .line 447
    :cond_e
    invoke-virtual/range {v33 .. v33}, Lcom/android/org/conscrypt/OpenSSLBIOSource;->release()V

    throw v4

    .line 449
    .end local v6    # "sslSessionCtx":J
    .end local v29    # "positionBeforeHandshake":I
    .end local v33    # "source":Lcom/android/org/conscrypt/OpenSSLBIOSource;
    :cond_f
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-object/from16 v0, v26

    if-eq v0, v4, :cond_10

    .line 450
    new-instance v4, Ljavax/net/ssl/SSLEngineResult;

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v26

    invoke-direct {v4, v5, v0, v8, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_1

    .line 453
    :cond_10
    if-nez v24, :cond_11

    .line 454
    new-instance v4, Ljavax/net/ssl/SSLEngineResult;

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v4, v5, v8, v9, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_1

    .line 457
    :cond_11
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v34

    .line 458
    .local v34, "srcDuplicate":Ljava/nio/ByteBuffer;
    invoke-static/range {v34 .. v34}, Lcom/android/org/conscrypt/OpenSSLBIOSource;->wrap(Ljava/nio/ByteBuffer;)Lcom/android/org/conscrypt/OpenSSLBIOSource;

    move-result-object v33

    .line 460
    .restart local v33    # "source":Lcom/android/org/conscrypt/OpenSSLBIOSource;
    :try_start_6
    invoke-virtual/range {v34 .. v34}, Ljava/nio/ByteBuffer;->position()I

    move-result v30

    .line 461
    .local v30, "positionBeforeRead":I
    const/16 v31, 0x0

    .line 462
    .local v31, "produced":I
    const/16 v32, 0x0

    .line 464
    .local v32, "shouldStop":Z
    :cond_12
    :goto_5
    if-nez v32, :cond_16

    .line 465
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getNextAvailableByteBuffer([Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v23

    .line 466
    .restart local v23    # "dst":Ljava/nio/ByteBuffer;
    if-nez v23, :cond_13

    .line 467
    const/16 v32, 0x1

    .line 468
    goto :goto_5

    .line 470
    :cond_13
    move-object/from16 v19, v23

    .line 471
    .local v19, "arrayDst":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 472
    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v19

    .line 475
    :cond_14
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int v12, v4, v5

    .line 477
    .local v12, "dstOffset":I
    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    invoke-virtual/range {v33 .. v33}, Lcom/android/org/conscrypt/OpenSSLBIOSource;->getContext()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->localToRemoteSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->getContext()J

    move-result-wide v16

    move-object/from16 v18, p0

    invoke-static/range {v9 .. v18}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_read_BIO(J[BIIJJLcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v28

    .line 480
    .local v28, "internalProduced":I
    if-gtz v28, :cond_15

    .line 481
    const/16 v32, 0x1

    .line 482
    goto :goto_5

    .line 484
    :cond_15
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int v4, v4, v28

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 485
    add-int v31, v31, v28

    .line 486
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_12

    .line 487
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 488
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    .line 496
    .end local v12    # "dstOffset":I
    .end local v19    # "arrayDst":Ljava/nio/ByteBuffer;
    .end local v23    # "dst":Ljava/nio/ByteBuffer;
    .end local v28    # "internalProduced":I
    .end local v30    # "positionBeforeRead":I
    .end local v31    # "produced":I
    .end local v32    # "shouldStop":Z
    :catch_1
    move-exception v25

    .line 497
    .local v25, "e":Ljava/io/IOException;
    :try_start_7
    new-instance v4, Ljavax/net/ssl/SSLException;

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 499
    .end local v25    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v4

    invoke-virtual/range {v33 .. v33}, Lcom/android/org/conscrypt/OpenSSLBIOSource;->release()V

    throw v4

    .line 492
    .restart local v30    # "positionBeforeRead":I
    .restart local v31    # "produced":I
    .restart local v32    # "shouldStop":Z
    :cond_16
    :try_start_8
    invoke-virtual/range {v34 .. v34}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int v22, v4, v30

    .line 493
    .local v22, "consumed":I
    invoke-virtual/range {v34 .. v34}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 494
    new-instance v4, Ljavax/net/ssl/SSLEngineResult;

    if-lez v22, :cond_17

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    move/from16 v0, v22

    move/from16 v1, v31

    invoke-direct {v4, v5, v8, v0, v1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 499
    invoke-virtual/range {v33 .. v33}, Lcom/android/org/conscrypt/OpenSSLBIOSource;->release()V

    goto/16 :goto_1

    .line 494
    :cond_17
    :try_start_9
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_6

    .line 444
    .end local v22    # "consumed":I
    .end local v30    # "positionBeforeRead":I
    .end local v31    # "produced":I
    .end local v32    # "shouldStop":Z
    .end local v34    # "srcDuplicate":Ljava/nio/ByteBuffer;
    .restart local v29    # "positionBeforeHandshake":I
    .restart local v36    # "sslSessionCtx":J
    :catchall_3
    move-exception v4

    move-wide/from16 v6, v36

    .end local v36    # "sslSessionCtx":J
    .restart local v6    # "sslSessionCtx":J
    goto/16 :goto_4

    .line 440
    :catch_2
    move-exception v25

    goto/16 :goto_3
.end method

.method public verifyCertificateChain(J[JLjava/lang/String;)V
    .locals 15
    .param p1, "sslSessionNativePtr"    # J
    .param p3, "certRefs"    # [J
    .param p4, "authMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 648
    :try_start_0
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v14

    .line 649
    .local v14, "x509tm":Ljavax/net/ssl/X509TrustManager;
    if-nez v14, :cond_0

    .line 650
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string v4, "No X.509 TrustManager"

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    .end local v14    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :catch_0
    move-exception v12

    .line 672
    .local v12, "e":Ljava/security/cert/CertificateException;
    :try_start_1
    throw v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 677
    .end local v12    # "e":Ljava/security/cert/CertificateException;
    :catchall_0
    move-exception v3

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    throw v3

    .line 652
    .restart local v14    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :cond_0
    if-eqz p3, :cond_1

    :try_start_2
    move-object/from16 v0, p3

    array-length v3, v0

    if-nez v3, :cond_2

    .line 653
    :cond_1
    new-instance v3, Ljavax/net/ssl/SSLException;

    const-string v4, "Peer sent no certificate"

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 673
    .end local v14    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :catch_1
    move-exception v12

    .line 674
    .local v12, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v3, Ljava/security/cert/CertificateException;

    invoke-direct {v3, v12}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 655
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v14    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :cond_2
    :try_start_4
    move-object/from16 v0, p3

    array-length v3, v0

    new-array v7, v3, [Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .line 656
    .local v7, "peerCertChain":[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v3, v0

    if-ge v13, v3, :cond_3

    .line 657
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    aget-wide v4, p3, v13

    invoke-direct {v3, v4, v5}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    aput-object v3, v7, v13

    .line 656
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 661
    :cond_3
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getPeerPort()I

    move-result v9

    const/4 v10, 0x0

    move-wide/from16 v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;-><init>(J[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    .line 664
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v11

    .line 665
    .local v11, "client":Z
    if-eqz v11, :cond_4

    .line 666
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-static {v14, v7, v0, v3}, Lcom/android/org/conscrypt/Platform;->checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 677
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    .line 679
    return-void

    .line 668
    :cond_4
    const/4 v3, 0x0

    :try_start_5
    aget-object v3, v7, v3

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 669
    .local v2, "authType":Ljava/lang/String;
    invoke-interface {v14, v7, v2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 24
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 516
    if-nez p1, :cond_0

    .line 517
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "srcs == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 518
    :cond_0
    if-nez p4, :cond_1

    .line 519
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "dst == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 520
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 521
    new-instance v2, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v2}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v2

    .line 523
    :cond_2
    move-object/from16 v13, p1

    .local v13, "arr$":[Ljava/nio/ByteBuffer;
    array-length v0, v13

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    aget-object v20, v13, v17

    .line 524
    .local v20, "src":Ljava/nio/ByteBuffer;
    if-nez v20, :cond_3

    .line 525
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "one of the src == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 523
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 528
    .end local v20    # "src":Ljava/nio/ByteBuffer;
    :cond_4
    move-object/from16 v0, p1

    array-length v2, v0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v2, v0, v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->checkIndex(III)V

    .line 530
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v3, 0x4145

    if-ge v2, v3, :cond_5

    .line 531
    new-instance v2, Ljavax/net/ssl/SSLEngineResult;

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-direct {v2, v3, v6, v7, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    .line 598
    :goto_1
    return-object v2

    .line 534
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 536
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v6, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-eq v2, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v6, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_OUTBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-ne v2, v6, :cond_7

    .line 537
    :cond_6
    new-instance v2, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v2, v6, v7, v10, v11}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v3

    goto :goto_1

    .line 542
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 539
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v6, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->NEW:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-eq v2, v6, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v6, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->MODE_SET:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-ne v2, v6, :cond_9

    .line 540
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->beginHandshake()V

    .line 542
    :cond_9
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v16

    .line 546
    .local v16, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-object/from16 v0, v16

    if-ne v0, v2, :cond_e

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->available()I

    move-result v2

    if-nez v2, :cond_c

    .line 548
    const-wide/16 v22, 0x0

    .line 550
    .local v22, "sslSessionCtx":J
    :try_start_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    sget-object v6, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->nullSource:Lcom/android/org/conscrypt/OpenSSLBIOSource;

    invoke-virtual {v6}, Lcom/android/org/conscrypt/OpenSSLBIOSource;->getContext()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

    invoke-virtual {v6}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->getContext()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getUseClientMode()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v10, v10, Lcom/android/org/conscrypt/SSLParametersImpl;->npnProtocols:[B

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v11, v11, Lcom/android/org/conscrypt/SSLParametersImpl;->alpnProtocols:[B

    move-object/from16 v8, p0

    invoke-static/range {v2 .. v11}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_do_handshake_bio(JJJLcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Z[B[B)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v4

    .line 554
    .end local v22    # "sslSessionCtx":J
    .local v4, "sslSessionCtx":J
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_b

    .line 555
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v3, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_STARTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    if-ne v2, v3, :cond_a

    .line 556
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->READY_HANDSHAKE_CUT_THROUGH:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    .line 558
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getPeerPort()I

    move-result v10

    const/4 v11, 0x1

    invoke-virtual/range {v3 .. v11}, Lcom/android/org/conscrypt/SSLParametersImpl;->setupSession(JJLcom/android/org/conscrypt/OpenSSLSessionImpl;Ljava/lang/String;IZ)Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 565
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    if-nez v2, :cond_c

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_c

    .line 566
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_free(J)V

    .line 570
    .end local v4    # "sslSessionCtx":J
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->writeSinkToByteBuffer(Lcom/android/org/conscrypt/OpenSSLBIOSink;Ljava/nio/ByteBuffer;)I

    move-result v14

    .line 571
    .local v14, "bytesWritten":I
    new-instance v2, Ljavax/net/ssl/SSLEngineResult;

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v2, v3, v6, v7, v14}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_1

    .line 561
    .end local v14    # "bytesWritten":I
    .restart local v22    # "sslSessionCtx":J
    :catch_0
    move-exception v15

    move-wide/from16 v4, v22

    .line 562
    .end local v22    # "sslSessionCtx":J
    .restart local v4    # "sslSessionCtx":J
    .local v15, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    new-instance v2, Ljavax/net/ssl/SSLHandshakeException;

    const-string v3, "Handshake failed"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLHandshakeException;

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 565
    .end local v15    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    if-nez v3, :cond_d

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_d

    .line 566
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_free(J)V

    :cond_d
    throw v2

    .line 572
    .end local v4    # "sslSessionCtx":J
    :cond_e
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-object/from16 v0, v16

    if-eq v0, v2, :cond_f

    .line 573
    new-instance v2, Ljavax/net/ssl/SSLEngineResult;

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-direct {v2, v3, v0, v6, v7}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_1

    .line 577
    :cond_f
    const/16 v21, 0x0

    .line 578
    .local v21, "totalRead":I
    const/4 v8, 0x0

    .line 580
    .local v8, "buffer":[B
    move-object/from16 v13, p1

    :try_start_5
    array-length v0, v13

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_4
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_13

    aget-object v20, v13, v17

    .line 581
    .restart local v20    # "src":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    .line 582
    .local v9, "toRead":I
    if-eqz v8, :cond_10

    array-length v2, v8

    if-le v9, v2, :cond_11

    .line 583
    :cond_10
    new-array v8, v9, [B

    .line 589
    :cond_11
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v8, v3, v9}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 590
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->localToRemoteSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->getContext()J

    move-result-wide v10

    move-object/from16 v12, p0

    invoke-static/range {v6 .. v12}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_write_BIO(J[BIJLcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v19

    .line 592
    .local v19, "numRead":I
    if-lez v19, :cond_12

    .line 593
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int v2, v2, v19

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 594
    add-int v21, v21, v19

    .line 580
    :cond_12
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 598
    .end local v9    # "toRead":I
    .end local v19    # "numRead":I
    .end local v20    # "src":Ljava/nio/ByteBuffer;
    :cond_13
    new-instance v2, Ljavax/net/ssl/SSLEngineResult;

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->localToRemoteSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

    move-object/from16 v0, p4

    invoke-static {v7, v0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->writeSinkToByteBuffer(Lcom/android/org/conscrypt/OpenSSLBIOSink;Ljava/nio/ByteBuffer;)I

    move-result v7

    move/from16 v0, v21

    invoke-direct {v2, v3, v6, v0, v7}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 600
    :catch_1
    move-exception v15

    .line 601
    .local v15, "e":Ljava/io/IOException;
    new-instance v2, Ljavax/net/ssl/SSLException;

    invoke-direct {v2, v15}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 565
    .end local v8    # "buffer":[B
    .end local v15    # "e":Ljava/io/IOException;
    .end local v21    # "totalRead":I
    .restart local v22    # "sslSessionCtx":J
    :catchall_2
    move-exception v2

    move-wide/from16 v4, v22

    .end local v22    # "sslSessionCtx":J
    .restart local v4    # "sslSessionCtx":J
    goto/16 :goto_3

    .line 561
    :catch_2
    move-exception v15

    goto/16 :goto_2
.end method
