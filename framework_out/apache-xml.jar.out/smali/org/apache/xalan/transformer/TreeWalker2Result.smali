.class public Lorg/apache/xalan/transformer/TreeWalker2Result;
.super Lorg/apache/xml/dtm/ref/DTMTreeWalker;
.source "TreeWalker2Result.java"


# instance fields
.field m_handler:Lorg/apache/xml/serializer/SerializationHandler;

.field m_startNode:I

.field m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xml/serializer/SerializationHandler;)V
    .locals 1
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .param p2, "handler"    # Lorg/apache/xml/serializer/SerializationHandler;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/dtm/DTM;)V

    .line 58
    iput-object p1, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    .line 59
    iput-object p2, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 60
    return-void
.end method


# virtual methods
.method protected endNode(I)V
    .locals 2
    .param p1, "node"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-super {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->endNode(I)V

    .line 88
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v1

    if-ne v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 92
    :cond_0
    return-void
.end method

.method protected startNode(I)V
    .locals 12
    .param p1, "node"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 105
    iget-object v9, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v9}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v8

    .line 109
    .local v8, "xcntxt":Lorg/apache/xpath/XPathContext;
    :try_start_0
    iget-object v9, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v9, p1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v9

    if-ne v10, v9, :cond_3

    .line 111
    invoke-virtual {v8, p1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 113
    iget v9, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_startNode:I

    if-eq v9, p1, :cond_1

    .line 115
    invoke-super {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->startNode(I)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v9, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v9, p1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "elemName":Ljava/lang/String;
    iget-object v9, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v9, p1}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "localName":Ljava/lang/String;
    iget-object v9, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v9, p1}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "namespace":Ljava/lang/String;
    iget-object v9, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v9, v5, v4, v2}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v3, 0x0

    .line 127
    .local v3, "hasNSDecls":Z
    iget-object v1, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_dtm:Lorg/apache/xml/dtm/DTM;

    .line 128
    .local v1, "dtm":Lorg/apache/xml/dtm/DTM;
    const/4 v9, 0x1

    invoke-interface {v1, p1, v9}, Lorg/apache/xml/dtm/DTM;->getFirstNamespaceNode(IZ)I

    move-result v6

    .line 129
    .local v6, "ns":I
    :goto_1
    if-eq v11, v6, :cond_2

    .line 131
    iget-object v9, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-static {v9, v1, v6}, Lorg/apache/xalan/serialize/SerializerUtils;->ensureNamespaceDeclDeclared(Lorg/apache/xml/serializer/SerializationHandler;Lorg/apache/xml/dtm/DTM;I)V

    .line 129
    const/4 v9, 0x1

    invoke-interface {v1, p1, v6, v9}, Lorg/apache/xml/dtm/DTM;->getNextNamespaceNode(IIZ)I

    move-result v6

    goto :goto_1

    .line 135
    :cond_2
    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    move-result v0

    .line 136
    .local v0, "attr":I
    :goto_2
    if-eq v11, v0, :cond_0

    .line 138
    iget-object v9, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-static {v9, v0}, Lorg/apache/xalan/serialize/SerializerUtils;->addAttribute(Lorg/apache/xml/serializer/SerializationHandler;I)V

    .line 136
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    move-result v0

    goto :goto_2

    .line 145
    .end local v0    # "attr":I
    .end local v1    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v2    # "elemName":Ljava/lang/String;
    .end local v3    # "hasNSDecls":Z
    .end local v4    # "localName":Ljava/lang/String;
    .end local v5    # "namespace":Ljava/lang/String;
    .end local v6    # "ns":I
    :cond_3
    invoke-virtual {v8, p1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 146
    invoke-super {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->startNode(I)V

    .line 147
    invoke-virtual {v8}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v7

    .line 152
    .local v7, "te":Ljavax/xml/transform/TransformerException;
    new-instance v9, Lorg/xml/sax/SAXException;

    invoke-direct {v9, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v9
.end method

.method public traverse(I)V
    .locals 1
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_dtm:Lorg/apache/xml/dtm/DTM;

    .line 72
    iput p1, p0, Lorg/apache/xalan/transformer/TreeWalker2Result;->m_startNode:I

    .line 74
    invoke-super {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->traverse(I)V

    .line 75
    return-void
.end method
