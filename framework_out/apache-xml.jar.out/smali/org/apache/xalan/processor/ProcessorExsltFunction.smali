.class public Lorg/apache/xalan/processor/ProcessorExsltFunction;
.super Lorg/apache/xalan/processor/ProcessorTemplateElem;
.source "ProcessorExsltFunction.java"


# static fields
.field static final serialVersionUID:J = 0x21771cf559bd0644L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    return-void
.end method


# virtual methods
.method ancestorIsOk(Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .locals 2
    .param p1, "child"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    .prologue
    .line 176
    :goto_0
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/xalan/templates/ElemExsltFunction;

    if-nez v1, :cond_2

    .line 178
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 179
    .local v0, "parent":Lorg/apache/xalan/templates/ElemTemplateElement;
    instance-of v1, v0, Lorg/apache/xalan/templates/ElemExsltFuncResult;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/apache/xalan/templates/ElemVariable;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/apache/xalan/templates/ElemParam;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/apache/xalan/templates/ElemMessage;

    if-eqz v1, :cond_1

    .line 183
    :cond_0
    const/4 v1, 0x1

    .line 186
    .end local v0    # "parent":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_1
    return v1

    .line 184
    .restart local v0    # "parent":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_1
    move-object p1, v0

    .line 185
    goto :goto_0

    .line 186
    .end local v0    # "parent":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

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
    .line 99
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->appendAndPush(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 101
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    .line 102
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v0

    check-cast p2, Lorg/apache/xalan/templates/ElemTemplate;

    .end local p2    # "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {v0, p2}, Lorg/apache/xalan/templates/Stylesheet;->setTemplate(Lorg/apache/xalan/templates/ElemTemplate;)V

    .line 103
    return-void
.end method

.method public endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
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
    .line 112
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 113
    .local v0, "function":Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {p0, v0, p1}, Lorg/apache/xalan/processor/ProcessorExsltFunction;->validate(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/processor/StylesheetHandler;)V

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
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
    .line 66
    const-string v1, ""

    .line 67
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v3

    instance-of v3, v3, Lorg/apache/xalan/templates/Stylesheet;

    if-nez v3, :cond_0

    .line 69
    const-string v1, "func:function element must be top level."

    .line 70
    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v3}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 72
    :cond_0
    invoke-super/range {p0 .. p5}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 74
    const-string v3, "name"

    invoke-interface {p5, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "val":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 76
    .local v0, "indexOfColon":I
    if-lez v0, :cond_1

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_1
    const-string v1, "func:function name must have namespace"

    .line 87
    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v3}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public validate(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/processor/StylesheetHandler;)V
    .locals 3
    .param p1, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .param p2, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 125
    const-string v0, ""

    .line 126
    .local v0, "msg":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_5

    .line 129
    instance-of v2, p1, Lorg/apache/xalan/templates/ElemExsltFuncResult;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/xalan/templates/ElemFallback;

    if-nez v2, :cond_0

    .line 133
    const-string v0, "func:result has an illegal following sibling (only xsl:fallback allowed)"

    .line 134
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 137
    :cond_0
    instance-of v2, p1, Lorg/apache/xalan/templates/ElemApplyImport;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemApplyTemplates;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemAttribute;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemCallTemplate;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemComment;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemCopy;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemCopyOf;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemElement;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemLiteralResult;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemNumber;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemPI;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemText;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemTextLiteral;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemValueOf;

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/ProcessorExsltFunction;->ancestorIsOk(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 153
    const-string v0, "misplaced literal result in a func:function container."

    .line 154
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 156
    :cond_2
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    .line 157
    .local v1, "nextElem":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_3
    if-nez v1, :cond_6

    .line 159
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    .line 160
    if-nez v1, :cond_4

    .line 161
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p1

    .line 162
    :cond_4
    if-eqz p1, :cond_5

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemExsltFunction;

    if-eqz v2, :cond_3

    .line 167
    .end local v1    # "nextElem":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_5
    return-void

    .line 165
    .restart local v1    # "nextElem":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_6
    move-object p1, v1

    .line 166
    goto :goto_0
.end method
