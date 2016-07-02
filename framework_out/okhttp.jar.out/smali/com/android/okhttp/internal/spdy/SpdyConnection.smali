.class public final Lcom/android/okhttp/internal/spdy/SpdyConnection;
.super Ljava/lang/Object;
.source "SpdyConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;,
        Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field bytesLeftInWriteWindow:J

.field final client:Z

.field private final currentPushRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final frameReader:Lcom/android/okhttp/internal/spdy/FrameReader;

.field final frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

.field private final handler:Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;

.field private final hostName:Ljava/lang/String;

.field private idleStartTimeNs:J

.field private lastGoodStreamId:I

.field final maxFrameSize:J

.field private nextPingId:I

.field private nextStreamId:I

.field final okHttpSettings:Lcom/android/okhttp/internal/spdy/Settings;

.field final peerSettings:Lcom/android/okhttp/internal/spdy/Settings;

.field private pings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/okhttp/internal/spdy/Ping;",
            ">;"
        }
    .end annotation
.end field

.field final protocol:Lcom/android/okhttp/Protocol;

.field private final pushObserver:Lcom/android/okhttp/internal/spdy/PushObserver;

.field final readerRunnable:Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;

.field private receivedInitialPeerSettings:Z

.field private shutdown:Z

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/okhttp/internal/spdy/SpdyStream;",
            ">;"
        }
    .end annotation
.end field

.field unacknowledgedBytesRead:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 53
    const-class v0, Lcom/android/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    sput-boolean v0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->$assertionsDisabled:Z

    .line 67
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp SpdyConnection"

    invoke-static {v0, v8}, Lcom/android/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/android/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    return-void

    :cond_0
    move v0, v2

    .line 53
    goto :goto_0
.end method

