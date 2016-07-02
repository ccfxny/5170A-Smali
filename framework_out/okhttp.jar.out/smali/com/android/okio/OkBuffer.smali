.class public final Lcom/android/okio/OkBuffer;
.super Ljava/lang/Object;
.source "OkBuffer.java"

# interfaces
.implements Lcom/android/okio/BufferedSource;
.implements Lcom/android/okio/BufferedSink;
.implements Ljava/lang/Cloneable;


# instance fields
.field head:Lcom/android/okio/Segment;

.field size:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private readBytes(J)[B
    .locals 11
    .param p1, "byteCount"    # J

    .prologue
    .line 342
    iget-wide v0, p0, Lcom/android/okio/OkBuffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 343
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 344
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    const/4 v6, 0x0

    .line 348
    .local v6, "offset":I
    long-to-int v0, p1

    new-array v7, v0, [B

    .line 350
    .local v7, "result":[B
    :cond_1
    :goto_0
    int-to-long v0, v6

    cmp-long v0, v0, p1

    if-gez v0, :cond_2

    .line 351
    int-to-long v0, v6

    sub-long v0, p1, v0

    iget-object v2, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget v2, v2, Lcom/android/okio/Segment;->limit:I

    iget-object v3, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget v3, v3, Lcom/android/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v8, v0

    .line 352
    .local v8, "toCopy":I
    iget-object v0, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget-object v0, v0, Lcom/android/okio/Segment;->data:[B

    iget-object v1, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget v1, v1, Lcom/android/okio/Segment;->pos:I

    invoke-static {v0, v1, v7, v6, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 354
    add-int/2addr v6, v8

    .line 355
    iget-object v0, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget v1, v0, Lcom/android/okio/Segment;->pos:I

    add-int/2addr v1, v8

    iput v1, v0, Lcom/android/okio/Segment;->pos:I

    .line 357
    iget-object v0, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget v0, v0, Lcom/android/okio/Segment;->pos:I

    iget-object v1, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget v1, v1, Lcom/android/okio/Segment;->limit:I

    if-ne v0, v1, :cond_1

    .line 358
    iget-object v9, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 359
    .local v9, "toRecycle":Lcom/android/okio/Segment;
    invoke-virtual {v9}, Lcom/android/okio/Segment;->pop()Lcom/android/okio/Segment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 360
    sget-object v0, Lcom/android/okio/SegmentPool;->INSTANCE:Lcom/android/okio/SegmentPool;

    invoke-virtual {v0, v9}, Lcom/android/okio/SegmentPool;->recycle(Lcom/android/okio/Segment;)V

    goto :goto_0

    .line 364
    .end local v8    # "toCopy":I
    .end local v9    # "toRecycle":Lcom/android/okio/Segment;
    :cond_2
    iget-wide v0, p0, Lcom/android/okio/OkBuffer;->size:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/okio/OkBuffer;->size:J

    .line 365
    return-object v7
.end method


# virtual methods
.method public buffer()Lcom/android/okio/OkBuffer;
    .locals 0

    .prologue
    .line 65
    return-object p0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 391
    iget-wide v0, p0, Lcom/android/okio/OkBuffer;->size:J

    invoke-virtual {p0, v0, v1}, Lcom/android/okio/OkBuffer;->skip(J)V

    .line 392
    return-void
.end method

.method public clone()Lcom/android/okio/OkBuffer;
    .locals 6

    .prologue
    .line 746
    new-instance v0, Lcom/android/okio/OkBuffer;

    invoke-direct {v0}, Lcom/android/okio/OkBuffer;-><init>()V

    .line 747
    .local v0, "result":Lcom/android/okio/OkBuffer;
    invoke-virtual {p0}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 754
    :cond_0
    return-object v0

    .line 749
    :cond_1
    iget-object v2, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget-object v2, v2, Lcom/android/okio/Segment;->data:[B

    iget-object v3, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget v3, v3, Lcom/android/okio/Segment;->pos:I

    iget-object v4, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget v4, v4, Lcom/android/okio/Segment;->limit:I

    iget-object v5, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget v5, v5, Lcom/android/okio/Segment;->pos:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/okio/OkBuffer;->write([BII)Lcom/android/okio/OkBuffer;

    .line 750
    iget-object v2, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget-object v1, v2, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    .local v1, "s":Lcom/android/okio/Segment;
    :goto_0
    iget-object v2, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    if-eq v1, v2, :cond_0

    .line 751
    iget-object v2, v1, Lcom/android/okio/Segment;->data:[B

    iget v3, v1, Lcom/android/okio/Segment;->pos:I

    iget v4, v1, Lcom/android/okio/Segment;->limit:I

    iget v5, v1, Lcom/android/okio/Segment;->pos:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/okio/OkBuffer;->write([BII)Lcom/android/okio/OkBuffer;

    .line 750
    iget-object v1, v1, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/okio/OkBuffer;->clone()Lcom/android/okio/OkBuffer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 663
    return-void
.end method

.method public completeSegmentByteCount()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 131
    iget-wide v0, p0, Lcom/android/okio/OkBuffer;->size:J

    .line 132
    .local v0, "result":J
    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 140
    :goto_0
    return-wide v4

    .line 135
    :cond_0
    iget-object v3, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget-object v2, v3, Lcom/android/okio/Segment;->prev:Lcom/android/okio/Segment;

    .line 136
    .local v2, "tail":Lcom/android/okio/Segment;
    iget v3, v2, Lcom/android/okio/Segment;->limit:I

    const/16 v4, 0x800

    if-ge v3, v4, :cond_1

    .line 137
    iget v3, v2, Lcom/android/okio/Segment;->limit:I

    iget v4, v2, Lcom/android/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v4, v3

    sub-long/2addr v0, v4

    :cond_1
    move-wide v4, v0

    .line 140
    goto :goto_0
.end method

.method public deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/OkBuffer;
    .locals 0
    .param p1, "deadline"    # Lcom/android/okio/Deadline;

    .prologue
    .line 627
    return-object p0
.end method

.method public bridge synthetic deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/Sink;
    .locals 1
    .param p1, "x0"    # Lcom/android/okio/Deadline;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/okio/OkBuffer;->deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/OkBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/Source;
    .locals 1
    .param p1, "x0"    # Lcom/android/okio/Deadline;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/okio/OkBuffer;->deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/OkBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic emitCompleteSegments()Lcom/android/okio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/okio/OkBuffer;->emitCompleteSegments()Lcom/android/okio/OkBuffer;

    move-result-object v0

    return-object v0
.end method

.method public emitCompleteSegments()Lcom/android/okio/OkBuffer;
    .locals 0

    .prologue
    .line 91
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 18
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 677
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/android/okio/OkBuffer;

    if-nez v14, :cond_0

    const/4 v14, 0x0

    .line 705
    :goto_0
    return v14

    :cond_0
    move-object/from16 v13, p1

    .line 678
    check-cast v13, Lcom/android/okio/OkBuffer;

    .line 679
    .local v13, "that":Lcom/android/okio/OkBuffer;
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/okio/OkBuffer;->size:J

    iget-wide v0, v13, Lcom/android/okio/OkBuffer;->size:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_1

    const/4 v14, 0x0

    goto :goto_0

    .line 680
    :cond_1
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/okio/OkBuffer;->size:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_2

    const/4 v14, 0x1

    goto :goto_0

    .line 682
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 683
    .local v11, "sa":Lcom/android/okio/Segment;
    iget-object v12, v13, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 684
    .local v12, "sb":Lcom/android/okio/Segment;
    iget v5, v11, Lcom/android/okio/Segment;->pos:I

    .line 685
    .local v5, "posA":I
    iget v9, v12, Lcom/android/okio/Segment;->pos:I

    .line 687
    .local v9, "posB":I
    const-wide/16 v6, 0x0

    .local v6, "pos":J
    :goto_1
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/okio/OkBuffer;->size:J

    cmp-long v14, v6, v14

    if-gez v14, :cond_5

    .line 688
    iget v14, v11, Lcom/android/okio/Segment;->limit:I

    sub-int/2addr v14, v5

    iget v15, v12, Lcom/android/okio/Segment;->limit:I

    sub-int/2addr v15, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    int-to-long v2, v14

    .line 690
    .local v2, "count":J
    const/4 v4, 0x0

    .local v4, "i":I
    move v10, v9

    .end local v9    # "posB":I
    .local v10, "posB":I
    move v8, v5

    .end local v5    # "posA":I
    .local v8, "posA":I
    :goto_2
    int-to-long v14, v4

    cmp-long v14, v14, v2

    if-gez v14, :cond_4

    .line 691
    iget-object v14, v11, Lcom/android/okio/Segment;->data:[B

    add-int/lit8 v5, v8, 0x1

    .end local v8    # "posA":I
    .restart local v5    # "posA":I
    aget-byte v14, v14, v8

    iget-object v15, v12, Lcom/android/okio/Segment;->data:[B

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "posB":I
    .restart local v9    # "posB":I
    aget-byte v15, v15, v10

    if-eq v14, v15, :cond_3

    const/4 v14, 0x0

    goto :goto_0

    .line 690
    :cond_3
    add-int/lit8 v4, v4, 0x1

    move v10, v9

    .end local v9    # "posB":I
    .restart local v10    # "posB":I
    move v8, v5

    .end local v5    # "posA":I
    .restart local v8    # "posA":I
    goto :goto_2

    .line 694
    :cond_4
    iget v14, v11, Lcom/android/okio/Segment;->limit:I

    if-ne v8, v14, :cond_7

    .line 695
    iget-object v11, v11, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    .line 696
    iget v5, v11, Lcom/android/okio/Segment;->pos:I

    .line 699
    .end local v8    # "posA":I
    .restart local v5    # "posA":I
    :goto_3
    iget v14, v12, Lcom/android/okio/Segment;->limit:I

    if-ne v10, v14, :cond_6

    .line 700
    iget-object v12, v12, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    .line 701
    iget v9, v12, Lcom/android/okio/Segment;->pos:I

    .line 687
    .end local v10    # "posB":I
    .restart local v9    # "posB":I
    :goto_4
    add-long/2addr v6, v2

    goto :goto_1

    .line 705
    .end local v2    # "count":J
    .end local v4    # "i":I
    :cond_5
    const/4 v14, 0x1

    goto :goto_0

    .end local v9    # "posB":I
    .restart local v2    # "count":J
    .restart local v4    # "i":I
    .restart local v10    # "posB":I
    :cond_6
    move v9, v10

    .end local v10    # "posB":I
    .restart local v9    # "posB":I
    goto :goto_4

    .end local v5    # "posA":I
    .end local v9    # "posB":I
    .restart local v8    # "posA":I
    .restart local v10    # "posB":I
    :cond_7
    move v5, v8

    .end local v8    # "posA":I
    .restart local v5    # "posA":I
    goto :goto_3
.end method

.method public exhausted()Z
    .locals 4

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/android/okio/OkBuffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 660
    return-void
.end method

.method public getByte(J)B
    .locals 9
    .param p1, "pos"    # J

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/android/okio/OkBuffer;->size:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 167
    iget-object v6, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 168
    .local v6, "s":Lcom/android/okio/Segment;
    :goto_0
    iget v0, v6, Lcom/android/okio/Segment;->limit:I

    iget v1, v6, Lcom/android/okio/Segment;->pos:I

    sub-int v7, v0, v1

    .line 169
    .local v7, "segmentByteCount":I
    int-to-long v0, v7

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, v6, Lcom/android/okio/Segment;->data:[B

    iget v1, v6, Lcom/android/okio/Segment;->pos:I

    long-to-int v2, p1

    add-int/2addr v1, v2

    aget-byte v0, v0, v1

    return v0

    .line 170
    :cond_0
    int-to-long v0, v7

    sub-long/2addr p1, v0

    .line 167
    iget-object v6, v6, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 709
    iget-object v3, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 710
    .local v3, "s":Lcom/android/okio/Segment;
    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 718
    :goto_0
    return v2

    .line 711
    :cond_0
    const/4 v2, 0x1

    .line 713
    .local v2, "result":I
    :cond_1
    iget v1, v3, Lcom/android/okio/Segment;->pos:I

    .local v1, "pos":I
    iget v0, v3, Lcom/android/okio/Segment;->limit:I

    .local v0, "limit":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 714
    mul-int/lit8 v4, v2, 0x1f

    iget-object v5, v3, Lcom/android/okio/Segment;->data:[B

    aget-byte v5, v5, v1

    add-int v2, v4, v5

    .line 713
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 716
    :cond_2
    iget-object v3, v3, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    .line 717
    iget-object v4, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    if-ne v3, v4, :cond_1

    goto :goto_0
.end method

.method public indexOf(B)J
    .locals 2
    .param p1, "b"    # B

    .prologue
    .line 631
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okio/OkBuffer;->indexOf(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJ)J
    .locals 14
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J

    .prologue
    .line 639
    iget-object v1, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 640
    .local v1, "s":Lcom/android/okio/Segment;
    if-nez v1, :cond_0

    const-wide/16 v10, -0x1

    .line 656
    :goto_0
    return-wide v10

    .line 641
    :cond_0
    const-wide/16 v4, 0x0

    .line 643
    .local v4, "offset":J
    :cond_1
    iget v9, v1, Lcom/android/okio/Segment;->limit:I

    iget v10, v1, Lcom/android/okio/Segment;->pos:I

    sub-int v8, v9, v10

    .line 644
    .local v8, "segmentByteCount":I
    int-to-long v10, v8

    cmp-long v9, p2, v10

    if-lez v9, :cond_2

    .line 645
    int-to-long v10, v8

    sub-long p2, p2, v10

    .line 653
    :goto_1
    int-to-long v10, v8

    add-long/2addr v4, v10

    .line 654
    iget-object v1, v1, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    .line 655
    iget-object v9, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    if-ne v1, v9, :cond_1

    .line 656
    const-wide/16 v10, -0x1

    goto :goto_0

    .line 647
    :cond_2
    iget-object v0, v1, Lcom/android/okio/Segment;->data:[B

    .line 648
    .local v0, "data":[B
    iget v9, v1, Lcom/android/okio/Segment;->pos:I

    int-to-long v10, v9

    add-long v6, v10, p2

    .local v6, "pos":J
    iget v9, v1, Lcom/android/okio/Segment;->limit:I

    int-to-long v2, v9

    .local v2, "limit":J
    :goto_2
    cmp-long v9, v6, v2

    if-gez v9, :cond_4

    .line 649
    long-to-int v9, v6

    aget-byte v9, v0, v9

    if-ne v9, p1, :cond_3

    add-long v10, v4, v6

    iget v9, v1, Lcom/android/okio/Segment;->pos:I

    int-to-long v12, v9

    sub-long/2addr v10, v12

    goto :goto_0

    .line 648
    :cond_3
    const-wide/16 v10, 0x1

    add-long/2addr v6, v10

    goto :goto_2

    .line 651
    :cond_4
    const-wide/16 p2, 0x0

    goto :goto_1
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/android/okio/OkBuffer$2;

    invoke-direct {v0, p0}, Lcom/android/okio/OkBuffer$2;-><init>(Lcom/android/okio/OkBuffer;)V

    return-object v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/android/okio/OkBuffer$1;

    invoke-direct {v0, p0}, Lcom/android/okio/OkBuffer$1;-><init>(Lcom/android/okio/OkBuffer;)V

    return-object v0
.end method

.method read([BII)I
    .locals 6
    .param p1, "sink"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 371
    .local v0, "s":Lcom/android/okio/Segment;
    if-nez v0, :cond_1

    const/4 v1, -0x1

    .line 383
    :cond_0
    :goto_0
    return v1

    .line 372
    :cond_1
    iget v2, v0, Lcom/android/okio/Segment;->limit:I

    iget v3, v0, Lcom/android/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 373
    .local v1, "toCopy":I
    iget-object v2, v0, Lcom/android/okio/Segment;->data:[B

    iget v3, v0, Lcom/android/okio/Segment;->pos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 375
    iget v2, v0, Lcom/android/okio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/android/okio/Segment;->pos:I

    .line 376
    iget-wide v2, p0, Lcom/android/okio/OkBuffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/okio/OkBuffer;->size:J

    .line 378
    iget v2, v0, Lcom/android/okio/Segment;->pos:I

    iget v3, v0, Lcom/android/okio/Segment;->limit:I

    if-ne v2, v3, :cond_0

    .line 379
    invoke-virtual {v0}, Lcom/android/okio/Segment;->pop()Lcom/android/okio/Segment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 380
    sget-object v2, Lcom/android/okio/SegmentPool;->INSTANCE:Lcom/android/okio/SegmentPool;

    invoke-virtual {v2, v0}, Lcom/android/okio/SegmentPool;->recycle(Lcom/android/okio/Segment;)V

    goto :goto_0
.end method

.method public read(Lcom/android/okio/OkBuffer;J)J
    .locals 4
    .param p1, "sink"    # Lcom/android/okio/OkBuffer;
    .param p2, "byteCount"    # J

    .prologue
    .line 619
    iget-wide v0, p0, Lcom/android/okio/OkBuffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 622
    :goto_0
    return-wide v0

    .line 620
    :cond_0
    iget-wide v0, p0, Lcom/android/okio/OkBuffer;->size:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    iget-wide p2, p0, Lcom/android/okio/OkBuffer;->size:J

    .line 621
    :cond_1
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/okio/OkBuffer;->write(Lcom/android/okio/OkBuffer;J)V

    move-wide v0, p2

    .line 622
    goto :goto_0
.end method

.method public readByte()B
    .locals 10

    .prologue
    .line 144
    iget-wide v6, p0, Lcom/android/okio/OkBuffer;->size:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "size == 0"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 146
    :cond_0
    iget-object v5, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 147
    .local v5, "segment":Lcom/android/okio/Segment;
    iget v3, v5, Lcom/android/okio/Segment;->pos:I

    .line 148
    .local v3, "pos":I
    iget v2, v5, Lcom/android/okio/Segment;->limit:I

    .line 150
    .local v2, "limit":I
    iget-object v1, v5, Lcom/android/okio/Segment;->data:[B

    .line 151
    .local v1, "data":[B
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .local v4, "pos":I
    aget-byte v0, v1, v3

    .line 152
    .local v0, "b":B
    iget-wide v6, p0, Lcom/android/okio/OkBuffer;->size:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/okio/OkBuffer;->size:J

    .line 154
    if-ne v4, v2, :cond_1

    .line 155
    invoke-virtual {v5}, Lcom/android/okio/Segment;->pop()Lcom/android/okio/Segment;

    move-result-object v6

    iput-object v6, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 156
    sget-object v6, Lcom/android/okio/SegmentPool;->INSTANCE:Lcom/android/okio/SegmentPool;

    invoke-virtual {v6, v5}, Lcom/android/okio/SegmentPool;->recycle(Lcom/android/okio/Segment;)V

    .line 161
    :goto_0
    return v0

    .line 158
    :cond_1
    iput v4, v5, Lcom/android/okio/Segment;->pos:I

    goto :goto_0
.end method

.method public readByteString(J)Lcom/android/okio/ByteString;
    .locals 3
    .param p1, "byteCount"    # J

    .prologue
    .line 282
    new-instance v0, Lcom/android/okio/ByteString;

    invoke-direct {p0, p1, p2}, Lcom/android/okio/OkBuffer;->readBytes(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/okio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readInt()I
    .locals 10

    .prologue
    const-wide/16 v8, 0x4

    .line 204
    iget-wide v6, p0, Lcom/android/okio/OkBuffer;->size:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "size < 4: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/okio/OkBuffer;->size:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 206
    :cond_0
    iget-object v5, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 207
    .local v5, "segment":Lcom/android/okio/Segment;
    iget v3, v5, Lcom/android/okio/Segment;->pos:I

    .line 208
    .local v3, "pos":I
    iget v2, v5, Lcom/android/okio/Segment;->limit:I

    .line 211
    .local v2, "limit":I
    sub-int v6, v2, v3

    const/4 v7, 0x4

    if-ge v6, v7, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/android/okio/OkBuffer;->readByte()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    invoke-virtual {p0}, Lcom/android/okio/OkBuffer;->readByte()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/okio/OkBuffer;->readByte()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/okio/OkBuffer;->readByte()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    or-int v1, v6, v7

    .line 232
    :goto_0
    return v1

    .line 218
    :cond_1
    iget-object v0, v5, Lcom/android/okio/Segment;->data:[B

    .line 219
    .local v0, "data":[B
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .local v4, "pos":I
    aget-byte v6, v0, v3

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    aget-byte v7, v0, v4

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    aget-byte v7, v0, v3

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    aget-byte v7, v0, v4

    and-int/lit16 v7, v7, 0xff

    or-int v1, v6, v7

    .line 223
    .local v1, "i":I
    iget-wide v6, p0, Lcom/android/okio/OkBuffer;->size:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/okio/OkBuffer;->size:J

    .line 225
    if-ne v3, v2, :cond_2

    .line 226
    invoke-virtual {v5}, Lcom/android/okio/Segment;->pop()Lcom/android/okio/Segment;

    move-result-object v6

    iput-object v6, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 227
    sget-object v6, Lcom/android/okio/SegmentPool;->INSTANCE:Lcom/android/okio/SegmentPool;

    invoke-virtual {v6, v5}, Lcom/android/okio/SegmentPool;->recycle(Lcom/android/okio/Segment;)V

    goto :goto_0

    .line 229
    :cond_2
    iput v3, v5, Lcom/android/okio/Segment;->pos:I

    goto :goto_0
.end method

.method public readIntLe()I
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/okio/OkBuffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/android/okio/Util;->reverseBytesInt(I)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 14

    .prologue
    .line 236
    iget-wide v8, p0, Lcom/android/okio/OkBuffer;->size:J

    const-wide/16 v10, 0x8

    cmp-long v5, v8, v10

    if-gez v5, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "size < 8: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/okio/OkBuffer;->size:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 238
    :cond_0
    iget-object v4, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 239
    .local v4, "segment":Lcom/android/okio/Segment;
    iget v2, v4, Lcom/android/okio/Segment;->pos:I

    .line 240
    .local v2, "pos":I
    iget v1, v4, Lcom/android/okio/Segment;->limit:I

    .line 243
    .local v1, "limit":I
    sub-int v5, v1, v2

    const/16 v8, 0x8

    if-ge v5, v8, :cond_1

    .line 244
    invoke-virtual {p0}, Lcom/android/okio/OkBuffer;->readInt()I

    move-result v5

    int-to-long v8, v5

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    const/16 v5, 0x20

    shl-long/2addr v8, v5

    invoke-virtual {p0}, Lcom/android/okio/OkBuffer;->readInt()I

    move-result v5

    int-to-long v10, v5

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    or-long v6, v8, v10

    .line 266
    :goto_0
    return-wide v6

    .line 248
    :cond_1
    iget-object v0, v4, Lcom/android/okio/Segment;->data:[B

    .line 249
    .local v0, "data":[B
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    aget-byte v5, v0, v2

    int-to-long v8, v5

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    const/16 v5, 0x38

    shl-long/2addr v8, v5

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v5, v0, v3

    int-to-long v10, v5

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v5, 0x30

    shl-long/2addr v10, v5

    or-long/2addr v8, v10

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .restart local v3    # "pos":I
    aget-byte v5, v0, v2

    int-to-long v10, v5

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v5, 0x28

    shl-long/2addr v10, v5

    or-long/2addr v8, v10

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v5, v0, v3

    int-to-long v10, v5

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v5, 0x20

    shl-long/2addr v10, v5

    or-long/2addr v8, v10

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .restart local v3    # "pos":I
    aget-byte v5, v0, v2

    int-to-long v10, v5

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v5, 0x18

    shl-long/2addr v10, v5

    or-long/2addr v8, v10

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v5, v0, v3

    int-to-long v10, v5

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v5, 0x10

    shl-long/2addr v10, v5

    or-long/2addr v8, v10

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .restart local v3    # "pos":I
    aget-byte v5, v0, v2

    int-to-long v10, v5

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v5, 0x8

    shl-long/2addr v10, v5

    or-long/2addr v8, v10

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v5, v0, v3

    int-to-long v10, v5

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    or-long v6, v8, v10

    .line 257
    .local v6, "v":J
    iget-wide v8, p0, Lcom/android/okio/OkBuffer;->size:J

    const-wide/16 v10, 0x8

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/okio/OkBuffer;->size:J

    .line 259
    if-ne v2, v1, :cond_2

    .line 260
    invoke-virtual {v4}, Lcom/android/okio/Segment;->pop()Lcom/android/okio/Segment;

    move-result-object v5

    iput-object v5, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 261
    sget-object v5, Lcom/android/okio/SegmentPool;->INSTANCE:Lcom/android/okio/SegmentPool;

    invoke-virtual {v5, v4}, Lcom/android/okio/SegmentPool;->recycle(Lcom/android/okio/Segment;)V

    goto :goto_0

    .line 263
    :cond_2
    iput v2, v4, Lcom/android/okio/Segment;->pos:I

    goto :goto_0
.end method

.method public readLongLe()J
    .locals 2

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/android/okio/OkBuffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/okio/Util;->reverseBytesLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 10

    .prologue
    const-wide/16 v8, 0x2

    .line 175
    iget-wide v6, p0, Lcom/android/okio/OkBuffer;->size:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "size < 2: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/okio/OkBuffer;->size:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 177
    :cond_0
    iget-object v5, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 178
    .local v5, "segment":Lcom/android/okio/Segment;
    iget v2, v5, Lcom/android/okio/Segment;->pos:I

    .line 179
    .local v2, "pos":I
    iget v1, v5, Lcom/android/okio/Segment;->limit:I

    .line 182
    .local v1, "limit":I
    sub-int v6, v1, v2

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/android/okio/OkBuffer;->readByte()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    invoke-virtual {p0}, Lcom/android/okio/OkBuffer;->readByte()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    or-int v4, v6, v7

    .line 185
    .local v4, "s":I
    int-to-short v6, v4

    .line 200
    :goto_0
    return v6

    .line 188
    .end local v4    # "s":I
    :cond_1
    iget-object v0, v5, Lcom/android/okio/Segment;->data:[B

    .line 189
    .local v0, "data":[B
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    aget-byte v6, v0, v2

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v7, v0, v3

    and-int/lit16 v7, v7, 0xff

    or-int v4, v6, v7

    .line 191
    .restart local v4    # "s":I
    iget-wide v6, p0, Lcom/android/okio/OkBuffer;->size:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/okio/OkBuffer;->size:J

    .line 193
    if-ne v2, v1, :cond_2

    .line 194
    invoke-virtual {v5}, Lcom/android/okio/Segment;->pop()Lcom/android/okio/Segment;

    move-result-object v6

    iput-object v6, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 195
    sget-object v6, Lcom/android/okio/SegmentPool;->INSTANCE:Lcom/android/okio/SegmentPool;

    invoke-virtual {v6, v5}, Lcom/android/okio/SegmentPool;->recycle(Lcom/android/okio/Segment;)V

    .line 200
    :goto_1
    int-to-short v6, v4

    goto :goto_0

    .line 197
    :cond_2
    iput v2, v5, Lcom/android/okio/Segment;->pos:I

    goto :goto_1
.end method

.method public readShortLe()S
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/okio/OkBuffer;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/android/okio/Util;->reverseBytesShort(S)S

    move-result v0

    return v0
.end method

.method public readUtf8(J)Ljava/lang/String;
    .locals 9
    .param p1, "byteCount"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 286
    iget-wide v0, p0, Lcom/android/okio/OkBuffer;->size:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 287
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    const-string v7, ""

    .line 307
    :cond_1
    :goto_0
    return-object v7

    .line 292
    :cond_2
    iget-object v6, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 293
    .local v6, "head":Lcom/android/okio/Segment;
    iget v0, v6, Lcom/android/okio/Segment;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget v2, v6, Lcom/android/okio/Segment;->limit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 295
    new-instance v7, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/okio/OkBuffer;->readBytes(J)[B

    move-result-object v0

    sget-object v1, Lcom/android/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 298
    :cond_3
    new-instance v7, Ljava/lang/String;

    iget-object v0, v6, Lcom/android/okio/Segment;->data:[B

    iget v1, v6, Lcom/android/okio/Segment;->pos:I

    long-to-int v2, p1

    sget-object v3, Lcom/android/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 299
    .local v7, "result":Ljava/lang/String;
    iget v0, v6, Lcom/android/okio/Segment;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, v6, Lcom/android/okio/Segment;->pos:I

    .line 300
    iget-wide v0, p0, Lcom/android/okio/OkBuffer;->size:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/okio/OkBuffer;->size:J

    .line 302
    iget v0, v6, Lcom/android/okio/Segment;->pos:I

    iget v1, v6, Lcom/android/okio/Segment;->limit:I

    if-ne v0, v1, :cond_1

    .line 303
    invoke-virtual {v6}, Lcom/android/okio/Segment;->pop()Lcom/android/okio/Segment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 304
    sget-object v0, Lcom/android/okio/SegmentPool;->INSTANCE:Lcom/android/okio/SegmentPool;

    invoke-virtual {v0, v6}, Lcom/android/okio/SegmentPool;->recycle(Lcom/android/okio/Segment;)V

    goto :goto_0
.end method

.method public readUtf8Line()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/okio/OkBuffer;->indexOf(B)J

    move-result-wide v0

    .line 313
    .local v0, "newline":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 314
    iget-wide v2, p0, Lcom/android/okio/OkBuffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/okio/OkBuffer;->size:J

    invoke-virtual {p0, v2, v3}, Lcom/android/okio/OkBuffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v2

    .line 317
    :goto_0
    return-object v2

    .line 314
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 317
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/okio/OkBuffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method readUtf8Line(J)Ljava/lang/String;
    .locals 7
    .param p1, "newline"    # J

    .prologue
    const-wide/16 v4, 0x1

    .line 327
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    sub-long v2, p1, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/okio/OkBuffer;->getByte(J)B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 329
    sub-long v2, p1, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/okio/OkBuffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "result":Ljava/lang/String;
    const-wide/16 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/android/okio/OkBuffer;->skip(J)V

    move-object v1, v0

    .line 337
    .end local v0    # "result":Ljava/lang/String;
    .local v1, "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 335
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/okio/OkBuffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 336
    .restart local v0    # "result":Ljava/lang/String;
    invoke-virtual {p0, v4, v5}, Lcom/android/okio/OkBuffer;->skip(J)V

    move-object v1, v0

    .line 337
    .end local v0    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/okio/OkBuffer;->indexOf(B)J

    move-result-wide v0

    .line 322
    .local v0, "newline":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 323
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/okio/OkBuffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public require(J)V
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/android/okio/OkBuffer;->size:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 100
    :cond_0
    return-void
.end method

.method segmentSizes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 667
    iget-object v2, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    if-nez v2, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 673
    :cond_0
    return-object v0

    .line 668
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 669
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget v2, v2, Lcom/android/okio/Segment;->limit:I

    iget-object v3, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget v3, v3, Lcom/android/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    iget-object v2, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget-object v1, v2, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    .local v1, "s":Lcom/android/okio/Segment;
    :goto_0
    iget-object v2, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    if-eq v1, v2, :cond_0

    .line 671
    iget v2, v1, Lcom/android/okio/Segment;->limit:I

    iget v3, v1, Lcom/android/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    iget-object v1, v1, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    goto :goto_0
.end method

.method public size()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/android/okio/OkBuffer;->size:J

    return-wide v0
.end method

.method public skip(J)V
    .locals 9
    .param p1, "byteCount"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 396
    iget-wide v0, p0, Lcom/android/okio/OkBuffer;->size:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 398
    iget-wide v0, p0, Lcom/android/okio/OkBuffer;->size:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/okio/OkBuffer;->size:J

    .line 399
    :cond_0
    :goto_0
    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget v0, v0, Lcom/android/okio/Segment;->limit:I

    iget-object v1, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget v1, v1, Lcom/android/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v7, v0

    .line 401
    .local v7, "toSkip":I
    int-to-long v0, v7

    sub-long/2addr p1, v0

    .line 402
    iget-object v0, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget v1, v0, Lcom/android/okio/Segment;->pos:I

    add-int/2addr v1, v7

    iput v1, v0, Lcom/android/okio/Segment;->pos:I

    .line 404
    iget-object v0, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget v0, v0, Lcom/android/okio/Segment;->pos:I

    iget-object v1, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget v1, v1, Lcom/android/okio/Segment;->limit:I

    if-ne v0, v1, :cond_0

    .line 405
    iget-object v6, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 406
    .local v6, "toRecycle":Lcom/android/okio/Segment;
    invoke-virtual {v6}, Lcom/android/okio/Segment;->pop()Lcom/android/okio/Segment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 407
    sget-object v0, Lcom/android/okio/SegmentPool;->INSTANCE:Lcom/android/okio/SegmentPool;

    invoke-virtual {v0, v6}, Lcom/android/okio/SegmentPool;->recycle(Lcom/android/okio/Segment;)V

    goto :goto_0

    .line 410
    .end local v6    # "toRecycle":Lcom/android/okio/Segment;
    .end local v7    # "toSkip":I
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 722
    iget-wide v4, p0, Lcom/android/okio/OkBuffer;->size:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 723
    const-string v4, "OkBuffer[size=0]"

    .line 737
    :goto_0
    return-object v4

    .line 726
    :cond_0
    iget-wide v4, p0, Lcom/android/okio/OkBuffer;->size:J

    const-wide/16 v6, 0x10

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 727
    invoke-virtual {p0}, Lcom/android/okio/OkBuffer;->clone()Lcom/android/okio/OkBuffer;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/okio/OkBuffer;->size:J

    invoke-virtual {v4, v6, v7}, Lcom/android/okio/OkBuffer;->readByteString(J)Lcom/android/okio/ByteString;

    move-result-object v0

    .line 728
    .local v0, "data":Lcom/android/okio/ByteString;
    const-string v4, "OkBuffer[size=%s data=%s]"

    new-array v5, v10, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/android/okio/OkBuffer;->size:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v0}, Lcom/android/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 732
    .end local v0    # "data":Lcom/android/okio/ByteString;
    :cond_1
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 733
    .local v2, "md5":Ljava/security/MessageDigest;
    iget-object v4, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget-object v4, v4, Lcom/android/okio/Segment;->data:[B

    iget-object v5, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget v5, v5, Lcom/android/okio/Segment;->pos:I

    iget-object v6, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget v6, v6, Lcom/android/okio/Segment;->limit:I

    iget-object v7, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget v7, v7, Lcom/android/okio/Segment;->pos:I

    sub-int/2addr v6, v7

    invoke-virtual {v2, v4, v5, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 734
    iget-object v4, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget-object v3, v4, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    .local v3, "s":Lcom/android/okio/Segment;
    :goto_1
    iget-object v4, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    if-eq v3, v4, :cond_2

    .line 735
    iget-object v4, v3, Lcom/android/okio/Segment;->data:[B

    iget v5, v3, Lcom/android/okio/Segment;->pos:I

    iget v6, v3, Lcom/android/okio/Segment;->limit:I

    iget v7, v3, Lcom/android/okio/Segment;->pos:I

    sub-int/2addr v6, v7

    invoke-virtual {v2, v4, v5, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 734
    iget-object v3, v3, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    goto :goto_1

    .line 737
    :cond_2
    const-string v4, "OkBuffer[size=%s md5=%s]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v8, p0, Lcom/android/okio/OkBuffer;->size:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/okio/ByteString;->of([B)Lcom/android/okio/ByteString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 739
    .end local v2    # "md5":Ljava/security/MessageDigest;
    .end local v3    # "s":Lcom/android/okio/Segment;
    :catch_0
    move-exception v1

    .line 740
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method

.method writableSegment(I)Lcom/android/okio/Segment;
    .locals 3
    .param p1, "minimumCapacity"    # I

    .prologue
    const/16 v2, 0x800

    .line 507
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    if-nez v1, :cond_3

    .line 510
    sget-object v1, Lcom/android/okio/SegmentPool;->INSTANCE:Lcom/android/okio/SegmentPool;

    invoke-virtual {v1}, Lcom/android/okio/SegmentPool;->take()Lcom/android/okio/Segment;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 511
    iget-object v1, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget-object v2, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget-object v0, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iput-object v0, v2, Lcom/android/okio/Segment;->prev:Lcom/android/okio/Segment;

    iput-object v0, v1, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    .line 518
    :cond_2
    :goto_0
    return-object v0

    .line 514
    :cond_3
    iget-object v1, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget-object v0, v1, Lcom/android/okio/Segment;->prev:Lcom/android/okio/Segment;

    .line 515
    .local v0, "tail":Lcom/android/okio/Segment;
    iget v1, v0, Lcom/android/okio/Segment;->limit:I

    add-int/2addr v1, p1

    if-le v1, v2, :cond_2

    .line 516
    sget-object v1, Lcom/android/okio/SegmentPool;->INSTANCE:Lcom/android/okio/SegmentPool;

    invoke-virtual {v1}, Lcom/android/okio/SegmentPool;->take()Lcom/android/okio/Segment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okio/Segment;->push(Lcom/android/okio/Segment;)Lcom/android/okio/Segment;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic write(Lcom/android/okio/ByteString;)Lcom/android/okio/BufferedSink;
    .locals 1
    .param p1, "x0"    # Lcom/android/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/okio/OkBuffer;->write(Lcom/android/okio/ByteString;)Lcom/android/okio/OkBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic write([B)Lcom/android/okio/BufferedSink;
    .locals 1
    .param p1, "x0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/okio/OkBuffer;->write([B)Lcom/android/okio/OkBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic write([BII)Lcom/android/okio/BufferedSink;
    .locals 1
    .param p1, "x0"    # [B
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/okio/OkBuffer;->write([BII)Lcom/android/okio/OkBuffer;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/android/okio/ByteString;)Lcom/android/okio/OkBuffer;
    .locals 3
    .param p1, "byteString"    # Lcom/android/okio/ByteString;

    .prologue
    .line 413
    iget-object v0, p1, Lcom/android/okio/ByteString;->data:[B

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/android/okio/ByteString;->data:[B

    array-length v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/okio/OkBuffer;->write([BII)Lcom/android/okio/OkBuffer;

    move-result-object v0

    return-object v0
.end method

.method public write([B)Lcom/android/okio/OkBuffer;
    .locals 2
    .param p1, "source"    # [B

    .prologue
    .line 423
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okio/OkBuffer;->write([BII)Lcom/android/okio/OkBuffer;

    move-result-object v0

    return-object v0
.end method

.method public write([BII)Lcom/android/okio/OkBuffer;
    .locals 8
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 427
    add-int v0, p2, p3

    .line 428
    .local v0, "limit":I
    :goto_0
    if-ge p2, v0, :cond_0

    .line 429
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/okio/OkBuffer;->writableSegment(I)Lcom/android/okio/Segment;

    move-result-object v1

    .line 431
    .local v1, "tail":Lcom/android/okio/Segment;
    sub-int v3, v0, p2

    iget v4, v1, Lcom/android/okio/Segment;->limit:I

    rsub-int v4, v4, 0x800

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 432
    .local v2, "toCopy":I
    iget-object v3, v1, Lcom/android/okio/Segment;->data:[B

    iget v4, v1, Lcom/android/okio/Segment;->limit:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 434
    add-int/2addr p2, v2

    .line 435
    iget v3, v1, Lcom/android/okio/Segment;->limit:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/android/okio/Segment;->limit:I

    goto :goto_0

    .line 438
    .end local v1    # "tail":Lcom/android/okio/Segment;
    .end local v2    # "toCopy":I
    :cond_0
    iget-wide v4, p0, Lcom/android/okio/OkBuffer;->size:J

    int-to-long v6, p3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/okio/OkBuffer;->size:J

    .line 439
    return-object p0
.end method

.method public write(Lcom/android/okio/OkBuffer;J)V
    .locals 10
    .param p1, "source"    # Lcom/android/okio/OkBuffer;
    .param p2, "byteCount"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 572
    if-ne p1, p0, :cond_0

    .line 573
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_0
    iget-object v0, p1, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    if-nez v0, :cond_1

    .line 577
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "OkBuffer write source.head == null !"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 578
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/okio/OkBuffer;->writableSegment(I)Lcom/android/okio/Segment;

    .line 581
    :cond_1
    iget-wide v0, p1, Lcom/android/okio/OkBuffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 583
    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_6

    .line 585
    iget-object v0, p1, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget v0, v0, Lcom/android/okio/Segment;->limit:I

    iget-object v1, p1, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget v1, v1, Lcom/android/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_3

    .line 586
    iget-object v0, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget-object v9, v0, Lcom/android/okio/Segment;->prev:Lcom/android/okio/Segment;

    .line 587
    .local v9, "tail":Lcom/android/okio/Segment;
    :goto_1
    if-eqz v9, :cond_2

    iget v0, v9, Lcom/android/okio/Segment;->limit:I

    iget v1, v9, Lcom/android/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, p2

    const-wide/16 v4, 0x800

    cmp-long v0, v0, v4

    if-lez v0, :cond_5

    .line 590
    :cond_2
    iget-object v0, p1, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lcom/android/okio/Segment;->split(I)Lcom/android/okio/Segment;

    move-result-object v0

    iput-object v0, p1, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 601
    .end local v9    # "tail":Lcom/android/okio/Segment;
    :cond_3
    iget-object v8, p1, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 602
    .local v8, "segmentToMove":Lcom/android/okio/Segment;
    iget v0, v8, Lcom/android/okio/Segment;->limit:I

    iget v1, v8, Lcom/android/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v6, v0

    .line 603
    .local v6, "movedByteCount":J
    invoke-virtual {v8}, Lcom/android/okio/Segment;->pop()Lcom/android/okio/Segment;

    move-result-object v0

    iput-object v0, p1, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 604
    iget-object v0, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    if-nez v0, :cond_7

    .line 605
    iput-object v8, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 606
    iget-object v0, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget-object v1, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget-object v4, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iput-object v4, v1, Lcom/android/okio/Segment;->prev:Lcom/android/okio/Segment;

    iput-object v4, v0, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    .line 612
    :goto_2
    iget-wide v0, p1, Lcom/android/okio/OkBuffer;->size:J

    sub-long/2addr v0, v6

    iput-wide v0, p1, Lcom/android/okio/OkBuffer;->size:J

    .line 613
    iget-wide v0, p0, Lcom/android/okio/OkBuffer;->size:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/android/okio/OkBuffer;->size:J

    .line 614
    sub-long/2addr p2, v6

    .line 615
    goto :goto_0

    .line 586
    .end local v6    # "movedByteCount":J
    .end local v8    # "segmentToMove":Lcom/android/okio/Segment;
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 593
    .restart local v9    # "tail":Lcom/android/okio/Segment;
    :cond_5
    iget-object v0, p1, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    long-to-int v1, p2

    invoke-virtual {v0, v9, v1}, Lcom/android/okio/Segment;->writeTo(Lcom/android/okio/Segment;I)V

    .line 594
    iget-wide v0, p1, Lcom/android/okio/OkBuffer;->size:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lcom/android/okio/OkBuffer;->size:J

    .line 595
    iget-wide v0, p0, Lcom/android/okio/OkBuffer;->size:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/android/okio/OkBuffer;->size:J

    .line 616
    .end local v9    # "tail":Lcom/android/okio/Segment;
    :cond_6
    return-void

    .line 608
    .restart local v6    # "movedByteCount":J
    .restart local v8    # "segmentToMove":Lcom/android/okio/Segment;
    :cond_7
    iget-object v0, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    iget-object v9, v0, Lcom/android/okio/Segment;->prev:Lcom/android/okio/Segment;

    .line 609
    .restart local v9    # "tail":Lcom/android/okio/Segment;
    invoke-virtual {v9, v8}, Lcom/android/okio/Segment;->push(Lcom/android/okio/Segment;)Lcom/android/okio/Segment;

    move-result-object v9

    .line 610
    invoke-virtual {v9}, Lcom/android/okio/Segment;->compact()V

    goto :goto_2
.end method

.method public bridge synthetic writeByte(I)Lcom/android/okio/BufferedSink;
    .locals 1
    .param p1, "x0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/okio/OkBuffer;->writeByte(I)Lcom/android/okio/OkBuffer;

    move-result-object v0

    return-object v0
.end method

.method public writeByte(I)Lcom/android/okio/OkBuffer;
    .locals 6
    .param p1, "b"    # I

    .prologue
    .line 443
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/okio/OkBuffer;->writableSegment(I)Lcom/android/okio/Segment;

    move-result-object v0

    .line 444
    .local v0, "tail":Lcom/android/okio/Segment;
    iget-object v1, v0, Lcom/android/okio/Segment;->data:[B

    iget v2, v0, Lcom/android/okio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/android/okio/Segment;->limit:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 445
    iget-wide v2, p0, Lcom/android/okio/OkBuffer;->size:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/okio/OkBuffer;->size:J

    .line 446
    return-object p0
.end method

.method public bridge synthetic writeInt(I)Lcom/android/okio/BufferedSink;
    .locals 1
    .param p1, "x0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/okio/OkBuffer;->writeInt(I)Lcom/android/okio/OkBuffer;

    move-result-object v0

    return-object v0
.end method

.method public writeInt(I)Lcom/android/okio/OkBuffer;
    .locals 8
    .param p1, "i"    # I

    .prologue
    .line 465
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/okio/OkBuffer;->writableSegment(I)Lcom/android/okio/Segment;

    move-result-object v3

    .line 466
    .local v3, "tail":Lcom/android/okio/Segment;
    iget-object v0, v3, Lcom/android/okio/Segment;->data:[B

    .line 467
    .local v0, "data":[B
    iget v1, v3, Lcom/android/okio/Segment;->limit:I

    .line 468
    .local v1, "limit":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "limit":I
    .local v2, "limit":I
    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 469
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "limit":I
    .restart local v1    # "limit":I
    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 470
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "limit":I
    .restart local v2    # "limit":I
    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 471
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "limit":I
    .restart local v1    # "limit":I
    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 472
    iput v1, v3, Lcom/android/okio/Segment;->limit:I

    .line 473
    iget-wide v4, p0, Lcom/android/okio/OkBuffer;->size:J

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/okio/OkBuffer;->size:J

    .line 474
    return-object p0
.end method

.method public writeIntLe(I)Lcom/android/okio/BufferedSink;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 478
    invoke-static {p1}, Lcom/android/okio/Util;->reverseBytesInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/okio/OkBuffer;->writeInt(I)Lcom/android/okio/OkBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeLong(J)Lcom/android/okio/BufferedSink;
    .locals 1
    .param p1, "x0"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/android/okio/OkBuffer;->writeLong(J)Lcom/android/okio/OkBuffer;

    move-result-object v0

    return-object v0
.end method

.method public writeLong(J)Lcom/android/okio/OkBuffer;
    .locals 9
    .param p1, "v"    # J

    .prologue
    const/16 v8, 0x8

    const-wide/16 v6, 0xff

    .line 482
    invoke-virtual {p0, v8}, Lcom/android/okio/OkBuffer;->writableSegment(I)Lcom/android/okio/Segment;

    move-result-object v3

    .line 483
    .local v3, "tail":Lcom/android/okio/Segment;
    iget-object v0, v3, Lcom/android/okio/Segment;->data:[B

    .line 484
    .local v0, "data":[B
    iget v1, v3, Lcom/android/okio/Segment;->limit:I

    .line 485
    .local v1, "limit":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "limit":I
    .local v2, "limit":I
    const/16 v4, 0x38

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 486
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "limit":I
    .restart local v1    # "limit":I
    const/16 v4, 0x30

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 487
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "limit":I
    .restart local v2    # "limit":I
    const/16 v4, 0x28

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 488
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "limit":I
    .restart local v1    # "limit":I
    const/16 v4, 0x20

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 489
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "limit":I
    .restart local v2    # "limit":I
    const/16 v4, 0x18

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 490
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "limit":I
    .restart local v1    # "limit":I
    const/16 v4, 0x10

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 491
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "limit":I
    .restart local v2    # "limit":I
    ushr-long v4, p1, v8

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 492
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "limit":I
    .restart local v1    # "limit":I
    and-long v4, p1, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 493
    iput v1, v3, Lcom/android/okio/Segment;->limit:I

    .line 494
    iget-wide v4, p0, Lcom/android/okio/OkBuffer;->size:J

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/okio/OkBuffer;->size:J

    .line 495
    return-object p0
.end method

.method public writeLongLe(J)Lcom/android/okio/BufferedSink;
    .locals 3
    .param p1, "v"    # J

    .prologue
    .line 499
    invoke-static {p1, p2}, Lcom/android/okio/Util;->reverseBytesLong(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/okio/OkBuffer;->writeLong(J)Lcom/android/okio/OkBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeShort(I)Lcom/android/okio/BufferedSink;
    .locals 1
    .param p1, "x0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/okio/OkBuffer;->writeShort(I)Lcom/android/okio/OkBuffer;

    move-result-object v0

    return-object v0
.end method

.method public writeShort(I)Lcom/android/okio/OkBuffer;
    .locals 8
    .param p1, "s"    # I

    .prologue
    .line 450
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/okio/OkBuffer;->writableSegment(I)Lcom/android/okio/Segment;

    move-result-object v3

    .line 451
    .local v3, "tail":Lcom/android/okio/Segment;
    iget-object v0, v3, Lcom/android/okio/Segment;->data:[B

    .line 452
    .local v0, "data":[B
    iget v1, v3, Lcom/android/okio/Segment;->limit:I

    .line 453
    .local v1, "limit":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "limit":I
    .local v2, "limit":I
    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 454
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "limit":I
    .restart local v1    # "limit":I
    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 455
    iput v1, v3, Lcom/android/okio/Segment;->limit:I

    .line 456
    iget-wide v4, p0, Lcom/android/okio/OkBuffer;->size:J

    const-wide/16 v6, 0x2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/okio/OkBuffer;->size:J

    .line 457
    return-object p0
.end method

.method public writeShortLe(I)Lcom/android/okio/BufferedSink;
    .locals 1
    .param p1, "s"    # I

    .prologue
    .line 461
    int-to-short v0, p1

    invoke-static {v0}, Lcom/android/okio/Util;->reverseBytesShort(S)S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/okio/OkBuffer;->writeShort(I)Lcom/android/okio/OkBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;)Lcom/android/okio/BufferedSink;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/okio/OkBuffer;->writeUtf8(Ljava/lang/String;)Lcom/android/okio/OkBuffer;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;)Lcom/android/okio/OkBuffer;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 418
    sget-object v1, Lcom/android/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 419
    .local v0, "data":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/okio/OkBuffer;->write([BII)Lcom/android/okio/OkBuffer;

    move-result-object v1

    return-object v1
.end method
