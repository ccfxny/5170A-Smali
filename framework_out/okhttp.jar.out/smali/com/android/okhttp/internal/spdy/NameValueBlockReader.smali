.class Lcom/android/okhttp/internal/spdy/NameValueBlockReader;
.super Ljava/lang/Object;
.source "NameValueBlockReader.java"


# instance fields
.field private compressedLimit:I

.field private final inflaterSource:Lcom/android/okio/InflaterSource;

.field private final source:Lcom/android/okio/BufferedSource;


# direct methods
.method public constructor <init>(Lcom/android/okio/BufferedSource;)V
    .locals 3
    .param p1, "source"    # Lcom/android/okio/BufferedSource;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v1, Lcom/android/okhttp/internal/spdy/NameValueBlockReader$1;

    invoke-direct {v1, p0, p1}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader$1;-><init>(Lcom/android/okhttp/internal/spdy/NameValueBlockReader;Lcom/android/okio/BufferedSource;)V

    .line 60
    .local v1, "throttleSource":Lcom/android/okio/Source;
    new-instance v0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader$2;

    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader$2;-><init>(Lcom/android/okhttp/internal/spdy/NameValueBlockReader;)V

    .line 72
    .local v0, "inflater":Ljava/util/zip/Inflater;
    new-instance v2, Lcom/android/okio/InflaterSource;

    invoke-direct {v2, v1, v0}, Lcom/android/okio/InflaterSource;-><init>(Lcom/android/okio/Source;Ljava/util/zip/Inflater;)V

    iput-object v2, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->inflaterSource:Lcom/android/okio/InflaterSource;

    .line 73
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->inflaterSource:Lcom/android/okio/InflaterSource;

    invoke-static {v2}, Lcom/android/okio/Okio;->buffer(Lcom/android/okio/Source;)Lcom/android/okio/BufferedSource;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->source:Lcom/android/okio/BufferedSource;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/okhttp/internal/spdy/NameValueBlockReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/NameValueBlockReader;

    .prologue
    .line 22
    iget v0, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    return v0
.end method

.method static synthetic access$022(Lcom/android/okhttp/internal/spdy/NameValueBlockReader;J)I
    .locals 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/spdy/NameValueBlockReader;
    .param p1, "x1"    # J

    .prologue
    .line 22
    iget v0, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    return v0
.end method

.method private doneReading()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget v0, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    if-lez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->inflaterSource:Lcom/android/okio/InflaterSource;

    invoke-virtual {v0}, Lcom/android/okio/InflaterSource;->refill()Z

    .line 106
    iget v0, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compressedLimit > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    return-void
.end method

.method private readByteString()Lcom/android/okio/ByteString;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v0

    .line 97
    .local v0, "length":I
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->source:Lcom/android/okio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/android/okio/BufferedSource;->readByteString(J)Lcom/android/okio/ByteString;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okio/BufferedSource;->close()V

    .line 112
    return-void
.end method

.method public readNameValueBlock(I)Ljava/util/List;
    .locals 8
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget v5, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    add-int/2addr v5, p1

    iput v5, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    .line 79
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v5}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v3

    .line 80
    .local v3, "numberOfPairs":I
    if-gez v3, :cond_0

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numberOfPairs < 0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 81
    :cond_0
    const/16 v5, 0x400

    if-le v3, v5, :cond_1

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numberOfPairs > 1024: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 83
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 85
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->readByteString()Lcom/android/okio/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/okio/ByteString;->toAsciiLowercase()Lcom/android/okio/ByteString;

    move-result-object v2

    .line 86
    .local v2, "name":Lcom/android/okio/ByteString;
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->readByteString()Lcom/android/okio/ByteString;

    move-result-object v4

    .line 87
    .local v4, "values":Lcom/android/okio/ByteString;
    invoke-virtual {v2}, Lcom/android/okio/ByteString;->size()I

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/io/IOException;

    const-string v6, "name.size == 0"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 88
    :cond_2
    new-instance v5, Lcom/android/okhttp/internal/spdy/Header;

    invoke-direct {v5, v2, v4}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okio/ByteString;Lcom/android/okio/ByteString;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v2    # "name":Lcom/android/okio/ByteString;
    .end local v4    # "values":Lcom/android/okio/ByteString;
    :cond_3
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->doneReading()V

    .line 92
    return-object v0
.end method
