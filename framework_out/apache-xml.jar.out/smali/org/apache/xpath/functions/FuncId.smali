.class public Lorg/apache/xpath/functions/FuncId;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncId.java"


# static fields
.field static final serialVersionUID:J = 0x7befc5b4bc56b5ceL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    return-void
.end method

.method private getNodesByID(Lorg/apache/xpath/XPathContext;ILjava/lang/String;Lorg/apache/xml/utils/StringVector;Lorg/apache/xpath/NodeSetDTM;Z)Lorg/apache/xml/utils/StringVector;
    .locals 6
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "docContext"    # I
    .param p3, "refval"    # Ljava/lang/String;
    .param p4, "usedrefs"    # Lorg/apache/xml/utils/StringVector;
    .param p5, "nodeSet"    # Lorg/apache/xpath/NodeSetDTM;
    .param p6, "mayBeMore"    # Z

    .prologue
    .line 60
    if-eqz p3, :cond_5

    .line 62
    const/4 v3, 0x0

    .line 64
    .local v3, "ref":Ljava/lang/String;
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, p3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 65
    .local v4, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    .line 66
    .local v1, "hasMore":Z
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 68
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    :cond_0
    :goto_0
    if-eqz v1, :cond_5

    .line 70
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    .line 73
    if-eqz p4, :cond_1

    invoke-virtual {p4, v3}, Lorg/apache/xml/utils/StringVector;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 75
    const/4 v3, 0x0

    .line 77
    goto :goto_0

    .line 80
    :cond_1
    invoke-interface {v0, v3}, Lorg/apache/xml/dtm/DTM;->getElementById(Ljava/lang/String;)I

    move-result v2

    .line 82
    .local v2, "node":I
    const/4 v5, -0x1

    if-eq v5, v2, :cond_2

    .line 83
    invoke-virtual {p5, v2, p1}, Lorg/apache/xpath/NodeSetDTM;->addNodeInDocOrder(ILorg/apache/xpath/XPathContext;)I

    .line 85
    :cond_2
    if-eqz v3, :cond_0

    if-nez v1, :cond_3

    if-eqz p6, :cond_0

    .line 87
    :cond_3
    if-nez p4, :cond_4

    .line 88
    new-instance p4, Lorg/apache/xml/utils/StringVector;

    .end local p4    # "usedrefs":Lorg/apache/xml/utils/StringVector;
    invoke-direct {p4}, Lorg/apache/xml/utils/StringVector;-><init>()V

    .line 90
    .restart local p4    # "usedrefs":Lorg/apache/xml/utils/StringVector;
    :cond_4
    invoke-virtual {p4, v3}, Lorg/apache/xml/utils/StringVector;->addElement(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    .end local v0    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v1    # "hasMore":Z
    .end local v2    # "node":I
    .end local v3    # "ref":Ljava/lang/String;
    .end local v4    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_5
    return-object p4
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 23
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v17

    .line 110
    .local v17, "context":I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v18

    .line 111
    .local v18, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface/range {v18 .. v18}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v4

    .line 113
    .local v4, "docContext":I
    const/4 v2, -0x1

    if-ne v2, v4, :cond_0

    .line 114
    const-string v2, "ER_CONTEXT_HAS_NO_OWNERDOC"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xpath/functions/FuncId;->error(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xpath/functions/FuncId;->m_arg0:Lorg/apache/xpath/Expression;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v15

    .line 117
    .local v15, "arg":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v15}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v16

    .line 118
    .local v16, "argType":I
    new-instance v21, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    .line 119
    .local v21, "nodes":Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual/range {v21 .. v21}, Lorg/apache/xpath/objects/XNodeSet;->mutableNodeset()Lorg/apache/xpath/NodeSetDTM;

    move-result-object v7

    .line 121
    .local v7, "nodeSet":Lorg/apache/xpath/NodeSetDTM;
    const/4 v2, 0x4

    move/from16 v0, v16

    if-ne v2, v0, :cond_2

    .line 123
    invoke-virtual {v15}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v20

    .line 124
    .local v20, "ni":Lorg/apache/xml/dtm/DTMIterator;
    const/4 v6, 0x0

    .line 125
    .local v6, "usedrefs":Lorg/apache/xml/utils/StringVector;
    invoke-interface/range {v20 .. v20}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v22

    .line 127
    .local v22, "pos":I
    :goto_0
    const/4 v2, -0x1

    move/from16 v0, v22

    if-eq v2, v0, :cond_3

    .line 129
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTMIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v19

    .line 130
    .local v19, "ndtm":Lorg/apache/xml/dtm/DTM;
    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "refval":Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v22

    .line 133
    const/4 v2, -0x1

    move/from16 v0, v22

    if-eq v2, v0, :cond_1

    const/4 v8, 0x1

    :goto_1
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lorg/apache/xpath/functions/FuncId;->getNodesByID(Lorg/apache/xpath/XPathContext;ILjava/lang/String;Lorg/apache/xml/utils/StringVector;Lorg/apache/xpath/NodeSetDTM;Z)Lorg/apache/xml/utils/StringVector;

    move-result-object v6

    .line 135
    goto :goto_0

    .line 133
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 138
    .end local v5    # "refval":Ljava/lang/String;
    .end local v6    # "usedrefs":Lorg/apache/xml/utils/StringVector;
    .end local v19    # "ndtm":Lorg/apache/xml/dtm/DTM;
    .end local v20    # "ni":Lorg/apache/xml/dtm/DTMIterator;
    .end local v22    # "pos":I
    :cond_2
    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v2, v0, :cond_4

    .line 149
    :cond_3
    :goto_2
    return-object v21

    .line 144
    :cond_4
    invoke-virtual {v15}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v5

    .line 146
    .restart local v5    # "refval":Ljava/lang/String;
    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v10, v4

    move-object v11, v5

    move-object v13, v7

    invoke-direct/range {v8 .. v14}, Lorg/apache/xpath/functions/FuncId;->getNodesByID(Lorg/apache/xpath/XPathContext;ILjava/lang/String;Lorg/apache/xml/utils/StringVector;Lorg/apache/xpath/NodeSetDTM;Z)Lorg/apache/xml/utils/StringVector;

    goto :goto_2
.end method
