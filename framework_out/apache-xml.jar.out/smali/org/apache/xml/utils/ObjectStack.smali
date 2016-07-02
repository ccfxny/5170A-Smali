.class public Lorg/apache/xml/utils/ObjectStack;
.super Lorg/apache/xml/utils/ObjectVector;
.source "ObjectStack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/xml/utils/ObjectVector;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "blocksize"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/xml/utils/ObjectVector;-><init>(I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/utils/ObjectStack;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xml/utils/ObjectStack;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/apache/xml/utils/ObjectVector;-><init>(Lorg/apache/xml/utils/ObjectVector;)V

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
    .line 212
    invoke-super {p0}, Lorg/apache/xml/utils/ObjectVector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/utils/ObjectStack;

    return-object v0
.end method

.method public empty()Z
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lorg/apache/xml/utils/ObjectStack;->m_firstFree:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectStack;->m_map:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xml/utils/ObjectStack;->m_firstFree:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 128
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/util/EmptyStackException;

    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    throw v1
.end method

.method public peek(I)Ljava/lang/Object;
    .locals 4
    .param p1, "n"    # I

    .prologue
    .line 144
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectStack;->m_map:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xml/utils/ObjectStack;->m_firstFree:I

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, v3

    aget-object v1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 146
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/util/EmptyStackException;

    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    throw v1
.end method

.method public pop()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 101
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectStack;->m_map:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xml/utils/ObjectStack;->m_firstFree:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/xml/utils/ObjectStack;->m_firstFree:I

    aget-object v0, v1, v2

    .line 102
    .local v0, "val":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectStack;->m_map:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xml/utils/ObjectStack;->m_firstFree:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 104
    return-object v0
.end method

.method public push(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "i"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 75
    iget v1, p0, Lorg/apache/xml/utils/ObjectStack;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/xml/utils/ObjectStack;->m_mapSize:I

    if-lt v1, v2, :cond_0

    .line 77
    iget v1, p0, Lorg/apache/xml/utils/ObjectStack;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/ObjectStack;->m_blocksize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/utils/ObjectStack;->m_mapSize:I

    .line 79
    iget v1, p0, Lorg/apache/xml/utils/ObjectStack;->m_mapSize:I

    new-array v0, v1, [Ljava/lang/Object;

    .line 81
    .local v0, "newMap":[Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectStack;->m_map:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xml/utils/ObjectStack;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iput-object v0, p0, Lorg/apache/xml/utils/ObjectStack;->m_map:[Ljava/lang/Object;

    .line 86
    .end local v0    # "newMap":[Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectStack;->m_map:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xml/utils/ObjectStack;->m_firstFree:I

    aput-object p1, v1, v2

    .line 88
    iget v1, p0, Lorg/apache/xml/utils/ObjectStack;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/utils/ObjectStack;->m_firstFree:I

    .line 90
    return-object p1
.end method

.method public quickPop(I)V
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 113
    iget v0, p0, Lorg/apache/xml/utils/ObjectStack;->m_firstFree:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/xml/utils/ObjectStack;->m_firstFree:I

    .line 114
    return-void
.end method

.method public search(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/ObjectStack;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 196
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lorg/apache/xml/utils/ObjectStack;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .line 201
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setTop(Ljava/lang/Object;)V
    .locals 3
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 162
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectStack;->m_map:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xml/utils/ObjectStack;->m_firstFree:I

    add-int/lit8 v2, v2, -0x1

    aput-object p1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/util/EmptyStackException;

    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    throw v1
.end method
