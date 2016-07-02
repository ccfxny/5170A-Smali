.class public abstract Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;
.super Ljava/lang/Object;
.source "DTMAxisIteratorBase.java"

# interfaces
.implements Lorg/apache/xml/dtm/DTMAxisIterator;


# instance fields
.field protected _includeSelf:Z

.field protected _isRestartable:Z

.field protected _last:I

.field protected _markedNode:I

.field protected _position:I

.field protected _startNode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_last:I

    .line 41
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    .line 52
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    .line 57
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_includeSelf:Z

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    return-void
.end method


# virtual methods
.method public cloneIterator()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 3

    .prologue
    .line 180
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;

    .line 182
    .local v0, "clone":Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    return-object v0

    .line 187
    .end local v0    # "clone":Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v2, v1}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public getAxis()I
    .locals 1

    .prologue
    .line 253
    const/4 v0, -0x1

    return v0
.end method

.method public getLast()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 125
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_last:I

    if-ne v1, v2, :cond_1

    .line 134
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    .line 135
    .local v0, "temp":I
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->setMark()V

    .line 137
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->reset()Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 140
    :cond_0
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_last:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_last:I

    .line 142
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->next()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 144
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->gotoMark()V

    .line 145
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    .line 148
    .end local v0    # "temp":I
    :cond_1
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_last:I

    return v1
.end method

.method public getNodeByPosition(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v2, -0x1

    .line 268
    if-lez p1, :cond_2

    .line 269
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->isReverse()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->getLast()I

    move-result v3

    sub-int/2addr v3, p1

    add-int/lit8 v1, v3, 0x1

    .line 272
    .local v1, "pos":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->next()I

    move-result v0

    .local v0, "node":I
    if-eq v0, v2, :cond_2

    .line 273
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->getPosition()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 278
    .end local v0    # "node":I
    .end local v1    # "pos":I
    :goto_1
    return v0

    :cond_1
    move v1, p1

    .line 269
    goto :goto_0

    :cond_2
    move v0, v2

    .line 278
    goto :goto_1
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    goto :goto_0
.end method

.method public getStartNode()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    return v0
.end method

.method public includeSelf()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_includeSelf:Z

    .line 108
    return-object p0
.end method

.method public isDocOrdered()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public isReverse()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public reset()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    .line 85
    .local v0, "temp":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    .line 87
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 89
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    .line 91
    return-object p0
.end method

.method protected final resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    .line 231
    return-object p0
.end method

.method protected final returnNode(I)I
    .locals 1
    .param p1, "node"    # I

    .prologue
    .line 213
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    .line 215
    return p1
.end method

.method public setRestartable(Z)V
    .locals 0
    .param p1, "isRestartable"    # Z

    .prologue
    .line 257
    iput-boolean p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    .line 258
    return-void
.end method
