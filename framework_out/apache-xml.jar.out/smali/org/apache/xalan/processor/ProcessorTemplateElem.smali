.class public Lorg/apache/xalan/processor/ProcessorTemplateElem;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorTemplateElem.java"


# static fields
.field static final serialVersionUID:J = 0x73cf5fd4c29a2a83L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method protected appendAndPush(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 1
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 104
    .local v0, "parent":Lorg/apache/xalan/templates/ElemTemplateElement;
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 107
    invoke-virtual {p1, p2}, Lorg/apache/xalan/processor/StylesheetHandler;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 109
    :cond_0
    return-void
.end method

.method public endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xalan/processor/XSLTElementProcessor;->endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setEndLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    .line 125
    return-void
.end method

.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 9
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-super/range {p0 .. p5}, Lorg/apache/xalan/processor/XSLTElementProcessor;->startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v2

    .line 58
    .local v2, "def":Lorg/apache/xalan/processor/XSLTElementDef;
    invoke-virtual {v2}, Lorg/apache/xalan/processor/XSLTElementDef;->getClassObject()Ljava/lang/Class;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 59
    .local v1, "classObject":Ljava/lang/Class;
    const/4 v3, 0x0

    .line 63
    .local v3, "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object v3, v0

    .line 65
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/apache/xalan/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    .line 66
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/apache/xalan/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    .line 67
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    :goto_0
    :try_start_2
    invoke-virtual {p0, p1, p4, p5, v3}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 79
    invoke-virtual {p0, p1, v3}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->appendAndPush(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 85
    return-void

    .line 69
    :catch_0
    move-exception v5

    .line 71
    .local v5, "ie":Ljava/lang/InstantiationException;
    const-string v7, "ER_FAILED_CREATING_ELEMTMPL"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8, v5}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 81
    .end local v1    # "classObject":Ljava/lang/Class;
    .end local v2    # "def":Lorg/apache/xalan/processor/XSLTElementDef;
    .end local v3    # "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v5    # "ie":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v6

    .line 83
    .local v6, "te":Ljavax/xml/transform/TransformerException;
    new-instance v7, Lorg/xml/sax/SAXException;

    invoke-direct {v7, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 73
    .end local v6    # "te":Ljavax/xml/transform/TransformerException;
    .restart local v1    # "classObject":Ljava/lang/Class;
    .restart local v2    # "def":Lorg/apache/xalan/processor/XSLTElementDef;
    .restart local v3    # "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    :catch_2
    move-exception v4

    .line 75
    .local v4, "iae":Ljava/lang/IllegalAccessException;
    :try_start_3
    const-string v7, "ER_FAILED_CREATING_ELEMTMPL"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8, v4}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
