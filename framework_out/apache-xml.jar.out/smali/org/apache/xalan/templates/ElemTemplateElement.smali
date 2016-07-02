.class public Lorg/apache/xalan/templates/ElemTemplateElement;
.super Lorg/apache/xml/utils/UnImplNode;
.source "ElemTemplateElement.java"

# interfaces
.implements Lorg/apache/xml/utils/PrefixResolver;
.implements Ljava/io/Serializable;
.implements Lorg/apache/xpath/ExpressionNode;
.implements Lorg/apache/xpath/WhitespaceStrippingElementMatcher;
.implements Lorg/apache/xalan/templates/XSLTVisitable;


# static fields
.field static final serialVersionUID:J = 0x3d9e1d63f87d91cfL


# instance fields
.field private transient m_DOMBackPointer:Lorg/w3c/dom/Node;

.field private m_columnNumber:I

.field private m_declaredPrefixes:Ljava/util/List;

.field private m_defaultSpace:Z

.field protected m_docOrderNumber:I

.field private m_endColumnNumber:I

.field private m_endLineNumber:I

.field m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

.field private m_hasTextLitOnly:Z

.field protected m_hasVariableDecl:Z

.field private m_lineNumber:I

.field m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

.field protected m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

.field private m_prefixTable:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lorg/apache/xml/utils/UnImplNode;-><init>()V

    .line 758
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_defaultSpace:Z

    .line 764
    iput-boolean v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_hasTextLitOnly:Z

    .line 770
    iput-boolean v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_hasVariableDecl:Z

    .line 1255
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_docOrderNumber:I

    .line 70
    return-void
.end method

