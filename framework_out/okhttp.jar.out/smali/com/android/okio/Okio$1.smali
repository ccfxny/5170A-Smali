.class final Lcom/android/okio/Okio$1;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lcom/android/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/android/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private deadline:Lcom/android/okio/Deadline;

.field final synthetic val$out:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Lcom/android/okio/Deadline;->NONE:Lcom/android/okio/Deadline;

    iput-object v0, p0, Lcom/android/okio/Okio$1;->deadline:Lcom/android/okio/Deadline;

    return-void
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
    .line 88
    iget-object v0, p0, Lcom/android/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 89
    return-void
.end method

.method public deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/Sink;
    .locals 2
    .param p1, "deadline"    # Lcom/android/okio/Deadline;

    .prologue
    .line 92
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deadline == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iput-object p1, p0, Lcom/android/okio/Okio$1;->deadline:Lcom/android/okio/Deadline;

    .line 94
    return-object p0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/android/okio/OkBuffer;J)V
    .locals 8
    .param p1, "source"    # Lcom/android/okio/OkBuffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 65
    iget-wide v0, p1, Lcom/android/okio/OkBuffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 66
    :cond_0
    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/android/okio/Okio$1;->deadline:Lcom/android/okio/Deadline;

    invoke-virtual {v0}, Lcom/android/okio/Deadline;->throwIfReached()V

    .line 68
    iget-object v6, p1, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 69
    .local v6, "head":Lcom/android/okio/Segment;
    iget v0, v6, Lcom/android/okio/Segment;->limit:I

    iget v1, v6, Lcom/android/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v7, v0

    .line 70
    .local v7, "toCopy":I
    iget-object v0, p0, Lcom/android/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    iget-object v1, v6, Lcom/android/okio/Segment;->data:[B

    iget v4, v6, Lcom/android/okio/Segment;->pos:I

    invoke-virtual {v0, v1, v4, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 72
    iget v0, v6, Lcom/android/okio/Segment;->pos:I

    add-int/2addr v0, v7

    iput v0, v6, Lcom/android/okio/Segment;->pos:I

    .line 73
    int-to-long v0, v7

    sub-long/2addr p2, v0

    .line 74
    iget-wide v0, p1, Lcom/android/okio/OkBuffer;->size:J

    int-to-long v4, v7

    sub-long/2addr v0, v4

    iput-wide v0, p1, Lcom/android/okio/OkBuffer;->size:J

    .line 76
    iget v0, v6, Lcom/android/okio/Segment;->pos:I

    iget v1, v6, Lcom/android/okio/Segment;->limit:I

    if-ne v0, v1, :cond_0

    .line 77
    invoke-virtual {v6}, Lcom/android/okio/Segment;->pop()Lcom/android/okio/Segment;

    move-result-object v0

    iput-object v0, p1, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 78
    sget-object v0, Lcom/android/okio/SegmentPool;->INSTANCE:Lcom/android/okio/SegmentPool;

    invoke-virtual {v0, v6}, Lcom/android/okio/SegmentPool;->recycle(Lcom/android/okio/Segment;)V

    goto :goto_0

    .line 81
    .end local v6    # "head":Lcom/android/okio/Segment;
    .end local v7    # "toCopy":I
    :cond_1
    return-void
.end method
