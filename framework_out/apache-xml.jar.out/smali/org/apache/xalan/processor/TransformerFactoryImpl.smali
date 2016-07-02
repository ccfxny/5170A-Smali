.class public Lorg/apache/xalan/processor/TransformerFactoryImpl;
.super Ljavax/xml/transform/sax/SAXTransformerFactory;
.source "TransformerFactoryImpl.java"


# static fields
.field public static final FEATURE_INCREMENTAL:Ljava/lang/String; = "http://xml.apache.org/xalan/features/incremental"

.field public static final FEATURE_OPTIMIZE:Ljava/lang/String; = "http://xml.apache.org/xalan/features/optimize"

.field public static final FEATURE_SOURCE_LOCATION:Ljava/lang/String; = "http://xml.apache.org/xalan/properties/source-location"

.field public static final XSLT_PROPERTIES:Ljava/lang/String; = "org/apache/xalan/res/XSLTInfo.properties"


# instance fields
.field private m_DOMsystemID:Ljava/lang/String;

.field private m_errorListener:Ljavax/xml/transform/ErrorListener;

.field private m_incremental:Z

.field private m_isSecureProcessing:Z

.field private m_optimize:Z

.field private m_source_location:Z

.field m_uriResolver:Ljavax/xml/transform/URIResolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXTransformerFactory;-><init>()V

    .line 86
    iput-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_DOMsystemID:Ljava/lang/String;

    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_optimize:Z

    .line 490
    iput-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_source_location:Z

    .line 498
    iput-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_incremental:Z

    .line 1004
    new-instance v0, Lorg/apache/xml/utils/DefaultErrorHandler;

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    .line 94
    return-void
.end method


