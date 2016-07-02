.class public Lorg/apache/xalan/transformer/TrAXFilter;
.super Lorg/xml/sax/helpers/XMLFilterImpl;
.source "TrAXFilter.java"


# instance fields
.field private m_templates:Ljavax/xml/transform/Templates;

.field private m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;


# direct methods
.method public constructor <init>(Ljavax/xml/transform/Templates;)V
    .locals 1
    .param p1, "templates"    # Ljavax/xml/transform/Templates;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_templates:Ljavax/xml/transform/Templates;

    .line 61
    invoke-interface {p1}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/transformer/TransformerImpl;

    iput-object v0, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    .line 62
    return-void
.end method

.method private setupParse()V
    .locals 5

    .prologue
    .line 202
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TrAXFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 203
    .local v1, "p":Lorg/xml/sax/XMLReader;
    if-nez v1, :cond_0

    .line 204
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "ER_NO_PARENT_FOR_FILTER"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 207
    :cond_0
    iget-object v2, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getInputContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    .line 210
    .local v0, "ch":Lorg/xml/sax/ContentHandler;
    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 211
    invoke-interface {v1, p0}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 212
    invoke-interface {v1, p0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 213
    invoke-interface {v1, p0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 214
    return-void
.end method


# virtual methods
.method public getTransformer()Lorg/apache/xalan/transformer/TransformerImpl;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    return-object v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TrAXFilter;->parse(Lorg/xml/sax/InputSource;)V

    .line 190
    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 10
    .param p1, "input"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TrAXFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v7

    if-nez v7, :cond_2

    .line 113
    const/4 v6, 0x0

    .line 117
    .local v6, "reader":Lorg/xml/sax/XMLReader;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 119
    .local v3, "factory":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 121
    iget-object v7, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v7}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/xalan/templates/StylesheetRoot;->isSecureProcessing()Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_3

    move-result v7

    if-eqz v7, :cond_0

    .line 123
    :try_start_1
    const-string v7, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_3

    .line 128
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 130
    .local v4, "jaxpParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v6

    .line 141
    .end local v3    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v4    # "jaxpParser":Ljavax/xml/parsers/SAXParser;
    :goto_1
    if-nez v6, :cond_1

    .line 142
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 147
    .local v5, "parent":Lorg/xml/sax/XMLReader;
    :goto_2
    :try_start_3
    const-string v7, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v8, 0x1

    invoke-interface {v5, v7, v8}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2

    .line 152
    :goto_3
    invoke-virtual {p0, v5}, Lorg/apache/xalan/transformer/TrAXFilter;->setParent(Lorg/xml/sax/XMLReader;)V

    .line 159
    .end local v5    # "parent":Lorg/xml/sax/XMLReader;
    .end local v6    # "reader":Lorg/xml/sax/XMLReader;
    :goto_4
    iget-object v7, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v7}, Lorg/apache/xalan/transformer/TransformerImpl;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v7

    if-nez v7, :cond_3

    .line 161
    new-instance v7, Lorg/xml/sax/SAXException;

    const-string v8, "ER_CANNOT_CALL_PARSE"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 132
    .restart local v6    # "reader":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v1

    .line 133
    .local v1, "ex":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v7, Lorg/xml/sax/SAXException;

    invoke-direct {v7, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 134
    .end local v1    # "ex":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v2

    .line 135
    .local v2, "ex1":Ljavax/xml/parsers/FactoryConfigurationError;
    new-instance v7, Lorg/xml/sax/SAXException;

    invoke-virtual {v2}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 144
    .end local v2    # "ex1":Ljavax/xml/parsers/FactoryConfigurationError;
    :cond_1
    move-object v5, v6

    .restart local v5    # "parent":Lorg/xml/sax/XMLReader;
    goto :goto_2

    .line 157
    .end local v5    # "parent":Lorg/xml/sax/XMLReader;
    .end local v6    # "reader":Lorg/xml/sax/XMLReader;
    :cond_2
    invoke-direct {p0}, Lorg/apache/xalan/transformer/TrAXFilter;->setupParse()V

    goto :goto_4

    .line 164
    :cond_3
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TrAXFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v7

    invoke-interface {v7, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 165
    iget-object v7, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v7}, Lorg/apache/xalan/transformer/TransformerImpl;->getExceptionThrown()Ljava/lang/Exception;

    move-result-object v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_5

    .line 168
    instance-of v7, v0, Lorg/xml/sax/SAXException;

    if-eqz v7, :cond_4

    .line 169
    check-cast v0, Lorg/xml/sax/SAXException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 171
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v7, Lorg/xml/sax/SAXException;

    invoke-direct {v7, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 173
    :cond_5
    return-void

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "parent":Lorg/xml/sax/XMLReader;
    .restart local v6    # "reader":Lorg/xml/sax/XMLReader;
    :catch_2
    move-exception v7

    goto :goto_3

    .line 138
    .end local v5    # "parent":Lorg/xml/sax/XMLReader;
    :catch_3
    move-exception v7

    goto :goto_1

    .line 136
    :catch_4
    move-exception v7

    goto :goto_1

    .line 125
    .restart local v3    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    :catch_5
    move-exception v7

    goto :goto_0
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 1
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 228
    return-void
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 1
    .param p1, "handler"    # Ljavax/xml/transform/ErrorListener;

    .prologue
    .line 232
    iget-object v0, p0, Lorg/apache/xalan/transformer/TrAXFilter;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->setErrorListener(Ljavax/xml/transform/ErrorListener;)V

    .line 233
    return-void
.end method

.method public setParent(Lorg/xml/sax/XMLReader;)V
    .locals 1
    .param p1, "parent"    # Lorg/xml/sax/XMLReader;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->setParent(Lorg/xml/sax/XMLReader;)V

    .line 88
    invoke-interface {p1}, Lorg/xml/sax/XMLReader;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {p1}, Lorg/xml/sax/XMLReader;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TrAXFilter;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 94
    :cond_0
    invoke-direct {p0}, Lorg/apache/xalan/transformer/TrAXFilter;->setupParse()V

    .line 95
    return-void
.end method
