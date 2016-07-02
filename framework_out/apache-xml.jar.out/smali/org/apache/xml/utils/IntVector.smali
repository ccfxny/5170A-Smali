.class public Lorg/apache/xml/utils/IntVector;
.super Ljava/lang/Object;
.source "IntVector.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected m_blocksize:I

.field protected m_firstFree:I

.field protected m_map:[I

.field protected m_mapSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    .line 55
    const/16 v0, 0x20

    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    .line 56
    iget v0, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    .line 57
    iget v0, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "blocksize"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    .line 68
    iput p1, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    .line 69
    iput p1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    .line 70
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    .line 71
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "blocksize"    # I
    .param p2, "increaseSize"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    .line 81
    iput p2, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    .line 82
    iput p1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    .line 83
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/utils/IntVector;)V
    .locals 4
    .param p1, "v"    # Lorg/apache/xml/utils/IntVector;

    .prologue
    const/4 v3, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v3, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    .line 93
    iget v0, p1, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    .line 94
    iget v0, p1, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    .line 95
    iget v0, p1, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    .line 96
    iget v0, p1, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    .line 97
    iget-object v0, p1, Lorg/apache/xml/utils/IntVector;->m_map:[I

    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 98
    return-void
.end method


# virtual methods
.method public final addElement(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v3, 0x0

    .line 129
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    if-lt v1, v2, :cond_0

    .line 131
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    .line 133
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    new-array v0, v1, [I

    .line 135
    .local v0, "newMap":[I
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 137
    iput-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    .line 140
    .end local v0    # "newMap":[I
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    aput p1, v1, v2

    .line 142
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    .line 143
    return-void
.end method

.method public final addElements(I)V
    .locals 4
    .param p1, "numberOfElements"    # I

    .prologue
    const/4 v3, 0x0

    .line 179
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    if-lt v1, v2, :cond_0

    .line 181
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    add-int/2addr v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    .line 183
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    new-array v0, v1, [I

    .line 185
    .local v0, "newMap":[I
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 187
    iput-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    .line 190
    .end local v0    # "newMap":[I
    :cond_0
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    .line 191
    return-void
.end method

.method public final addElements(II)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "numberOfElements"    # I

    .prologue
    const/4 v4, 0x0

    .line 153
    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/2addr v2, p2

    iget v3, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    if-lt v2, v3, :cond_0

    .line 155
    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    iget v3, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    add-int/2addr v3, p2

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    .line 157
    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    new-array v1, v2, [I

    .line 159
    .local v1, "newMap":[I
    iget-object v2, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    iget v3, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 161
    iput-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    .line 164
    .end local v1    # "newMap":[I
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 166
    iget-object v2, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    iget v3, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    aput p1, v2, v3

    .line 167
    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 416
    new-instance v0, Lorg/apache/xml/utils/IntVector;

    invoke-direct {v0, p0}, Lorg/apache/xml/utils/IntVector;-><init>(Lorg/apache/xml/utils/IntVector;)V

    return-object v0
.end method

.method public final contains(I)Z
    .locals 2
    .param p1, "s"    # I

    .prologue
    .line 332
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    if-ge v0, v1, :cond_1

    .line 334
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 335
    const/4 v1, 0x1

    .line 338
    :goto_1
    return v1

    .line 332
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final elementAt(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 319
    iget-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    aget v0, v0, p1

    return v0
.end method

.method public final indexOf(I)I
    .locals 2
    .param p1, "elem"    # I

    .prologue
    .line 377
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    if-ge v0, v1, :cond_1

    .line 379
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 383
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 377
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    :cond_1
    const/high16 v0, -0x80000000

    goto :goto_1
.end method

.method public final indexOf(II)I
    .locals 2
    .param p1, "elem"    # I
    .param p2, "index"    # I

    .prologue
    .line 355
    move v0, p2

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    if-ge v0, v1, :cond_1

    .line 357
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 361
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 355
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    :cond_1
    const/high16 v0, -0x80000000

    goto :goto_1
.end method

.method public final insertElementAt(II)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "at"    # I

    .prologue
    const/4 v3, 0x0

    .line 206
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    if-lt v1, v2, :cond_0

    .line 208
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    .line 210
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    new-array v0, v1, [I

    .line 212
    .local v0, "newMap":[I
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 214
    iput-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    .line 217
    .end local v0    # "newMap":[I
    :cond_0
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    if-gt p2, v1, :cond_1

    .line 219
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    iget-object v2, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    add-int/lit8 v3, p2, 0x1

    iget v4, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    sub-int/2addr v4, p2

    invoke-static {v1, p2, v2, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 222
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    aput p1, v1, p2

    .line 224
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    .line 225
    return-void
.end method

.method public final lastIndexOf(I)I
    .locals 2
    .param p1, "elem"    # I

    .prologue
    .line 399
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 401
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 405
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 399
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 405
    :cond_1
    const/high16 v0, -0x80000000

    goto :goto_1
.end method

.method public final removeAllElements()V
    .locals 3

    .prologue
    .line 236
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    if-ge v0, v1, :cond_0

    .line 238
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    const/high16 v2, -0x80000000

    aput v2, v1, v0

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    .line 242
    return-void
.end method

.method public final removeElement(I)Z
    .locals 6
    .param p1, "s"    # I

    .prologue
    .line 258
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    if-ge v0, v1, :cond_2

    .line 260
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 262
    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    if-ge v1, v2, :cond_0

    .line 263
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    add-int/lit8 v4, v0, -0x1

    iget v5, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    sub-int/2addr v5, v0

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy([II[III)V

    .line 267
    :goto_1
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    .line 269
    const/4 v1, 0x1

    .line 273
    :goto_2
    return v1

    .line 265
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    const/high16 v2, -0x80000000

    aput v2, v1, v0

    goto :goto_1

    .line 258
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public final removeElementAt(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 287
    iget v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    if-le p1, v0, :cond_0

    .line 288
    iget-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    iget v3, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 292
    :goto_0
    iget v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    .line 293
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    const/high16 v1, -0x80000000

    aput v1, v0, p1

    goto :goto_0
.end method

.method public final setElementAt(II)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "index"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    aput p1, v0, p2

    .line 308
    return-void
.end method

.method public final setSize(I)V
    .locals 0
    .param p1, "sz"    # I

    .prologue
    .line 117
    iput p1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    .line 118
    return-void
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    return v0
.end method
