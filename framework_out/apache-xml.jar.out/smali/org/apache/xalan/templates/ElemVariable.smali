.class public Lorg/apache/xalan/templates/ElemVariable;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemVariable.java"


# static fields
.field static final serialVersionUID:J = 0x7e713d70aea340adL


# instance fields
.field m_frameSize:I

.field protected m_index:I

.field private m_isTopLevel:Z

.field protected m_qname:Lorg/apache/xml/utils/QName;

.field private m_selectPattern:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_frameSize:I

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_isTopLevel:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/apache/xalan/templates/ElemVariable;)V
    .locals 1
    .param p1, "param"    # Lorg/apache/xalan/templates/ElemVariable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_frameSize:I

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_isTopLevel:Z

    .line 224
    iget-object v0, p1, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    .line 225
    iget-object v0, p1, Lorg/apache/xalan/templates/ElemVariable;->m_qname:Lorg/apache/xml/utils/QName;

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_qname:Lorg/apache/xml/utils/QName;

    .line 226
    iget-boolean v0, p1, Lorg/apache/xalan/templates/ElemVariable;->m_isTopLevel:Z

    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_isTopLevel:Z

    .line 230
    return-void
.end method

.method static rewriteChildToExpression(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;
    .locals 9
    .param p0, "varElem"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 406
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v3

    .line 410
    .local v3, "t":Lorg/apache/xalan/templates/ElemTemplateElement;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v7

    if-nez v7, :cond_0

    .line 412
    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    .line 414
    .local v0, "etype":I
    const/16 v7, 0x1e

    if-ne v7, v0, :cond_1

    move-object v4, v3

    .line 416
    check-cast v4, Lorg/apache/xalan/templates/ElemValueOf;

    .line 419
    .local v4, "valueof":Lorg/apache/xalan/templates/ElemValueOf;
    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemValueOf;->getDisableOutputEscaping()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemValueOf;->getDOMBackPointer()Lorg/w3c/dom/Node;

    move-result-object v7

    if-nez v7, :cond_0

    .line 422
    iput-object v6, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 424
    new-instance v6, Lorg/apache/xpath/XPath;

    new-instance v7, Lorg/apache/xpath/objects/XRTreeFragSelectWrapper;

    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemValueOf;->getSelect()Lorg/apache/xpath/XPath;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/xpath/objects/XRTreeFragSelectWrapper;-><init>(Lorg/apache/xpath/Expression;)V

    invoke-direct {v6, v7}, Lorg/apache/xpath/XPath;-><init>(Lorg/apache/xpath/Expression;)V

    .line 444
    .end local v0    # "etype":I
    .end local v4    # "valueof":Lorg/apache/xalan/templates/ElemValueOf;
    :cond_0
    :goto_0
    return-object v6

    .line 427
    .restart local v0    # "etype":I
    :cond_1
    const/16 v7, 0x4e

    if-ne v7, v0, :cond_0

    move-object v1, v3

    .line 429
    check-cast v1, Lorg/apache/xalan/templates/ElemTextLiteral;

    .line 431
    .local v1, "lit":Lorg/apache/xalan/templates/ElemTextLiteral;
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTextLiteral;->getDisableOutputEscaping()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTextLiteral;->getDOMBackPointer()Lorg/w3c/dom/Node;

    move-result-object v7

    if-nez v7, :cond_0

    .line 434
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTextLiteral;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, "str":Ljava/lang/String;
    new-instance v5, Lorg/apache/xpath/objects/XString;

    invoke-direct {v5, v2}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    .line 437
    .local v5, "xstr":Lorg/apache/xpath/objects/XString;
    iput-object v6, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 439
    new-instance v6, Lorg/apache/xpath/XPath;

    new-instance v7, Lorg/apache/xpath/objects/XRTreeFragSelectWrapper;

    invoke-direct {v7, v5}, Lorg/apache/xpath/objects/XRTreeFragSelectWrapper;-><init>(Lorg/apache/xpath/Expression;)V

    invoke-direct {v6, v7}, Lorg/apache/xpath/XPath;-><init>(Lorg/apache/xpath/Expression;)V

    goto :goto_0
.end method


# virtual methods
.method protected accept(Lorg/apache/xalan/templates/XSLTVisitor;)Z
    .locals 1
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;

    .prologue
    .line 477
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitVariableOrParamDecl(Lorg/apache/xalan/templates/ElemVariable;)Z

    move-result v0

    return v0
.end method

.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 5
    .param p1, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    .prologue
    .line 519
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    if-eqz v0, :cond_0

    .line 521
    const-string v0, "ER_CANT_HAVE_CONTENT_AND_SELECT"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xsl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemVariable;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemVariable;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    const/4 v0, 0x0

    .line 525
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    goto :goto_0
.end method

.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .locals 2
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;
    .param p2, "callAttrs"    # Z

    .prologue
    .line 487
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 489
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    .line 490
    return-void
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 5
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 329
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getOptimizer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 332
    invoke-static {p0}, Lorg/apache/xalan/templates/ElemVariable;->rewriteChildToExpression(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;

    move-result-object v1

    .line 333
    .local v1, "newSelect":Lorg/apache/xpath/XPath;
    if-eqz v1, :cond_0

    .line 334
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    .line 337
    .end local v1    # "newSelect":Lorg/apache/xpath/XPath;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    .line 341
    .local v0, "cstate":Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v2

    .line 342
    .local v2, "vnames":Ljava/util/Vector;
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    if-eqz v3, :cond_1

    .line 343
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    .line 347
    :cond_1
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemVariable;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    instance-of v3, v3, Lorg/apache/xalan/templates/Stylesheet;

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemVariable;->m_qname:Lorg/apache/xml/utils/QName;

    if-eqz v3, :cond_3

    .line 349
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemVariable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v0, v3}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->addVariableName(Lorg/apache/xml/utils/QName;)I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/apache/xalan/templates/ElemVariable;->m_index:I

    .line 361
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 362
    return-void

    .line 351
    :cond_3
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemVariable;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    instance-of v3, v3, Lorg/apache/xalan/templates/Stylesheet;

    if-eqz v3, :cond_2

    .line 356
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->resetStackFrameSize()V

    goto :goto_0
.end method

.method public endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 2
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 371
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 372
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    instance-of v1, v1, Lorg/apache/xalan/templates/Stylesheet;

    if-eqz v1, :cond_0

    .line 374
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    .line 375
    .local v0, "cstate":Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getFrameSize()I

    move-result v1

    iput v1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_frameSize:I

    .line 376
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->resetStackFrameSize()V

    .line 378
    .end local v0    # "cstate":Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    :cond_0
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 4
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    .line 245
    .local v0, "sourceNode":I
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemVariable;->getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    .line 248
    .local v1, "var":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v2

    iget v3, p0, Lorg/apache/xalan/templates/ElemVariable;->m_index:I

    invoke-virtual {v2, v3, v1}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;)V

    .line 249
    return-void
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_index:I

    return v0
