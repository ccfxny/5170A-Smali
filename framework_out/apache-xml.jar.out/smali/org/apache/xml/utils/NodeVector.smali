.class public Lorg/apache/xml/utils/NodeVector;
.super Ljava/lang/Object;
.source "NodeVector.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = -0x9e6c3ff496c94deL


# instance fields
.field private m_blocksize:I

.field protected m_firstFree:I

.field private m_map:[I

.field private m_mapSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    .line 64
    const/16 v0, 0x20

    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    .line 65
    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    .line 66
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "blocksize"    # I

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    .line 75
    iput p1, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    .line 76
    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    .line 77
    return-void
.end method


# virtual methods
.method public RemoveAllNoClear()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v0, :cond_0

    .line 452
    :goto_0
    return-void

    .line 451
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    goto :goto_0
.end method

.method public addElement(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v3, 0x0

    .line 119
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    if-lt v1, v2, :cond_0

    .line 121
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v1, :cond_1

    .line 123
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    .line 124
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    .line 138
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    aput p1, v1, v2

    .line 140
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    .line 141
    return-void

    .line 128
    :cond_1
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    .line 130
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    new-array v0, v1, [I

    .line 132
    .local v0, "newMap":[I
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 134
    iput-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    goto :goto_0
.end method

.method public appendNodes(Lorg/apache/xml/utils/NodeVector;)V
    .locals 6
    .param p1, "nodes"    # Lorg/apache/xml/utils/NodeVector;

    .prologue
    const/4 v5, 0x0

    .line 399
    invoke-virtual {p1}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v0

    .line 401
    .local v0, "nNodes":I
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v2, :cond_1

    .line 403
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    .line 404
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    .line 417
    :cond_0
    :goto_0
    iget-object v2, p1, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget-object v3, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v4, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    invoke-static {v2, v5, v3, v4, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 419
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    .line 420
    return-void

    .line 406
    :cond_1
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/2addr v2, v0

    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    if-lt v2, v3, :cond_0

    .line 408
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    add-int/2addr v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    .line 410
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    new-array v1, v2, [I

    .line 412
    .local v1, "newMap":[I
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/2addr v3, v0

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 414
    iput-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 89
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/utils/NodeVector;

    .line 91
    .local v0, "clone":Lorg/apache/xml/utils/NodeVector;
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget-object v2, v0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-ne v1, v2, :cond_0

    .line 93
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    .line 95
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget-object v2, v0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget-object v3, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 98
    :cond_0
    return-object v0
.end method

.method public contains(I)Z
    .locals 4
    .param p1, "s"    # I

    .prologue
    const/4 v2, 0x0

    .line 562
    iget-object v3, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v3, :cond_1

    .line 573
    :cond_0
    :goto_0
    return v2

    .line 565
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-ge v0, v3, :cond_0

    .line 567
    iget-object v3, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    aget v1, v3, v0

    .line 569
    .local v1, "node":I
    if-ne v1, p1, :cond_2

    .line 570
    const/4 v2, 0x1

    goto :goto_0

    .line 565
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public elementAt(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 546
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v0, :cond_0

    .line 547
    const/4 v0, -0x1

    .line 549
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public indexOf(I)I
    .locals 4
    .param p1, "elem"    # I

    .prologue
    const/4 v2, -0x1

    .line 617
    iget-object v3, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v3, :cond_1

    move v0, v2

    .line 628
    :cond_0
    :goto_0
    return v0

    .line 620
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-ge v0, v3, :cond_2

    .line 622
    iget-object v3, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    aget v1, v3, v0

    .line 624
    .local v1, "node":I
    if-eq v1, p1, :cond_0

    .line 620
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "node":I
    :cond_2
    move v0, v2

    .line 628
    goto :goto_0
.end method

.method public indexOf(II)I
    .locals 4
    .param p1, "elem"    # I
    .param p2, "index"    # I

    .prologue
    const/4 v2, -0x1

    .line 590
    iget-object v3, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v3, :cond_1

    move v0, v2

    .line 601
    :cond_0
    :goto_0
    return v0

    .line 593
    :cond_1
    move v0, p2

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-ge v0, v3, :cond_2

    .line 595
    iget-object v3, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    aget v1, v3, v0

    .line 597
    .local v1, "node":I
    if-eq v1, p1, :cond_0

    .line 593
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "node":I
    :cond_2
    move v0, v2

    .line 601
    goto :goto_0
.end method

.method public insertElementAt(II)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "at"    # I

    .prologue
    const/4 v3, 0x0

    .line 365
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v1, :cond_2

    .line 367
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    .line 368
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    .line 381
    :cond_0
    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    if-gt p2, v1, :cond_1

    .line 383
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    add-int/lit8 v3, p2, 0x1

    iget v4, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    sub-int/2addr v4, p2

    invoke-static {v1, p2, v2, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 386
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    aput p1, v1, p2

    .line 388
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    .line 389
    return-void

    .line 370
    :cond_2
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    if-lt v1, v2, :cond_0

    .line 372
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    .line 374
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    new-array v0, v1, [I

    .line 376
    .local v0, "newMap":[I
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 378
    iput-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    goto :goto_0
.end method

.method public insertInOrder(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 340
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-ge v0, v1, :cond_1

    .line 342
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    aget v1, v1, v0

    if-ge p1, v1, :cond_0

    .line 344
    invoke-virtual {p0, p1, v0}, Lorg/apache/xml/utils/NodeVector;->insertElementAt(II)V

    .line 351
    :goto_1
    return-void

    .line 340
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/NodeVector;->addElement(I)V

    goto :goto_1
.end method

.method public final peepOrNull()I
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final peepTail()I
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public final peepTailSub1()I
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x2

    aget v0, v0, v1

    return v0
.end method

.method public final pop()I
    .locals 4

    .prologue
    .line 187
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    .line 189
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    aget v0, v1, v2

    .line 191
    .local v0, "n":I
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 193
    return v0
.end method

.method public final popAndTop()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 205
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    .line 207
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    aput v0, v1, v2

    .line 209
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public final popPair()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 279
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    .line 280
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    aput v2, v0, v1

    .line 281
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    aput v2, v0, v1

    .line 282
    return-void
.end method

.method public final popQuick()V
    .locals 3

    .prologue
    .line 218
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    .line 220
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 221
    return-void
.end method

.method public final push(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x0

    .line 151
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    .line 153
    .local v0, "ff":I
    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    if-lt v2, v3, :cond_0

    .line 155
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v2, :cond_1

    .line 157
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    .line 158
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    iput v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    .line 172
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    aput p1, v2, v0

    .line 174
    add-int/lit8 v0, v0, 0x1

    .line 176
    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    .line 177
    return-void

    .line 162
    :cond_1
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    .line 164
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    new-array v1, v2, [I

    .line 166
    .local v1, "newMap":[I
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 168
    iput-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    goto :goto_0
.end method

.method public final pushPair(II)V
    .locals 4
    .param p1, "v1"    # I
    .param p2, "v2"    # I

    .prologue
    const/4 v3, 0x0

    .line 247
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v1, :cond_1

    .line 249
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    .line 250
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    .line 266
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    aput p1, v1, v2

    .line 267
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    aput p2, v1, v2

    .line 268
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    .line 269
    return-void

    .line 254
    :cond_1
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    if-lt v1, v2, :cond_0

    .line 256
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    .line 258
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    new-array v0, v1, [I

    .line 260
    .local v0, "newMap":[I
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 262
    iput-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    goto :goto_0
.end method

.method public removeAllElements()V
    .locals 3

    .prologue
    .line 431
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v1, :cond_0

    .line 440
    :goto_0
    return-void

    .line 434
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-ge v0, v1, :cond_1

    .line 436
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 439
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    goto :goto_0
.end method

.method public removeElement(I)Z
    .locals 7
    .param p1, "s"    # I

    .prologue
    const/4 v2, 0x0

    .line 468
    iget-object v3, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v3, :cond_1

    .line 488
    :cond_0
    :goto_0
    return v2

    .line 471
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-ge v0, v3, :cond_0

    .line 473
    iget-object v3, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    aget v1, v3, v0

    .line 475
    .local v1, "node":I
    if-ne v1, p1, :cond_3

    .line 477
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-le v0, v2, :cond_2

    .line 478
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    add-int/lit8 v5, v0, -0x1

    iget v6, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    sub-int/2addr v6, v0

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy([II[III)V

    .line 482
    :goto_2
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    .line 484
    const/4 v2, 0x1

    goto :goto_0

    .line 480
    :cond_2
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    goto :goto_2

    .line 471
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public removeElementAt(I)V
    .locals 5
    .param p1, "i"    # I

    .prologue
    .line 502
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v0, :cond_0

    .line 509
    :goto_0
    return-void

    .line 505
    :cond_0
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-le p1, v0, :cond_1

    .line 506
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    add-int/lit8 v3, p1, -0x1

    iget v4, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    sub-int/2addr v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_0

    .line 508
    :cond_1
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    goto :goto_0
.end method

.method public setElementAt(II)V
    .locals 1
    .param p1, "node"    # I
    .param p2, "index"    # I

    .prologue
    .line 524
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v0, :cond_0

    .line 526
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    .line 527
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    .line 530
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 531
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/NodeVector;->addElement(I)V

    .line 533
    :cond_1
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    aput p1, v0, p2

    .line 534
    return-void
.end method

.method public final setTail(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 293
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 294
    return-void
.end method

.method public final setTailSub1(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 305
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x2

    aput p1, v0, v1

    .line 306
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    return v0
.end method

.method public sort()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 737
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/xml/utils/NodeVector;->sort([III)V

    .line 738
    return-void
.end method

.method public sort([III)V
    .locals 6
    .param p1, "a"    # [I
    .param p2, "lo0"    # I
    .param p3, "hi0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 643
    move v2, p2

    .line 644
    .local v2, "lo":I
    move v1, p3

    .line 647
    .local v1, "hi":I
    if-lt v2, v1, :cond_1

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_2

    .line 657
    aget v4, p1, v2

    aget v5, p1, v1

    if-le v4, v5, :cond_0

    .line 659
    aget v0, p1, v2

    .line 661
    .local v0, "T":I
    aget v4, p1, v1

    aput v4, p1, v2

    .line 662
    aput v0, p1, v1

    goto :goto_0

    .line 671
    .end local v0    # "T":I
    :cond_2
    add-int v4, v2, v1

    div-int/lit8 v4, v4, 0x2

    aget v3, p1, v4

    .line 673
    .local v3, "pivot":I
    add-int v4, v2, v1

    div-int/lit8 v4, v4, 0x2

    aget v5, p1, v1

    aput v5, p1, v4

    .line 674
    aput v3, p1, v1

    .line 676
    :cond_3
    :goto_1
    if-ge v2, v1, :cond_6

    .line 683
    :goto_2
    aget v4, p1, v2

    if-gt v4, v3, :cond_4

    if-ge v2, v1, :cond_4

    .line 685
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 692
    :cond_4
    :goto_3
    aget v4, p1, v1

    if-gt v3, v4, :cond_5

    if-ge v2, v1, :cond_5

    .line 694
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 700
    :cond_5
    if-ge v2, v1, :cond_3

    .line 702
    aget v0, p1, v2

    .line 704
    .restart local v0    # "T":I
    aget v4, p1, v1

    aput v4, p1, v2

    .line 705
    aput v0, p1, v1

    goto :goto_1

    .line 718
    .end local v0    # "T":I
    :cond_6
    aget v4, p1, v1

    aput v4, p1, p3

    .line 719
    aput v3, p1, v1

    .line 726
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, p1, p2, v4}, Lorg/apache/xml/utils/NodeVector;->sort([III)V

    .line 727
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, p1, v4, p3}, Lorg/apache/xml/utils/NodeVector;->sort([III)V

    goto :goto_0
.end method
