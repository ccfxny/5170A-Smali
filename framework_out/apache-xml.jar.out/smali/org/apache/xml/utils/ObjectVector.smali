.class public Lorg/apache/xml/utils/ObjectVector;
.super Ljava/lang/Object;
.source "ObjectVector.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected m_blocksize:I

.field protected m_firstFree:I

.field protected m_map:[Ljava/lang/Object;

.field protected m_mapSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    .line 55
    const/16 v0, 0x20

    iput v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_blocksize:I

    .line 56
    iget v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_blocksize:I

    iput v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    .line 57
    iget v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_blocksize:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

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

    iput v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    .line 68
    iput p1, p0, Lorg/apache/xml/utils/ObjectVector;->m_blocksize:I

    .line 69
    iput p1, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    .line 70
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

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

    iput v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    .line 81
    iput p2, p0, Lorg/apache/xml/utils/ObjectVector;->m_blocksize:I

    .line 82
    iput p1, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    .line 83
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/utils/ObjectVector;)V
    .locals 4
    .param p1, "v"    # Lorg/apache/xml/utils/ObjectVector;

    .prologue
    const/4 v3, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v3, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    .line 93
    iget v0, p1, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    .line 94
    iget v0, p1, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    iput v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    .line 95
    iget v0, p1, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    iput v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    .line 96
    iget v0, p1, Lorg/apache/xml/utils/ObjectVector;->m_blocksize:I

    iput v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_blocksize:I

    .line 97
    iget-object v0, p1, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    return-void
.end method


# virtual methods
.method public final addElement(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 129
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    if-lt v1, v2, :cond_0

    .line 131
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_blocksize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    .line 133
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    new-array v0, v1, [Ljava/lang/Object;

    .line 135
    .local v0, "newMap":[Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    iput-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    .line 140
    .end local v0    # "newMap":[Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    aput-object p1, v1, v2

    .line 142
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    .line 143
    return-void
.end method

.method public final addElements(I)V
    .locals 4
    .param p1, "numberOfElements"    # I

    .prologue
    const/4 v3, 0x0

    .line 179
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    if-lt v1, v2, :cond_0

    .line 181
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_blocksize:I

    add-int/2addr v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    .line 183
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    new-array v0, v1, [Ljava/lang/Object;

    .line 185
    .local v0, "newMap":[Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    iput-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    .line 190
    .end local v0    # "newMap":[Ljava/lang/Object;
    :cond_0
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    .line 191
    return-void
.end method

.method public final addElements(Ljava/lang/Object;I)V
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "numberOfElements"    # I

    .prologue
    const/4 v4, 0x0

    .line 153
    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/2addr v2, p2

    iget v3, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    if-lt v2, v3, :cond_0

    .line 155
    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    iget v3, p0, Lorg/apache/xml/utils/ObjectVector;->m_blocksize:I

    add-int/2addr v3, p2

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    .line 157
    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    new-array v1, v2, [Ljava/lang/Object;

    .line 159
    .local v1, "newMap":[Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iput-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    .line 164
    .end local v1    # "newMap":[Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 166
    iget-object v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    aput-object p1, v2, v3

    .line 167
    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

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
    .line 429
    new-instance v0, Lorg/apache/xml/utils/ObjectVector;

    invoke-direct {v0, p0}, Lorg/apache/xml/utils/ObjectVector;-><init>(Lorg/apache/xml/utils/ObjectVector;)V

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/Object;

    .prologue
    .line 329
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    if-ge v0, v1, :cond_1

    .line 331
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 332
    const/4 v1, 0x1

    .line 335
    :goto_1
    return v1

    .line 329
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final elementAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 374
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    if-ge v0, v1, :cond_1

    .line 376
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 380
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 374
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 380
    :cond_1
    const/high16 v0, -0x80000000

    goto :goto_1
.end method

.method public final indexOf(Ljava/lang/Object;I)I
    .locals 2
    .param p1, "elem"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .line 352
    move v0, p2

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    if-ge v0, v1, :cond_1

    .line 354
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 358
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 352
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_1
    const/high16 v0, -0x80000000

    goto :goto_1
.end method

.method public final insertElementAt(Ljava/lang/Object;I)V
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "at"    # I

    .prologue
    const/4 v3, 0x0

    .line 206
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    if-lt v1, v2, :cond_0

    .line 208
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_blocksize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    .line 210
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    new-array v0, v1, [Ljava/lang/Object;

    .line 212
    .local v0, "newMap":[Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    iput-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    .line 217
    .end local v0    # "newMap":[Ljava/lang/Object;
    :cond_0
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    if-gt p2, v1, :cond_1

    .line 219
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    add-int/lit8 v3, p2, 0x1

    iget v4, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    sub-int/2addr v4, p2

    invoke-static {v1, p2, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    aput-object p1, v1, p2

    .line 224
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    .line 225
    return-void
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 396
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 398
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 402
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 396
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 402
    :cond_1
    const/high16 v0, -0x80000000

    goto :goto_1
.end method

.method public final removeAllElements()V
    .locals 3

    .prologue
    .line 233
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    if-ge v0, v1, :cond_0

    .line 235
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    .line 239
    return-void
.end method

.method public final removeElement(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "s"    # Ljava/lang/Object;

    .prologue
    .line 255
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    if-ge v0, v1, :cond_2

    .line 257
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 259
    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    if-ge v1, v2, :cond_0

    .line 260
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    add-int/lit8 v4, v0, -0x1

    iget v5, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    sub-int/2addr v5, v0

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    :goto_1
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    .line 266
    const/4 v1, 0x1

    .line 270
    :goto_2
    return v1

    .line 262
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_1

    .line 255
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public final removeElementAt(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 284
    iget v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    if-le p1, v0, :cond_0

    .line 285
    iget-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    :goto_0
    iget v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    .line 290
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    goto :goto_0
.end method

.method public final setElementAt(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    aput-object p1, v0, p2

    .line 305
    return-void
.end method

.method public final setSize(I)V
    .locals 0
    .param p1, "sz"    # I

    .prologue
    .line 117
    iput p1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    .line 118
    return-void
.end method

.method public final setToSize(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    const/4 v3, 0x0

    .line 412
    new-array v0, p1, [Ljava/lang/Object;

    .line 414
    .local v0, "newMap":[Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    iput p1, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    .line 417
    iput-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    .line 419
    return-void
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    return v0
.end method
