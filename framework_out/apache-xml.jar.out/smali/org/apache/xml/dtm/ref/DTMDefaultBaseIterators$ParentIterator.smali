.class public final Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ParentIterator"
.end annotation


# instance fields
.field private _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V
    .locals 1

    .prologue
    .line 342
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 346
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public next()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 398
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_currentNode:I

    .line 400
    .local v0, "result":I
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_nodeType:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 401
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_nodeType:I

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_currentNode:I

    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getExpandedTypeID(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 402
    const/4 v0, -0x1

    .line 410
    :cond_0
    :goto_0
    iput v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_currentNode:I

    .line 412
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->returnNode(I)I

    move-result v1

    return v1

    .line 404
    :cond_1
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_nodeType:I

    if-eq v1, v4, :cond_0

    .line 405
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_nodeType:I

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_currentNode:I

    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getNodeType(I)S

    move-result v2

    if-eq v1, v2, :cond_0

    .line 406
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setNodeType(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 385
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_nodeType:I

    .line 387
    return-object p0
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 1
    .param p1, "node"    # I

    .prologue
    .line 359
    if-nez p1, :cond_0

    .line 360
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getDocument()I

    move-result p1

    .line 361
    :cond_0
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_isRestartable:Z

    if-eqz v0, :cond_1

    .line 363
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_startNode:I

    .line 364
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getParent(I)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_currentNode:I

    .line 366
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    .line 369
    .end local p0    # "this":Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;
    :cond_1
    return-object p0
.end method
