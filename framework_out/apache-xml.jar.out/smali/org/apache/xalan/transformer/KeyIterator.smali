.class public Lorg/apache/xalan/transformer/KeyIterator;
.super Lorg/apache/xpath/axes/OneStepIteratorForward;
.source "KeyIterator.java"


# static fields
.field static final serialVersionUID:J = -0x12b90050ba7c0c3dL


# instance fields
.field private m_keyDeclarations:Ljava/util/Vector;

.field private m_name:Lorg/apache/xml/utils/QName;


# direct methods
.method constructor <init>(Lorg/apache/xml/utils/QName;Ljava/util/Vector;)V
    .locals 1
    .param p1, "name"    # Lorg/apache/xml/utils/QName;
    .param p2, "keyDeclarations"    # Ljava/util/Vector;

    .prologue
    .line 83
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/OneStepIteratorForward;-><init>(I)V

    .line 84
    iput-object p2, p0, Lorg/apache/xalan/transformer/KeyIterator;->m_keyDeclarations:Ljava/util/Vector;

    .line 86
    iput-object p1, p0, Lorg/apache/xalan/transformer/KeyIterator;->m_name:Lorg/apache/xml/utils/QName;

    .line 87
    return-void
.end method


# virtual methods
.method public acceptNode(I)S
    .locals 18
    .param p1, "testNode"    # I

    .prologue
    .line 102
    const/4 v2, 0x0

    .line 103
    .local v2, "foundKey":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/xalan/transformer/KeyIterator;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    check-cast v6, Lorg/apache/xalan/transformer/KeyIterator;

    .line 104
    .local v6, "ki":Lorg/apache/xalan/transformer/KeyIterator;
    invoke-virtual {v6}, Lorg/apache/xalan/transformer/KeyIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v12

    .line 105
    .local v12, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual {v6}, Lorg/apache/xalan/transformer/KeyIterator;->getKeyDeclarations()Ljava/util/Vector;

    move-result-object v5

    .line 107
    .local v5, "keys":Ljava/util/Vector;
    invoke-virtual {v6}, Lorg/apache/xalan/transformer/KeyIterator;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v9

    .line 111
    .local v9, "name":Lorg/apache/xml/utils/QName;
    :try_start_0
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v8

    .line 114
    .local v8, "nDeclarations":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_2

    .line 116
    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xalan/templates/KeyDeclaration;

    .line 120
    .local v4, "kd":Lorg/apache/xalan/templates/KeyDeclaration;
    invoke-virtual {v4}, Lorg/apache/xalan/templates/KeyDeclaration;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v13

    invoke-virtual {v13, v9}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 114
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    :cond_1
    const/4 v2, 0x1

    .line 128
    invoke-virtual {v4}, Lorg/apache/xalan/templates/KeyDeclaration;->getMatch()Lorg/apache/xpath/XPath;

    move-result-object v7

    .line 129
    .local v7, "matchExpr":Lorg/apache/xpath/XPath;
    move/from16 v0, p1

    invoke-virtual {v7, v12, v0}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v10

    .line 131
    .local v10, "score":D
    invoke-virtual {v4}, Lorg/apache/xalan/templates/KeyDeclaration;->getMatch()Lorg/apache/xpath/XPath;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/high16 v14, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v13, v10, v14

    if-eqz v13, :cond_0

    .line 134
    const/4 v13, 0x1

    .line 150
    .end local v3    # "i":I
    .end local v4    # "kd":Lorg/apache/xalan/templates/KeyDeclaration;
    .end local v7    # "matchExpr":Lorg/apache/xpath/XPath;
    .end local v8    # "nDeclarations":I
    .end local v10    # "score":D
    :goto_1
    return v13

    .line 138
    :catch_0
    move-exception v13

    .line 144
    :cond_2
    if-nez v2, :cond_3

    .line 145
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "ER_NO_XSLKEY_DECLARATION"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v9}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 150
    :cond_3
    const/4 v13, 0x2

    goto :goto_1
.end method

.method public getKeyDeclarations()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/xalan/transformer/KeyIterator;->m_keyDeclarations:Ljava/util/Vector;

    return-object v0
.end method

.method public getName()Lorg/apache/xml/utils/QName;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/xalan/transformer/KeyIterator;->m_name:Lorg/apache/xml/utils/QName;

    return-object v0
.end method
