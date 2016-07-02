.class public Lorg/apache/xml/utils/StringVector;
.super Ljava/lang/Object;
.source "StringVector.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x4552a3bdbda168c4L


# instance fields
.field protected m_blocksize:I

.field protected m_firstFree:I

.field protected m_map:[Ljava/lang/String;

.field protected m_mapSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    .line 51
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/xml/utils/StringVector;->m_blocksize:I

    .line 52
    iget v0, p0, Lorg/apache/xml/utils/StringVector;->m_blocksize:I

    iput v0, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    .line 53
    iget v0, p0, Lorg/apache/xml/utils/StringVector;->m_blocksize:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "blocksize"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    .line 64
    iput p1, p0, Lorg/apache/xml/utils/StringVector;->m_blocksize:I

    .line 65
    iput p1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    .line 66
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public final addElement(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 97
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    if-lt v1, v2, :cond_0

    .line 99
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_blocksize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    .line 101
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    new-array v0, v1, [Ljava/lang/String;

    .line 103
    .local v0, "newMap":[Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iput-object v0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    .line 108
    .end local v0    # "newMap":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    aput-object p1, v1, v2

    .line 110
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    .line 111
    return-void
.end method

.method public final contains(Ljava/lang/String;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 135
    if-nez p1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v1

    .line 138
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    if-ge v0, v2, :cond_0

    .line 140
    iget-object v2, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    const/4 v1, 0x1

    goto :goto_0

    .line 138
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final containsIgnoreCase(Ljava/lang/String;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 157
    if-nez p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v1

    .line 160
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    if-ge v0, v2, :cond_0

    .line 162
    iget-object v2, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 163
    const/4 v1, 0x1

    goto :goto_0

    .line 160
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final elementAt(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    return v0
.end method

.method public final peek()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    iget v0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public final pop()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 202
    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    if-gtz v2, :cond_0

    move-object v0, v1

    .line 211
    :goto_0
    return-object v0

    .line 205
    :cond_0
    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    .line 207
    iget-object v2, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    iget v3, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    aget-object v0, v2, v3

    .line 209
    .local v0, "s":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    iget v3, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    aput-object v1, v2, v3

    goto :goto_0
.end method

.method public final push(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 177
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    if-lt v1, v2, :cond_0

    .line 179
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_blocksize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    .line 181
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    new-array v0, v1, [Ljava/lang/String;

    .line 183
    .local v0, "newMap":[Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iput-object v0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    .line 188
    .end local v0    # "newMap":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    aput-object p1, v1, v2

    .line 190
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    .line 191
    return-void
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    return v0
.end method