.method private excludeResultNSDecl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1005
    if-eqz p2, :cond_2

    .line 1007
    const-string v1, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/apache/xalan/templates/Stylesheet;->containsExtensionElementURI(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1015
    :cond_0
    :goto_0
    return v0

    .line 1011
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1015
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected accept(Lorg/apache/xalan/templates/XSLTVisitor;)Z
    .locals 1
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;

    .prologue
    .line 1615
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v0

    return v0
.end method

.method addOrReplaceDecls(Lorg/apache/xalan/templates/XMLNSDecl;)V
    .locals 5
    .param p1, "newDecl"    # Lorg/apache/xalan/templates/XMLNSDecl;

    .prologue
    .line 1132
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1134
    .local v2, "n":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1136
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/XMLNSDecl;

    .line 1138
    .local v0, "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1145
    .end local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    :goto_1
    return-void

    .line 1134
    .restart local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1143
    .end local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    :cond_1
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 3
    .param p1, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    .prologue
    .line 295
    if-nez p1, :cond_0

    .line 297
    const-string v1, "ER_NULL_CHILD"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    :cond_0
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-nez v1, :cond_1

    .line 302
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 311
    :goto_0
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 313
    return-object p1

    .line 306
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getLastChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 308
    .local v0, "last":Lorg/apache/xalan/templates/ElemTemplateElement;
    iput-object p1, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_0
.end method

.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 4
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 259
    const-string v2, "ER_NULL_CHILD"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move-object v0, p1

    .line 262
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 264
    .local v0, "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-nez v2, :cond_1

    .line 266
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 275
    :goto_0
    iput-object p0, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 277
    return-object p1

    .line 270
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 272
    .local v1, "last":Lorg/apache/xalan/templates/ElemTemplateElement;
    iput-object v0, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_0
.end method

.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V
    .locals 1
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;

    .prologue
    .line 1649
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    .line 1650
    return-void
.end method

.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .locals 1
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;
    .param p2, "callAttributes"    # Z

    .prologue
    .line 1635
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 1636
    .local v0, "node":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_0
    if-eqz v0, :cond_0

    .line 1639
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1637
    iget-object v0, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_0

    .line 1641
    :cond_0
    return-void
.end method

.method public callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V
    .locals 1
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;

    .prologue
    .line 1623
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->accept(Lorg/apache/xalan/templates/XSLTVisitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1625
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1627
    :cond_0
    return-void
.end method

.method public canAcceptVariables()Z
    .locals 1

    .prologue
    .line 1559
    const/4 v0, 0x1

    return v0
.end method

.method public canStripWhiteSpace()Z
    .locals 2

    .prologue
    .line 1549
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    .line 1550
    .local v0, "sroot":Lorg/apache/xalan/templates/StylesheetRoot;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot;->canStripWhiteSpace()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 1510
    move-object v1, p1

    check-cast v1, Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 1511
    .local v1, "ro":Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCountComposed()I

    move-result v2

    .line 1512
    .local v2, "roPrecedence":I
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCountComposed()I

    move-result v0

    .line 1514
    .local v0, "myPrecedence":I
    if-ge v0, v2, :cond_0

    .line 1515
    const/4 v3, -0x1

    .line 1519
    :goto_0
    return v3

    .line 1516
    :cond_0
    if-le v0, v2, :cond_1

    .line 1517
    const/4 v3, 0x1

    goto :goto_0

    .line 1519
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getUid()I

    move-result v3

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getUid()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_0
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 4
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->resolvePrefixTables()V

    .line 194
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    .line 195
    .local v1, "t":Lorg/apache/xalan/templates/ElemTemplateElement;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v2

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_hasTextLitOnly:Z

    .line 199
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    .line 200
    .local v0, "cstate":Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->pushStackMark()V

    .line 201
    return-void

    .line 195
    .end local v0    # "cstate":Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 982
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 983
    .local v0, "parent":Lorg/apache/xalan/templates/ElemTemplateElement;
    if-eqz v0, :cond_0

    .line 984
    invoke-virtual {v0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 986
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 1
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    .line 209
    .local v0, "cstate":Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->popStackMark()V

    .line 210
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    return-void
.end method

.method public error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 221
    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "themsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ER_ELEMTEMPLATEELEM_ERR"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 0
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 137
    return-void
.end method

.method executeNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 1
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1166
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->executeNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;Ljava/lang/String;)V

    .line 1167
    return-void
.end method

.method executeNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;Ljava/lang/String;)V
    .locals 8
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .param p2, "ignorePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1182
    :try_start_0
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 1184
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v3

    .line 1185
    .local v3, "rhandler":Lorg/apache/xml/serializer/SerializationHandler;
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 1187
    .local v2, "n":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1189
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/XMLNSDecl;

    .line 1191
    .local v0, "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getIsExcluded()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1193
    :cond_0
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v3, v5, v6, v7}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1198
    .end local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "rhandler":Lorg/apache/xml/serializer/SerializationHandler;
    :catch_0
    move-exception v4

    .line 1200
    .local v4, "se":Lorg/xml/sax/SAXException;
    new-instance v5, Ljavax/xml/transform/TransformerException;

    invoke-direct {v5, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1202
    .end local v4    # "se":Lorg/xml/sax/SAXException;
    :cond_2
    return-void
.end method

.method public exprAddChild(Lorg/apache/xpath/ExpressionNode;I)V
    .locals 0
    .param p1, "n"    # Lorg/apache/xpath/ExpressionNode;
    .param p2, "i"    # I

    .prologue
    .line 1590
    check-cast p1, Lorg/apache/xalan/templates/ElemTemplateElement;

    .end local p1    # "n":Lorg/apache/xpath/ExpressionNode;
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 1591
    return-void
.end method

.method public exprGetChild(I)Lorg/apache/xpath/ExpressionNode;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1597
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/ExpressionNode;

    return-object v0
.end method

.method public exprGetNumChildren()I
    .locals 1

    .prologue
    .line 1603
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getLength()I

    move-result v0

    return v0
.end method

.method public exprGetParent()Lorg/apache/xpath/ExpressionNode;
    .locals 1

    .prologue
    .line 1580
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    return-object v0
.end method

.method public exprSetParent(Lorg/apache/xpath/ExpressionNode;)V
    .locals 0
    .param p1, "n"    # Lorg/apache/xpath/ExpressionNode;

    .prologue
    .line 1572
    check-cast p1, Lorg/apache/xalan/templates/ElemTemplateElement;

    .end local p1    # "n":Lorg/apache/xpath/ExpressionNode;
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 1573
    return-void
.end method

.method public getBaseIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 634
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 0

    .prologue
    .line 344
    return-object p0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 700
    iget v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_columnNumber:I

    return v0
.end method

.method public getDOMBackPointer()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 1480
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_DOMBackPointer:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getDeclaredPrefixes()Ljava/util/List;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    return-object v0
.end method

.method public getEndColumnNumber()I
    .locals 1

    .prologue
    .line 687
    iget v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_endColumnNumber:I

    return v0
.end method

.method public getEndLineNumber()I
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_endLineNumber:I

    return v0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 1416
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object v0
.end method

.method public getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 1

    .prologue
    .line 1426
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 2

    .prologue
    .line 1437
    const/4 v0, 0x0

    .line 1439
    .local v0, "lastChild":Lorg/apache/xalan/templates/ElemTemplateElement;
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    .local v1, "node":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_0
    if-eqz v1, :cond_0

    .line 1442
    move-object v0, v1

    .line 1440
    iget-object v1, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_0

    .line 1445
    :cond_0
    return-object v0
.end method

.method public getLastChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 2

    .prologue
    .line 1456
    const/4 v0, 0x0

    .line 1458
    .local v0, "lastChild":Lorg/apache/xalan/templates/ElemTemplateElement;
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    .local v1, "node":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_0
    if-eqz v1, :cond_0

    .line 1461
    move-object v0, v1

    .line 1459
    iget-object v1, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_0

    .line 1464
    :cond_0
    return-object v0
.end method

.method public getLength()I
    .locals 2

    .prologue
    .line 543
    const/4 v0, 0x0

    .line 545
    .local v0, "count":I
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    .local v1, "node":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_0
    if-eqz v1, :cond_0

    .line 548
    add-int/lit8 v0, v0, 0x1

    .line 546
    iget-object v1, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_0

    .line 551
    :cond_0
    return v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 666
    iget v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_lineNumber:I

    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 915
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    .line 917
    .local v3, "nsDecls":Ljava/util/List;
    if-eqz v3, :cond_2

    .line 919
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 920
    .local v2, "n":I
    const-string v4, "#default"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 922
    const-string p1, ""

    .line 925
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 927
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/XMLNSDecl;

    .line 929
    .local v0, "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 930
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    move-result-object v4

    .line 945
    .end local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :goto_1
    return-object v4

    .line 925
    .restart local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 935
    .end local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_2
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eqz v4, :cond_3

    .line 936
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {v4, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 941
    :cond_3
    const-string v4, "xml"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 942
    const-string v4, "http://www.w3.org/XML/1998/namespace"

    goto :goto_1

    .line 945
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "context"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    .line 889
    const-string v0, "ER_CANT_RESOLVE_NSPREFIX"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 891
    return-object v1
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 1327
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object v0
.end method

.method public getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 1

    .prologue
    .line 1389
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "Unknown XSLT Element"

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x1

    return v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    .line 584
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerXSLTemplate()Lorg/apache/xalan/templates/ElemTemplate;
    .locals 3

    .prologue
    .line 594
    move-object v0, p0

    .line 595
    .local v0, "el":Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v1

    .line 596
    .local v1, "type":I
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const/16 v2, 0x13

    if-eq v1, v2, :cond_1

    .line 598
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 599
    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v1

    goto :goto_0

    .line 602
    :cond_1
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplate;

    .end local v0    # "el":Lorg/apache/xalan/templates/ElemTemplateElement;
    return-object v0
.end method

.method public getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 1

    .prologue
    .line 1301
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object v0
.end method

.method public getParentNodeElem()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 1

    .prologue
    .line 1399
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object v0
.end method

.method getPrefixTable()Ljava/util/List;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 3

    .prologue
    .line 1342
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    .local v1, "walker":Lorg/w3c/dom/Node;
    const/4 v0, 0x0

    .line 1344
    .local v0, "prev":Lorg/w3c/dom/Node;
    if-eqz v1, :cond_1

    .line 1345
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 1348
    if-ne v1, p0, :cond_0

    move-object v2, v0

    .line 1352
    :goto_1
    return-object v2

    .line 1346
    :cond_0
    move-object v0, v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    .line 1352
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getPreviousSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 3

    .prologue
    .line 1367
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentNodeElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    .line 1368
    .local v1, "walker":Lorg/apache/xalan/templates/ElemTemplateElement;
    const/4 v0, 0x0

    .line 1370
    .local v0, "prev":Lorg/apache/xalan/templates/ElemTemplateElement;
    if-eqz v1, :cond_1

    .line 1371
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 1374
    if-ne v1, p0, :cond_0

    move-object v2, v0

    .line 1378
    :goto_1
    return-object v2

    .line 1372
    :cond_0
    move-object v0, v1

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    goto :goto_0

    .line 1378
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPublicId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStylesheet()Lorg/apache/xalan/templates/Stylesheet;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v0

    goto :goto_0
.end method

.method public getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v0

    return-object v0
.end method

.method public getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 727
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v0

    .line 728
    .local v0, "sheet":Lorg/apache/xalan/templates/Stylesheet;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xalan/templates/Stylesheet;->getHref()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 1274
    iget v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_docOrderNumber:I

    return v0
.end method

.method public getXSLToken()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, -0x1

    return v0
.end method

.method public getXmlSpace()Z
    .locals 1

    .prologue
    .line 805
    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_defaultSpace:Z

    return v0
.end method

.method public handlesNullPrefixes()Z
    .locals 1

    .prologue
    .line 1657
    const/4 v0, 0x0

    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTextLitOnly()Z
    .locals 1

    .prologue
    .line 622
    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_hasTextLitOnly:Z

    return v0
.end method

.method public hasVariableDecl()Z
    .locals 1

    .prologue
    .line 774
    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_hasVariableDecl:Z

    return v0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 6
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .param p2, "refChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 436
    if-nez p2, :cond_1

    .line 438
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 490
    :cond_0
    return-object p1

    .line 442
    :cond_1
    if-eq p1, p2, :cond_0

    .line 448
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 449
    .local v1, "node":Lorg/w3c/dom/Node;
    const/4 v2, 0x0

    .line 450
    .local v2, "prev":Lorg/w3c/dom/Node;
    const/4 v0, 0x0

    .line 452
    .local v0, "foundit":Z
    :goto_0
    if-eqz v1, :cond_6

    .line 455
    if-ne p1, v1, :cond_3

    .line 457
    if-eqz v2, :cond_2

    move-object v3, v2

    .line 458
    check-cast v3, Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v4, v3, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 462
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 463
    goto :goto_0

    .line 461
    :cond_2
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v3, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_1

    .line 465
    :cond_3
    if-ne p2, v1, :cond_5

    .line 467
    if-eqz v2, :cond_4

    .line 469
    check-cast v2, Lorg/apache/xalan/templates/ElemTemplateElement;

    .end local v2    # "prev":Lorg/w3c/dom/Node;
    move-object v3, p1

    check-cast v3, Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v3, v2, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    :goto_2
    move-object v3, p1

    .line 475
    check-cast v3, Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object v4, p2

    check-cast v4, Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v4, v3, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object v3, p1

    .line 476
    check-cast v3, Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {v3, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 477
    move-object v2, p1

    .line 478
    .restart local v2    # "prev":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 479
    const/4 v0, 0x1

    .line 480
    goto :goto_0

    :cond_4
    move-object v3, p1

    .line 473
    check-cast v3, Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v3, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_2

    .line 482
    :cond_5
    move-object v2, v1

    .line 483
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    .line 486
    :cond_6
    if-nez v0, :cond_0

    .line 487
    new-instance v3, Lorg/w3c/dom/DOMException;

    const/16 v4, 0x8

    const-string v5, "refChild was not found in insertBefore method!"

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3
.end method

.method public isCompiledTemplate()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 567
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 569
    .local v1, "node":Lorg/apache/xalan/templates/ElemTemplateElement;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    if-eqz v1, :cond_0

    .line 571
    iget-object v1, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 569
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 574
    :cond_0
    return-object v1
.end method

.method needToCheckExclude()Z
    .locals 1

    .prologue
    .line 1153
    const/4 v0, 0x0

    return v0
.end method

.method public recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0
    .param p1, "root"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 183
    return-void
.end method

.method public removeChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 3
    .param p1, "childETE"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    .prologue
    const/4 v1, 0x0

    .line 364
    if-eqz p1, :cond_0

    iget-object v2, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eq v2, p0, :cond_1

    :cond_0
    move-object p1, v1

    .line 381
    .end local p1    # "childETE":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_0
    return-object p1

    .line 368
    .restart local p1    # "childETE":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_1
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-ne p1, v2, :cond_2

    .line 369
    iget-object v2, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v2, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 378
    :goto_1
    iput-object v1, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 379
    iput-object v1, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_0

    .line 372
    :cond_2
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPreviousSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 374
    .local v0, "prev":Lorg/apache/xalan/templates/ElemTemplateElement;
    iget-object v2, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v2, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_1
.end method

.method public replaceChild(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 3
    .param p1, "newChildElem"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .param p2, "oldChildElem"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    .prologue
    const/4 v1, 0x0

    .line 508
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v2

    if-eq v2, p0, :cond_1

    :cond_0
    move-object p1, v1

    .line 529
    .end local p1    # "newChildElem":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_0
    return-object p1

    .line 512
    .restart local p1    # "newChildElem":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_1
    invoke-virtual {p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPreviousSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 515
    .local v0, "prev":Lorg/apache/xalan/templates/ElemTemplateElement;
    if-eqz v0, :cond_2

    .line 516
    iput-object p1, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 519
    :cond_2
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-ne v2, p2, :cond_3

    .line 520
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 522
    :cond_3
    iput-object p0, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 523
    iput-object v1, p2, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 524
    iget-object v2, p2, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v2, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 525
    iput-object v1, p2, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_0
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 5
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .param p2, "oldChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 397
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    if-eq v4, p0, :cond_1

    :cond_0
    move-object v0, v3

    .line 421
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    .line 400
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    .local v0, "newChildElem":Lorg/apache/xalan/templates/ElemTemplateElement;
    move-object v1, p2

    .line 401
    check-cast v1, Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 404
    .local v1, "oldChildElem":Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 407
    .local v2, "prev":Lorg/apache/xalan/templates/ElemTemplateElement;
    if-eqz v2, :cond_2

    .line 408
    iput-object v0, v2, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 411
    :cond_2
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-ne v4, v1, :cond_3

    .line 412
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 414
    :cond_3
    iput-object p0, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 415
    iput-object v3, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 416
    iget-object v4, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v4, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 417
    iput-object v3, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_0
.end method

.method public resolvePrefixTables()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1032
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixTable(Ljava/util/List;)V

    .line 1038
    iget-object v11, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    if-eqz v11, :cond_3

    .line 1040
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v9

    .line 1044
    .local v9, "stylesheet":Lorg/apache/xalan/templates/StylesheetRoot;
    iget-object v11, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    .line 1046
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 1048
    iget-object v11, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/XMLNSDecl;

    .line 1049
    .local v0, "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v6

    .line 1050
    .local v6, "prefix":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    move-result-object v10

    .line 1051
    .local v10, "uri":Ljava/lang/String;
    if-nez v10, :cond_0

    .line 1052
    const-string v10, ""

    .line 1053
    :cond_0
    invoke-direct {p0, v6, v10}, Lorg/apache/xalan/templates/ElemTemplateElement;->excludeResultNSDecl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 1056
    .local v8, "shouldExclude":Z
    iget-object v11, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    if-nez v11, :cond_1

    .line 1057
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v11}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixTable(Ljava/util/List;)V

    .line 1059
    :cond_1
    invoke-virtual {v9, v10}, Lorg/apache/xalan/templates/StylesheetRoot;->getNamespaceAliasComposed(Ljava/lang/String;)Lorg/apache/xalan/templates/NamespaceAlias;

    move-result-object v4

    .line 1060
    .local v4, "nsAlias":Lorg/apache/xalan/templates/NamespaceAlias;
    if-eqz v4, :cond_2

    .line 1068
    new-instance v0, Lorg/apache/xalan/templates/XMLNSDecl;

    .end local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    invoke-virtual {v4}, Lorg/apache/xalan/templates/NamespaceAlias;->getStylesheetPrefix()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lorg/apache/xalan/templates/NamespaceAlias;->getResultNamespace()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v11, v12, v8}, Lorg/apache/xalan/templates/XMLNSDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1074
    .restart local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    :goto_1
    iget-object v11, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1046
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1072
    :cond_2
    new-instance v0, Lorg/apache/xalan/templates/XMLNSDecl;

    .end local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    invoke-direct {v0, v6, v10, v8}, Lorg/apache/xalan/templates/XMLNSDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .restart local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    goto :goto_1

    .line 1079
    .end local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    .end local v2    # "i":I
    .end local v3    # "n":I
    .end local v4    # "nsAlias":Lorg/apache/xalan/templates/NamespaceAlias;
    .end local v6    # "prefix":Ljava/lang/String;
    .end local v8    # "shouldExclude":Z
    .end local v9    # "stylesheet":Lorg/apache/xalan/templates/StylesheetRoot;
    .end local v10    # "uri":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentNodeElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v5

    .line 1081
    .local v5, "parent":Lorg/apache/xalan/templates/ElemTemplateElement;
    if-eqz v5, :cond_7

    .line 1085
    iget-object v7, v5, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    .line 1087
    .local v7, "prefixes":Ljava/util/List;
    iget-object v11, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    if-nez v11, :cond_5

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->needToCheckExclude()Z

    move-result v11

    if-nez v11, :cond_5

    .line 1091
    iget-object v11, v5, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    invoke-virtual {p0, v11}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixTable(Ljava/util/List;)V

    .line 1122
    .end local v7    # "prefixes":Ljava/util/List;
    :cond_4
    :goto_2
    return-void

    .line 1097
    .restart local v7    # "prefixes":Ljava/util/List;
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .line 1099
    .restart local v3    # "n":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v3, :cond_4

    .line 1101
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/XMLNSDecl;

    .line 1102
    .restart local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lorg/apache/xalan/templates/ElemTemplateElement;->excludeResultNSDecl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 1105
    .restart local v8    # "shouldExclude":Z
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getIsExcluded()Z

    move-result v11

    if-eq v8, v11, :cond_6

    .line 1107
    new-instance v1, Lorg/apache/xalan/templates/XMLNSDecl;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v11, v12, v8}, Lorg/apache/xalan/templates/XMLNSDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .end local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    .local v1, "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    move-object v0, v1

    .line 1112
    .end local v1    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    .restart local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    :cond_6
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->addOrReplaceDecls(Lorg/apache/xalan/templates/XMLNSDecl;)V

    .line 1099
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1116
    .end local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    .end local v2    # "i":I
    .end local v3    # "n":I
    .end local v7    # "prefixes":Ljava/util/List;
    .end local v8    # "shouldExclude":Z
    :cond_7
    iget-object v11, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    if-nez v11, :cond_4

    .line 1120
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v11}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixTable(Ljava/util/List;)V

    goto :goto_2
.end method

.method public runtimeInit(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 0
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 125
    return-void
.end method

.method public setDOMBackPointer(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "n"    # Lorg/w3c/dom/Node;

    .prologue
    .line 1492
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_DOMBackPointer:Lorg/w3c/dom/Node;

    .line 1493
    return-void
.end method

.method public setEndLocaterInfo(Ljavax/xml/transform/SourceLocator;)V
    .locals 1
    .param p1, "locator"    # Ljavax/xml/transform/SourceLocator;

    .prologue
    .line 749
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v0

    iput v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_endLineNumber:I

    .line 750
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v0

    iput v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_endColumnNumber:I

    .line 751
    return-void
.end method

.method public setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V
    .locals 1
    .param p1, "locator"    # Ljavax/xml/transform/SourceLocator;

    .prologue
    .line 738
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v0

    iput v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_lineNumber:I

    .line 739
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v0

    iput v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_columnNumber:I

    .line 740
    return-void
.end method

.method public setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 0
    .param p1, "p"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    .prologue
    .line 1311
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 1312
    return-void
.end method

.method setPrefixTable(Ljava/util/List;)V
    .locals 0
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 967
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    .line 968
    return-void
.end method

.method public setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V
    .locals 1
    .param p1, "nsSupport"    # Lorg/xml/sax/helpers/NamespaceSupport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 838
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;Z)V

    .line 839
    return-void
.end method

.method public setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;Z)V
    .locals 5
    .param p1, "nsSupport"    # Lorg/xml/sax/helpers/NamespaceSupport;
    .param p2, "excludeXSLDecl"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 856
    invoke-virtual {p1}, Lorg/xml/sax/helpers/NamespaceSupport;->getDeclaredPrefixes()Ljava/util/Enumeration;

    move-result-object v1

    .line 858
    .local v1, "decls":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 860
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 862
    .local v2, "prefix":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    if-nez v4, :cond_1

    .line 863
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    .line 865
    :cond_1
    invoke-virtual {p1, v2}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 867
    .local v3, "uri":Ljava/lang/String;
    if-eqz p2, :cond_2

    const-string v4, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 871
    :cond_2
    new-instance v0, Lorg/apache/xalan/templates/XMLNSDecl;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lorg/apache/xalan/templates/XMLNSDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 873
    .local v0, "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 875
    .end local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "uri":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 1264
    iput p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_docOrderNumber:I

    .line 1265
    return-void
.end method

.method public setXmlSpace(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 790
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_defaultSpace:Z

    .line 791
    return-void

    .line 790
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldStripWhiteSpace(Lorg/apache/xpath/XPathContext;Lorg/w3c/dom/Element;)Z
    .locals 2
    .param p1, "support"    # Lorg/apache/xpath/XPathContext;
    .param p2, "targetElement"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1537
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    .line 1538
    .local v0, "sroot":Lorg/apache/xalan/templates/StylesheetRoot;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/apache/xalan/templates/StylesheetRoot;->shouldStripWhiteSpace(Lorg/apache/xpath/XPathContext;Lorg/w3c/dom/Element;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method unexecuteNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 1
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1214
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->unexecuteNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;Ljava/lang/String;)V

    .line 1215
    return-void
.end method

.method unexecuteNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;Ljava/lang/String;)V
    .locals 6
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .param p2, "ignorePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1231
    :try_start_0
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 1233
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v3

    .line 1234
    .local v3, "rhandler":Lorg/apache/xml/serializer/SerializationHandler;
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 1236
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1238
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/XMLNSDecl;

    .line 1240
    .local v0, "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getIsExcluded()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1242
    :cond_0
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/xml/serializer/SerializationHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1236
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1247
    .end local v0    # "decl":Lorg/apache/xalan/templates/XMLNSDecl;
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "rhandler":Lorg/apache/xml/serializer/SerializationHandler;
    :catch_0
    move-exception v4

    .line 1249
    .local v4, "se":Lorg/xml/sax/SAXException;
    new-instance v5, Ljavax/xml/transform/TransformerException;

    invoke-direct {v5, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1251
    .end local v4    # "se":Lorg/xml/sax/SAXException;
    :cond_2
    return-void
.end method