# virtual methods
.method public getAssociatedStylesheet(Ljavax/xml/transform/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;
    .locals 18
    .param p1, "source"    # Ljavax/xml/transform/Source;
    .param p2, "media"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 261
    const/4 v10, 0x0

    .line 262
    .local v10, "isource":Lorg/xml/sax/InputSource;
    const/4 v12, 0x0

    .line 263
    .local v12, "node":Lorg/w3c/dom/Node;
    const/4 v13, 0x0

    .line 265
    .local v13, "reader":Lorg/xml/sax/XMLReader;
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/dom/DOMSource;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    move-object/from16 v4, p1

    .line 267
    check-cast v4, Ljavax/xml/transform/dom/DOMSource;

    .line 269
    .local v4, "dsource":Ljavax/xml/transform/dom/DOMSource;
    invoke-virtual {v4}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v12

    .line 270
    invoke-virtual {v4}, Ljavax/xml/transform/dom/DOMSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    .line 281
    .end local v4    # "dsource":Ljavax/xml/transform/dom/DOMSource;
    .local v3, "baseID":Ljava/lang/String;
    :goto_0
    new-instance v8, Lorg/apache/xml/utils/StylesheetPIHandler;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v8, v3, v0, v1, v2}, Lorg/apache/xml/utils/StylesheetPIHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .local v8, "handler":Lorg/apache/xml/utils/StylesheetPIHandler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lorg/apache/xml/utils/StylesheetPIHandler;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    .line 292
    :cond_0
    if-eqz v12, :cond_2

    .line 294
    :try_start_0
    new-instance v15, Lorg/apache/xml/utils/TreeWalker;

    new-instance v16, Lorg/apache/xml/utils/DOM2Helper;

    invoke-direct/range {v16 .. v16}, Lorg/apache/xml/utils/DOM2Helper;-><init>()V

    move-object/from16 v0, v16

    invoke-direct {v15, v8, v0, v3}, Lorg/apache/xml/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/utils/DOMHelper;Ljava/lang/String;)V

    .line 296
    .local v15, "walker":Lorg/apache/xml/utils/TreeWalker;
    invoke-virtual {v15, v12}, Lorg/apache/xml/utils/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 359
    .end local v15    # "walker":Lorg/apache/xml/utils/TreeWalker;
    :goto_1
    invoke-virtual {v8}, Lorg/apache/xml/utils/StylesheetPIHandler;->getAssociatedStylesheet()Ljavax/xml/transform/Source;

    move-result-object v16

    return-object v16

    .line 274
    .end local v3    # "baseID":Ljava/lang/String;
    .end local v8    # "handler":Lorg/apache/xml/utils/StylesheetPIHandler;
    :cond_1
    invoke-static/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object v10

    .line 275
    invoke-virtual {v10}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "baseID":Ljava/lang/String;
    goto :goto_0

    .line 304
    .restart local v8    # "handler":Lorg/apache/xml/utils/StylesheetPIHandler;
    :cond_2
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v7

    .line 307
    .local v7, "factory":Ljavax/xml/parsers/SAXParserFactory;
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 309
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    move/from16 v16, v0
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v16, :cond_3

    .line 313
    :try_start_2
    const-string v16, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 318
    :cond_3
    :goto_2
    :try_start_3
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v11

    .line 320
    .local v11, "jaxpParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v11}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/AbstractMethodError; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v13

    .line 333
    .end local v7    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v11    # "jaxpParser":Ljavax/xml/parsers/SAXParser;
    :goto_3
    if-nez v13, :cond_4

    .line 335
    :try_start_4
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v13

    .line 339
    :cond_4
    invoke-interface {v13, v8}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 340
    invoke-interface {v13, v10}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    goto :goto_1

    .line 343
    :catch_0
    move-exception v16

    goto :goto_1

    .line 322
    :catch_1
    move-exception v5

    .line 324
    .local v5, "ex":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v16, Lorg/xml/sax/SAXException;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v16
    :try_end_4
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 348
    .end local v5    # "ex":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v14

    .line 350
    .local v14, "se":Lorg/xml/sax/SAXException;
    new-instance v16, Ljavax/xml/transform/TransformerConfigurationException;

    const-string v17, "getAssociatedStylesheets failed"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v14}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16

    .line 326
    .end local v14    # "se":Lorg/xml/sax/SAXException;
    :catch_3
    move-exception v6

    .line 328
    .local v6, "ex1":Ljavax/xml/parsers/FactoryConfigurationError;
    :try_start_5
    new-instance v16, Lorg/xml/sax/SAXException;

    invoke-virtual {v6}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_5
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 353
    .end local v6    # "ex1":Ljavax/xml/parsers/FactoryConfigurationError;
    :catch_4
    move-exception v9

    .line 355
    .local v9, "ioe":Ljava/io/IOException;
    new-instance v16, Ljavax/xml/transform/TransformerConfigurationException;

    const-string v17, "getAssociatedStylesheets failed"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v9}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16

    .line 331
    .end local v9    # "ioe":Ljava/io/IOException;
    :catch_5
    move-exception v16

    goto :goto_3

    .line 330
    :catch_6
    move-exception v16

    goto :goto_3

    .line 315
    .restart local v7    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    :catch_7
    move-exception v16

    goto :goto_2
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 592
    const-string v0, "http://xml.apache.org/xalan/features/incremental"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    new-instance v0, Ljava/lang/Boolean;

    iget-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_incremental:Z

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    .line 602
    :goto_0
    return-object v0

    .line 596
    :cond_0
    const-string v0, "http://xml.apache.org/xalan/features/optimize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    new-instance v0, Ljava/lang/Boolean;

    iget-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_optimize:Z

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_0

    .line 600
    :cond_1
    const-string v0, "http://xml.apache.org/xalan/properties/source-location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 602
    new-instance v0, Ljava/lang/Boolean;

    iget-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_source_location:Z

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_0

    .line 605
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_ATTRIB_VALUE_NOT_RECOGNIZED"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getDOMsystemID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_DOMsystemID:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 440
    if-nez p1, :cond_0

    .line 442
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ER_GET_FEATURE_NULL_NAME"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_0
    const-string v1, "http://javax.xml.transform.dom.DOMResult/feature"

    if-eq v1, p1, :cond_1

    const-string v1, "http://javax.xml.transform.dom.DOMSource/feature"

    if-eq v1, p1, :cond_1

    const-string v1, "http://javax.xml.transform.sax.SAXResult/feature"

    if-eq v1, p1, :cond_1

    const-string v1, "http://javax.xml.transform.sax.SAXSource/feature"

    if-eq v1, p1, :cond_1

    const-string v1, "http://javax.xml.transform.stream.StreamResult/feature"

    if-eq v1, p1, :cond_1

    const-string v1, "http://javax.xml.transform.stream.StreamSource/feature"

    if-eq v1, p1, :cond_1

    const-string v1, "http://javax.xml.transform.sax.SAXTransformerFactory/feature"

    if-eq v1, p1, :cond_1

    const-string v1, "http://javax.xml.transform.sax.SAXTransformerFactory/feature/xmlfilter"

    if-ne v1, p1, :cond_2

    .line 470
    :cond_1
    :goto_0
    return v0

    .line 456
    :cond_2
    const-string v1, "http://javax.xml.transform.dom.DOMResult/feature"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "http://javax.xml.transform.dom.DOMSource/feature"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "http://javax.xml.transform.sax.SAXResult/feature"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "http://javax.xml.transform.sax.SAXSource/feature"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "http://javax.xml.transform.stream.StreamResult/feature"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "http://javax.xml.transform.stream.StreamSource/feature"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "http://javax.xml.transform.sax.SAXTransformerFactory/feature"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "http://javax.xml.transform.sax.SAXTransformerFactory/feature/xmlfilter"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 466
    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 467
    iget-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    goto :goto_0

    .line 470
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    return-object v0
.end method

