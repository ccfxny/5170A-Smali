.class public Lorg/apache/xalan/templates/Stylesheet;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "Stylesheet.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final STYLESHEET_EXT:Ljava/lang/String; = ".lxc"

.field static final serialVersionUID:J = 0x1cf09b35c6c706c0L


# instance fields
.field m_DecimalFormatDeclarations:Ljava/util/Stack;

.field private m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

.field private m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

.field private m_Id:Ljava/lang/String;

.field private m_NonXslTopLevel:Ljava/util/Hashtable;

.field private m_Version:Ljava/lang/String;

.field private m_XmlnsXsl:Ljava/lang/String;

.field private m_attributeSets:Ljava/util/Vector;

.field private m_href:Ljava/lang/String;

.field private m_imports:Ljava/util/Vector;

.field private m_includes:Ljava/util/Vector;

.field private m_isCompatibleMode:Z

.field private m_keyDeclarations:Ljava/util/Vector;

.field private m_output:Ljava/util/Vector;

.field private m_prefix_aliases:Ljava/util/Vector;

.field private m_publicId:Ljava/lang/String;

.field private m_stylesheetParent:Lorg/apache/xalan/templates/Stylesheet;

.field private m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

.field private m_systemId:Ljava/lang/String;

.field private m_templates:Ljava/util/Vector;

.field private m_topLevelVariables:Ljava/util/Vector;

.field private m_whitespacePreservingElements:Ljava/util/Vector;

.field private m_whitespaceStrippingElements:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/Stylesheet;)V
    .locals 1
    .param p1, "parent"    # Lorg/apache/xalan/templates/Stylesheet;

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_isCompatibleMode:Z

    .line 1191
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_href:Ljava/lang/String;

    .line 93
    if-eqz p1, :cond_0

    .line 95
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetParent:Lorg/apache/xalan/templates/Stylesheet;

    .line 96
    invoke-virtual {p1}, Lorg/apache/xalan/templates/Stylesheet;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    .line 98
    :cond_0
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 153
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 157
    .local v0, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 178
    return-void
.end method


