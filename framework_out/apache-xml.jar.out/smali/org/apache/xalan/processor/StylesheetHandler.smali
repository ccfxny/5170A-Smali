.class public Lorg/apache/xalan/processor/StylesheetHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "StylesheetHandler.java"

# interfaces
.implements Ljavax/xml/transform/sax/TemplatesHandler;
.implements Lorg/apache/xml/utils/PrefixResolver;
.implements Lorg/apache/xml/utils/NodeConsumer;


# static fields
.field public static final STYPE_IMPORT:I = 0x3

.field public static final STYPE_INCLUDE:I = 0x2

.field public static final STYPE_ROOT:I = 0x1


# instance fields
.field m_baseIdentifiers:Ljava/util/Stack;

.field private m_docOrderCount:I

.field private m_elementID:I

.field private m_elems:Ljava/util/Stack;

.field private m_fragmentID:I

.field private m_fragmentIDString:Ljava/lang/String;

.field private m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

.field private m_importSourceStack:Ljava/util/Stack;

.field private m_importStack:Ljava/util/Stack;

.field private m_incremental:Z

.field m_lastPoppedStylesheet:Lorg/apache/xalan/templates/Stylesheet;

.field m_nsSupportStack:Ljava/util/Stack;

.field private m_optimize:Z

.field private m_originatingNode:Lorg/w3c/dom/Node;

.field private m_parsingComplete:Z

.field private m_prefixMappings:Ljava/util/Vector;

.field private m_processors:Ljava/util/Stack;

.field private m_schema:Lorg/apache/xalan/processor/XSLTSchema;

.field private m_shouldProcess:Z

.field private m_source_location:Z

.field private m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

.field private m_stylesheetLevel:I

.field private m_stylesheetLocatorStack:Ljava/util/Stack;

.field private m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

.field m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

.field private m_stylesheetType:I

.field private m_stylesheets:Ljava/util/Stack;

.field private warnedAboutOldXSLTNamespace:Z


# direct methods
.method public constructor <init>(Lorg/apache/xalan/processor/TransformerFactoryImpl;)V
    .locals 4
    .param p1, "processor"    # Lorg/apache/xalan/processor/TransformerFactoryImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 74
    new-instance v1, Lorg/apache/xpath/compiler/FunctionTable;

    invoke-direct {v1}, Lorg/apache/xpath/compiler/FunctionTable;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    .line 79
    iput-boolean v3, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_optimize:Z

    .line 84
    iput-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_incremental:Z

    .line 89
    iput-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_source_location:Z

    .line 419
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLevel:I

    .line 439
    iput-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_parsingComplete:Z

    .line 498
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    .line 1042
    iput-boolean v3, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    .line 1059
    iput v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elementID:I

    .line 1065
    iput v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_fragmentID:I

    .line 1139
    iput v3, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetType:I

    .line 1166
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    .line 1253
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_processors:Ljava/util/Stack;

    .line 1290
    new-instance v1, Lorg/apache/xalan/processor/XSLTSchema;

    invoke-direct {v1}, Lorg/apache/xalan/processor/XSLTSchema;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_schema:Lorg/apache/xalan/processor/XSLTSchema;

    .line 1307
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    .line 1329
    iput v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_docOrderCount:I

    .line 1369
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_baseIdentifiers:Ljava/util/Stack;

    .line 1438
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    .line 1466
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importStack:Ljava/util/Stack;

    .line 1473
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importSourceStack:Ljava/util/Stack;

    .line 1542
    iput-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->warnedAboutOldXSLTNamespace:Z

    .line 1545
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_nsSupportStack:Ljava/util/Stack;

    .line 1608
    new-instance v1, Lorg/apache/xml/utils/BoolStack;

    invoke-direct {v1}, Lorg/apache/xml/utils/BoolStack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    .line 103
    const-class v0, Lorg/apache/xalan/templates/FuncDocument;

    .line 104
    .local v0, "func":Ljava/lang/Class;
    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    const-string v2, "document"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xpath/compiler/FunctionTable;->installFunction(Ljava/lang/String;Ljava/lang/Class;)I

    .line 108
    const-class v0, Lorg/apache/xalan/templates/FuncFormatNumb;

    .line 110
    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    const-string v2, "format-number"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xpath/compiler/FunctionTable;->installFunction(Ljava/lang/String;Ljava/lang/Class;)I

    .line 112
    const-string v1, "http://xml.apache.org/xalan/features/optimize"

    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_optimize:Z

    .line 114
    const-string v1, "http://xml.apache.org/xalan/features/incremental"

    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_incremental:Z

    .line 116
    const-string v1, "http://xml.apache.org/xalan/properties/source-location"

    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_source_location:Z

    .line 119
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/StylesheetHandler;->init(Lorg/apache/xalan/processor/TransformerFactoryImpl;)V

    .line 121
    return-void
