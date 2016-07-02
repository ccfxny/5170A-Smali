.class final Lcom/android/okio/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# static fields
.field static final SIZE:I = 0x800


# instance fields
.field final data:[B

.field limit:I

.field next:Lcom/android/okio/Segment;

.field pos:I

.field prev:Lcom/android/okio/Segment;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/okio/Segment;->data:[B

    return-void
.end method


# virtual methods
.method public compact()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/okio/Segment;->prev:Lcom/android/okio/Segment;

    if-ne v0, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/okio/Segment;->prev:Lcom/android/okio/Segment;

    iget v0, v0, Lcom/android/okio/Segment;->limit:I

    iget-object v1, p0, Lcom/android/okio/Segment;->prev:Lcom/android/okio/Segment;

    iget v1, v1, Lcom/android/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/okio/Segment;->limit:I

    iget v2, p0, Lcom/android/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    const/16 v1, 0x800

    if-le v0, v1, :cond_1

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/okio/Segment;->prev:Lcom/android/okio/Segment;

    iget v1, p0, Lcom/android/okio/Segment;->limit:I

    iget v2, p0, Lcom/android/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/okio/Segment;->writeTo(Lcom/android/okio/Segment;I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/okio/Segment;->pop()Lcom/android/okio/Segment;

    .line 115
    sget-object v0, Lcom/android/okio/SegmentPool;->INSTANCE:Lcom/android/okio/SegmentPool;

    invoke-virtual {v0, p0}, Lcom/android/okio/SegmentPool;->recycle(Lcom/android/okio/Segment;)V

    goto :goto_0
.end method

.method public pop()Lcom/android/okio/Segment;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v2, p0, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    if-eq v2, p0, :cond_0

    iget-object v0, p0, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    .line 54
    .local v0, "result":Lcom/android/okio/Segment;
    :goto_0
    iget-object v2, p0, Lcom/android/okio/Segment;->prev:Lcom/android/okio/Segment;

    iget-object v3, p0, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    iput-object v3, v2, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    .line 55
    iget-object v2, p0, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    iget-object v3, p0, Lcom/android/okio/Segment;->prev:Lcom/android/okio/Segment;

    iput-object v3, v2, Lcom/android/okio/Segment;->prev:Lcom/android/okio/Segment;

    .line 56
    iput-object v1, p0, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    .line 57
    iput-object v1, p0, Lcom/android/okio/Segment;->prev:Lcom/android/okio/Segment;

    .line 58
    return-object v0

    .end local v0    # "result":Lcom/android/okio/Segment;
    :cond_0
    move-object v0, v1

    .line 53
    goto :goto_0
.end method

.method public push(Lcom/android/okio/Segment;)Lcom/android/okio/Segment;
    .locals 1
    .param p1, "segment"    # Lcom/android/okio/Segment;

    .prologue
    .line 66
    iput-object p0, p1, Lcom/android/okio/Segment;->prev:Lcom/android/okio/Segment;

    .line 67
    iget-object v0, p0, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    iput-object v0, p1, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    .line 68
    iget-object v0, p0, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    iput-object p1, v0, Lcom/android/okio/Segment;->prev:Lcom/android/okio/Segment;

    .line 69
    iput-object p1, p0, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    .line 70
    return-object p1
.end method

.method public split(I)Lcom/android/okio/Segment;
    .locals 8
    .param p1, "byteCount"    # I

    .prologue
    .line 82
    move v0, p1

    .line 83
    .local v0, "aSize":I
    iget v4, p0, Lcom/android/okio/Segment;->limit:I

    iget v5, p0, Lcom/android/okio/Segment;->pos:I

    sub-int/2addr v4, v5

    sub-int v2, v4, p1

    .line 84
    .local v2, "bSize":I
    if-lez v0, :cond_0

    if-gtz v2, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 87
    :cond_1
    if-ge v0, v2, :cond_2

    .line 89
    sget-object v4, Lcom/android/okio/SegmentPool;->INSTANCE:Lcom/android/okio/SegmentPool;

    invoke-virtual {v4}, Lcom/android/okio/SegmentPool;->take()Lcom/android/okio/Segment;

    move-result-object v3

    .line 90
    .local v3, "before":Lcom/android/okio/Segment;
    iget-object v4, p0, Lcom/android/okio/Segment;->data:[B

    iget v5, p0, Lcom/android/okio/Segment;->pos:I

    iget-object v6, v3, Lcom/android/okio/Segment;->data:[B

    iget v7, v3, Lcom/android/okio/Segment;->pos:I

    invoke-static {v4, v5, v6, v7, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 91
    iget v4, p0, Lcom/android/okio/Segment;->pos:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/okio/Segment;->pos:I

    .line 92
    iget v4, v3, Lcom/android/okio/Segment;->limit:I

    add-int/2addr v4, v0

    iput v4, v3, Lcom/android/okio/Segment;->limit:I

    .line 93
    iget-object v4, p0, Lcom/android/okio/Segment;->prev:Lcom/android/okio/Segment;

    invoke-virtual {v4, v3}, Lcom/android/okio/Segment;->push(Lcom/android/okio/Segment;)Lcom/android/okio/Segment;

    .line 102
    .end local v3    # "before":Lcom/android/okio/Segment;
    :goto_0
    return-object v3

    .line 97
    :cond_2
    sget-object v4, Lcom/android/okio/SegmentPool;->INSTANCE:Lcom/android/okio/SegmentPool;

    invoke-virtual {v4}, Lcom/android/okio/SegmentPool;->take()Lcom/android/okio/Segment;

    move-result-object v1

    .line 98
    .local v1, "after":Lcom/android/okio/Segment;
    iget-object v4, p0, Lcom/android/okio/Segment;->data:[B

    iget v5, p0, Lcom/android/okio/Segment;->pos:I

    add-int/2addr v5, v0

    iget-object v6, v1, Lcom/android/okio/Segment;->data:[B

    iget v7, v1, Lcom/android/okio/Segment;->pos:I

    invoke-static {v4, v5, v6, v7, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 99
    iget v4, p0, Lcom/android/okio/Segment;->limit:I

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/android/okio/Segment;->limit:I

    .line 100
    iget v4, v1, Lcom/android/okio/Segment;->limit:I

    add-int/2addr v4, v2

    iput v4, v1, Lcom/android/okio/Segment;->limit:I

    .line 101
    invoke-virtual {p0, v1}, Lcom/android/okio/Segment;->push(Lcom/android/okio/Segment;)Lcom/android/okio/Segment;

    move-object v3, p0

    .line 102
    goto :goto_0
.end method

.method public writeTo(Lcom/android/okio/Segment;I)V
    .locals 6
    .param p1, "sink"    # Lcom/android/okio/Segment;
    .param p2, "byteCount"    # I

    .prologue
    const/16 v2, 0x800

    const/4 v5, 0x0

    .line 122
    iget v0, p1, Lcom/android/okio/Segment;->limit:I

    iget v1, p1, Lcom/android/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    if-le v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 124
    :cond_0
    iget v0, p1, Lcom/android/okio/Segment;->limit:I

    add-int/2addr v0, p2

    if-le v0, v2, :cond_1

    .line 126
    iget-object v0, p1, Lcom/android/okio/Segment;->data:[B

    iget v1, p1, Lcom/android/okio/Segment;->pos:I

    iget-object v2, p1, Lcom/android/okio/Segment;->data:[B

    iget v3, p1, Lcom/android/okio/Segment;->limit:I

    iget v4, p1, Lcom/android/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 127
    iget v0, p1, Lcom/android/okio/Segment;->limit:I

    iget v1, p1, Lcom/android/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/android/okio/Segment;->limit:I

    .line 128
    iput v5, p1, Lcom/android/okio/Segment;->pos:I

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/android/okio/Segment;->data:[B

    iget v1, p0, Lcom/android/okio/Segment;->pos:I

    iget-object v2, p1, Lcom/android/okio/Segment;->data:[B

    iget v3, p1, Lcom/android/okio/Segment;->limit:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 132
    iget v0, p1, Lcom/android/okio/Segment;->limit:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/android/okio/Segment;->limit:I

    .line 133
    iget v0, p0, Lcom/android/okio/Segment;->pos:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/okio/Segment;->pos:I

    .line 134
    return-void
.end method
