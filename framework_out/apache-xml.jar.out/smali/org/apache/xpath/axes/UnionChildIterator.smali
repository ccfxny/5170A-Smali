.class public Lorg/apache/xpath/axes/UnionChildIterator;
.super Lorg/apache/xpath/axes/ChildTestIterator;
.source "UnionChildIterator.java"


# static fields
.field static final serialVersionUID:J = 0x30938eec96f3f3e7L


# instance fields
.field private m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/ChildTestIterator;-><init>(Lorg/apache/xml/dtm/DTMAxisTraverser;)V

    .line 42
    iput-object v0, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    .line 50
    return-void
.end method


# virtual methods
.method public acceptNode(I)S
    .locals 7
    .param p1, "n"    # I

    .prologue
    const/4 v5, 0x1

    .line 115
    invoke-virtual {p0}, Lorg/apache/xpath/axes/UnionChildIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v4

    .line 118
    .local v4, "xctxt":Lorg/apache/xpath/XPathContext;
    :try_start_0
    invoke-virtual {v4, p1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    array-length v6, v6

    if-ge v0, v6, :cond_2

    .line 121
    iget-object v6, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    aget-object v1, v6, v0

    .line 122
    .local v1, "pnt":Lorg/apache/xpath/axes/PredicatedNodeTest;
    invoke-virtual {v1, v4, p1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    .line 123
    .local v2, "score":Lorg/apache/xpath/objects/XObject;
    sget-object v6, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-eq v2, v6, :cond_1

    .line 126
    invoke-virtual {v1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 128
    invoke-virtual {v1, p1, v4}, Lorg/apache/xpath/axes/PredicatedNodeTest;->executePredicates(ILorg/apache/xpath/XPathContext;)Z
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 145
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 147
    .end local v1    # "pnt":Lorg/apache/xpath/axes/PredicatedNodeTest;
    .end local v2    # "score":Lorg/apache/xpath/objects/XObject;
    :goto_1
    return v5

    .line 145
    .restart local v1    # "pnt":Lorg/apache/xpath/axes/PredicatedNodeTest;
    .restart local v2    # "score":Lorg/apache/xpath/objects/XObject;
    :cond_0
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    goto :goto_1

    .line 119
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v1    # "pnt":Lorg/apache/xpath/axes/PredicatedNodeTest;
    .end local v2    # "score":Lorg/apache/xpath/objects/XObject;
    :cond_2
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 147
    const/4 v5, 0x3

    goto :goto_1

    .line 137
    .end local v0    # "i":I
    :catch_0
    move-exception v3

    .line 141
    .local v3, "se":Ljavax/xml/transform/TransformerException;
    :try_start_1
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .end local v3    # "se":Ljavax/xml/transform/TransformerException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    throw v5
.end method

.method public addNodeTest(Lorg/apache/xpath/axes/PredicatedNodeTest;)V
    .locals 4
    .param p1, "test"    # Lorg/apache/xpath/axes/PredicatedNodeTest;

    .prologue
    const/4 v3, 0x0

    .line 65
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    if-nez v2, :cond_0

    .line 67
    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/xpath/axes/PredicatedNodeTest;

    iput-object v2, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    .line 68
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    aput-object p1, v2, v3

    .line 81
    :goto_0
    invoke-virtual {p1, p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 82
    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    .line 73
    .local v1, "tests":[Lorg/apache/xpath/axes/PredicatedNodeTest;
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    array-length v0, v2

    .line 75
    .local v0, "len":I
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [Lorg/apache/xpath/axes/PredicatedNodeTest;

    iput-object v2, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    .line 77
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    aput-object p1, v2, v0

    goto :goto_0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 2
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/ChildTestIterator;->fixupVariables(Ljava/util/Vector;I)V

    .line 97
    iget-object v1, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    if-eqz v1, :cond_0

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 99
    iget-object v1, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/axes/PredicatedNodeTest;->fixupVariables(Ljava/util/Vector;I)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