.end method

.method private assertion(ZLjava/lang/String;)V
    .locals 1
    .param p1, "condition"    # Z
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 880
    if-nez p1, :cond_0

    .line 881
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 882
    :cond_0
    return-void
.end method

.method private checkForFragmentID(Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 1076
    iget-boolean v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    if-nez v4, :cond_1

    .line 1078
    if-eqz p1, :cond_1

    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_fragmentIDString:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1080
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 1082
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1084
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    .line 1086
    .local v2, "name":Ljava/lang/String;
    const-string v4, "id"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1088
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 1090
    .local v3, "val":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_fragmentIDString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1092
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    .line 1093
    iget v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elementID:I

    iput v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_fragmentID:I

    .line 1082
    .end local v3    # "val":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1099
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private flushCharacters()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 555
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    .line 557
    .local v0, "elemProcessor":Lorg/apache/xalan/processor/XSLTElementProcessor;
    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {v0, p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->startNonText(Lorg/apache/xalan/processor/StylesheetHandler;)V

    .line 559
    :cond_0
    return-void
.end method

.method private getElemVersion()D
    .locals 10

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    .line 1681
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 1682
    .local v0, "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 1683
    .local v2, "version":D
    :goto_0
    cmpl-double v6, v2, v8

    if-eqz v6, :cond_0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    .line 1686
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXmlVersion()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1692
    :goto_1
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    goto :goto_0

    .line 1688
    :catch_0
    move-exception v1

    .line 1690
    .local v1, "ex":Ljava/lang/Exception;
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    goto :goto_1

    .line 1694
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    cmpl-double v6, v2, v8

    if-nez v6, :cond_2

    move-wide v2, v4

    .end local v2    # "version":D
    :cond_2
    return-wide v2
.end method

.method private stackContains(Ljava/util/Stack;Ljava/lang/String;)Z
    .locals 5
    .param p1, "stack"    # Ljava/util/Stack;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v2

    .line 230
    .local v2, "n":I
    const/4 v0, 0x0

    .line 232
    .local v0, "contains":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 234
    invoke-virtual {p1, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 236
    .local v3, "url2":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 238
    const/4 v0, 0x1

    .line 244
    .end local v3    # "url2":Ljava/lang/String;
    :cond_0
    return v0

    .line 232
    .restart local v3    # "url2":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public characters([CII)V
    .locals 5
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 686
    iget-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    if-nez v2, :cond_1

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v1

    .line 690
    .local v1, "elemProcessor":Lorg/apache/xalan/processor/XSLTElementProcessor;
    invoke-virtual {v1}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v0

    .line 692
    .local v0, "def":Lorg/apache/xalan/processor/XSLTElementDef;
    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 693
    const-string v2, "text()"

    invoke-virtual {v0, v4, v2}, Lorg/apache/xalan/processor/XSLTElementDef;->getProcessorFor(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v1

    .line 695
    :cond_2
    if-nez v1, :cond_3

    .line 699
    invoke-static {p1, p2, p3}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace([CII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 700
    const-string v2, "ER_NONWHITESPACE_NOT_ALLOWED_IN_POSITION"

    invoke-static {v2, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 705
    :cond_3
    invoke-virtual {v1, p0, p1, p2, p3}, Lorg/apache/xalan/processor/XSLTElementProcessor;->characters(Lorg/apache/xalan/processor/StylesheetHandler;[CII)V

    goto :goto_0
.end method

.method createMatchPatternXPath(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "owningTemplate"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v5

    .line 176
    .local v5, "handler":Ljavax/xml/transform/ErrorListener;
    new-instance v0, Lorg/apache/xpath/XPath;

    const/4 v4, 0x1

    iget-object v6, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;Lorg/apache/xpath/compiler/FunctionTable;)V

    .line 179
    .local v0, "xpath":Lorg/apache/xpath/XPath;
    new-instance v1, Lorg/apache/xalan/extensions/ExpressionVisitor;

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xalan/extensions/ExpressionVisitor;-><init>(Lorg/apache/xalan/templates/StylesheetRoot;)V

    invoke-virtual {v0, v0, v1}, Lorg/apache/xpath/XPath;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 180
    return-object v0
.end method

.method public createXPath(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "owningTemplate"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v5

    .line 155
    .local v5, "handler":Ljavax/xml/transform/ErrorListener;
    new-instance v0, Lorg/apache/xpath/XPath;

    const/4 v4, 0x0

    iget-object v6, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;Lorg/apache/xpath/compiler/FunctionTable;)V

    .line 158
    .local v0, "xpath":Lorg/apache/xpath/XPath;
    new-instance v1, Lorg/apache/xalan/extensions/ExpressionVisitor;

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xalan/extensions/ExpressionVisitor;-><init>(Lorg/apache/xalan/templates/StylesheetRoot;)V

    invoke-virtual {v0, v0, v1}, Lorg/apache/xpath/XPath;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 159
    return-object v0
.end method

.method public endDocument()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 468
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 470
    iget v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLevel:I

    if-nez v2, :cond_0

    .line 471
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot;->recompose()V

    .line 476
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    .line 478
    .local v0, "elemProcessor":Lorg/apache/xalan/processor/XSLTElementProcessor;
    if-eqz v0, :cond_1

    .line 479
    invoke-virtual {v0, p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->startNonText(Lorg/apache/xalan/processor/StylesheetHandler;)V

    .line 481
    :cond_1
    iget v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLevel:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLevel:I

    .line 483
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->popSpaceHandling()V

    .line 490
    iget v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLevel:I

    if-gez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_parsingComplete:Z

    .line 496
    return-void

    .line 474
    .end local v0    # "elemProcessor":Lorg/apache/xalan/processor/XSLTElementProcessor;
    :cond_2
    new-instance v2, Ljavax/xml/transform/TransformerException;

    const-string v3, "ER_NO_STYLESHEETROOT"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :catch_0
    move-exception v1

    .line 494
    .local v1, "te":Ljavax/xml/transform/TransformerException;
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 490
    .end local v1    # "te":Ljavax/xml/transform/TransformerException;
    .restart local v0    # "elemProcessor":Lorg/apache/xalan/processor/XSLTElementProcessor;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "rawName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 651
    iget v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elementID:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elementID:I

    .line 653
    iget-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    if-nez v1, :cond_0

    .line 668
    :goto_0
    return-void

    .line 656
    :cond_0
    iget v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elementID:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_fragmentID:I

    if-ne v1, v2, :cond_1

    .line 657
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    .line 659
    :cond_1
    invoke-direct {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->flushCharacters()V

    .line 661
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->popSpaceHandling()V

    .line 663
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    .line 665
    .local v0, "p":Lorg/apache/xalan/processor/XSLTElementProcessor;
    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/xalan/processor/XSLTElementProcessor;->endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->popProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    .line 667
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xml/sax/helpers/NamespaceSupport;->popContext()V

    goto :goto_0
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 545
    return-void
.end method

.method protected error(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 901
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v1

    .line 902
    .local v1, "locator":Lorg/apache/xml/utils/SAXSourceLocator;
    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    invoke-virtual {v4}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 905
    .local v0, "handler":Ljavax/xml/transform/ErrorListener;
    instance-of v4, p2, Ljavax/xml/transform/TransformerException;

    if-nez v4, :cond_1

    .line 907
    if-nez p2, :cond_0

    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, p1, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    .line 914
    .local v2, "pe":Ljavax/xml/transform/TransformerException;
    :goto_0
    if-eqz v0, :cond_2

    .line 918
    :try_start_0
    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 927
    return-void

    .line 907
    .end local v2    # "pe":Ljavax/xml/transform/TransformerException;
    :cond_0
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, p1, v1, p2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    move-object v2, p2

    .line 912
    check-cast v2, Ljavax/xml/transform/TransformerException;

    .restart local v2    # "pe":Ljavax/xml/transform/TransformerException;
    goto :goto_0

    .line 920
    :catch_0
    move-exception v3

    .line 922
    .local v3, "te":Ljavax/xml/transform/TransformerException;
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 926
    .end local v3    # "te":Ljavax/xml/transform/TransformerException;
    :cond_2
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method protected error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 948
    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 950
    .local v0, "formattedMsg":Ljava/lang/String;
    invoke-virtual {p0, v0, p3}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 951
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 5
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 995
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 996
    .local v0, "formattedMsg":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v2

    .line 997
    .local v2, "locator":Lorg/apache/xml/utils/SAXSourceLocator;
    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    invoke-virtual {v4}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    .line 1001
    .local v1, "handler":Ljavax/xml/transform/ErrorListener;
    :try_start_0
    new-instance v4, Ljavax/xml/transform/TransformerException;

    invoke-direct {v4, v0, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v1, v4}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    return-void

    .line 1003
    :catch_0
    move-exception v3

    .line 1005
    .local v3, "te":Ljavax/xml/transform/TransformerException;
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 5
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1023
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1024
    .local v0, "formattedMsg":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v2

    .line 1025
    .local v2, "locator":Lorg/apache/xml/utils/SAXSourceLocator;
    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    invoke-virtual {v4}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    .line 1029
    .local v1, "handler":Ljavax/xml/transform/ErrorListener;
    :try_start_0
    new-instance v4, Ljavax/xml/transform/TransformerException;

    invoke-direct {v4, v0, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v1, v4}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1035
    return-void

    .line 1031
    :catch_0
    move-exception v3

    .line 1033
    .local v3, "te":Ljavax/xml/transform/TransformerException;
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public getBaseIdentifier()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1420
    iget-object v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_baseIdentifiers:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 1424
    .local v0, "base":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1426
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v1

    .line 1428
    .local v1, "locator":Ljavax/xml/transform/SourceLocator;
    if-nez v1, :cond_2

    const-string v0, ""

    .line 1431
    .end local v1    # "locator":Ljavax/xml/transform/SourceLocator;
    :cond_0
    :goto_1
    return-object v0

    .line 1420
    .end local v0    # "base":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_baseIdentifiers:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1428
    .restart local v0    # "base":Ljava/lang/String;
    .restart local v1    # "locator":Ljavax/xml/transform/SourceLocator;
    :cond_2
    invoke-interface {v1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;
    .locals 1

    .prologue
    .line 1262
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_processors:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/processor/XSLTElementProcessor;

    return-object v0
.end method

.method getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 2

    .prologue
    .line 1318
    :try_start_0
    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/ElemTemplateElement;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1322
    :goto_0
    return-object v1

    .line 1320
    :catch_0
    move-exception v0

    .line 1322
    .local v0, "ese":Ljava/util/EmptyStackException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIncremental()Z
    .locals 1

    .prologue
    .line 1714
    iget-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_incremental:Z

    return v0
.end method

.method getLastPoppedStylesheet()Lorg/apache/xalan/templates/Stylesheet;
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_lastPoppedStylesheet:Lorg/apache/xalan/templates/Stylesheet;

    return-object v0
.end method

.method public getLocator()Lorg/apache/xml/utils/SAXSourceLocator;
    .locals 2

    .prologue
    .line 1448
    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1450
    new-instance v0, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct {v0}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>()V

    .line 1452
    .local v0, "locator":Lorg/apache/xml/utils/SAXSourceLocator;
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getDOMsystemID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SAXSourceLocator;->setSystemId(Ljava/lang/String;)V

    .line 1459
    .end local v0    # "locator":Lorg/apache/xml/utils/SAXSourceLocator;
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/utils/SAXSourceLocator;

    move-object v0, v1

    goto :goto_0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "context"    # Lorg/w3c/dom/Node;

    .prologue
    .line 213
    const/4 v0, 0x1

    const-string v1, "can\'t process a context node in StylesheetHandler!"

    invoke-direct {p0, v0, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->assertion(ZLjava/lang/String;)V

    .line 215
    const/4 v0, 0x0

    return-object v0
.end method

.method getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;
    .locals 1

    .prologue
    .line 1572
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_nsSupportStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/helpers/NamespaceSupport;

    return-object v0
.end method

.method public getOptimize()Z
    .locals 1

    .prologue
    .line 1707
    iget-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_optimize:Z

    return v0
.end method

.method public getOriginatingNode()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 1601
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_originatingNode:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method getProcessorFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "rawName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 370
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    .line 371
    .local v0, "currentProcessor":Lorg/apache/xalan/processor/XSLTElementProcessor;
    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v1

    .line 372
    .local v1, "def":Lorg/apache/xalan/processor/XSLTElementDef;
    invoke-virtual {v1, p1, p2}, Lorg/apache/xalan/processor/XSLTElementDef;->getProcessorFor(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v2

    .line 374
    .local v2, "elemProcessor":Lorg/apache/xalan/processor/XSLTElementProcessor;
    if-nez v2, :cond_2

    instance-of v3, v0, Lorg/apache/xalan/processor/ProcessorStylesheetDoc;

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xalan/templates/Stylesheet;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v3, v4, v6

    if-gtz v3, :cond_1

    const-string v3, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    instance-of v3, v0, Lorg/apache/xalan/processor/ProcessorStylesheetElement;

    if-nez v3, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemVersion()D

    move-result-wide v4

    cmpl-double v3, v4, v6

    if-lez v3, :cond_2

    .line 384
    :cond_1
    invoke-virtual {v1, p1, p2}, Lorg/apache/xalan/processor/XSLTElementDef;->getProcessorForUnknown(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v2

    .line 387
    :cond_2
    if-nez v2, :cond_3

    .line 388
    const-string v3, "ER_NOT_ALLOWED_IN_POSITION"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 391
    :cond_3
    return-object v2
.end method

.method public getSchema()Lorg/apache/xalan/processor/XSLTSchema;
    .locals 1

    .prologue
    .line 1301
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_schema:Lorg/apache/xalan/processor/XSLTSchema;

    return-object v0
.end method

.method public getSource_location()Z
    .locals 1

    .prologue
    .line 1721
    iget-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_source_location:Z

    return v0
.end method

.method getStylesheet()Lorg/apache/xalan/templates/Stylesheet;
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/Stylesheet;

    goto :goto_0
.end method

.method public getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    return-object v0
.end method

.method public getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;
    .locals 2

    .prologue
    .line 1197
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    iget-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_optimize:Z

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->setOptimizer(Z)V

    .line 1199
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    iget-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_incremental:Z

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->setIncremental(Z)V

    .line 1200
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    iget-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_source_location:Z

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->setSource_location(Z)V

    .line 1202
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    return-object v0
.end method

.method getStylesheetType()I
    .locals 1

    .prologue
    .line 1149
    iget v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetType:I

    return v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getBaseIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTemplates()Ljavax/xml/transform/Templates;
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    return-object v0
.end method

.method public handlesNullPrefixes()Z
    .locals 1

    .prologue
    .line 1700
    const/4 v0, 0x0

    return v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 724
    iget-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    if-nez v0, :cond_0

    .line 728
    :goto_0
    return-void

    .line 727
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/xalan/processor/XSLTElementProcessor;->ignorableWhitespace(Lorg/apache/xalan/processor/StylesheetHandler;[CII)V

    goto :goto_0
.end method

.method importStackContains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "hrefUrl"    # Ljava/lang/String;

    .prologue
    .line 1506
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importStack:Ljava/util/Stack;

    invoke-direct {p0, v0, p1}, Lorg/apache/xalan/processor/StylesheetHandler;->stackContains(Ljava/util/Stack;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method init(Lorg/apache/xalan/processor/TransformerFactoryImpl;)V
    .locals 2
    .param p1, "processor"    # Lorg/apache/xalan/processor/TransformerFactoryImpl;

    .prologue
    .line 130
    iput-object p1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    .line 133
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_processors:Ljava/util/Stack;

    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_schema:Lorg/apache/xalan/processor/XSLTSchema;

    invoke-virtual {v1}, Lorg/apache/xalan/processor/XSLTSchema;->getElementProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->pushNewNamespaceSupport()V

    .line 138
    return-void
.end method

.method isSpacePreserve()Z
    .locals 1

    .prologue
    .line 1618
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/BoolStack;->peek()Z

    move-result v0

    return v0
.end method

.method public isStylesheetParsingComplete()Z
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_parsingComplete:Z

    return v0
.end method

.method nextUid()I
    .locals 2

    .prologue
    .line 1336
    iget v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_docOrderCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_docOrderCount:I

    return v0
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;

    .prologue
    .line 332
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/xalan/processor/XSLTElementProcessor;->notationDecl(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method peekImportURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1521
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method peekSourceFromURIResolver()Ljavax/xml/transform/Source;
    .locals 1

    .prologue
    .line 1526
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importSourceStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/transform/Source;

    return-object v0
.end method

.method popBaseIndentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1406
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_baseIdentifiers:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method popElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 1

    .prologue
    .line 1362
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object v0
.end method

.method popImportSource()Ljavax/xml/transform/Source;
    .locals 1

    .prologue
    .line 1535
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importSourceStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/transform/Source;

    return-object v0
.end method

.method popImportURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1516
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method popNamespaceSupport()V
    .locals 1

    .prologue
    .line 1561
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_nsSupportStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1562
    return-void
.end method

.method popProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;
    .locals 1

    .prologue
    .line 1281
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_processors:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/processor/XSLTElementProcessor;

    return-object v0
.end method

.method popSpaceHandling()V
    .locals 1

    .prologue
    .line 1626
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/BoolStack;->pop()Z

    .line 1627
    return-void
.end method

.method popStylesheet()Lorg/apache/xalan/templates/Stylesheet;
    .locals 1

    .prologue
    .line 1240
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1241
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1243
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1244
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/Stylesheet;

    iput-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_lastPoppedStylesheet:Lorg/apache/xalan/templates/Stylesheet;

    .line 1247
    :cond_1
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_lastPoppedStylesheet:Lorg/apache/xalan/templates/Stylesheet;

    return-object v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 757
    iget-boolean v5, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    if-nez v5, :cond_0

    .line 813
    :goto_0
    return-void

    .line 769
    :cond_0
    const-string v4, ""

    .local v4, "prefix":Ljava/lang/String;
    const-string v3, ""

    .local v3, "ns":Ljava/lang/String;
    move-object v2, p1

    .line 770
    .local v2, "localName":Ljava/lang/String;
    const/16 v5, 0x3a

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 771
    .local v0, "colon":I
    if-ltz v0, :cond_1

    .line 773
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 774
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 786
    :cond_1
    :try_start_0
    const-string v5, "xalan-doc-cache-off"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "xalan:doc-cache-off"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "doc-cache-off"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "org.apache.xalan.xslt.extensions.Redirect"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 793
    :cond_2
    iget-object v5, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/apache/xalan/templates/ElemForEach;

    if-nez v5, :cond_4

    .line 794
    new-instance v5, Ljavax/xml/transform/TransformerException;

    const-string v6, "xalan:doc-cache-off not allowed here!"

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    :catch_0
    move-exception v5

    .line 811
    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->flushCharacters()V

    .line 812
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2}, Lorg/apache/xalan/processor/XSLTElementProcessor;->processingInstruction(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 797
    :cond_4
    :try_start_1
    iget-object v5, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/ElemForEach;

    .line 799
    .local v1, "elem":Lorg/apache/xalan/templates/ElemForEach;
    const/4 v5, 0x1

    iput-boolean v5, v1, Lorg/apache/xalan/templates/ElemForEach;->m_doc_cache_off:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method pushBaseIndentifier(Ljava/lang/String;)V
    .locals 3
    .param p1, "baseID"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1382
    if-eqz p1, :cond_1

    .line 1384
    const/16 v1, 0x23

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1386
    .local v0, "posOfHash":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 1388
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_fragmentIDString:Ljava/lang/String;

    .line 1389
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    .line 1397
    .end local v0    # "posOfHash":I
    :goto_0
    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_baseIdentifiers:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    return-void

    .line 1392
    .restart local v0    # "posOfHash":I
    :cond_0
    iput-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    goto :goto_0

    .line 1395
    .end local v0    # "posOfHash":I
    :cond_1
    iput-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    goto :goto_0
.end method

.method pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 2
    .param p1, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    .prologue
    .line 1350
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getUid()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1351
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->nextUid()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setUid(I)V

    .line 1353
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    return-void
.end method

.method pushImportSource(Ljavax/xml/transform/Source;)V
    .locals 1
    .param p1, "sourceFromURIResolver"    # Ljavax/xml/transform/Source;

    .prologue
    .line 1493
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importSourceStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    return-void
.end method

.method pushImportURL(Ljava/lang/String;)V
    .locals 1
    .param p1, "hrefUrl"    # Ljava/lang/String;

    .prologue
    .line 1483
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    return-void
.end method

.method pushNewNamespaceSupport()V
    .locals 2

    .prologue
    .line 1552
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_nsSupportStack:Ljava/util/Stack;

    new-instance v1, Lorg/apache/xml/utils/NamespaceSupport2;

    invoke-direct {v1}, Lorg/apache/xml/utils/NamespaceSupport2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1553
    return-void
.end method

.method pushProcessor(Lorg/apache/xalan/processor/XSLTElementProcessor;)V
    .locals 1
    .param p1, "processor"    # Lorg/apache/xalan/processor/XSLTElementProcessor;

    .prologue
    .line 1272
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_processors:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    return-void
.end method

.method pushSpaceHandling(Lorg/xml/sax/Attributes;)V
    .locals 7
    .param p1, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .prologue
    .line 1649
    const-string v4, "xml:space"

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1650
    .local v3, "value":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1652
    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    iget-object v5, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v5}, Lorg/apache/xml/utils/BoolStack;->peekOrFalse()Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    .line 1677
    :goto_0
    return-void

    .line 1654
    :cond_0
    const-string v4, "preserve"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1656
    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    goto :goto_0

    .line 1658
    :cond_1
    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1660
    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    goto :goto_0

    .line 1664
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v1

    .line 1665
    .local v1, "locator":Lorg/apache/xml/utils/SAXSourceLocator;
    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    invoke-virtual {v4}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 1669
    .local v0, "handler":Ljavax/xml/transform/ErrorListener;
    :try_start_0
    new-instance v4, Ljavax/xml/transform/TransformerException;

    const-string v5, "ER_ILLEGAL_XMLSPACE_VALUE"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v4}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1675
    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    iget-object v5, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v5}, Lorg/apache/xml/utils/BoolStack;->peek()Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    goto :goto_0

    .line 1671
    :catch_0
    move-exception v2

    .line 1673
    .local v2, "te":Ljavax/xml/transform/TransformerException;
    new-instance v4, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    throw v4
.end method

.method pushSpaceHandling(Z)V
    .locals 1
    .param p1, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .prologue
    .line 1637
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    .line 1638
    return-void
.end method

.method public pushStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V
    .locals 1
    .param p1, "s"    # Lorg/apache/xalan/templates/Stylesheet;

    .prologue
    .line 1221
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    .line 1222
    check-cast v0, Lorg/apache/xalan/templates/StylesheetRoot;

    iput-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    .line 1224
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 1
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/xalan/processor/XSLTElementProcessor;->resolveEntity(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v0

    return-object v0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 2
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 413
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    new-instance v1, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct {v1, p1}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>(Lorg/xml/sax/Locator;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    return-void
.end method

.method public setOriginatingNode(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "n"    # Lorg/w3c/dom/Node;

    .prologue
    .line 1590
    iput-object p1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_originatingNode:Lorg/w3c/dom/Node;

    .line 1591
    return-void
.end method

.method setStylesheetType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 1160
    iput p1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetType:I

    .line 1161
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseID"    # Ljava/lang/String;

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/StylesheetHandler;->pushBaseIndentifier(Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 832
    iget-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    if-nez v0, :cond_0

    .line 836
    :goto_0
    return-void

    .line 835
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/xalan/processor/XSLTElementProcessor;->skippedEntity(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 431
    iget v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLevel:I

    .line 432
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->pushSpaceHandling(Z)V

    .line 433
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 13
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "rawName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 575
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v11

    .line 576
    .local v11, "nssupport":Lorg/xml/sax/helpers/NamespaceSupport;
    invoke-virtual {v11}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    .line 578
    iget-object v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v9

    .line 580
    .local v9, "n":I
    const/4 v7, 0x0

    .local v7, "i":I
    move v8, v7

    .end local v7    # "i":I
    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 582
    iget-object v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "i":I
    .restart local v7    # "i":I
    invoke-virtual {v2, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 583
    .local v12, "prefix":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v2, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 584
    .local v10, "nsURI":Ljava/lang/String;
    invoke-virtual {v11, v12, v10}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 580
    add-int/lit8 v7, v7, 0x1

    move v8, v7

    .end local v7    # "i":I
    .restart local v8    # "i":I
    goto :goto_0

    .line 587
    .end local v10    # "nsURI":Ljava/lang/String;
    .end local v12    # "prefix":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    .line 589
    iget v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elementID:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elementID:I

    .line 611
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->checkForFragmentID(Lorg/xml/sax/Attributes;)V

    .line 613
    iget-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    if-nez v2, :cond_1

    .line 634
    :goto_1
    return-void

    .line 616
    :cond_1
    invoke-direct {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->flushCharacters()V

    .line 618
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->pushSpaceHandling(Lorg/xml/sax/Attributes;)V

    .line 620
    invoke-virtual/range {p0 .. p3}, Lorg/apache/xalan/processor/StylesheetHandler;->getProcessorFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v1

    .line 623
    .local v1, "elemProcessor":Lorg/apache/xalan/processor/XSLTElementProcessor;
    if-eqz v1, :cond_2

    .line 625
    invoke-virtual {p0, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->pushProcessor(Lorg/apache/xalan/processor/XSLTElementProcessor;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 626
    invoke-virtual/range {v1 .. v6}, Lorg/apache/xalan/processor/XSLTElementProcessor;->startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 630
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    .line 631
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->popSpaceHandling()V

    goto :goto_1
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 523
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 524
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 525
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "notationName"    # Ljava/lang/String;

    .prologue
    .line 348
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/processor/XSLTElementProcessor;->unparsedEntityDecl(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 854
    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 855
    .local v0, "formattedMsg":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v2

    .line 856
    .local v2, "locator":Lorg/apache/xml/utils/SAXSourceLocator;
    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    invoke-virtual {v4}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    .line 860
    .local v1, "handler":Ljavax/xml/transform/ErrorListener;
    if-eqz v1, :cond_0

    .line 861
    :try_start_0
    new-instance v4, Ljavax/xml/transform/TransformerException;

    invoke-direct {v4, v0, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v1, v4}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    :cond_0
    return-void

    .line 863
    :catch_0
    move-exception v3

    .line 865
    .local v3, "te":Ljavax/xml/transform/TransformerException;
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 5
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 967
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 968
    .local v0, "formattedMsg":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v2

    .line 969
    .local v2, "locator":Lorg/apache/xml/utils/SAXSourceLocator;
    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    invoke-virtual {v4}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    .line 973
    .local v1, "handler":Ljavax/xml/transform/ErrorListener;
    :try_start_0
    new-instance v4, Ljavax/xml/transform/TransformerException;

    invoke-direct {v4, v0, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v1, v4}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    return-void

    .line 975
    :catch_0
    move-exception v3

    .line 977
    .local v3, "te":Ljavax/xml/transform/TransformerException;
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method
