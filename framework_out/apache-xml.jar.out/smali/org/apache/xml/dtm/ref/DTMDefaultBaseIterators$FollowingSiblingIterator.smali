.class public Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FollowingSiblingIterator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V
    .locals 0

    .prologue
    .line 864
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    return-void
.end method


# virtual methods
.method public next()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 898
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;->_currentNode:I

    if-ne v1, v0, :cond_0

    :goto_0
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;->_currentNode:I

    .line 900
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;->_currentNode:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;->returnNode(I)I

    move-result v0

    return v0

    .line 898
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;->_currentNode:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_nextsib(I)I

    move-result v0

    goto :goto_0
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 1
    .param p1, "node"    # I

    .prologue
    .line 878
    if-nez p1, :cond_0

    .line 879
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getDocument()I

    move-result p1

    .line 880
    :cond_0
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;->_isRestartable:Z

    if-eqz v0, :cond_1

    .line 882
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;->_startNode:I

    .line 883
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeIdentity(I)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;->_currentNode:I

    .line 885
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    .line 888
    .end local p0    # "this":Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;
    :cond_1
    return-object p0
.end method
