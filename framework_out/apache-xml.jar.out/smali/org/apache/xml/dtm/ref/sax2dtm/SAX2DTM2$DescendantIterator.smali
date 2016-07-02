.class public Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DescendantIterator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V
    .locals 0

    .prologue
    .line 1511
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    return-void
.end method


# virtual methods
.method protected final isDescendant(I)Z
    .locals 2
    .param p1, "identity"    # I

    .prologue
    .line 1559
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v0

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_startNode:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_startNode:I

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
    .locals 9

    .prologue
    const/16 v8, 0xd

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, -0x1

    .line 1569
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_startNode:I

    .line 1570
    .local v2, "startNode":I
    if-ne v2, v4, :cond_0

    .line 1610
    :goto_0
    return v4

    .line 1574
    :cond_0
    iget-boolean v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_includeSelf:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_currentNode:I

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v2, :cond_1

    .line 1575
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_currentNode:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_currentNode:I

    invoke-virtual {v4, v5}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->returnNode(I)I

    move-result v4

    goto :goto_0

    .line 1577
    :cond_1
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_currentNode:I

    .line 1582
    .local v1, "node":I
    if-nez v2, :cond_4

    .line 1585
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 1586
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v0

    .line 1588
    .local v0, "eType":I
    if-ne v4, v0, :cond_3

    .line 1589
    iput v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_currentNode:I

    goto :goto_0

    .line 1594
    :cond_3
    if-eq v0, v7, :cond_2

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    iget-object v5, v5, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    move-result v3

    .local v3, "type":I
    if-eq v3, v6, :cond_2

    if-eq v3, v8, :cond_2

    .line 1609
    .end local v0    # "eType":I
    :goto_1
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_currentNode:I

    .line 1610
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->returnNode(I)I

    move-result v4

    goto :goto_0

    .line 1598
    .end local v3    # "type":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 1599
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v3

    .line 1601
    .restart local v3    # "type":I
    if-eq v4, v3, :cond_5

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->isDescendant(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1602
    :cond_5
    iput v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_currentNode:I

    goto :goto_0

    .line 1606
    :cond_6
    if-eq v6, v3, :cond_4

    if-eq v7, v3, :cond_4

    if-eq v8, v3, :cond_4

    goto :goto_1
.end method

.method public reset()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 3

    .prologue
    .line 1620
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_isRestartable:Z

    .line 1622
    .local v0, "temp":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_isRestartable:Z

    .line 1624
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_startNode:I

    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 1626
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_isRestartable:Z

    .line 1628
    return-object p0
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 1
    .param p1, "node"    # I

    .prologue
    .line 1525
    if-nez p1, :cond_0

    .line 1526
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getDocument()I

    move-result p1

    .line 1527
    :cond_0
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_isRestartable:Z

    if-eqz v0, :cond_2

    .line 1529
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result p1

    .line 1530
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_startNode:I

    .line 1532
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_includeSelf:Z

    if-eqz v0, :cond_1

    .line 1533
    add-int/lit8 p1, p1, -0x1

    .line 1535
    :cond_1
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->_currentNode:I

    .line 1537
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    .line 1540
    .end local p0    # "this":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;
    :cond_2
    return-object p0
.end method