.method private constructor <init>(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)V
    .locals 7
    .param p1, "builder"    # Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    .line 87
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->idleStartTimeNs:J

    .line 100
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->unacknowledgedBytesRead:J

    .line 111
    new-instance v1, Lcom/android/okhttp/internal/spdy/Settings;

    invoke-direct {v1}, Lcom/android/okhttp/internal/spdy/Settings;-><init>()V

    iput-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->okHttpSettings:Lcom/android/okhttp/internal/spdy/Settings;

    .line 116
    new-instance v1, Lcom/android/okhttp/internal/spdy/Settings;

    invoke-direct {v1}, Lcom/android/okhttp/internal/spdy/Settings;-><init>()V

    iput-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->peerSettings:Lcom/android/okhttp/internal/spdy/Settings;

    .line 118
    iput-boolean v6, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->receivedInitialPeerSettings:Z

    .line 762
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->currentPushRequests:Ljava/util/Set;

    .line 127
    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->protocol:Lcom/android/okhttp/Protocol;
    invoke-static {p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->access$000(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Lcom/android/okhttp/Protocol;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->protocol:Lcom/android/okhttp/Protocol;

    .line 128
    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->pushObserver:Lcom/android/okhttp/internal/spdy/PushObserver;
    invoke-static {p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->access$100(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Lcom/android/okhttp/internal/spdy/PushObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushObserver:Lcom/android/okhttp/internal/spdy/PushObserver;

    .line 129
    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->client:Z
    invoke-static {p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->access$200(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->client:Z

    .line 130
    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->handler:Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;
    invoke-static {p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->access$300(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->handler:Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;

    .line 131
    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->client:Z
    invoke-static {p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->access$200(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I

    .line 132
    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->client:Z
    invoke-static {p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->access$200(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    iput v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->nextPingId:I

    .line 138
    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->client:Z
    invoke-static {p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->access$200(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->okHttpSettings:Lcom/android/okhttp/internal/spdy/Settings;

    const/4 v2, 0x7

    const/high16 v3, 0x1000000

    invoke-virtual {v1, v2, v6, v3}, Lcom/android/okhttp/internal/spdy/Settings;->set(III)Lcom/android/okhttp/internal/spdy/Settings;

    .line 142
    :cond_0
    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->hostName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->access$400(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    .line 145
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->protocol:Lcom/android/okhttp/Protocol;

    sget-object v2, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-ne v1, v2, :cond_3

    .line 146
    new-instance v0, Lcom/android/okhttp/internal/spdy/Http20Draft09;

    invoke-direct {v0}, Lcom/android/okhttp/internal/spdy/Http20Draft09;-><init>()V

    .line 152
    .local v0, "variant":Lcom/android/okhttp/internal/spdy/Variant;
    :goto_2
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->peerSettings:Lcom/android/okhttp/internal/spdy/Settings;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/spdy/Settings;->getInitialWindowSize(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->bytesLeftInWriteWindow:J

    .line 153
    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->source:Lcom/android/okio/BufferedSource;
    invoke-static {p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->access$500(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Lcom/android/okio/BufferedSource;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->client:Z

    invoke-interface {v0, v1, v2}, Lcom/android/okhttp/internal/spdy/Variant;->newReader(Lcom/android/okio/BufferedSource;Z)Lcom/android/okhttp/internal/spdy/FrameReader;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameReader:Lcom/android/okhttp/internal/spdy/FrameReader;

    .line 154
    # getter for: Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->sink:Lcom/android/okio/BufferedSink;
    invoke-static {p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->access$600(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Lcom/android/okio/BufferedSink;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->client:Z

    invoke-interface {v0, v1, v2}, Lcom/android/okhttp/internal/spdy/Variant;->newWriter(Lcom/android/okio/BufferedSink;Z)Lcom/android/okhttp/internal/spdy/FrameWriter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    .line 155
    invoke-interface {v0}, Lcom/android/okhttp/internal/spdy/Variant;->maxFrameSize()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->maxFrameSize:J

    .line 157
    new-instance v1, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;-><init>(Lcom/android/okhttp/internal/spdy/SpdyConnection;Lcom/android/okhttp/internal/spdy/SpdyConnection$1;)V

    iput-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->readerRunnable:Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;

    .line 158
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->readerRunnable:Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 159
    return-void

    .end local v0    # "variant":Lcom/android/okhttp/internal/spdy/Variant;
    :cond_1
    move v1, v3

    .line 131
    goto :goto_0

    :cond_2
    move v2, v3

    .line 132
    goto :goto_1

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->protocol:Lcom/android/okhttp/Protocol;

    sget-object v2, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    if-ne v1, v2, :cond_4

    .line 148
    new-instance v0, Lcom/android/okhttp/internal/spdy/Spdy3;

    invoke-direct {v0}, Lcom/android/okhttp/internal/spdy/Spdy3;-><init>()V

    .restart local v0    # "variant":Lcom/android/okhttp/internal/spdy/Variant;
    goto :goto_2

    .line 150
    .end local v0    # "variant":Lcom/android/okhttp/internal/spdy/Variant;
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->protocol:Lcom/android/okhttp/Protocol;

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;Lcom/android/okhttp/internal/spdy/SpdyConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;
    .param p2, "x1"    # Lcom/android/okhttp/internal/spdy/SpdyConnection$1;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;-><init>(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/okhttp/internal/spdy/SpdyConnection;Lcom/android/okhttp/internal/spdy/ErrorCode;Lcom/android/okhttp/internal/spdy/ErrorCode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # Lcom/android/okhttp/internal/spdy/ErrorCode;
    .param p2, "x2"    # Lcom/android/okhttp/internal/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->close(Lcom/android/okhttp/internal/spdy/ErrorCode;Lcom/android/okhttp/internal/spdy/ErrorCode;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/okhttp/internal/spdy/SpdyConnection;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushedStream(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/okhttp/internal/spdy/SpdyConnection;ILcom/android/okio/BufferedSource;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/okio/BufferedSource;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushDataLater(ILcom/android/okio/BufferedSource;IZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/okhttp/internal/spdy/SpdyConnection;ILjava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushHeadersLater(ILjava/util/List;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->shutdown:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/okhttp/internal/spdy/SpdyConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->shutdown:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/okhttp/internal/spdy/SpdyConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->lastGoodStreamId:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/okhttp/internal/spdy/SpdyConnection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->lastGoodStreamId:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/okhttp/internal/spdy/SpdyConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->handler:Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/okhttp/internal/spdy/SpdyConnection;ILcom/android/okhttp/internal/spdy/ErrorCode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/okhttp/internal/spdy/ErrorCode;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushResetLater(ILcom/android/okhttp/internal/spdy/ErrorCode;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->receivedInitialPeerSettings:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/okhttp/internal/spdy/SpdyConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->receivedInitialPeerSettings:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/okhttp/internal/spdy/SpdyConnection;I)Lcom/android/okhttp/internal/spdy/Ping;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->removePing(I)Lcom/android/okhttp/internal/spdy/Ping;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/okhttp/internal/spdy/SpdyConnection;ZIILcom/android/okhttp/internal/spdy/Ping;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/android/okhttp/internal/spdy/Ping;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->writePingLater(ZIILcom/android/okhttp/internal/spdy/Ping;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/okhttp/internal/spdy/SpdyConnection;ILjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushRequestLater(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Lcom/android/okhttp/internal/spdy/PushObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushObserver:Lcom/android/okhttp/internal/spdy/PushObserver;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->currentPushRequests:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/okhttp/internal/spdy/SpdyConnection;ZIILcom/android/okhttp/internal/spdy/Ping;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/android/okhttp/internal/spdy/Ping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->writePing(ZIILcom/android/okhttp/internal/spdy/Ping;)V

    return-void
.end method

.method private close(Lcom/android/okhttp/internal/spdy/ErrorCode;Lcom/android/okhttp/internal/spdy/ErrorCode;)V
    .locals 12
    .param p1, "connectionCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;
    .param p2, "streamCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    sget-boolean v10, Lcom/android/okhttp/internal/spdy/SpdyConnection;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 433
    :cond_0
    const/4 v9, 0x0

    .line 435
    .local v9, "thrown":Ljava/io/IOException;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->shutdown(Lcom/android/okhttp/internal/spdy/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :goto_0
    const/4 v8, 0x0

    .line 441
    .local v8, "streamsToClose":[Lcom/android/okhttp/internal/spdy/SpdyStream;
    const/4 v6, 0x0

    .line 442
    .local v6, "pingsToCancel":[Lcom/android/okhttp/internal/spdy/Ping;
    monitor-enter p0

    .line 443
    :try_start_1
    iget-object v10, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 444
    iget-object v10, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    iget-object v11, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    new-array v11, v11, [Lcom/android/okhttp/internal/spdy/SpdyStream;

    invoke-interface {v10, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, [Lcom/android/okhttp/internal/spdy/SpdyStream;

    move-object v8, v0

    .line 445
    iget-object v10, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->clear()V

    .line 446
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->setIdle(Z)V

    .line 448
    :cond_1
    iget-object v10, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    if-eqz v10, :cond_2

    .line 449
    iget-object v10, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    iget-object v11, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    new-array v11, v11, [Lcom/android/okhttp/internal/spdy/Ping;

    invoke-interface {v10, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, [Lcom/android/okhttp/internal/spdy/Ping;

    move-object v6, v0

    .line 450
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    .line 452
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    if-eqz v8, :cond_4

    .line 455
    move-object v1, v8

    .local v1, "arr$":[Lcom/android/okhttp/internal/spdy/SpdyStream;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v7, v1, v3

    .line 457
    .local v7, "stream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    :try_start_2
    invoke-virtual {v7, p2}, Lcom/android/okhttp/internal/spdy/SpdyStream;->close(Lcom/android/okhttp/internal/spdy/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 455
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 436
    .end local v1    # "arr$":[Lcom/android/okhttp/internal/spdy/SpdyStream;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "pingsToCancel":[Lcom/android/okhttp/internal/spdy/Ping;
    .end local v7    # "stream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    .end local v8    # "streamsToClose":[Lcom/android/okhttp/internal/spdy/SpdyStream;
    :catch_0
    move-exception v2

    .line 437
    .local v2, "e":Ljava/io/IOException;
    move-object v9, v2

    goto :goto_0

    .line 452
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v6    # "pingsToCancel":[Lcom/android/okhttp/internal/spdy/Ping;
    .restart local v8    # "streamsToClose":[Lcom/android/okhttp/internal/spdy/SpdyStream;
    :catchall_0
    move-exception v10

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v10

    .line 458
    .restart local v1    # "arr$":[Lcom/android/okhttp/internal/spdy/SpdyStream;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v7    # "stream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    :catch_1
    move-exception v2

    .line 459
    .restart local v2    # "e":Ljava/io/IOException;
    if-eqz v9, :cond_3

    move-object v9, v2

    goto :goto_2

    .line 464
    .end local v1    # "arr$":[Lcom/android/okhttp/internal/spdy/SpdyStream;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "stream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    :cond_4
    if-eqz v6, :cond_5

    .line 465
    move-object v1, v6

    .local v1, "arr$":[Lcom/android/okhttp/internal/spdy/Ping;
    array-length v4, v1

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_3
    if-ge v3, v4, :cond_5

    aget-object v5, v1, v3

    .line 466
    .local v5, "ping":Lcom/android/okhttp/internal/spdy/Ping;
    invoke-virtual {v5}, Lcom/android/okhttp/internal/spdy/Ping;->cancel()V

    .line 465
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 471
    .end local v1    # "arr$":[Lcom/android/okhttp/internal/spdy/Ping;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "ping":Lcom/android/okhttp/internal/spdy/Ping;
    :cond_5
    :try_start_4
    iget-object v10, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameReader:Lcom/android/okhttp/internal/spdy/FrameReader;

    invoke-interface {v10}, Lcom/android/okhttp/internal/spdy/FrameReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 476
    :goto_4
    :try_start_5
    iget-object v10, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v10}, Lcom/android/okhttp/internal/spdy/FrameWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 481
    :cond_6
    :goto_5
    if-eqz v9, :cond_7

    throw v9

    .line 472
    :catch_2
    move-exception v2

    .line 473
    .restart local v2    # "e":Ljava/io/IOException;
    move-object v9, v2

    goto :goto_4

    .line 477
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 478
    .restart local v2    # "e":Ljava/io/IOException;
    if-nez v9, :cond_6

    move-object v9, v2

    goto :goto_5

    .line 482
    .end local v2    # "e":Ljava/io/IOException;
    :cond_7
    return-void
.end method

.method private newStream(ILjava/util/List;ZZ)Lcom/android/okhttp/internal/spdy/SpdyStream;
    .locals 17
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .param p4, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;ZZ)",
            "Lcom/android/okhttp/internal/spdy/SpdyStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    if-nez p3, :cond_0

    const/4 v5, 0x1

    .line 234
    .local v5, "outFinished":Z
    :goto_0
    if-nez p4, :cond_1

    const/4 v6, 0x1

    .line 235
    .local v6, "inFinished":Z
    :goto_1
    const/4 v7, -0x1

    .line 236
    .local v7, "priority":I
    const/4 v14, 0x0

    .line 240
    .local v14, "slot":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 241
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 242
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->shutdown:Z

    if-eqz v4, :cond_2

    .line 243
    new-instance v4, Ljava/io/IOException;

    const-string v8, "shutdown"

    invoke-direct {v4, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 252
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    .line 261
    :catchall_1
    move-exception v4

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 233
    .end local v5    # "outFinished":Z
    .end local v6    # "inFinished":Z
    .end local v7    # "priority":I
    .end local v14    # "slot":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 234
    .restart local v5    # "outFinished":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 245
    .restart local v6    # "inFinished":Z
    .restart local v7    # "priority":I
    .restart local v14    # "slot":I
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I

    .line 246
    .local v3, "streamId":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I

    .line 247
    new-instance v2, Lcom/android/okhttp/internal/spdy/SpdyStream;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/okhttp/internal/spdy/SpdyStream;-><init>(ILcom/android/okhttp/internal/spdy/SpdyConnection;ZZILjava/util/List;)V

    .line 248
    .local v2, "stream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    invoke-virtual {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->setIdle(Z)V

    .line 252
    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    if-nez p1, :cond_5

    .line 254
    :try_start_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    move v9, v5

    move v10, v6

    move v11, v3

    move/from16 v12, p1

    move v13, v7

    move-object/from16 v15, p2

    invoke-interface/range {v8 .. v15}, Lcom/android/okhttp/internal/spdy/FrameWriter;->synStream(ZZIIIILjava/util/List;)V

    .line 261
    :goto_2
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 263
    if-nez p3, :cond_4

    .line 264
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v4}, Lcom/android/okhttp/internal/spdy/FrameWriter;->flush()V

    .line 267
    :cond_4
    return-object v2

    .line 256
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->client:Z

    if-eqz v4, :cond_6

    .line 257
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v8, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 259
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v4, v0, v3, v1}, Lcom/android/okhttp/internal/spdy/FrameWriter;->pushPromise(IILjava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2
.end method

.method private pushDataLater(ILcom/android/okio/BufferedSource;IZ)V
    .locals 9
    .param p1, "streamId"    # I
    .param p2, "source"    # Lcom/android/okio/BufferedSource;
    .param p3, "byteCount"    # I
    .param p4, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 812
    new-instance v5, Lcom/android/okio/OkBuffer;

    invoke-direct {v5}, Lcom/android/okio/OkBuffer;-><init>()V

    .line 813
    .local v5, "buffer":Lcom/android/okio/OkBuffer;
    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lcom/android/okio/BufferedSource;->require(J)V

    .line 814
    int-to-long v0, p3

    invoke-interface {p2, v5, v0, v1}, Lcom/android/okio/BufferedSource;->read(Lcom/android/okio/OkBuffer;J)J

    .line 815
    invoke-virtual {v5}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v0

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 816
    :cond_0
    sget-object v8, Lcom/android/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;

    const-string v2, "OkHttp %s Push Data[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;-><init>(Lcom/android/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/android/okio/OkBuffer;IZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 830
    return-void
.end method

.method private pushHeadersLater(ILjava/util/List;Z)V
    .locals 8
    .param p1, "streamId"    # I
    .param p3, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 790
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    sget-object v7, Lcom/android/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/okhttp/internal/spdy/SpdyConnection$5;

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/okhttp/internal/spdy/SpdyConnection$5;-><init>(Lcom/android/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 804
    return-void
.end method

.method private pushRequestLater(ILjava/util/List;)V
    .locals 7
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 765
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    monitor-enter p0

    .line 766
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    sget-object v0, Lcom/android/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {p0, p1, v0}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->writeSynResetLater(ILcom/android/okhttp/internal/spdy/ErrorCode;)V

    .line 768
    monitor-exit p0

    .line 786
    :goto_0
    return-void

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 771
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    sget-object v6, Lcom/android/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/okhttp/internal/spdy/SpdyConnection$4;

    const-string v2, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/internal/spdy/SpdyConnection$4;-><init>(Lcom/android/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 771
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private pushResetLater(ILcom/android/okhttp/internal/spdy/ErrorCode;)V
    .locals 7
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;

    .prologue
    .line 833
    sget-object v6, Lcom/android/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/okhttp/internal/spdy/SpdyConnection$7;

    const-string v2, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/internal/spdy/SpdyConnection$7;-><init>(Lcom/android/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/android/okhttp/internal/spdy/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 841
    return-void
.end method

.method private pushedStream(I)Z
    .locals 2
    .param p1, "streamId"    # I

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->protocol:Lcom/android/okhttp/Protocol;

    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized removePing(I)Lcom/android/okhttp/internal/spdy/Ping;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 394
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/spdy/Ping;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setIdle(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 187
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->idleStartTimeNs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 187
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private writePing(ZIILcom/android/okhttp/internal/spdy/Ping;)V
    .locals 2
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lcom/android/okhttp/internal/spdy/Ping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    monitor-enter v1

    .line 388
    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p4}, Lcom/android/okhttp/internal/spdy/Ping;->send()V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/okhttp/internal/spdy/FrameWriter;->ping(ZII)V

    .line 390
    monitor-exit v1

    .line 391
    return-void

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private writePingLater(ZIILcom/android/okhttp/internal/spdy/Ping;)V
    .locals 9
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lcom/android/okhttp/internal/spdy/Ping;

    .prologue
    .line 374
    sget-object v8, Lcom/android/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/okhttp/internal/spdy/SpdyConnection$3;

    const-string v2, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/okhttp/internal/spdy/SpdyConnection$3;-><init>(Lcom/android/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/android/okhttp/internal/spdy/Ping;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 383
    return-void
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .locals 3
    .param p1, "delta"    # J

    .prologue
    .line 322
    iget-wide v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->bytesLeftInWriteWindow:J

    .line 323
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 324
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    sget-object v0, Lcom/android/okhttp/internal/spdy/ErrorCode;->NO_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/spdy/ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->close(Lcom/android/okhttp/internal/spdy/ErrorCode;Lcom/android/okhttp/internal/spdy/ErrorCode;)V

    .line 429
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v0}, Lcom/android/okhttp/internal/spdy/FrameWriter;->flush()V

    .line 399
    return-void
.end method

.method public declared-synchronized getIdleStartTimeNs()J
    .locals 2

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->idleStartTimeNs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProtocol()Lcom/android/okhttp/Protocol;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->protocol:Lcom/android/okhttp/Protocol;

    return-object v0
.end method

.method declared-synchronized getStream(I)Lcom/android/okhttp/internal/spdy/SpdyStream;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/spdy/SpdyStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isIdle()Z
    .locals 4

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->idleStartTimeNs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newStream(Ljava/util/List;ZZ)Lcom/android/okhttp/internal/spdy/SpdyStream;
    .locals 1
    .param p2, "out"    # Z
    .param p3, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;ZZ)",
            "Lcom/android/okhttp/internal/spdy/SpdyStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->newStream(ILjava/util/List;ZZ)Lcom/android/okhttp/internal/spdy/SpdyStream;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized openStreamCount()I
    .locals 1

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ping()Lcom/android/okhttp/internal/spdy/Ping;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    new-instance v0, Lcom/android/okhttp/internal/spdy/Ping;

    invoke-direct {v0}, Lcom/android/okhttp/internal/spdy/Ping;-><init>()V

    .line 359
    .local v0, "ping":Lcom/android/okhttp/internal/spdy/Ping;
    monitor-enter p0

    .line 360
    :try_start_0
    iget-boolean v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->shutdown:Z

    if-eqz v2, :cond_0

    .line 361
    new-instance v2, Ljava/io/IOException;

    const-string v3, "shutdown"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 367
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 363
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->nextPingId:I

    .line 364
    .local v1, "pingId":I
    iget v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->nextPingId:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->nextPingId:I

    .line 365
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    .line 366
    :cond_1
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    const/4 v2, 0x0

    const v3, 0x4f4b6f6b

    invoke-direct {p0, v2, v1, v3, v0}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->writePing(ZIILcom/android/okhttp/internal/spdy/Ping;)V

    .line 369
    return-object v0
.end method

.method public pushStream(ILjava/util/List;Z)Lcom/android/okhttp/internal/spdy/SpdyStream;
    .locals 2
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;Z)",
            "Lcom/android/okhttp/internal/spdy/SpdyStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->client:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client cannot push requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->protocol:Lcom/android/okhttp/Protocol;

    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol != HTTP_2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->newStream(ILjava/util/List;ZZ)Lcom/android/okhttp/internal/spdy/SpdyStream;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized removeStream(I)Lcom/android/okhttp/internal/spdy/SpdyStream;
    .locals 3
    .param p1, "streamId"    # I

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/spdy/SpdyStream;

    .line 180
    .local v0, "stream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->setIdle(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :cond_0
    monitor-exit p0

    return-object v0

    .line 179
    .end local v0    # "stream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public sendConnectionHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v0}, Lcom/android/okhttp/internal/spdy/FrameWriter;->connectionHeader()V

    .line 490
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->okHttpSettings:Lcom/android/okhttp/internal/spdy/Settings;

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/spdy/FrameWriter;->settings(Lcom/android/okhttp/internal/spdy/Settings;)V

    .line 491
    return-void
.end method

.method public shutdown(Lcom/android/okhttp/internal/spdy/ErrorCode;)V
    .locals 4
    .param p1, "statusCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    monitor-enter v2

    .line 410
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :try_start_1
    iget-boolean v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->shutdown:Z

    if-eqz v1, :cond_0

    .line 412
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 420
    :goto_0
    return-void

    .line 414
    :cond_0
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->shutdown:Z

    .line 415
    iget v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->lastGoodStreamId:I

    .line 416
    .local v0, "lastGoodStreamId":I
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 418
    :try_start_4
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    sget-object v3, Lcom/android/okhttp/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-interface {v1, v0, p1, v3}, Lcom/android/okhttp/internal/spdy/FrameWriter;->goAway(ILcom/android/okhttp/internal/spdy/ErrorCode;[B)V

    .line 419
    monitor-exit v2

    goto :goto_0

    .end local v0    # "lastGoodStreamId":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 416
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public writeData(IZLcom/android/okio/OkBuffer;J)V
    .locals 10
    .param p1, "streamId"    # I
    .param p2, "outFinished"    # Z
    .param p3, "buffer"    # Lcom/android/okio/OkBuffer;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    .line 292
    cmp-long v2, p4, v8

    if-nez v2, :cond_2

    .line 293
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v2, p2, p1, p3, v3}, Lcom/android/okhttp/internal/spdy/FrameWriter;->data(ZILcom/android/okio/OkBuffer;I)V

    .line 315
    :cond_0
    return-void

    .line 308
    :cond_1
    :try_start_0
    iget-wide v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->bytesLeftInWriteWindow:J

    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->maxFrameSize:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 309
    .local v1, "toWrite":I
    iget-wide v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->bytesLeftInWriteWindow:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->bytesLeftInWriteWindow:J

    .line 310
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    int-to-long v4, v1

    sub-long/2addr p4, v4

    .line 313
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    if-eqz p2, :cond_3

    cmp-long v2, p4, v8

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v4, v2, p1, p3, v1}, Lcom/android/okhttp/internal/spdy/FrameWriter;->data(ZILcom/android/okio/OkBuffer;I)V

    .line 297
    .end local v1    # "toWrite":I
    :cond_2
    cmp-long v2, p4, v8

    if-lez v2, :cond_0

    .line 299
    monitor-enter p0

    .line 301
    :goto_1
    :try_start_1
    iget-wide v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->bytesLeftInWriteWindow:J

    cmp-long v2, v4, v8

    if-gtz v2, :cond_1

    .line 302
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    throw v2

    .line 310
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v1    # "toWrite":I
    :cond_3
    move v2, v3

    .line 313
    goto :goto_0
.end method

.method writeSynReply(IZLjava/util/List;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "outFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    .local p3, "alternating":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v0, p2, p1, p3}, Lcom/android/okhttp/internal/spdy/FrameWriter;->synReply(ZILjava/util/List;)V

    .line 273
    return-void
.end method

.method writeSynReset(ILcom/android/okhttp/internal/spdy/ErrorCode;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "statusCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v0, p1, p2}, Lcom/android/okhttp/internal/spdy/FrameWriter;->rstStream(ILcom/android/okhttp/internal/spdy/ErrorCode;)V

    .line 339
    return-void
.end method

.method writeSynResetLater(ILcom/android/okhttp/internal/spdy/ErrorCode;)V
    .locals 7
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;

    .prologue
    .line 327
    sget-object v6, Lcom/android/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/okhttp/internal/spdy/SpdyConnection$1;

    const-string v2, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/internal/spdy/SpdyConnection$1;-><init>(Lcom/android/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/android/okhttp/internal/spdy/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 335
    return-void
.end method

.method writeWindowUpdateLater(IJ)V
    .locals 8
    .param p1, "streamId"    # I
    .param p2, "unacknowledgedBytesRead"    # J

    .prologue
    .line 342
    sget-object v0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/okhttp/internal/spdy/SpdyConnection$2;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/okhttp/internal/spdy/SpdyConnection$2;-><init>(Lcom/android/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 350
    return-void
.end method
