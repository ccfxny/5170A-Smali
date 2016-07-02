.class public Lorg/apache/xalan/processor/ProcessorCharacters;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorCharacters.java"


# static fields
.field static final serialVersionUID:J = 0x77ce38d16b3ae8daL


# instance fields
.field private m_accumulator:Ljava/lang/StringBuffer;

.field protected m_firstBackPointer:Lorg/w3c/dom/Node;

.field private m_xslTextElement:Lorg/apache/xalan/templates/ElemText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_firstBackPointer:Lorg/w3c/dom/Node;

    .line 160
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_accumulator:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public characters(Lorg/apache/xalan/processor/StylesheetHandler;[CII)V
    .locals 1
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "ch"    # [C
    .param p3, "start"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2, p3, p4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 116
    iget-object v0, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_firstBackPointer:Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_firstBackPointer:Lorg/w3c/dom/Node;

    .line 120
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    if-eq p0, v0, :cond_1

    .line 121
    invoke-virtual {p1, p0}, Lorg/apache/xalan/processor/StylesheetHandler;->pushProcessor(Lorg/apache/xalan/processor/XSLTElementProcessor;)V

    .line 122
    :cond_1
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
    .line 150
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/ProcessorCharacters;->startNonText(Lorg/apache/xalan/processor/StylesheetHandler;)V

    .line 151
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/xalan/processor/XSLTElementProcessor;->endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    .line 154
    return-void
.end method

.method setXslTextElement(Lorg/apache/xalan/templates/ElemText;)V
    .locals 0
    .param p1, "xslTextElement"    # Lorg/apache/xalan/templates/ElemText;

    .prologue
    .line 177
    iput-object p1, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_xslTextElement:Lorg/apache/xalan/templates/ElemText;

    .line 178
    return-void
.end method

.method public startNonText(Lorg/apache/xalan/processor/StylesheetHandler;)V
    .locals 8
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 49
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v7

    if-ne p0, v7, :cond_0

    .line 51
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    .line 54
    :cond_0
    iget-object v7, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 56
    .local v3, "nChars":I
    if-lez v3, :cond_1

    iget-object v7, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_xslTextElement:Lorg/apache/xalan/templates/ElemText;

    if-nez v7, :cond_2

    iget-object v7, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_accumulator:Ljava/lang/StringBuffer;

    invoke-static {v7}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(Ljava/lang/StringBuffer;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->isSpacePreserve()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 61
    :cond_2
    new-instance v2, Lorg/apache/xalan/templates/ElemTextLiteral;

    invoke-direct {v2}, Lorg/apache/xalan/templates/ElemTextLiteral;-><init>()V

    .line 63
    .local v2, "elem":Lorg/apache/xalan/templates/ElemTextLiteral;
    iget-object v7, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_firstBackPointer:Lorg/w3c/dom/Node;

    invoke-virtual {v2, v7}, Lorg/apache/xalan/templates/ElemTextLiteral;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    .line 64
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/apache/xalan/templates/ElemTextLiteral;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    .line 67
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/apache/xalan/templates/ElemTextLiteral;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    iget-object v7, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_xslTextElement:Lorg/apache/xalan/templates/ElemText;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_xslTextElement:Lorg/apache/xalan/templates/ElemText;

    invoke-virtual {v7}, Lorg/apache/xalan/templates/ElemText;->getDisableOutputEscaping()Z

    move-result v1

    .line 77
    .local v1, "doe":Z
    :goto_0
    invoke-virtual {v2, v1}, Lorg/apache/xalan/templates/ElemTextLiteral;->setDisableOutputEscaping(Z)V

    .line 78
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lorg/apache/xalan/templates/ElemTextLiteral;->setPreserveSpace(Z)V

    .line 80
    new-array v0, v3, [C

    .line 82
    .local v0, "chars":[C
    iget-object v7, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v6, v3, v0, v6}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 83
    invoke-virtual {v2, v0}, Lorg/apache/xalan/templates/ElemTextLiteral;->setChars([C)V

    .line 85
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v4

    .line 87
    .local v4, "parent":Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {v4, v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 90
    .end local v0    # "chars":[C
    .end local v1    # "doe":Z
    .end local v2    # "elem":Lorg/apache/xalan/templates/ElemTextLiteral;
    .end local v4    # "parent":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_3
    iget-object v7, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 91
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/apache/xalan/processor/ProcessorCharacters;->m_firstBackPointer:Lorg/w3c/dom/Node;

    .line 92
    return-void

    .line 69
    .restart local v2    # "elem":Lorg/apache/xalan/templates/ElemTextLiteral;
    :catch_0
    move-exception v5

    .line 71
    .local v5, "te":Ljavax/xml/transform/TransformerException;
    new-instance v6, Lorg/xml/sax/SAXException;

    invoke-direct {v6, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .end local v5    # "te":Ljavax/xml/transform/TransformerException;
    :cond_4
    move v1, v6

    .line 74
    goto :goto_0
.end method
