.class public Lorg/apache/xalan/templates/ElemExtensionDecl;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemExtensionDecl.java"


# static fields
.field static final serialVersionUID:J = -0x411ff5272262a845L


# instance fields
.field private m_elements:Lorg/apache/xml/utils/StringVector;

.field private m_functions:Lorg/apache/xml/utils/StringVector;

.field private m_prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    .line 52
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_prefix:Ljava/lang/String;

    .line 78
    new-instance v0, Lorg/apache/xml/utils/StringVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/StringVector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    .line 134
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    .line 48
    return-void
.end method


# virtual methods
.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 19
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-super/range {p0 .. p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 202
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemExtensionDecl;->getPrefix()Ljava/lang/String;

    move-result-object v10

    .line 203
    .local v10, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/apache/xalan/templates/ElemExtensionDecl;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, "declNamespace":Ljava/lang/String;
    const/4 v9, 0x0

    .line 205
    .local v9, "lang":Ljava/lang/String;
    const/4 v13, 0x0

    .line 206
    .local v13, "srcURL":Ljava/lang/String;
    const/4 v11, 0x0

    .line 207
    .local v11, "scriptSrc":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 208
    new-instance v15, Ljavax/xml/transform/TransformerException;

    const-string v16, "ER_NO_NAMESPACE_DECL"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v10, v17, v18

    invoke-static/range {v16 .. v17}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 210
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemExtensionDecl;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v3

    .local v3, "child":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_0
    if-eqz v3, :cond_2

    .line 213
    const/16 v15, 0x56

    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    move-object v12, v3

    .line 215
    check-cast v12, Lorg/apache/xalan/templates/ElemExtensionScript;

    .line 216
    .local v12, "sdecl":Lorg/apache/xalan/templates/ElemExtensionScript;
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemExtensionScript;->getLang()Ljava/lang/String;

    move-result-object v9

    .line 217
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemExtensionScript;->getSrc()Ljava/lang/String;

    move-result-object v13

    .line 218
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemExtensionScript;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v4

    .line 219
    .local v4, "childOfSDecl":Lorg/apache/xalan/templates/ElemTemplateElement;
    if-eqz v4, :cond_1

    .line 221
    const/16 v15, 0x4e

    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    move-object v14, v4

    .line 224
    check-cast v14, Lorg/apache/xalan/templates/ElemTextLiteral;

    .line 225
    .local v14, "tl":Lorg/apache/xalan/templates/ElemTextLiteral;
    invoke-virtual {v14}, Lorg/apache/xalan/templates/ElemTextLiteral;->getChars()[C

    move-result-object v2

    .line 226
    .local v2, "chars":[C
    new-instance v11, Ljava/lang/String;

    .end local v11    # "scriptSrc":Ljava/lang/String;
    invoke-direct {v11, v2}, Ljava/lang/String;-><init>([C)V

    .line 227
    .restart local v11    # "scriptSrc":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_1

    .line 228
    const/4 v11, 0x0

    .line 211
    .end local v2    # "chars":[C
    .end local v4    # "childOfSDecl":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v12    # "sdecl":Lorg/apache/xalan/templates/ElemExtensionScript;
    .end local v14    # "tl":Lorg/apache/xalan/templates/ElemTextLiteral;
    :cond_1
    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v3

    goto :goto_0

    .line 233
    :cond_2
    if-nez v9, :cond_3

    .line 234
    const-string v9, "javaclass"

    .line 235
    :cond_3
    const-string v15, "javaclass"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    if-eqz v11, :cond_4

    .line 236
    new-instance v15, Ljavax/xml/transform/TransformerException;

    const-string v16, "ER_ELEM_CONTENT_NOT_ALLOWED"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v11, v17, v18

    invoke-static/range {v16 .. v17}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 240
    :cond_4
    const/4 v7, 0x0

    .line 241
    .local v7, "extNsSpt":Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensionNamespacesManager()Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    move-result-object v6

    .line 242
    .local v6, "extNsMgr":Lorg/apache/xalan/extensions/ExtensionNamespacesManager;
    invoke-virtual {v6}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->getExtensions()Ljava/util/Vector;

    move-result-object v15

    invoke-virtual {v6, v5, v15}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 245
    const-string v15, "javaclass"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 247
    if-nez v13, :cond_7

    .line 249
    invoke-virtual {v6, v5}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->defineJavaNamespace(Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    move-result-object v7

    .line 265
    :cond_5
    :goto_1
    if-eqz v7, :cond_6

    .line 266
    invoke-virtual {v6, v7}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->registerExtension(Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;)V

    .line 267
    :cond_6
    return-void

    .line 251
    :cond_7
    invoke-virtual {v6}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->getExtensions()Ljava/util/Vector;

    move-result-object v15

    invoke-virtual {v6, v13, v15}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 254
    invoke-virtual {v6, v5, v13}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->defineJavaNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    move-result-object v7

    goto :goto_1

    .line 259
    :cond_8
    const-string v8, "org.apache.xalan.extensions.ExtensionHandlerGeneral"

    .line 260
    .local v8, "handler":Ljava/lang/String;
    const/4 v15, 0x7

    new-array v1, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v1, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    move-object/from16 v16, v0

    aput-object v16, v1, v15

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    move-object/from16 v16, v0

    aput-object v16, v1, v15

    const/4 v15, 0x3

    aput-object v9, v1, v15

    const/4 v15, 0x4

    aput-object v13, v1, v15

    const/4 v15, 0x5

    aput-object v11, v1, v15

    const/4 v15, 0x6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemExtensionDecl;->getSystemId()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v15

    .line 262
    .local v1, "args":[Ljava/lang/Object;
    new-instance v7, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    .end local v7    # "extNsSpt":Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    invoke-direct {v7, v5, v8, v1}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .restart local v7    # "extNsSpt":Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    goto :goto_1
.end method

.method public getElement(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElementCount()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getElements()Lorg/apache/xml/utils/StringVector;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    return-object v0
.end method

.method public getFunction(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFunctionCount()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFunctions()Lorg/apache/xml/utils/StringVector;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    .prologue
    .line 196
    const/16 v0, 0x55

    return v0
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
    .line 368
    return-void
.end method

.method public setElements(Lorg/apache/xml/utils/StringVector;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xml/utils/StringVector;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_elements:Lorg/apache/xml/utils/StringVector;

    .line 145
    return-void
.end method

.method public setFunctions(Lorg/apache/xml/utils/StringVector;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xml/utils/StringVector;

    .prologue
    .line 88
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_functions:Lorg/apache/xml/utils/StringVector;

    .line 89
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemExtensionDecl;->m_prefix:Ljava/lang/String;

    .line 63
    return-void
.end method
