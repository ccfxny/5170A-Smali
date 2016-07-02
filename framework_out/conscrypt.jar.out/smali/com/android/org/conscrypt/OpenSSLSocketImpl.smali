.class public Lcom/android/org/conscrypt/OpenSSLSocketImpl;
.super Ljavax/net/ssl/SSLSocket;
.source "OpenSSLSocketImpl.java"

# interfaces
.implements Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
.implements Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;
.implements Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;,
        Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;
    }
.end annotation


# static fields
.field private static final DBG_STATE:Z = false

.field private static final STATE_CLOSED:I = 0x5

.field private static final STATE_HANDSHAKE_COMPLETED:I = 0x2

.field private static final STATE_HANDSHAKE_STARTED:I = 0x1

.field private static final STATE_NEW:I = 0x0

.field private static final STATE_READY:I = 0x4

.field private static final STATE_READY_HANDSHAKE_CUT_THROUGH:I = 0x3


# instance fields
.field private final autoClose:Z

.field channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

.field private final guard:Ldalvik/system/CloseGuard;

.field private handshakeSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

.field private handshakeTimeoutMilliseconds:I

.field private is:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljavax/net/ssl/HandshakeCompletedListener;",
            ">;"
        }
    .end annotation
.end field

.field private os:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;

.field private peerHostname:Ljava/lang/String;

.field private final peerPort:I

.field private readTimeoutMilliseconds:I

.field private resolvedHostname:Ljava/lang/String;

.field private final socket:Ljava/net/Socket;

.field private sslNativePointer:J

.field private final sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

.field private state:I

.field private final stateLock:Ljava/lang/Object;

.field private writeTimeoutMilliseconds:I


# direct methods
.method protected constructor <init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 3
    .param p1, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 181
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    .line 110
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 154
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 176
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    .line 177
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    .line 179
    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 182
    iput-object p0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    .line 184
    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    .line 185
    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    .line 186
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 187
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 191
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;I)V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    .line 110
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 154
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 176
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    .line 177
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    .line 179
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 192
    iput-object p0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 193
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    .line 194
    iput p2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    .line 195
    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    .line 196
    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 197
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "clientAddress"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .param p5, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 213
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    .line 110
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 154
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 176
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    .line 177
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    .line 179
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 214
    iput-object p0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 215
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    .line 216
    iput p2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    .line 217
    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    .line 218
    iput-object p5, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 219
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 201
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;I)V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    .line 110
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 154
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 176
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    .line 177
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    .line 179
    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 202
    iput-object p0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    .line 204
    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    .line 205
    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    .line 206
    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 207
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "clientAddress"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .param p5, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 224
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    .line 110
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 154
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 176
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    .line 177
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    .line 179
    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 225
    iput-object p0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    .line 227
    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    .line 228
    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    .line 229
    iput-object p5, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 230
    return-void
.end method

.method protected constructor <init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .param p5, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    .line 110
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 154
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 176
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    .line 177
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    .line 179
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 238
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 239
    iput-object p2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    .line 240
    iput p3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    .line 241
    iput-boolean p4, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    .line 242
    iput-object p5, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 247
    return-void
.end method

