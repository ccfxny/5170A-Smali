.class public Lorg/apache/xalan/processor/ProcessorExsltFuncResult;
.super Lorg/apache/xalan/processor/ProcessorTemplateElem;
.source "ProcessorExsltFuncResult.java"


# static fields
.field static final serialVersionUID:J = 0x598760557a657ab7L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    return-void
.end method


# virtual methods
.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
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
    .line 49
    const-string v1, ""

    .line 51
    .local v1, "msg":Ljava/lang/String;
    invoke-super/range {p0 .. p5}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 52
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 53
    .local v0, "ancestor":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_0
    if-eqz v0, :cond_2

    instance-of v2, v0, Lorg/apache/xalan/templates/ElemExsltFunction;

    if-nez v2, :cond_2

    .line 55
    instance-of v2, v0, Lorg/apache/xalan/templates/ElemVariable;

    if-nez v2, :cond_0

    instance-of v2, v0, Lorg/apache/xalan/templates/ElemParam;

    if-nez v2, :cond_0

    instance-of v2, v0, Lorg/apache/xalan/templates/ElemExsltFuncResult;

    if-eqz v2, :cond_1

    .line 59
    :cond_0
    const-string v1, "func:result cannot appear within a variable, parameter, or another func:result."

    .line 60
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 62
    :cond_1
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_2
    if-nez v0, :cond_3

    .line 66
    const-string v1, "func:result must appear in a func:function element"

    .line 67
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 69
    :cond_3
    return-void
.end method
