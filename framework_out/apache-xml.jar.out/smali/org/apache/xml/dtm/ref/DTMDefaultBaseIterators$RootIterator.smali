.class public Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RootIterator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    .line 698
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 699
    return-void
.end method


# virtual methods
.method public next()I
    .locals 2

    .prologue
    .line 730
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;->_startNode:I

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;->_currentNode:I

    if-ne v0, v1, :cond_0

    .line 731
    const/4 v0, -0x1

    .line 735
    :goto_0
    return v0

    .line 733
    :cond_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;->_startNode:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;->_currentNode:I

    .line 735
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;->_startNode:I

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;->returnNode(I)I

    move-result v0

    goto :goto_0
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 1
    .param p1, "node"    # I

    .prologue
    .line 712
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;->_isRestartable:Z

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getDocumentRoot(I)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;->_startNode:I

    .line 715
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;->_currentNode:I

    .line 717
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    .line 720
    .end local p0    # "this":Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;
    :cond_0
    return-object p0
.end method
