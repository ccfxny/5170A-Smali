.class public final Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedAncestorIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .locals 0
    .param p2, "type"    # I

    .prologue
    .line 1749
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 1750
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->_nodeType:I

    .line 1751
    return-void
.end method


# virtual methods
.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 7
    .param p1, "node"    # I

    .prologue
    const/16 v6, 0xe

    const/4 v3, -0x1

    .line 1764
    if-nez p1, :cond_0

    .line 1765
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getDocument()I

    move-result p1

    .line 1766
    :cond_0
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->m_realStartNode:I

    .line 1768
    iget-boolean v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->_isRestartable:Z

    if-eqz v4, :cond_9

    .line 1770
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeIdentity(I)I

    move-result v1

    .line 1771
    .local v1, "nodeID":I
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->_nodeType:I

    .line 1773
    .local v2, "nodeType":I
    iget-boolean v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->_includeSelf:Z

    if-nez v4, :cond_1

    if-eq p1, v3, :cond_1

    .line 1774
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_parent(I)I

    move-result v1

    .line 1777
    :cond_1
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->_startNode:I

    .line 1779
    if-lt v2, v6, :cond_3

    .line 1780
    :goto_0
    if-eq v1, v3, :cond_7

    .line 1781
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_exptype(I)I

    move-result v0

    .line 1783
    .local v0, "eType":I
    if-ne v0, v2, :cond_2

    .line 1784
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v5, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/NodeVector;->addElement(I)V

    .line 1786
    :cond_2
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_parent(I)I

    move-result v1

    .line 1787
    goto :goto_0

    .line 1789
    .end local v0    # "eType":I
    :cond_3
    :goto_1
    if-eq v1, v3, :cond_7

    .line 1790
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_exptype(I)I

    move-result v0

    .line 1792
    .restart local v0    # "eType":I
    if-lt v0, v6, :cond_4

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget-object v4, v4, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v4

    if-eq v4, v2, :cond_5

    :cond_4
    if-ge v0, v6, :cond_6

    if-ne v0, v2, :cond_6

    .line 1795
    :cond_5
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v5, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/NodeVector;->addElement(I)V

    .line 1797
    :cond_6
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_parent(I)I

    move-result v1

    .line 1798
    goto :goto_1

    .line 1800
    .end local v0    # "eType":I
    :cond_7
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v4}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->m_ancestorsPos:I

    .line 1802
    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->m_ancestorsPos:I

    if-ltz v4, :cond_8

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->m_ancestorsPos:I

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v3

    :cond_8
    iput v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->_currentNode:I

    .line 1806
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    .line 1809
    .end local v1    # "nodeID":I
    .end local v2    # "nodeType":I
    .end local p0    # "this":Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;
    :cond_9
    return-object p0
.end method