.method static synthetic access$000(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->checkOpen()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    return v0
.end method

.method private assertReadableOrWriteableState()V
    .locals 3

    .prologue
    .line 629
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 630
    :cond_0
    return-void

    .line 633
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private checkOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    return-void
.end method

.method private closeUnderlyingSocket()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-eq v0, p0, :cond_1

    .line 1148
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 1152
    :cond_1
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1153
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V

    goto :goto_0
.end method

.method private free()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1159
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1165
    :goto_0
    return-void

    .line 1162
    :cond_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_free(J)V

    .line 1163
    iput-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    .line 1164
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    goto :goto_0
.end method

.method private getHostname()Ljava/lang/String;
    .locals 2

    .prologue
    .line 436
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    .line 445
    :goto_0
    return-object v1

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->resolvedHostname:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 440
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 441
    .local v0, "inetAddress":Ljava/net/InetAddress;
    if-eqz v0, :cond_1

    .line 442
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->resolvedHostname:Ljava/lang/String;

    .line 445
    .end local v0    # "inetAddress":Ljava/net/InetAddress;
    :cond_1
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->resolvedHostname:Ljava/lang/String;

    goto :goto_0
.end method

.method private notifyHandshakeCompletedListeners()V
    .locals 6

    .prologue
    .line 522
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 524
    new-instance v1, Ljavax/net/ssl/HandshakeCompletedEvent;

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    invoke-direct {v1, p0, v5}, Ljavax/net/ssl/HandshakeCompletedEvent;-><init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V

    .line 526
    .local v1, "event":Ljavax/net/ssl/HandshakeCompletedEvent;
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/HandshakeCompletedListener;

    .line 528
    .local v3, "listener":Ljavax/net/ssl/HandshakeCompletedListener;
    :try_start_0
    invoke-interface {v3, v1}, Ljavax/net/ssl/HandshakeCompletedListener;->handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 529
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 536
    .local v4, "thread":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v5

    invoke-interface {v5, v4, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 540
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "event":Ljavax/net/ssl/HandshakeCompletedEvent;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listener":Ljavax/net/ssl/HandshakeCompletedListener;
    .end local v4    # "thread":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method private shutdownAndFreeSslNative()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1130
    :try_start_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 1131
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-static {v2}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v0, v1, v2, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_shutdown(JLjava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1141
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->free()V

    .line 1142
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->closeUnderlyingSocket()V

    .line 1144
    :goto_0
    return-void

    .line 1133
    :catch_0
    move-exception v0

    .line 1141
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->free()V

    .line 1142
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->closeUnderlyingSocket()V

    goto :goto_0

    .line 1141
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->free()V

    .line 1142
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->closeUnderlyingSocket()V

    throw v0
.end method

.method private waitForHandshake()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x5

    .line 638
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->startHandshake()V

    .line 640
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 642
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v5, :cond_0

    .line 645
    :try_start_1
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 648
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Interrupted waiting for handshake"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 649
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 651
    throw v1

    .line 658
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 655
    :cond_0
    :try_start_3
    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    if-ne v2, v5, :cond_1

    .line 656
    new-instance v2, Ljava/net/SocketException;

    const-string v4, "Socket is closed"

    invoke-direct {v2, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 658
    :cond_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 659
    return-void
.end method


# virtual methods
.method public addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2
    .param p1, "listener"    # Ljavax/net/ssl/HandshakeCompletedListener;

    .prologue
    .line 815
    if-nez p1, :cond_0

    .line 816
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 819
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    .line 821
    :cond_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    return-void
.end method

.method public chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "issuers"    # [Ljavax/security/auth/x500/X500Principal;
    .param p3, "keyTypes"    # [Ljava/lang/String;

    .prologue
    .line 1261
    const/4 v0, 0x0

    invoke-interface {p1, p3, v0, p0}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseClientPSKIdentity(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;
    .param p2, "identityHint"    # Ljava/lang/String;

    .prologue
    .line 1271
    invoke-interface {p1, p2, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->chooseClientKeyIdentity(Ljava/lang/String;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "keyType"    # Ljava/lang/String;

    .prologue
    .line 1255
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, p0}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseServerPSKIdentityHint(Lcom/android/org/conscrypt/PSKKeyManager;)Ljava/lang/String;
    .locals 1
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;

    .prologue
    .line 1266
    invoke-interface {p1, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->chooseServerKeyIdentityHint(Ljava/net/Socket;)Ljava/lang/String;

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
    .line 457
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    move-object v2, p1

    move-object v3, p2

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/org/conscrypt/SSLParametersImpl;->chooseClientCertificate([B[[BJLcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;)V

    .line 459
    return-void
.end method

.method public clientPSKKeyRequested(Ljava/lang/String;[B[B)I
    .locals 1
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # [B
    .param p3, "key"    # [B

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clientPSKKeyRequested(Ljava/lang/String;[B[BLcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x5

    .line 1070
    const/4 v1, 0x0

    .line 1071
    .local v1, "sslInputStream":Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;
    const/4 v2, 0x0

    .line 1073
    .local v2, "sslOutputStream":Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1074
    :try_start_0
    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    if-ne v3, v5, :cond_0

    .line 1076
    monitor-exit v4

    .line 1126
    :goto_0
    return-void

    .line 1079
    :cond_0
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 1080
    .local v0, "oldState":I
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 1082
    if-nez v0, :cond_1

    .line 1086
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->closeUnderlyingSocket()V

    .line 1088
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1089
    monitor-exit v4

    goto :goto_0

    .line 1108
    .end local v0    # "oldState":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1092
    .restart local v0    # "oldState":I
    :cond_1
    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    .line 1097
    :try_start_1
    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_interrupt(J)V

    .line 1099
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1100
    monitor-exit v4

    goto :goto_0

    .line 1103
    :cond_2
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1106
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->is:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;

    .line 1107
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->os:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;

    .line 1108
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1111
    if-nez v1, :cond_3

    if-eqz v2, :cond_4

    .line 1112
    :cond_3
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_interrupt(J)V

    .line 1118
    :cond_4
    if-eqz v1, :cond_5

    .line 1119
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->awaitPendingOps()V

    .line 1121
    :cond_5
    if-eqz v2, :cond_6

    .line 1122
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->awaitPendingOps()V

    .line 1125
    :cond_6
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1186
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 1189
    :cond_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->free()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1191
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1193
    return-void

    .line 1191
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAlpnSelectedProtocol()[B
    .locals 2

    .prologue
    .line 1217
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get0_alpn_selected(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getChannelId()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 934
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 939
    :try_start_0
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 940
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Channel ID is only available after handshake completes"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 943
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 944
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_tls_channel_id(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 1198
    invoke-static {p0}, Lcom/android/org/conscrypt/Platform;->getFileDescriptorFromSSLSocket(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1200
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->checkOpen()V

    .line 585
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 586
    :try_start_0
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 587
    new-instance v1, Ljava/net/SocketException;

    const-string v3, "Socket is closed."

    invoke-direct {v1, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 595
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 590
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->is:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;

    if-nez v1, :cond_1

    .line 591
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;

    invoke-direct {v1, p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;-><init>(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->is:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->is:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;

    .line 595
    .local v0, "returnVal":Ljava/io/InputStream;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 600
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->waitForHandshake()V

    .line 601
    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getNpnSelectedProtocol()[B
    .locals 2

    .prologue
    .line 1209
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_npn_negotiated_protocol(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 606
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->checkOpen()V

    .line 609
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 610
    :try_start_0
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 611
    new-instance v1, Ljava/net/SocketException;

    const-string v3, "Socket is closed."

    invoke-direct {v1, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 619
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 614
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->os:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;

    if-nez v1, :cond_1

    .line 615
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;

    invoke-direct {v1, p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;-><init>(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->os:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->os:Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;

    .line 619
    .local v0, "returnVal":Ljava/io/OutputStream;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 624
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->waitForHandshake()V

    .line 625
    return-object v0
.end method

.method public getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 1
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;
    .param p2, "identityHint"    # Ljava/lang/String;
    .param p3, "identity"    # Ljava/lang/String;

    .prologue
    .line 1276
    invoke-interface {p1, p2, p3, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->getKey(Ljava/lang/String;Ljava/lang/String;Ljava/net/Socket;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 2

    .prologue
    .line 450
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getPort()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerPort:I

    goto :goto_0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 2

    .prologue
    .line 800
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    if-nez v1, :cond_0

    .line 802
    :try_start_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->waitForHandshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    :goto_0
    return-object v1

    .line 803
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    goto :goto_0
.end method

.method public getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1039
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    return v0
.end method

.method public getSoWriteTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1055
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    return v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 852
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 867
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public onSSLStateChange(JII)V
    .locals 4
    .param p1, "sslSessionNativePtr"    # J
    .param p3, "type"    # I
    .param p4, "val"    # I

    .prologue
    .line 476
    const/16 v1, 0x20

    if-eq p3, v1, :cond_0

    .line 519
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 481
    :try_start_0
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 489
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 490
    monitor-exit v2

    goto :goto_0

    .line 498
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 491
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 498
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->resetId()V

    .line 503
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    move-result-object v0

    .line 507
    .local v0, "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :goto_1
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    .line 510
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->notifyHandshakeCompletedListeners()V

    .line 512
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 515
    const/4 v1, 0x4

    :try_start_2
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 517
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 518
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 494
    .end local v0    # "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :cond_3
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    .line 496
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 503
    :cond_4
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getServerSessionContext()Lcom/android/org/conscrypt/ServerSessionContext;

    move-result-object v0

    goto :goto_1
.end method

.method public removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2
    .param p1, "listener"    # Ljavax/net/ssl/HandshakeCompletedListener;

    .prologue
    .line 827
    if-nez p1, :cond_0

    .line 828
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 831
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 834
    :cond_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 835
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 838
    :cond_2
    return-void
.end method

.method public sendUrgentData(I)V
    .locals 2
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1023
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Method sendUrgentData() is not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 1
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "key"    # [B

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[BLcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)I

    move-result v0

    return v0
.end method

.method public setAlpnProtocols([B)V
    .locals 2
    .param p1, "alpnProtocols"    # [B

    .prologue
    .line 1247
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_0

    .line 1248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "alpnProtocols.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1250
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iput-object p1, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->alpnProtocols:[B

    .line 1251
    return-void
.end method

.method public setChannelIdEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 913
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 914
    :try_start_0
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    if-eqz v0, :cond_1

    .line 915
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Could not enable/disable Channel ID after the initial handshake has begun."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 919
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 920
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iput-boolean p1, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 921
    return-void
.end method

.method public setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .locals 3
    .param p1, "privateKey"    # Ljava/security/PrivateKey;

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getUseClientMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 961
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Server mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 964
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 965
    :try_start_0
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    if-eqz v0, :cond_1

    .line 966
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Could not change Channel ID private key after the initial handshake has begun."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 970
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 972
    if-nez p1, :cond_2

    .line 973
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 974
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 983
    :goto_0
    return-void

    .line 976
    :cond_2
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 978
    :try_start_2
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 979
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setEnableSessionCreation(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnableSessionCreation(Z)V

    .line 848
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1
    .param p1, "suites"    # [Ljava/lang/String;

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 863
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1
    .param p1, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    .line 878
    return-void
.end method

.method public setHandshakeTimeout(I)V
    .locals 0
    .param p1, "handshakeTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1063
    iput p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 1064
    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 895
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseSni(Z)V

    .line 896
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    .line 897
    return-void

    .line 895
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNeedClientAuth(Z)V
    .locals 1
    .param p1, "need"    # Z

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setNeedClientAuth(Z)V

    .line 1014
    return-void
.end method

.method public setNpnProtocols([B)V
    .locals 2
    .param p1, "npnProtocols"    # [B

    .prologue
    .line 1230
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_0

    .line 1231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "npnProtocols.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1233
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iput-object p1, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->npnProtocols:[B

    .line 1234
    return-void
.end method

.method public setOOBInline(Z)V
    .locals 2
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1028
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Methods sendUrgentData, setOOBInline are not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSoTimeout(I)V
    .locals 0
    .param p1, "readTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1033
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 1034
    iput p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    .line 1035
    return-void
.end method

.method public setSoWriteTimeout(I)V
    .locals 2
    .param p1, "writeTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1046
    iput p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    .line 1048
    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/android/org/conscrypt/Platform;->setSocketWriteTimeout(Ljava/net/Socket;J)V

    .line 1049
    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 3
    .param p1, "mode"    # Z

    .prologue
    .line 992
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 993
    :try_start_0
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    if-eqz v0, :cond_0

    .line 994
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Could not change the mode after the initial handshake has begun."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 997
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 998
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    .line 999
    return-void
.end method

.method public setUseSessionTickets(Z)V
    .locals 1
    .param p1, "useSessionTickets"    # Z

    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iput-boolean p1, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSessionTickets:Z

    .line 887
    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1
    .param p1, "want"    # Z

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setWantClientAuth(Z)V

    .line 1019
    return-void
.end method

.method public startHandshake()V
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->checkOpen()V

    .line 265
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6

    .line 266
    :try_start_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    if-nez v3, :cond_3

    .line 267
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 273
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    const/16 v30, 0x400

    .line 277
    .local v30, "seedLengthInBytes":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSecureRandomMember()Ljava/security/SecureRandom;

    move-result-object v29

    .line 278
    .local v29, "secureRandom":Ljava/security/SecureRandom;
    if-nez v29, :cond_4

    .line 279
    const-string v3, "/dev/urandom"

    const-wide/16 v6, 0x400

    invoke-static {v3, v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_load_file(Ljava/lang/String;J)I

    .line 284
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v11

    .line 286
    .local v11, "client":Z
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    .line 287
    const/16 v26, 0x1

    .line 289
    .local v26, "releaseResources":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v31

    .line 290
    .local v31, "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    move-object/from16 v0, v31

    iget-wide v4, v0, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    .line 291
    .local v4, "sslCtxNativePointer":J
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_new(J)J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    .line 292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v6, "close"

    invoke-virtual {v3, v6}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getEnableSessionCreation()Z

    move-result v23

    .line 295
    .local v23, "enableSessionCreation":Z
    if-nez v23, :cond_0

    .line 296
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    move/from16 v0, v23

    invoke-static {v6, v7, v0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_session_creation_enabled(JZ)V

    .line 300
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostname()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getPort()I

    move-result v9

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionToReuse(JLjava/lang/String;I)Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    move-result-object v18

    .line 302
    .local v18, "sessionToReuse":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->peerHostname:Ljava/lang/String;

    move-object/from16 v8, p0

    move-object/from16 v9, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/org/conscrypt/SSLParametersImpl;->setSSLParameters(JJLcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;Ljava/lang/String;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-virtual {v3, v6, v7}, Lcom/android/org/conscrypt/SSLParametersImpl;->setCertificateValidation(J)V

    .line 305
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v3, v6, v7, v8}, Lcom/android/org/conscrypt/SSLParametersImpl;->setTlsChannelId(JLcom/android/org/conscrypt/OpenSSLKey;)V

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getSoTimeout()I

    move-result v27

    .line 309
    .local v27, "savedReadTimeoutMilliseconds":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getSoWriteTimeout()I

    move-result v28

    .line 310
    .local v28, "savedWriteTimeoutMilliseconds":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    if-ltz v3, :cond_1

    .line 311
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSoTimeout(I)V

    .line 312
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSoWriteTimeout(I)V

    .line 315
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 316
    :try_start_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v7, 0x5

    if-ne v3, v7, :cond_5

    .line 317
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 409
    if-eqz v26, :cond_2

    .line 410
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6

    .line 416
    const/4 v3, 0x5

    :try_start_3
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 418
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 421
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 427
    .end local v4    # "sslCtxNativePointer":J
    .end local v11    # "client":Z
    .end local v18    # "sessionToReuse":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    .end local v23    # "enableSessionCreation":Z
    .end local v26    # "releaseResources":Z
    .end local v27    # "savedReadTimeoutMilliseconds":I
    .end local v28    # "savedWriteTimeoutMilliseconds":I
    .end local v29    # "secureRandom":Ljava/security/SecureRandom;
    .end local v30    # "seedLengthInBytes":I
    .end local v31    # "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :cond_2
    :goto_1
    return-void

    .line 271
    :cond_3
    :try_start_5
    monitor-exit v6

    goto :goto_1

    .line 273
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    .line 281
    .restart local v29    # "secureRandom":Ljava/security/SecureRandom;
    .restart local v30    # "seedLengthInBytes":I
    :cond_4
    const/16 v3, 0x400

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_seed([B)V

    goto/16 :goto_0

    .line 418
    .restart local v4    # "sslCtxNativePointer":J
    .restart local v11    # "client":Z
    .restart local v18    # "sessionToReuse":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    .restart local v23    # "enableSessionCreation":Z
    .restart local v26    # "releaseResources":Z
    .restart local v27    # "savedReadTimeoutMilliseconds":I
    .restart local v28    # "savedWriteTimeoutMilliseconds":I
    .restart local v31    # "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 319
    :cond_5
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 323
    :try_start_8
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-static {v3}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getSoTimeout()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v12, v3, Lcom/android/org/conscrypt/SSLParametersImpl;->npnProtocols:[B

    if-eqz v11, :cond_d

    const/4 v13, 0x0

    :goto_2
    move-object/from16 v9, p0

    invoke-static/range {v6 .. v13}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_do_handshake(JLjava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;IZ[B[B)J
    :try_end_8
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-wide v14

    .line 356
    .local v14, "sslSessionNativePointer":J
    const/16 v21, 0x0

    .line 357
    .local v21, "handshakeCompleted":Z
    :try_start_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_9
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 358
    :try_start_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_10

    .line 359
    const/16 v21, 0x1

    .line 363
    :cond_6
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 365
    :try_start_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    move-wide/from16 v16, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostname()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getPort()I

    move-result v20

    invoke-virtual/range {v13 .. v21}, Lcom/android/org/conscrypt/SSLParametersImpl;->setupSession(JJLcom/android/org/conscrypt/OpenSSLSessionImpl;Ljava/lang/String;IZ)Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    .line 369
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    if-ltz v3, :cond_7

    .line 370
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSoTimeout(I)V

    .line 371
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSoWriteTimeout(I)V

    .line 375
    :cond_7
    if-eqz v21, :cond_9

    .line 378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "cipherName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 380
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gba_cipher_suite:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 381
    const-string v3, "gba.ciper.suite"

    invoke-static {v3, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 384
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->notifyHandshakeCompletedListeners()V

    .line 387
    .end local v2    # "cipherName":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_b
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 388
    :try_start_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v7, 0x5

    if-ne v3, v7, :cond_11

    const/16 v26, 0x1

    .line 390
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_12

    .line 391
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 396
    :cond_a
    :goto_4
    if-nez v26, :cond_b

    .line 399
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 401
    :cond_b
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 409
    if-eqz v26, :cond_2

    .line 410
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6

    .line 416
    const/4 v3, 0x5

    :try_start_d
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 418
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 421
    :try_start_e
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_1

    .line 422
    :catch_0
    move-exception v3

    goto/16 :goto_1

    .line 319
    .end local v14    # "sslSessionNativePointer":J
    .end local v21    # "handshakeCompleted":Z
    :catchall_2
    move-exception v3

    :try_start_f
    monitor-exit v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    throw v3
    :try_end_10
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 402
    .end local v4    # "sslCtxNativePointer":J
    .end local v18    # "sessionToReuse":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    .end local v23    # "enableSessionCreation":Z
    .end local v27    # "savedReadTimeoutMilliseconds":I
    .end local v28    # "savedWriteTimeoutMilliseconds":I
    .end local v31    # "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :catch_1
    move-exception v22

    .line 404
    .local v22, "e":Ljavax/net/ssl/SSLProtocolException;
    :try_start_11
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SSLProtocolException:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Ljavax/net/ssl/SSLProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 405
    new-instance v3, Ljavax/net/ssl/SSLHandshakeException;

    const-string v6, "Handshake failed"

    invoke-direct {v3, v6}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/SSLHandshakeException;

    throw v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 409
    .end local v22    # "e":Ljavax/net/ssl/SSLProtocolException;
    :catchall_3
    move-exception v3

    if-eqz v26, :cond_c

    .line 410
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6

    .line 416
    const/4 v7, 0x5

    :try_start_12
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 417
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 418
    monitor-exit v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 421
    :try_start_13
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7

    .line 424
    :cond_c
    :goto_5
    throw v3

    .line 323
    .restart local v4    # "sslCtxNativePointer":J
    .restart local v18    # "sessionToReuse":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    .restart local v23    # "enableSessionCreation":Z
    .restart local v27    # "savedReadTimeoutMilliseconds":I
    .restart local v28    # "savedWriteTimeoutMilliseconds":I
    .restart local v31    # "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :cond_d
    :try_start_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v13, v3, Lcom/android/org/conscrypt/SSLParametersImpl;->alpnProtocols:[B
    :try_end_14
    .catch Ljava/security/cert/CertificateException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto/16 :goto_2

    .line 326
    :catch_2
    move-exception v22

    .line 327
    .local v22, "e":Ljava/security/cert/CertificateException;
    :try_start_15
    new-instance v32, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual/range {v22 .. v22}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 328
    .local v32, "wrapper":Ljavax/net/ssl/SSLHandshakeException;
    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 329
    throw v32

    .line 330
    .end local v22    # "e":Ljava/security/cert/CertificateException;
    .end local v32    # "wrapper":Ljavax/net/ssl/SSLHandshakeException;
    :catch_3
    move-exception v22

    .line 338
    .local v22, "e":Ljavax/net/ssl/SSLException;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_15
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 339
    :try_start_16
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v7, 0x5

    if-ne v3, v7, :cond_e

    .line 340
    monitor-exit v6
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 409
    if-eqz v26, :cond_2

    .line 410
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6

    .line 416
    const/4 v3, 0x5

    :try_start_17
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 418
    monitor-exit v6
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 421
    :try_start_18
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_4

    goto/16 :goto_1

    .line 422
    :catch_4
    move-exception v3

    goto/16 :goto_1

    .line 418
    :catchall_4
    move-exception v3

    :try_start_19
    monitor-exit v6
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    throw v3

    .line 342
    :cond_e
    :try_start_1a
    monitor-exit v6
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    .line 345
    :try_start_1b
    invoke-virtual/range {v22 .. v22}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v25

    .line 347
    .local v25, "message":Ljava/lang/String;
    const-string v3, "unexpected CCS"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 348
    const-string v3, "ssl_unexpected_ccs: host=%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostname()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 350
    .local v24, "logMessage":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/android/org/conscrypt/Platform;->logEvent(Ljava/lang/String;)V

    .line 353
    .end local v24    # "logMessage":Ljava/lang/String;
    :cond_f
    throw v22
    :try_end_1b
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    .line 342
    .end local v25    # "message":Ljava/lang/String;
    :catchall_5
    move-exception v3

    :try_start_1c
    monitor-exit v6
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    :try_start_1d
    throw v3
    :try_end_1d
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1d .. :try_end_1d} :catch_1
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    .line 360
    .end local v22    # "e":Ljavax/net/ssl/SSLException;
    .restart local v14    # "sslSessionNativePointer":J
    .restart local v21    # "handshakeCompleted":Z
    :cond_10
    :try_start_1e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v7, 0x5

    if-ne v3, v7, :cond_6

    .line 361
    monitor-exit v6
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    .line 409
    if-eqz v26, :cond_2

    .line 410
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6

    .line 416
    const/4 v3, 0x5

    :try_start_1f
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 418
    monitor-exit v6
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    .line 421
    :try_start_20
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_5

    goto/16 :goto_1

    .line 422
    :catch_5
    move-exception v3

    goto/16 :goto_1

    .line 418
    :catchall_6
    move-exception v3

    :try_start_21
    monitor-exit v6
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    throw v3

    .line 363
    :catchall_7
    move-exception v3

    :try_start_22
    monitor-exit v6
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    :try_start_23
    throw v3
    :try_end_23
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_23 .. :try_end_23} :catch_1
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    .line 388
    :cond_11
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 392
    :cond_12
    :try_start_24
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_a

    .line 393
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I

    goto/16 :goto_4

    .line 401
    :catchall_8
    move-exception v3

    monitor-exit v6
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    :try_start_25
    throw v3
    :try_end_25
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_25 .. :try_end_25} :catch_1
    .catchall {:try_start_25 .. :try_end_25} :catchall_3

    .line 418
    :catchall_9
    move-exception v3

    :try_start_26
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_9

    throw v3

    .end local v4    # "sslCtxNativePointer":J
    .end local v14    # "sslSessionNativePointer":J
    .end local v18    # "sessionToReuse":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    .end local v21    # "handshakeCompleted":Z
    .end local v23    # "enableSessionCreation":Z
    .end local v27    # "savedReadTimeoutMilliseconds":I
    .end local v28    # "savedWriteTimeoutMilliseconds":I
    .end local v31    # "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :catchall_a
    move-exception v3

    :try_start_27
    monitor-exit v6
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    throw v3

    .line 422
    .restart local v4    # "sslCtxNativePointer":J
    .restart local v18    # "sessionToReuse":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    .restart local v23    # "enableSessionCreation":Z
    .restart local v27    # "savedReadTimeoutMilliseconds":I
    .restart local v28    # "savedWriteTimeoutMilliseconds":I
    .restart local v31    # "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :catch_6
    move-exception v3

    goto/16 :goto_1

    .end local v4    # "sslCtxNativePointer":J
    .end local v18    # "sessionToReuse":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    .end local v23    # "enableSessionCreation":Z
    .end local v27    # "savedReadTimeoutMilliseconds":I
    .end local v28    # "savedWriteTimeoutMilliseconds":I
    .end local v31    # "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :catch_7
    move-exception v6

    goto/16 :goto_5
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
    .line 547
    :try_start_0
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v14

    .line 548
    .local v14, "x509tm":Ljavax/net/ssl/X509TrustManager;
    if-nez v14, :cond_0

    .line 549
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string v4, "No X.509 TrustManager"

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    .end local v14    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :catch_0
    move-exception v12

    .line 571
    .local v12, "e":Ljava/security/cert/CertificateException;
    :try_start_1
    throw v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    .end local v12    # "e":Ljava/security/cert/CertificateException;
    :catchall_0
    move-exception v3

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    throw v3

    .line 551
    .restart local v14    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :cond_0
    if-eqz p3, :cond_1

    :try_start_2
    move-object/from16 v0, p3

    array-length v3, v0

    if-nez v3, :cond_2

    .line 552
    :cond_1
    new-instance v3, Ljavax/net/ssl/SSLException;

    const-string v4, "Peer sent no certificate"

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 572
    .end local v14    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :catch_1
    move-exception v12

    .line 573
    .local v12, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v3, Ljava/security/cert/CertificateException;

    invoke-direct {v3, v12}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 554
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v14    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :cond_2
    :try_start_4
    move-object/from16 v0, p3

    array-length v3, v0

    new-array v7, v3, [Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .line 555
    .local v7, "peerCertChain":[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v3, v0

    if-ge v13, v3, :cond_3

    .line 556
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    aget-wide v4, p3, v13

    invoke-direct {v3, v4, v5}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    aput-object v3, v7, v13

    .line 555
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 560
    :cond_3
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostname()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getPort()I

    move-result v9

    const/4 v10, 0x0

    move-wide/from16 v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;-><init>(J[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    .line 563
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v11

    .line 564
    .local v11, "client":Z
    if-eqz v11, :cond_4

    .line 565
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostname()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-static {v14, v7, v0, v3}, Lcom/android/org/conscrypt/Platform;->checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 576
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->handshakeSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    .line 578
    return-void

    .line 567
    :cond_4
    const/4 v3, 0x0

    :try_start_5
    aget-object v3, v7, v3

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 568
    .local v2, "authType":Ljava/lang/String;
    invoke-interface {v14, v7, v2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method
