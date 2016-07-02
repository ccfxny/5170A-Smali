.class public Lorg/apache/xml/utils/IntStack;
.super Lorg/apache/xml/utils/IntVector;
.source "IntStack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/xml/utils/IntVector;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "blocksize"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/xml/utils/IntVector;-><init>(I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/utils/IntStack;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xml/utils/IntStack;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/apache/xml/utils/IntVector;-><init>(Lorg/apache/xml/utils/IntVector;)V

    .line 64
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-super {p0}, Lorg/apache/xml/utils/IntVector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/utils/IntStack;

    return-object v0
.end method

.method public empty()Z
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lorg/apache/xml/utils/IntStack;->m_firstFree:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final peek()I
    .locals 3

    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/utils/IntStack;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/IntStack;->m_firstFree:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 125
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/util/EmptyStackException;

    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    throw v1
.end method

.method public peek(I)I
    .locals 4
    .param p1, "n"    # I

    .prologue
    .line 141
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/utils/IntStack;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/IntStack;->m_firstFree:I

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, v3

    aget v1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 143
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/util/EmptyStackException;

    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    throw v1
.end method

.method public final pop()I
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/xml/utils/IntStack;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/IntStack;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xml/utils/IntStack;->m_firstFree:I

    aget v0, v0, v1

    return v0
.end method

.method public push(I)I
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 75
    iget v1, p0, Lorg/apache/xml/utils/IntStack;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/xml/utils/IntStack;->m_mapSize:I

    if-lt v1, v2, :cond_0

    .line 77
    iget v1, p0, Lorg/apache/xml/utils/IntStack;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/IntStack;->m_blocksize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/utils/IntStack;->m_mapSize:I

    .line 79
    iget v1, p0, Lorg/apache/xml/utils/IntStack;->m_mapSize:I

    new-array v0, v1, [I

    .line 81
    .local v0, "newMap":[I
    iget-object v1, p0, Lorg/apache/xml/utils/IntStack;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/IntStack;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 83
    iput-object v0, p0, Lorg/apache/xml/utils/IntStack;->m_map:[I

    .line 86
    .end local v0    # "newMap":[I
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/utils/IntStack;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/IntStack;->m_firstFree:I

    aput p1, v1, v2

    .line 88
    iget v1, p0, Lorg/apache/xml/utils/IntStack;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/utils/IntStack;->m_firstFree:I

    .line 90
    return p1
.end method

.method public final quickPop(I)V
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 110
    iget v0, p0, Lorg/apache/xml/utils/IntStack;->m_firstFree:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/xml/utils/IntStack;->m_firstFree:I

    .line 111
    return-void
.end method

.method public search(I)I
    .locals 2
    .param p1, "o"    # I

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/IntStack;->lastIndexOf(I)I

    move-result v0

    .line 193
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lorg/apache/xml/utils/IntStack;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .line 198
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setTop(I)V
    .locals 3
    .param p1, "val"    # I

    .prologue
    .line 159
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/utils/IntStack;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/IntStack;->m_firstFree:I

    add-int/lit8 v2, v2, -0x1

    aput p1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/util/EmptyStackException;

    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    throw v1
.end method