.method public isSecureProcessing()Z
    .locals 1

    .prologue
    .line 1041
    iget-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    return v0
.end method

.method public newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;
    .locals 16
    .param p1, "source"    # Ljavax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 844
    invoke-interface/range {p1 .. p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v1

    .line 846
    .local v1, "baseID":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 847
    invoke-static {v1}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 851
    :cond_0
    move-object/from16 v0, p1

    instance-of v14, v0, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v14, :cond_2

    move-object/from16 v3, p1

    .line 853
    check-cast v3, Ljavax/xml/transform/dom/DOMSource;

    .line 854
    .local v3, "dsource":Ljavax/xml/transform/dom/DOMSource;
    invoke-virtual {v3}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v11

    .line 856
    .local v11, "node":Lorg/w3c/dom/Node;
    if-eqz v11, :cond_1

    .line 857
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->processFromNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljavax/xml/transform/Templates;

    move-result-object v14

    .line 970
    .end local v3    # "dsource":Ljavax/xml/transform/dom/DOMSource;
    .end local v11    # "node":Lorg/w3c/dom/Node;
    .end local p1    # "source":Ljavax/xml/transform/Source;
    :goto_0
    return-object v14

    .line 860
    .restart local v3    # "dsource":Ljavax/xml/transform/dom/DOMSource;
    .restart local v11    # "node":Lorg/w3c/dom/Node;
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    :cond_1
    const-string v14, "ER_ILLEGAL_DOMSOURCE_INPUT"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 863
    .local v10, "messageStr":Ljava/lang/String;
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 867
    .end local v3    # "dsource":Ljavax/xml/transform/dom/DOMSource;
    .end local v10    # "messageStr":Ljava/lang/String;
    .end local v11    # "node":Lorg/w3c/dom/Node;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplatesHandler()Ljavax/xml/transform/sax/TemplatesHandler;

    move-result-object v2

    .line 868
    .local v2, "builder":Ljavax/xml/transform/sax/TemplatesHandler;
    invoke-interface {v2, v1}, Ljavax/xml/transform/sax/TemplatesHandler;->setSystemId(Ljava/lang/String;)V

    .line 872
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object v8

    .line 873
    .local v8, "isource":Lorg/xml/sax/InputSource;
    invoke-virtual {v8, v1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 874
    const/4 v12, 0x0

    .line 876
    .local v12, "reader":Lorg/xml/sax/XMLReader;
    move-object/from16 v0, p1

    instance-of v14, v0, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v14, :cond_3

    .line 877
    check-cast p1, Ljavax/xml/transform/sax/SAXSource;

    .end local p1    # "source":Ljavax/xml/transform/Source;
    invoke-virtual/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v12

    .line 879
    :cond_3
    if-nez v12, :cond_5

    .line 885
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v7

    .line 888
    .local v7, "factory":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 890
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v14, :cond_4

    .line 894
    :try_start_2
    const-string v14, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/4 v15, 0x1

    invoke-virtual {v7, v14, v15}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 899
    :cond_4
    :goto_1
    :try_start_3
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v9

    .line 901
    .local v9, "jaxpParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v9}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/AbstractMethodError; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v12

    .line 915
    .end local v7    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v9    # "jaxpParser":Ljavax/xml/parsers/SAXParser;
    :cond_5
    :goto_2
    if-nez v12, :cond_6

    .line 916
    :try_start_4
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v12

    .line 921
    :cond_6
    invoke-interface {v12, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 922
    invoke-interface {v12, v8}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 970
    .end local v8    # "isource":Lorg/xml/sax/InputSource;
    .end local v12    # "reader":Lorg/xml/sax/XMLReader;
    :goto_3
    invoke-interface {v2}, Ljavax/xml/transform/sax/TemplatesHandler;->getTemplates()Ljavax/xml/transform/Templates;

    move-result-object v14

    goto :goto_0

    .line 903
    .restart local v8    # "isource":Lorg/xml/sax/InputSource;
    .restart local v12    # "reader":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v5

    .line 905
    .local v5, "ex":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_5
    new-instance v14, Lorg/xml/sax/SAXException;

    invoke-direct {v14, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v14
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 924
    .end local v5    # "ex":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v8    # "isource":Lorg/xml/sax/InputSource;
    .end local v12    # "reader":Lorg/xml/sax/XMLReader;
    :catch_1
    move-exception v13

    .line 926
    .local v13, "se":Lorg/xml/sax/SAXException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v14, :cond_7

    .line 930
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    new-instance v15, Ljavax/xml/transform/TransformerException;

    invoke-direct {v15, v13}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v14, v15}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_6
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    .line 932
    :catch_2
    move-exception v6

    .line 934
    .local v6, "ex1":Ljavax/xml/transform/TransformerConfigurationException;
    throw v6

    .line 907
    .end local v6    # "ex1":Ljavax/xml/transform/TransformerConfigurationException;
    .end local v13    # "se":Lorg/xml/sax/SAXException;
    .restart local v8    # "isource":Lorg/xml/sax/InputSource;
    .restart local v12    # "reader":Lorg/xml/sax/XMLReader;
    :catch_3
    move-exception v6

    .line 909
    .local v6, "ex1":Ljavax/xml/parsers/FactoryConfigurationError;
    :try_start_7
    new-instance v14, Lorg/xml/sax/SAXException;

    invoke-virtual {v6}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 946
    .end local v6    # "ex1":Ljavax/xml/parsers/FactoryConfigurationError;
    .end local v8    # "isource":Lorg/xml/sax/InputSource;
    .end local v12    # "reader":Lorg/xml/sax/XMLReader;
    :catch_4
    move-exception v4

    .line 948
    .local v4, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v14, :cond_8

    .line 952
    :try_start_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    new-instance v15, Ljavax/xml/transform/TransformerException;

    invoke-direct {v15, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v14, v15}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_8
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_7

    .line 953
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 936
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v13    # "se":Lorg/xml/sax/SAXException;
    :catch_5
    move-exception v6

    .line 938
    .local v6, "ex1":Ljavax/xml/transform/TransformerException;
    new-instance v14, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v14, v6}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 943
    .end local v6    # "ex1":Ljavax/xml/transform/TransformerException;
    :cond_7
    new-instance v14, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-virtual {v13}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v13}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 955
    .end local v13    # "se":Lorg/xml/sax/SAXException;
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v6

    .line 957
    .local v6, "ex1":Ljavax/xml/transform/TransformerConfigurationException;
    throw v6

    .line 959
    .end local v6    # "ex1":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_7
    move-exception v6

    .line 961
    .local v6, "ex1":Ljavax/xml/transform/TransformerException;
    new-instance v14, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v14, v6}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 966
    .end local v6    # "ex1":Ljavax/xml/transform/TransformerException;
    :cond_8
    new-instance v14, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v4}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 912
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v8    # "isource":Lorg/xml/sax/InputSource;
    .restart local v12    # "reader":Lorg/xml/sax/XMLReader;
    :catch_8
    move-exception v14

    goto :goto_2

    .line 911
    :catch_9
    move-exception v14

    goto :goto_2

    .line 896
    .restart local v7    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    :catch_a
    move-exception v14

    goto :goto_1
