.class public final Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AttributeIterator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V
    .locals 0

    .prologue
    .line 968
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    return-void
.end method


# virtual methods
.method public next()I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1005
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;->_currentNode:I

    .line 1007
    .local v0, "node":I
    if-eq v0, v1, :cond_0

    .line 1008
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getNextAttributeIdentity(I)I

    move-result v1

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;->_currentNode:I

    .line 1009
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;->returnNode(I)I

    move-result v1

    .line 1012
    :cond_0
    return v1
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 2
    .param p1, "node"    # I

    .prologue
    .line 984
    if-nez p1, :cond_0

    .line 985
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getDocument()I

    move-result p1

    .line 986
    :cond_0
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;->_isRestartable:Z

    if-eqz v0, :cond_1

    .line 988
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;->_startNode:I

    .line 989
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeIdentity(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getFirstAttributeIdentity(I)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;->_currentNode:I

    .line 991
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    .line 994
    .end local p0    # "this":Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;
    :cond_1
    return-object p0
.end method
