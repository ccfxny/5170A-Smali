.class public final Lcom/android/okhttp/internal/spdy/Http20Draft09;
.super Ljava/lang/Object;
.source "Http20Draft09.java"

# interfaces
.implements Lcom/android/okhttp/internal/spdy/Variant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;,
        Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;,
        Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;
    }
.end annotation


# static fields
.field private static final CONNECTION_HEADER:Lcom/android/okio/ByteString;

.field static final FLAG_ACK:B = 0x1t

.field static final FLAG_END_HEADERS:B = 0x4t

.field static final FLAG_END_PUSH_PROMISE:B = 0x4t

.field static final FLAG_END_STREAM:B = 0x1t

.field static final FLAG_NONE:B = 0x0t

.field static final FLAG_PRIORITY:B = 0x8t

.field static final TYPE_CONTINUATION:B = 0xat

.field static final TYPE_DATA:B = 0x0t

.field static final TYPE_GOAWAY:B = 0x7t

.field static final TYPE_HEADERS:B = 0x1t

.field static final TYPE_PING:B = 0x6t

.field static final TYPE_PRIORITY:B = 0x2t

.field static final TYPE_PUSH_PROMISE:B = 0x5t

.field static final TYPE_RST_STREAM:B = 0x3t

.field static final TYPE_SETTINGS:B = 0x4t

.field static final TYPE_WINDOW_UPDATE:B = 0x9t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    invoke-static {v0}, Lcom/android/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/spdy/Http20Draft09;->CONNECTION_HEADER:Lcom/android/okio/ByteString;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    return-void
.end method

.method static synthetic access$000()Lcom/android/okio/ByteString;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/okhttp/internal/spdy/Http20Draft09;->CONNECTION_HEADER:Lcom/android/okio/ByteString;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method private static varargs illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 486
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getProtocol()Lcom/android/okhttp/Protocol;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    return-object v0
.end method

.method public maxFrameSize()I
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x3fff

    return v0
.end method

.method public newReader(Lcom/android/okio/BufferedSource;Z)Lcom/android/okhttp/internal/spdy/FrameReader;
    .locals 2
    .param p1, "source"    # Lcom/android/okio/BufferedSource;
    .param p2, "client"    # Z

    .prologue
    .line 60
    new-instance v0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;

    const/16 v1, 0x1000

    invoke-direct {v0, p1, v1, p2}, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;-><init>(Lcom/android/okio/BufferedSource;IZ)V

    return-object v0
.end method

.method public newWriter(Lcom/android/okio/BufferedSink;Z)Lcom/android/okhttp/internal/spdy/FrameWriter;
    .locals 1
    .param p1, "sink"    # Lcom/android/okio/BufferedSink;
    .param p2, "client"    # Z

    .prologue
    .line 64
    new-instance v0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;

    invoke-direct {v0, p1, p2}, Lcom/android/okhttp/internal/spdy/Http20Draft09$Writer;-><init>(Lcom/android/okio/BufferedSink;Z)V

    return-object v0
.end method
