.class final Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;
.super Ljava/lang/Object;
.source "Http20Draft09.java"

# interfaces
.implements Lcom/android/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/Http20Draft09;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContinuationSource"
.end annotation


# instance fields
.field flags:B

.field left:I

.field length:I

.field private final source:Lcom/android/okio/BufferedSource;

.field streamId:I


# direct methods
.method public constructor <init>(Lcom/android/okio/BufferedSource;)V
    .locals 0
    .param p1, "source"    # Lcom/android/okio/BufferedSource;

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;->source:Lcom/android/okio/BufferedSource;

    .line 509
    return-void
.end method

.method private readContinuationHeader()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 533
    iget v0, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;->streamId:I

    .line 534
    .local v0, "previousStreamId":I
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v4}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v2

    .line 535
    .local v2, "w1":I
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v4}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v3

    .line 536
    .local v3, "w2":I
    const/high16 v4, 0x3fff0000    # 1.9921875f

    and-int/2addr v4, v2

    shr-int/lit8 v4, v4, 0x10

    int-to-short v4, v4

    iput v4, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;->left:I

    iput v4, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;->length:I

    .line 537
    const v4, 0xff00

    and-int/2addr v4, v2

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v1, v4

    .line 538
    .local v1, "type":B
    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;->flags:B

    .line 539
    const v4, 0x7fffffff

    and-int/2addr v4, v3

    iput v4, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;->streamId:I

    .line 540
    const/16 v4, 0xa

    if-eq v1, v4, :cond_0

    const-string v4, "%s != TYPE_CONTINUATION"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    # invokes: Lcom/android/okhttp/internal/spdy/Http20Draft09;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v4, v5}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->access$100(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 541
    :cond_0
    iget v4, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;->streamId:I

    if-eq v4, v0, :cond_1

    const-string v4, "TYPE_CONTINUATION streamId changed"

    new-array v5, v7, [Ljava/lang/Object;

    # invokes: Lcom/android/okhttp/internal/spdy/Http20Draft09;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v4, v5}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->access$100(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 542
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    return-void
.end method

.method public deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/Source;
    .locals 1
    .param p1, "deadline"    # Lcom/android/okio/Deadline;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v0, p1}, Lcom/android/okio/BufferedSource;->deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/Source;

    .line 526
    return-object p0
.end method

.method public read(Lcom/android/okio/OkBuffer;J)J
    .locals 8
    .param p1, "sink"    # Lcom/android/okio/OkBuffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 512
    :goto_0
    iget v4, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;->left:I

    if-nez v4, :cond_1

    .line 513
    iget-byte v4, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;->flags:B

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    move-wide v0, v2

    .line 521
    :goto_1
    return-wide v0

    .line 514
    :cond_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;->readContinuationHeader()V

    goto :goto_0

    .line 518
    :cond_1
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;->source:Lcom/android/okio/BufferedSource;

    iget v5, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;->left:I

    int-to-long v6, v5

    invoke-static {p2, p3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-interface {v4, p1, v6, v7}, Lcom/android/okio/BufferedSource;->read(Lcom/android/okio/OkBuffer;J)J

    move-result-wide v0

    .line 519
    .local v0, "read":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    move-wide v0, v2

    goto :goto_1

    .line 520
    :cond_2
    iget v2, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;->left:I

    int-to-long v2, v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;->left:I

    goto :goto_1
.end method