.end method

.method public newTemplatesHandler()Ljavax/xml/transform/sax/TemplatesHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 376
    new-instance v0, Lorg/apache/xalan/processor/StylesheetHandler;

    invoke-direct {v0, p0}, Lorg/apache/xalan/processor/StylesheetHandler;-><init>(Lorg/apache/xalan/processor/TransformerFactoryImpl;)V

    return-object v0
.end method

.method public newTransformer()Ljavax/xml/transform/Transformer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 823
    new-instance v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;

    iget-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    invoke-direct {v0, v1}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;-><init>(Z)V

    return-object v0
.end method

.method public newTransformer(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Transformer;
    .locals 6
    .param p1, "source"    # Ljavax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 776
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object v2

    .line 783
    .local v2, "tmpl":Ljavax/xml/transform/Templates;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 795
    .end local v2    # "tmpl":Ljavax/xml/transform/Templates;
    :goto_0
    return-object v3

    .line 784
    .restart local v2    # "tmpl":Ljavax/xml/transform/Templates;
    :cond_0
    invoke-interface {v2}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    .line 785
    .local v3, "transformer":Ljavax/xml/transform/Transformer;
    iget-object v5, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    invoke-virtual {v3, v5}, Ljavax/xml/transform/Transformer;->setURIResolver(Ljavax/xml/transform/URIResolver;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 788
    .end local v2    # "tmpl":Ljavax/xml/transform/Templates;
    .end local v3    # "transformer":Ljavax/xml/transform/Transformer;
    :catch_0
    move-exception v0

    .line 790
    .local v0, "ex":Ljavax/xml/transform/TransformerConfigurationException;
    iget-object v5, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v5, :cond_1

    .line 794
    :try_start_1
    iget-object v5, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    invoke-interface {v5, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 795
    goto :goto_0

    .line 797
    :catch_1
    move-exception v1

    .line 799
    .local v1, "ex1":Ljavax/xml/transform/TransformerConfigurationException;
    throw v1

    .line 801
    .end local v1    # "ex1":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_2
    move-exception v1

    .line 803
    .local v1, "ex1":Ljavax/xml/transform/TransformerException;
    new-instance v4, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v4, v1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 806
    .end local v1    # "ex1":Ljavax/xml/transform/TransformerException;
    :cond_1
    throw v0
.end method

.method public newTransformerHandler()Ljavax/xml/transform/sax/TransformerHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 755
    new-instance v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;

    iget-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    invoke-direct {v0, v1}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;-><init>(Z)V

    return-object v0
.end method

.method public newTransformerHandler(Ljavax/xml/transform/Source;)Ljavax/xml/transform/sax/TransformerHandler;
    .locals 2
    .param p1, "src"    # Ljavax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 682
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object v0

    .line 683
    .local v0, "templates":Ljavax/xml/transform/Templates;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 685
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTransformerHandler(Ljavax/xml/transform/Templates;)Ljavax/xml/transform/sax/TransformerHandler;

    move-result-object v1

    goto :goto_0
.end method

.method public newTransformerHandler(Ljavax/xml/transform/Templates;)Ljavax/xml/transform/sax/TransformerHandler;
    .locals 5
    .param p1, "templates"    # Ljavax/xml/transform/Templates;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 701
    :try_start_0
    invoke-interface {p1}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/transformer/TransformerImpl;

    .line 703
    .local v3, "transformer":Lorg/apache/xalan/transformer/TransformerImpl;
    iget-object v4, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    invoke-virtual {v3, v4}, Lorg/apache/xalan/transformer/TransformerImpl;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    .line 704
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xalan/transformer/TransformerImpl;->getInputContentHandler(Z)Lorg/xml/sax/ContentHandler;

    move-result-object v2

    check-cast v2, Ljavax/xml/transform/sax/TransformerHandler;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    .end local v3    # "transformer":Lorg/apache/xalan/transformer/TransformerImpl;
    :goto_0
    return-object v2

    .line 709
    :catch_0
    move-exception v0

    .line 711
    .local v0, "ex":Ljavax/xml/transform/TransformerConfigurationException;
    iget-object v4, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v4, :cond_0

    .line 715
    :try_start_1
    iget-object v4, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    invoke-interface {v4, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 716
    const/4 v2, 0x0

    goto :goto_0

    .line 718
    :catch_1
    move-exception v1

    .line 720
    .local v1, "ex1":Ljavax/xml/transform/TransformerConfigurationException;
    throw v1

    .line 722
    .end local v1    # "ex1":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_2
    move-exception v1

    .line 724
    .local v1, "ex1":Ljavax/xml/transform/TransformerException;
    new-instance v4, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v4, v1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 728
    .end local v1    # "ex1":Ljavax/xml/transform/TransformerException;
    :cond_0
    throw v0
.end method

.method public newXMLFilter(Ljavax/xml/transform/Source;)Lorg/xml/sax/XMLFilter;
    .locals 2
    .param p1, "src"    # Ljavax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 622
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object v0

    .line 623
    .local v0, "templates":Ljavax/xml/transform/Templates;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 625
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newXMLFilter(Ljavax/xml/transform/Templates;)Lorg/xml/sax/XMLFilter;

    move-result-object v1

    goto :goto_0
.end method

.method public newXMLFilter(Ljavax/xml/transform/Templates;)Lorg/xml/sax/XMLFilter;
    .locals 3
    .param p1, "templates"    # Ljavax/xml/transform/Templates;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 643
    :try_start_0
    new-instance v2, Lorg/apache/xalan/transformer/TrAXFilter;

    invoke-direct {v2, p1}, Lorg/apache/xalan/transformer/TrAXFilter;-><init>(Ljavax/xml/transform/Templates;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    :goto_0
    return-object v2

    .line 645
    :catch_0
    move-exception v0

    .line 647
    .local v0, "ex":Ljavax/xml/transform/TransformerConfigurationException;
    iget-object v2, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v2, :cond_0

    .line 651
    :try_start_1
    iget-object v2, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    invoke-interface {v2, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 652
    const/4 v2, 0x0

    goto :goto_0

    .line 654
    :catch_1
    move-exception v1

    .line 656
    .local v1, "ex1":Ljavax/xml/transform/TransformerConfigurationException;
    throw v1

    .line 658
    .end local v1    # "ex1":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_2
    move-exception v1

    .line 660
    .local v1, "ex1":Ljavax/xml/transform/TransformerException;
    new-instance v2, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v2, v1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 663
    .end local v1    # "ex1":Ljavax/xml/transform/TransformerException;
    :cond_0
    throw v0
.end method

.method public processFromNode(Lorg/w3c/dom/Node;)Ljavax/xml/transform/Templates;
    .locals 9
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 114
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplatesHandler()Ljavax/xml/transform/sax/TemplatesHandler;

    move-result-object v0

    .line 115
    .local v0, "builder":Ljavax/xml/transform/sax/TemplatesHandler;
    new-instance v5, Lorg/apache/xml/utils/TreeWalker;

    new-instance v7, Lorg/apache/xml/utils/DOM2Helper;

    invoke-direct {v7}, Lorg/apache/xml/utils/DOM2Helper;-><init>()V

    invoke-interface {v0}, Ljavax/xml/transform/sax/TemplatesHandler;->getSystemId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v0, v7, v8}, Lorg/apache/xml/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/utils/DOMHelper;Ljava/lang/String;)V

    .line 119
    .local v5, "walker":Lorg/apache/xml/utils/TreeWalker;
    invoke-virtual {v5, p1}, Lorg/apache/xml/utils/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V

    .line 121
    invoke-interface {v0}, Ljavax/xml/transform/sax/TemplatesHandler;->getTemplates()Ljavax/xml/transform/Templates;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v6

    .line 179
    .end local v0    # "builder":Ljavax/xml/transform/sax/TemplatesHandler;
    .end local v5    # "walker":Lorg/apache/xml/utils/TreeWalker;
    :goto_0
    return-object v6

    .line 123
    :catch_0
    move-exception v3

    .line 125
    .local v3, "se":Lorg/xml/sax/SAXException;
    iget-object v7, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v7, :cond_0

    .line 129
    :try_start_1
    iget-object v7, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    new-instance v8, Ljavax/xml/transform/TransformerException;

    invoke-direct {v8, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v7, v8}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 131
    :catch_1
    move-exception v2

    .line 133
    .local v2, "ex":Ljavax/xml/transform/TransformerConfigurationException;
    throw v2

    .line 135
    .end local v2    # "ex":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_2
    move-exception v2

    .line 137
    .local v2, "ex":Ljavax/xml/transform/TransformerException;
    new-instance v6, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v6, v2}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 148
    .end local v2    # "ex":Ljavax/xml/transform/TransformerException;
    :cond_0
    new-instance v7, Ljavax/xml/transform/TransformerConfigurationException;

    const-string v8, "ER_PROCESSFROMNODE_FAILED"

    invoke-static {v8, v6}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6, v3}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 152
    .end local v3    # "se":Lorg/xml/sax/SAXException;
    :catch_3
    move-exception v4

    .line 155
    .local v4, "tce":Ljavax/xml/transform/TransformerConfigurationException;
    throw v4

    .line 162
    .end local v4    # "tce":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_4
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v7, :cond_1

    .line 168
    :try_start_2
    iget-object v7, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    new-instance v8, Ljavax/xml/transform/TransformerException;

    invoke-direct {v8, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v7, v8}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_2
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_0

    .line 170
    :catch_5
    move-exception v2

    .line 172
    .local v2, "ex":Ljavax/xml/transform/TransformerConfigurationException;
    throw v2

    .line 174
    .end local v2    # "ex":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_6
    move-exception v2

    .line 176
    .local v2, "ex":Ljavax/xml/transform/TransformerException;
    new-instance v6, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v6, v2}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 186
    .end local v2    # "ex":Ljavax/xml/transform/TransformerException;
    :cond_1
    new-instance v7, Ljavax/xml/transform/TransformerConfigurationException;

    const-string v8, "ER_PROCESSFROMNODE_FAILED"

    invoke-static {v8, v6}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6, v1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method processFromNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljavax/xml/transform/Templates;
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "systemID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 227
    iput-object p2, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_DOMsystemID:Ljava/lang/String;

    .line 229
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->processFromNode(Lorg/w3c/dom/Node;)Ljavax/xml/transform/Templates;

    move-result-object v0

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 513
    const-string v0, "http://xml.apache.org/xalan/features/incremental"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 515
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 518
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_incremental:Z

    .line 578
    :goto_0
    return-void

    .line 520
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 523
    new-instance v0, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_incremental:Z

    goto :goto_0

    .line 528
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_BAD_VALUE"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_2
    const-string v0, "http://xml.apache.org/xalan/features/optimize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 533
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 536
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_optimize:Z

    goto :goto_0

    .line 538
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 541
    new-instance v0, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_optimize:Z

    goto :goto_0

    .line 546
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_BAD_VALUE"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_5
    const-string v0, "http://xml.apache.org/xalan/properties/source-location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 557
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 560
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_source_location:Z

    goto :goto_0

    .line 562
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 565
    new-instance v0, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_source_location:Z

    goto/16 :goto_0

    .line 570
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_BAD_VALUE"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_NOT_SUPPORTED"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 3
    .param p1, "listener"    # Ljavax/xml/transform/ErrorListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1027
    if-nez p1, :cond_0

    .line 1028
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_ERRORLISTENER"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1031
    :cond_0
    iput-object p1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    .line 1032
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 404
    if-nez p1, :cond_0

    .line 405
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ER_SET_FEATURE_NULL_NAME"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_0
    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    iput-boolean p2, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    .line 423
    return-void

    .line 418
    :cond_1
    new-instance v0, Ljavax/xml/transform/TransformerConfigurationException;

    const-string v1, "ER_UNSUPPORTED_FEATURE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 0
    .param p1, "resolver"    # Ljavax/xml/transform/URIResolver;

    .prologue
    .line 988
    iput-object p1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    .line 989
    return-void
.end method
