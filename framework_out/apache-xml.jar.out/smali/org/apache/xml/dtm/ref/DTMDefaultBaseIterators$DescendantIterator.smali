.class public Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DescendantIterator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V
    .locals 0

    .prologue
    .line 1816
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    return-void
.end method


# virtual methods
.method protected isDescendant(I)Z
    .locals 2
    .param p1, "identity"    # I

    .prologue
    .line 1864
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_parent(I)I

    move-result v0

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_startNode:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_startNode:I

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 1874
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_startNode:I

    if-ne v3, v2, :cond_0

    .line 1896
    :goto_0
    return v2

    .line 1878
    :cond_0
    iget-boolean v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_includeSelf:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_currentNode:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_startNode:I

    if-ne v3, v4, :cond_1

    .line 1879
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_currentNode:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_currentNode:I

    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->returnNode(I)I

    move-result v2

    goto :goto_0

    .line 1881
    :cond_1
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_currentNode:I

    .line 1885
    .local v0, "node":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 1886
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_type(I)S

    move-result v1

    .line 1888
    .local v1, "type":I
    if-eq v2, v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->isDescendant(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1889
    :cond_3
    iput v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_currentNode:I

    goto :goto_0

    .line 1893
    :cond_4
    const/4 v3, 0x2

    if-eq v3, v1, :cond_2

    const/4 v3, 0x3

    if-eq v3, v1, :cond_2

    const/16 v3, 0xd

    if-eq v3, v1, :cond_2

    .line 1895
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_currentNode:I

    .line 1896
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->returnNode(I)I

    move-result v2

    goto :goto_0
.end method

.method public reset()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 3

    .prologue
    .line 1906
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_isRestartable:Z

    .line 1908
    .local v0, "temp":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_isRestartable:Z

    .line 1910
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_startNode:I

    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 1912
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_isRestartable:Z

    .line 1914
    return-object p0
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 1
    .param p1, "node"    # I

    .prologue
    .line 1830
    if-nez p1, :cond_0

    .line 1831
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getDocument()I

    move-result p1

    .line 1832
    :cond_0
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_isRestartable:Z

    if-eqz v0, :cond_2

    .line 1834
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeIdentity(I)I

    move-result p1

    .line 1835
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_startNode:I

    .line 1837
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_includeSelf:Z

    if-eqz v0, :cond_1

    .line 1838
    add-int/lit8 p1, p1, -0x1

    .line 1840
    :cond_1
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->_currentNode:I

    .line 1842
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    .line 1845
    .end local p0    # "this":Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;
    :cond_2
    return-object p0
.end method