.end method

.method public getIsTopLevel()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_isTopLevel:Z

    return v0
.end method

.method public getName()Lorg/apache/xml/utils/QName;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_qname:Lorg/apache/xml/utils/QName;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    const-string v0, "variable"

    return-object v0
.end method

.method public getSelect()Lorg/apache/xpath/XPath;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    return-object v0
.end method

.method public getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;
    .locals 4
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .param p2, "sourceNode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v2

    .line 268
    .local v2, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual {v2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 272
    :try_start_0
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    if-eqz v3, :cond_0

    .line 274
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v3, v2, p2, p0}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    .line 276
    .local v1, "var":Lorg/apache/xpath/objects/XObject;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 313
    :goto_0
    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 316
    return-object v1

    .line 278
    .end local v1    # "var":Lorg/apache/xpath/objects/XObject;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemVariable;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v3

    if-nez v3, :cond_1

    .line 280
    sget-object v1, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v1    # "var":Lorg/apache/xpath/objects/XObject;
    goto :goto_0

    .line 299
    .end local v1    # "var":Lorg/apache/xpath/objects/XObject;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemVariable;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    instance-of v3, v3, Lorg/apache/xalan/templates/Stylesheet;

    if-eqz v3, :cond_2

    .line 300
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToGlobalRTF(Lorg/apache/xalan/templates/ElemTemplateElement;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 308
    .local v0, "df":I
    :goto_1
    :try_start_3
    new-instance v1, Lorg/apache/xpath/objects/XRTreeFrag;

    invoke-direct {v1, v0, v2, p0}, Lorg/apache/xpath/objects/XRTreeFrag;-><init>(ILorg/apache/xpath/XPathContext;Lorg/apache/xpath/ExpressionNode;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v1    # "var":Lorg/apache/xpath/objects/XObject;
    goto :goto_0

    .line 302
    .end local v0    # "df":I
    .end local v1    # "var":Lorg/apache/xpath/objects/XObject;
    :cond_2
    :try_start_4
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToRTF(Lorg/apache/xalan/templates/ElemTemplateElement;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    .restart local v0    # "df":I
    goto :goto_1

    .line 304
    .end local v0    # "df":I
    :catchall_0
    move-exception v3

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 313
    :catchall_1
    move-exception v3

    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    throw v3
.end method

.method public getXSLToken()I
    .locals 1

    .prologue
    .line 201
    const/16 v0, 0x49

    return v0
.end method

.method public isPsuedoVar()Z
    .locals 3

    .prologue
    .line 498
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v1}, Lorg/apache/xml/utils/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "ns":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "http://xml.apache.org/xalan/psuedovar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v1}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    const/4 v1, 0x1

    .line 504
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0
    .param p1, "root"    # Lorg/apache/xalan/templates/StylesheetRoot;

    .prologue
    .line 454
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->recomposeVariables(Lorg/apache/xalan/templates/ElemVariable;)V

    .line 455
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 77
    iput p1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_index:I

    .line 78
    return-void
.end method

.method public setIsTopLevel(Z)V
    .locals 0
    .param p1, "v"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_isTopLevel:Z

    .line 178
    return-void
.end method

.method public setName(Lorg/apache/xml/utils/QName;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xml/utils/QName;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_qname:Lorg/apache/xml/utils/QName;

    .line 145
    return-void
.end method

.method public setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 1
    .param p1, "p"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    .prologue
    .line 464
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_hasVariableDecl:Z

    .line 466
    return-void
.end method

.method public setSelect(Lorg/apache/xpath/XPath;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xpath/XPath;

    .prologue
    .line 108
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemVariable;->m_selectPattern:Lorg/apache/xpath/XPath;

    .line 109
    return-void
.end method
