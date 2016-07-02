.class public Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;
.super Ljava/lang/Object;
.source "SpdyConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/SpdyConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private client:Z

.field private handler:Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;

.field private hostName:Ljava/lang/String;

.field private protocol:Lcom/android/okhttp/Protocol;

.field private pushObserver:Lcom/android/okhttp/internal/spdy/PushObserver;

.field private sink:Lcom/android/okio/BufferedSink;

.field private source:Lcom/android/okio/BufferedSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/net/Socket;)V
    .locals 1
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "client"    # Z
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    sget-object v0, Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;->REFUSE_INCOMING_STREAMS:Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;

    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->handler:Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;

    .line 498
    sget-object v0, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->protocol:Lcom/android/okhttp/Protocol;

    .line 499
    sget-object v0, Lcom/android/okhttp/internal/spdy/PushObserver;->CANCEL:Lcom/android/okhttp/internal/spdy/PushObserver;

    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->pushObserver:Lcom/android/okhttp/internal/spdy/PushObserver;

    .line 511
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->hostName:Ljava/lang/String;

    .line 512
    iput-boolean p2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->client:Z

    .line 513
    invoke-virtual {p3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okio/Okio;->source(Ljava/io/InputStream;)Lcom/android/okio/Source;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okio/Okio;->buffer(Lcom/android/okio/Source;)Lcom/android/okio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->source:Lcom/android/okio/BufferedSource;

    .line 514
    invoke-virtual {p3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/android/okio/Sink;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okio/Okio;->buffer(Lcom/android/okio/Sink;)Lcom/android/okio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->sink:Lcom/android/okio/BufferedSink;

    .line 515
    return-void
.end method

.method public constructor <init>(ZLjava/net/Socket;)V
    .locals 1
    .param p1, "client"    # Z
    .param p2, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    invoke-virtual {p2}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;-><init>(Ljava/lang/String;ZLjava/net/Socket;)V

    .line 504
    return-void
.end method

.method static synthetic access$000(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Lcom/android/okhttp/Protocol;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->protocol:Lcom/android/okhttp/Protocol;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Lcom/android/okhttp/internal/spdy/PushObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->pushObserver:Lcom/android/okhttp/internal/spdy/PushObserver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;

    .prologue
    .line 493
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->client:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->handler:Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Lcom/android/okio/BufferedSource;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->source:Lcom/android/okio/BufferedSource;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Lcom/android/okio/BufferedSink;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->sink:Lcom/android/okio/BufferedSink;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/okhttp/internal/spdy/SpdyConnection;
    .locals 2

    .prologue
    .line 533
    new-instance v0, Lcom/android/okhttp/internal/spdy/SpdyConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;-><init>(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;Lcom/android/okhttp/internal/spdy/SpdyConnection$1;)V

    return-object v0
.end method

.method public handler(Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;)Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;
    .locals 0
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->handler:Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;

    .line 519
    return-object p0
.end method

.method public protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;
    .locals 0
    .param p1, "protocol"    # Lcom/android/okhttp/Protocol;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->protocol:Lcom/android/okhttp/Protocol;

    .line 524
    return-object p0
.end method

.method public pushObserver(Lcom/android/okhttp/internal/spdy/PushObserver;)Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;
    .locals 0
    .param p1, "pushObserver"    # Lcom/android/okhttp/internal/spdy/PushObserver;

    .prologue
    .line 528
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->pushObserver:Lcom/android/okhttp/internal/spdy/PushObserver;

    .line 529
    return-object p0
.end method