# virtual methods
.method protected accept(Lorg/apache/xalan/templates/XSLTVisitor;)Z
    .locals 1
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;

    .prologue
    .line 1512
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitStylesheet(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v0

    return v0
.end method

.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .locals 9
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;
    .param p2, "callAttrs"    # Z

    .prologue
    .line 1389
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getImportCount()I

    move-result v4

    .line 1390
    .local v4, "s":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 1392
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v8

    invoke-virtual {v8, p1}, Lorg/apache/xalan/templates/StylesheetComposed;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1390
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1395
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getIncludeCount()I

    move-result v4

    .line 1396
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    .line 1398
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getInclude(I)Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v8

    invoke-virtual {v8, p1}, Lorg/apache/xalan/templates/Stylesheet;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1396
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1401
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getOutputCount()I

    move-result v4

    .line 1402
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_2

    .line 1404
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getOutput(I)Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    .line 1402
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1409
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getAttributeSetCount()I

    move-result v4

    .line 1410
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_4

    .line 1412
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getAttributeSet(I)Lorg/apache/xalan/templates/ElemAttributeSet;

    move-result-object v0

    .line 1413
    .local v0, "attrSet":Lorg/apache/xalan/templates/ElemAttributeSet;
    invoke-virtual {p1, v0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1415
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/ElemAttributeSet;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1410
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1420
    .end local v0    # "attrSet":Lorg/apache/xalan/templates/ElemAttributeSet;
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getDecimalFormatCount()I

    move-result v4

    .line 1421
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v4, :cond_5

    .line 1423
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getDecimalFormat(I)Lorg/apache/xalan/templates/DecimalFormatProperties;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    .line 1421
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1428
    :cond_5
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getKeyCount()I

    move-result v4

    .line 1429
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v4, :cond_6

    .line 1431
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getKey(I)Lorg/apache/xalan/templates/KeyDeclaration;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    .line 1429
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1436
    :cond_6
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getNamespaceAliasCount()I

    move-result v4

    .line 1437
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v4, :cond_7

    .line 1439
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getNamespaceAlias(I)Lorg/apache/xalan/templates/NamespaceAlias;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    .line 1437
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1444
    :cond_7
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getTemplateCount()I

    move-result v4

    .line 1445
    const/4 v3, 0x0

    :goto_7
    if-ge v3, v4, :cond_9

    .line 1449
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getTemplate(I)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v6

    .line 1450
    .local v6, "template":Lorg/apache/xalan/templates/ElemTemplate;
    invoke-virtual {p1, v6}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1452
    invoke-virtual {v6, p1}, Lorg/apache/xalan/templates/ElemTemplate;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1445
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1455
    .end local v6    # "template":Lorg/apache/xalan/templates/ElemTemplate;
    :catch_0
    move-exception v5

    .line 1457
    .local v5, "te":Ljavax/xml/transform/TransformerException;
    new-instance v8, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v8, v5}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 1463
    .end local v5    # "te":Ljavax/xml/transform/TransformerException;
    :cond_9
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParamCount()I

    move-result v4

    .line 1464
    const/4 v3, 0x0

    :goto_8
    if-ge v3, v4, :cond_b

    .line 1466
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v7

    .line 1467
    .local v7, "var":Lorg/apache/xalan/templates/ElemVariable;
    invoke-virtual {p1, v7}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelVariableOrParamDecl(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1469
    invoke-virtual {v7, p1}, Lorg/apache/xalan/templates/ElemVariable;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1464
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1475
    .end local v7    # "var":Lorg/apache/xalan/templates/ElemVariable;
    :cond_b
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getStripSpaceCount()I

    move-result v4

    .line 1476
    const/4 v3, 0x0

    :goto_9
    if-ge v3, v4, :cond_c

    .line 1478
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getStripSpace(I)Lorg/apache/xalan/templates/WhiteSpaceInfo;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    .line 1476
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1481
    :cond_c
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getPreserveSpaceCount()I

    move-result v4

    .line 1482
    const/4 v3, 0x0

    :goto_a
    if-ge v3, v4, :cond_d

    .line 1484
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getPreserveSpace(I)Lorg/apache/xalan/templates/WhiteSpaceInfo;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    .line 1482
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1487
    :cond_d
    iget-object v8, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    if-eqz v8, :cond_f

    .line 1489
    iget-object v8, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 1490
    .local v2, "elements":Ljava/util/Enumeration;
    :cond_e
    :goto_b
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1492
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 1493
    .local v1, "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {p1, v1}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1495
    invoke-virtual {v1, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    goto :goto_b

    .line 1500
    .end local v1    # "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v2    # "elements":Ljava/util/Enumeration;
    :cond_f
    return-void
.end method

.method public containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 351
    iget-object v2, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    if-eqz v2, :cond_0

    if-nez p2, :cond_1

    .line 362
    :cond_0
    :goto_0
    return v1

    .line 356
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v2}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 358
    iget-object v2, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xalan/templates/Stylesheet;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 359
    const/4 v1, 0x1

    goto :goto_0

    .line 356
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public containsExtensionElementURI(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-nez v0, :cond_0

    .line 272
    const/4 v0, 0x0

    .line 274
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/StringVector;->contains(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAttributeSet(I)Lorg/apache/xalan/templates/ElemAttributeSet;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 885
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 886
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 888
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemAttributeSet;

    return-object v0
.end method

.method public getAttributeSetCount()I
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCompatibleMode()Z
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_isCompatibleMode:Z

    return v0
.end method

.method public getDecimalFormat(I)Lorg/apache/xalan/templates/DecimalFormatProperties;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 615
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 616
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 618
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/DecimalFormatProperties;

    return-object v0
.end method

.method public getDecimalFormat(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/DecimalFormatProperties;
    .locals 5
    .param p1, "name"    # Lorg/apache/xml/utils/QName;

    .prologue
    const/4 v3, 0x0

    .line 584
    iget-object v4, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    if-nez v4, :cond_1

    move-object v0, v3

    .line 597
    :cond_0
    :goto_0
    return-object v0

    .line 587
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getDecimalFormatCount()I

    move-result v2

    .line 589
    .local v2, "n":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 591
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/Stylesheet;->getDecimalFormat(I)Lorg/apache/xalan/templates/DecimalFormatProperties;

    move-result-object v0

    .line 593
    .local v0, "dfp":Lorg/apache/xalan/templates/DecimalFormatProperties;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 589
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "dfp":Lorg/apache/xalan/templates/DecimalFormatProperties;
    :cond_2
    move-object v0, v3

    .line 597
    goto :goto_0
.end method

.method public getDecimalFormatCount()I
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExcludeResultPrefix(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 323
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExcludeResultPrefixCount()I
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtensionElementPrefix(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 245
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionElementPrefixCount()I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1208
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_href:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_Id:Ljava/lang/String;

    return-object v0
.end method

.method public getImport(I)Lorg/apache/xalan/templates/StylesheetComposed;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 480
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 481
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 483
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/StylesheetComposed;

    return-object v0
.end method

.method public getImportCount()I
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInclude(I)Lorg/apache/xalan/templates/Stylesheet;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 532
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 534
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/Stylesheet;

    return-object v0
.end method

.method public getIncludeCount()I
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKey(I)Lorg/apache/xalan/templates/KeyDeclaration;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 831
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 832
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 834
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/KeyDeclaration;

    return-object v0
.end method

.method public getKeyCount()I
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNamespaceAlias(I)Lorg/apache/xalan/templates/NamespaceAlias;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 1133
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1134
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1136
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/NamespaceAlias;

    return-object v0
.end method

.method public getNamespaceAliasCount()I
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1357
    const-string v0, "stylesheet"

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 1335
    const/16 v0, 0x9

    return v0
.end method

.method public getNonXslTopLevel(Lorg/apache/xml/utils/QName;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Lorg/apache/xml/utils/QName;

    .prologue
    .line 1182
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOutput(I)Lorg/apache/xalan/templates/OutputProperties;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 779
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 780
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 782
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/OutputProperties;

    return-object v0
.end method

.method public getOutputCount()I
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParam(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemParam;
    .locals 5
    .param p1, "qname"    # Lorg/apache/xml/utils/QName;

    .prologue
    .line 1030
    iget-object v3, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-eqz v3, :cond_1

    .line 1032
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParamCount()I

    move-result v1

    .line 1034
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1036
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v2

    .line 1037
    .local v2, "var":Lorg/apache/xalan/templates/ElemVariable;
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getXSLToken()I

    move-result v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1039
    check-cast v2, Lorg/apache/xalan/templates/ElemParam;

    .line 1043
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "var":Lorg/apache/xalan/templates/ElemVariable;
    :goto_1
    return-object v2

    .line 1034
    .restart local v0    # "i":I
    .restart local v1    # "n":I
    .restart local v2    # "var":Lorg/apache/xalan/templates/ElemVariable;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1043
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "var":Lorg/apache/xalan/templates/ElemVariable;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getPreserveSpace(I)Lorg/apache/xalan/templates/WhiteSpaceInfo;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 725
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 726
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 728
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/WhiteSpaceInfo;

    return-object v0
.end method

.method public getPreserveSpaceCount()I
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStripSpace(I)Lorg/apache/xalan/templates/WhiteSpaceInfo;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 670
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 671
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 673
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/WhiteSpaceInfo;

    return-object v0
.end method

.method public getStripSpaceCount()I
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStylesheet()Lorg/apache/xalan/templates/Stylesheet;
    .locals 0

    .prologue
    .line 109
    return-object p0
.end method

.method public getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;
    .locals 2

    .prologue
    .line 1318
    move-object v0, p0

    .line 1320
    .local v0, "sheet":Lorg/apache/xalan/templates/Stylesheet;
    :goto_0
    invoke-virtual {v0}, Lorg/apache/xalan/templates/Stylesheet;->isAggregatedType()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1322
    invoke-virtual {v0}, Lorg/apache/xalan/templates/Stylesheet;->getStylesheetParent()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v0

    goto :goto_0

    .line 1325
    :cond_0
    check-cast v0, Lorg/apache/xalan/templates/StylesheetComposed;

    .end local v0    # "sheet":Lorg/apache/xalan/templates/Stylesheet;
    return-object v0
.end method

.method public getStylesheetParent()Lorg/apache/xalan/templates/Stylesheet;
    .locals 1

    .prologue
    .line 1295
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetParent:Lorg/apache/xalan/templates/Stylesheet;

    return-object v0
.end method

.method public getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    return-object v0
.end method

.method public getTemplate(I)Lorg/apache/xalan/templates/ElemTemplate;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1081
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1082
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1084
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplate;

    return-object v0
.end method

.method public getTemplateCount()I
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVariable(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemVariable;
    .locals 5
    .param p1, "qname"    # Lorg/apache/xml/utils/QName;

    .prologue
    .line 962
    iget-object v3, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-eqz v3, :cond_1

    .line 964
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParamCount()I

    move-result v1

    .line 966
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 968
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v2

    .line 969
    .local v2, "var":Lorg/apache/xalan/templates/ElemVariable;
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getXSLToken()I

    move-result v3

    const/16 v4, 0x49

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 975
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "var":Lorg/apache/xalan/templates/ElemVariable;
    :goto_1
    return-object v2

    .line 966
    .restart local v0    # "i":I
    .restart local v1    # "n":I
    .restart local v2    # "var":Lorg/apache/xalan/templates/ElemVariable;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 975
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "var":Lorg/apache/xalan/templates/ElemVariable;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 991
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 992
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 994
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemVariable;

    return-object v0
.end method

.method public getVariableOrParam(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemVariable;
    .locals 4
    .param p1, "qname"    # Lorg/apache/xml/utils/QName;

    .prologue
    .line 934
    iget-object v3, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-eqz v3, :cond_1

    .line 936
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParamCount()I

    move-result v1

    .line 938
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 940
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v2

    .line 942
    .local v2, "var":Lorg/apache/xalan/templates/ElemVariable;
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 947
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "var":Lorg/apache/xalan/templates/ElemVariable;
    :goto_1
    return-object v2

    .line 938
    .restart local v0    # "i":I
    .restart local v1    # "n":I
    .restart local v2    # "var":Lorg/apache/xalan/templates/ElemVariable;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 947
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "var":Lorg/apache/xalan/templates/ElemVariable;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getVariableOrParamCount()I
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_Version:Ljava/lang/String;

    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    .prologue
    .line 1347
    const/16 v0, 0x19

    return v0
.end method

.method public getXmlnsXsl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_XmlnsXsl:Ljava/lang/String;

    return-object v0
.end method

.method public isAggregatedType()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public isRoot()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public replaceTemplate(Lorg/apache/xalan/templates/ElemTemplate;I)V
    .locals 1
    .param p1, "v"    # Lorg/apache/xalan/templates/ElemTemplate;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1375
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1376
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1378
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/Stylesheet;->replaceChild(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 1379
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1380
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/ElemTemplate;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 1381
    return-void
.end method

.method public setAttributeSet(Lorg/apache/xalan/templates/ElemAttributeSet;)V
    .locals 1
    .param p1, "attrSet"    # Lorg/apache/xalan/templates/ElemAttributeSet;

    .prologue
    .line 863
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 865
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    .line 868
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 869
    return-void
.end method

.method public setDecimalFormat(Lorg/apache/xalan/templates/DecimalFormatProperties;)V
    .locals 1
    .param p1, "edf"    # Lorg/apache/xalan/templates/DecimalFormatProperties;

    .prologue
    .line 563
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 564
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    .line 568
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    return-void
.end method

.method public setExcludeResultPrefixes(Lorg/apache/xml/utils/StringVector;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xml/utils/StringVector;

    .prologue
    .line 297
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    .line 298
    return-void
.end method

.method public setExtensionElementPrefixes(Lorg/apache/xml/utils/StringVector;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xml/utils/StringVector;

    .prologue
    .line 225
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    .line 226
    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseIdent"    # Ljava/lang/String;

    .prologue
    .line 1218
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_href:Ljava/lang/String;

    .line 1219
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 384
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_Id:Ljava/lang/String;

    .line 385
    return-void
.end method

.method public setImport(Lorg/apache/xalan/templates/StylesheetComposed;)V
    .locals 1
    .param p1, "v"    # Lorg/apache/xalan/templates/StylesheetComposed;

    .prologue
    .line 458
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 459
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    .line 463
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 464
    return-void
.end method

.method public setInclude(Lorg/apache/xalan/templates/Stylesheet;)V
    .locals 1
    .param p1, "v"    # Lorg/apache/xalan/templates/Stylesheet;

    .prologue
    .line 512
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 513
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    .line 515
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 516
    return-void
.end method

.method public setKey(Lorg/apache/xalan/templates/KeyDeclaration;)V
    .locals 1
    .param p1, "v"    # Lorg/apache/xalan/templates/KeyDeclaration;

    .prologue
    .line 812
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 813
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    .line 815
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 816
    return-void
.end method

.method public setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V
    .locals 2
    .param p1, "locator"    # Ljavax/xml/transform/SourceLocator;

    .prologue
    .line 1229
    if-eqz p1, :cond_1

    .line 1231
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_publicId:Ljava/lang/String;

    .line 1232
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_systemId:Ljava/lang/String;

    .line 1234
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_systemId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1238
    :try_start_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_systemId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_href:Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1247
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    .line 1249
    :cond_1
    return-void

    .line 1240
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setNamespaceAlias(Lorg/apache/xalan/templates/NamespaceAlias;)V
    .locals 1
    .param p1, "na"    # Lorg/apache/xalan/templates/NamespaceAlias;

    .prologue
    .line 1113
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1114
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    .line 1116
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1117
    return-void
.end method

.method public setNonXslTopLevel(Lorg/apache/xml/utils/QName;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Lorg/apache/xml/utils/QName;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1166
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 1167
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    .line 1169
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    return-void
.end method

.method public setOutput(Lorg/apache/xalan/templates/OutputProperties;)V
    .locals 1
    .param p1, "v"    # Lorg/apache/xalan/templates/OutputProperties;

    .prologue
    .line 758
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 760
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    .line 763
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 764
    return-void
.end method

.method public setParam(Lorg/apache/xalan/templates/ElemParam;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xalan/templates/ElemParam;

    .prologue
    .line 1016
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/Stylesheet;->setVariable(Lorg/apache/xalan/templates/ElemVariable;)V

    .line 1017
    return-void
.end method

.method public setPreserveSpaces(Lorg/apache/xalan/templates/WhiteSpaceInfo;)V
    .locals 1
    .param p1, "wsi"    # Lorg/apache/xalan/templates/WhiteSpaceInfo;

    .prologue
    .line 704
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 706
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    .line 709
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 710
    return-void
.end method

.method public setStripSpaces(Lorg/apache/xalan/templates/WhiteSpaceInfo;)V
    .locals 1
    .param p1, "wsi"    # Lorg/apache/xalan/templates/WhiteSpaceInfo;

    .prologue
    .line 649
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 651
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    .line 654
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 655
    return-void
.end method

.method public setStylesheetParent(Lorg/apache/xalan/templates/Stylesheet;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xalan/templates/Stylesheet;

    .prologue
    .line 1306
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetParent:Lorg/apache/xalan/templates/Stylesheet;

    .line 1307
    return-void
.end method

.method public setStylesheetRoot(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xalan/templates/StylesheetRoot;

    .prologue
    .line 1277
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    .line 1278
    return-void
.end method

.method public setTemplate(Lorg/apache/xalan/templates/ElemTemplate;)V
    .locals 1
    .param p1, "v"    # Lorg/apache/xalan/templates/ElemTemplate;

    .prologue
    .line 1061
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1062
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    .line 1064
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1065
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/ElemTemplate;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 1066
    return-void
.end method

.method public setVariable(Lorg/apache/xalan/templates/ElemVariable;)V
    .locals 1
    .param p1, "v"    # Lorg/apache/xalan/templates/ElemVariable;

    .prologue
    .line 917
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 918
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    .line 920
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 921
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 4
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 418
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_Version:Ljava/lang/String;

    .line 419
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_isCompatibleMode:Z

    .line 420
    return-void

    .line 419
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setXmlnsXsl(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_XmlnsXsl:Ljava/lang/String;

    .line 197
    return-void
.end method
