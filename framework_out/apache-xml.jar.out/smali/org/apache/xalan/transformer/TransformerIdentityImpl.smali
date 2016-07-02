.class public Lorg/apache/xalan/transformer/TransformerIdentityImpl;
.super Ljavax/xml/transform/Transformer;
.source "TransformerIdentityImpl.java"

# interfaces
.implements Ljavax/xml/transform/sax/TransformerHandler;
.implements Lorg/xml/sax/ext/DeclHandler;


# instance fields
.field m_URIResolver:Ljavax/xml/transform/URIResolver;

.field private m_errorListener:Ljavax/xml/transform/ErrorListener;

.field m_flushedStartDoc:Z

.field m_foundFirstElement:Z

.field private m_isSecureProcessing:Z

.field private m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

.field private m_outputStream:Ljava/io/FileOutputStream;

.field private m_params:Ljava/util/Hashtable;

.field private m_result:Ljavax/xml/transform/Result;

.field private m_resultContentHandler:Lorg/xml/sax/ContentHandler;

.field private m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

.field private m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

.field private m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private m_serializer:Lorg/apache/xml/serializer/Serializer;

.field private m_systemID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;-><init>(Z)V

    .line 99
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "isSecureProcessing"    # Z

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljavax/xml/transform/Transformer;-><init>()V

    .line 923
    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    .line 1428
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    .line 1461
    new-instance v0, Lorg/apache/xml/utils/DefaultErrorHandler;

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    .line 1480
    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_isSecureProcessing:Z

    .line 88
    new-instance v0, Lorg/apache/xalan/templates/OutputProperties;

    const-string v1, "xml"

    invoke-direct {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    .line 89
    iput-boolean p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_isSecureProcessing:Z

    .line 90
    return-void
.end method

.method private createResultContentHandler(Ljavax/xml/transform/Result;)V
    .locals 20
    .param p1, "outputTarget"    # Ljavax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 183
    move-object/from16 v0, p1

    instance-of v15, v0, Ljavax/xml/transform/sax/SAXResult;

    if-eqz v15, :cond_4

    move-object/from16 v11, p1

    .line 185
    check-cast v11, Ljavax/xml/transform/sax/SAXResult;

    .line 187
    .local v11, "saxResult":Ljavax/xml/transform/sax/SAXResult;
    invoke-virtual {v11}, Ljavax/xml/transform/sax/SAXResult;->getHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    .line 188
    invoke-virtual {v11}, Ljavax/xml/transform/sax/SAXResult;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 190
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v15, v15, Lorg/apache/xml/serializer/Serializer;

    if-eqz v15, :cond_0

    .line 194
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v15, Lorg/apache/xml/serializer/Serializer;

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    .line 307
    .end local v11    # "saxResult":Ljavax/xml/transform/sax/SAXResult;
    .end local p1    # "outputTarget":Ljavax/xml/transform/Result;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v15, v15, Lorg/xml/sax/DTDHandler;

    if-eqz v15, :cond_1

    .line 308
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v15, Lorg/xml/sax/DTDHandler;

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 310
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v15, v15, Lorg/xml/sax/ext/DeclHandler;

    if-eqz v15, :cond_2

    .line 311
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v15, Lorg/xml/sax/ext/DeclHandler;

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    .line 313
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v15, v15, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v15, :cond_3

    .line 314
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v15, Lorg/xml/sax/ext/LexicalHandler;

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 315
    :cond_3
    return-void

    .line 197
    .restart local p1    # "outputTarget":Ljavax/xml/transform/Result;
    :cond_4
    move-object/from16 v0, p1

    instance-of v15, v0, Ljavax/xml/transform/dom/DOMResult;

    if-eqz v15, :cond_a

    move-object/from16 v5, p1

    .line 199
    check-cast v5, Ljavax/xml/transform/dom/DOMResult;

    .line 200
    .local v5, "domResult":Ljavax/xml/transform/dom/DOMResult;
    invoke-virtual {v5}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v9

    .line 201
    .local v9, "outputNode":Lorg/w3c/dom/Node;
    invoke-virtual {v5}, Ljavax/xml/transform/dom/DOMResult;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v8

    .line 205
    .local v8, "nextSibling":Lorg/w3c/dom/Node;
    if-eqz v9, :cond_7

    .line 207
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v14

    .line 208
    .local v14, "type":S
    const/16 v15, 0x9

    if-ne v15, v14, :cond_6

    move-object v15, v9

    check-cast v15, Lorg/w3c/dom/Document;

    move-object v3, v15

    .line 243
    .end local p1    # "outputTarget":Ljavax/xml/transform/Result;
    .local v3, "doc":Lorg/w3c/dom/Document;
    :goto_1
    const/16 v15, 0xb

    if-ne v15, v14, :cond_9

    new-instance v4, Lorg/apache/xml/utils/DOMBuilder;

    check-cast v9, Lorg/w3c/dom/DocumentFragment;

    .end local v9    # "outputNode":Lorg/w3c/dom/Node;
    invoke-direct {v4, v3, v9}, Lorg/apache/xml/utils/DOMBuilder;-><init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/DocumentFragment;)V

    .line 248
    .local v4, "domBuilder":Lorg/apache/xml/utils/DOMBuilder;
    :goto_2
    if-eqz v8, :cond_5

    .line 249
    invoke-virtual {v4, v8}, Lorg/apache/xml/utils/DOMBuilder;->setNextSibling(Lorg/w3c/dom/Node;)V

    .line 251
    :cond_5
    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    .line 252
    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    goto :goto_0

    .line 208
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "domBuilder":Lorg/apache/xml/utils/DOMBuilder;
    .restart local v9    # "outputNode":Lorg/w3c/dom/Node;
    .restart local p1    # "outputTarget":Ljavax/xml/transform/Result;
    :cond_6
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    goto :goto_1

    .line 215
    .end local v14    # "type":S
    :cond_7
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 217
    .local v2, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 219
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_isSecureProcessing:Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v15, :cond_8

    .line 223
    :try_start_1
    const-string v15, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 228
    :cond_8
    :goto_3
    :try_start_2
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 230
    .local v1, "db":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    .line 237
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    move-object v9, v3

    .line 238
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v14

    .line 240
    .restart local v14    # "type":S
    check-cast p1, Ljavax/xml/transform/dom/DOMResult;

    .end local p1    # "outputTarget":Ljavax/xml/transform/Result;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    goto :goto_1

    .line 232
    .end local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v14    # "type":S
    .restart local p1    # "outputTarget":Ljavax/xml/transform/Result;
    :catch_0
    move-exception v10

    .line 234
    .local v10, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v15, Ljavax/xml/transform/TransformerException;

    invoke-direct {v15, v10}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v15

    .line 243
    .end local v10    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    .end local p1    # "outputTarget":Ljavax/xml/transform/Result;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v14    # "type":S
    :cond_9
    new-instance v4, Lorg/apache/xml/utils/DOMBuilder;

    invoke-direct {v4, v3, v9}, Lorg/apache/xml/utils/DOMBuilder;-><init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;)V

    goto :goto_2

    .line 254
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "domResult":Ljavax/xml/transform/dom/DOMResult;
    .end local v8    # "nextSibling":Lorg/w3c/dom/Node;
    .end local v9    # "outputNode":Lorg/w3c/dom/Node;
    .end local v14    # "type":S
    .restart local p1    # "outputTarget":Ljavax/xml/transform/Result;
    :cond_a
    move-object/from16 v0, p1

    instance-of v15, v0, Ljavax/xml/transform/stream/StreamResult;

    if-eqz v15, :cond_12

    move-object/from16 v13, p1

    .line 256
    check-cast v13, Ljavax/xml/transform/stream/StreamResult;

    .line 260
    .local v13, "sresult":Ljavax/xml/transform/stream/StreamResult;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v15}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v15

    invoke-static {v15}, Lorg/apache/xml/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;

    move-result-object v12

    .line 263
    .local v12, "serializer":Lorg/apache/xml/serializer/Serializer;
    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    .line 265
    invoke-virtual {v13}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v15

    if-eqz v15, :cond_b

    .line 266
    invoke-virtual {v13}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v15

    invoke-interface {v12, v15}, Lorg/apache/xml/serializer/Serializer;->setWriter(Ljava/io/Writer;)V

    .line 293
    :goto_4
    invoke-interface {v12}, Lorg/apache/xml/serializer/Serializer;->asContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 295
    .end local v12    # "serializer":Lorg/apache/xml/serializer/Serializer;
    :catch_1
    move-exception v7

    .line 297
    .local v7, "ioe":Ljava/io/IOException;
    new-instance v15, Ljavax/xml/transform/TransformerException;

    invoke-direct {v15, v7}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v15

    .line 267
    .end local v7    # "ioe":Ljava/io/IOException;
    .restart local v12    # "serializer":Lorg/apache/xml/serializer/Serializer;
    :cond_b
    :try_start_4
    invoke-virtual {v13}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    if-eqz v15, :cond_c

    .line 268
    invoke-virtual {v13}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    invoke-interface {v12, v15}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    goto :goto_4

    .line 269
    :cond_c
    invoke-virtual {v13}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_11

    .line 271
    invoke-virtual {v13}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v6

    .line 273
    .local v6, "fileURL":Ljava/lang/String;
    const-string v15, "file:///"

    invoke-virtual {v6, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 274
    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-lez v15, :cond_e

    .line 275
    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 287
    :cond_d
    :goto_5
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    .line 288
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    invoke-interface {v12, v15}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    goto :goto_4

    .line 277
    :cond_e
    const/4 v15, 0x7

    invoke-virtual {v6, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 279
    :cond_f
    const-string v15, "file:/"

    invoke-virtual {v6, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 280
    const/4 v15, 0x6

    invoke-virtual {v6, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-lez v15, :cond_10

    .line 281
    const/4 v15, 0x6

    invoke-virtual {v6, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 283
    :cond_10
    const/4 v15, 0x5

    invoke-virtual {v6, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 291
    .end local v6    # "fileURL":Ljava/lang/String;
    :cond_11
    new-instance v15, Ljavax/xml/transform/TransformerException;

    const-string v16, "ER_NO_OUTPUT_SPECIFIED"

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 302
    .end local v12    # "serializer":Lorg/apache/xml/serializer/Serializer;
    .end local v13    # "sresult":Ljavax/xml/transform/stream/StreamResult;
    :cond_12
    new-instance v15, Ljavax/xml/transform/TransformerException;

    const-string v16, "ER_CANNOT_TRANSFORM_TO_RESULT_TYPE"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 225
    .restart local v2    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5    # "domResult":Ljavax/xml/transform/dom/DOMResult;
    .restart local v8    # "nextSibling":Lorg/w3c/dom/Node;
    .restart local v9    # "outputNode":Lorg/w3c/dom/Node;
    :catch_2
    move-exception v15

    goto/16 :goto_3
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "eName"    # Ljava/lang/String;
    .param p2, "aName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "valueDefault"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1376
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v0, :cond_0

    .line 1377
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/xml/sax/ext/DeclHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    :cond_0
    return-void
.end method

.method public characters([CII)V
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
    .line 1125
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    .line 1126
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 1127
    return-void
.end method

.method public clearParameters()V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 591
    :goto_0
    return-void

    .line 590
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    goto :goto_0
.end method

.method public comment([CII)V
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
    .line 1322
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    .line 1323
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 1324
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    .line 1325
    :cond_0
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1345
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v0, :cond_0

    .line 1346
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    :cond_0
    return-void
.end method

.method public endCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1304
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 1305
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    .line 1306
    :cond_0
    return-void
.end method

.method public endDTD()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1235
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    .line 1237
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 962
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    .line 963
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 964
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1102
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1276
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 1277
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    .line 1278
    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1004
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    .line 1005
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 1006
    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1421
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/DeclHandler;->externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    :cond_0
    return-void
.end method

.method protected final flushStartDoc()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 928
    iget-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    if-nez v1, :cond_1

    .line 930
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    if-nez v1, :cond_0

    .line 934
    :try_start_0
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    invoke-direct {p0, v1}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->createResultContentHandler(Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 941
    :cond_0
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 942
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    .line 944
    :cond_1
    return-void

    .line 936
    :catch_0
    move-exception v0

    .line 938
    .local v0, "te":Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    return-object v0
.end method

.method public getOutputProperties()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    return-object v0
.end method

.method public getOutputProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 765
    const/4 v1, 0x0

    .line 766
    .local v1, "value":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    .line 768
    .local v0, "props":Lorg/apache/xalan/templates/OutputProperties;
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 770
    if-nez v1, :cond_0

    .line 772
    invoke-static {p1}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 773
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 777
    :cond_0
    return-object v1
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 575
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 576
    const/4 v0, 0x0

    .line 578
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    return-object v0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .locals 0

    .prologue
    .line 144
    return-object p0
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_URIResolver:Ljavax/xml/transform/URIResolver;

    return-object v0
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
    .line 1150
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    .line 1151
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1397
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    :cond_0
    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 829
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1173
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    .line 1174
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 152
    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    .line 153
    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_foundFirstElement:Z

    .line 154
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    .line 155
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->clearParameters()V

    .line 156
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    .line 157
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    .line 158
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    .line 159
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 160
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 161
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    .line 162
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    .line 163
    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_URIResolver:Ljavax/xml/transform/URIResolver;

    .line 164
    new-instance v0, Lorg/apache/xalan/templates/OutputProperties;

    const-string v1, "xml"

    invoke-direct {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    .line 165
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 2
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 880
    :try_start_0
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    if-nez v1, :cond_0

    .line 881
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    invoke-direct {p0, v1}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->createResultContentHandler(Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    :cond_0
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 889
    return-void

    .line 883
    :catch_0
    move-exception v0

    .line 885
    .local v0, "te":Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1
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
    .line 789
    if-nez p1, :cond_0

    .line 790
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_NULL_ERROR_HANDLER"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 792
    :cond_0
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    .line 793
    return-void
.end method

.method public setOutputProperties(Ljava/util/Properties;)V
    .locals 2
    .param p1, "oformat"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 653
    if-eqz p1, :cond_1

    .line 657
    const-string v1, "method"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 659
    .local v0, "method":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 660
    new-instance v1, Lorg/apache/xalan/templates/OutputProperties;

    invoke-direct {v1, v0}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    .line 664
    :goto_0
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;)V

    .line 671
    .end local v0    # "method":Ljava/lang/String;
    :goto_1
    return-void

    .line 662
    .restart local v0    # "method":Ljava/lang/String;
    :cond_0
    new-instance v1, Lorg/apache/xalan/templates/OutputProperties;

    invoke-direct {v1}, Lorg/apache/xalan/templates/OutputProperties;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    goto :goto_0

    .line 669
    .end local v0    # "method":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    goto :goto_1
.end method

.method public setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 739
    invoke-static {p1}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 740
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 548
    if-nez p2, :cond_0

    .line 549
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_INVALID_SET_PARAM_VALUE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    .line 554
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    .line 557
    :cond_1
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    return-void
.end method

.method public setResult(Ljavax/xml/transform/Result;)V
    .locals 3
    .param p1, "result"    # Ljavax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_RESULT_NULL"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    .line 114
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemID"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 0
    .param p1, "resolver"    # Ljavax/xml/transform/URIResolver;

    .prologue
    .line 605
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_URIResolver:Ljavax/xml/transform/URIResolver;

    .line 606
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
    .line 1194
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    .line 1195
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    .line 1196
    return-void
.end method

.method public startCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1292
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 1293
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 1294
    :cond_0
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1222
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    .line 1223
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 910
    :try_start_0
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    if-nez v1, :cond_0

    .line 911
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    invoke-direct {p0, v1}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->createResultContentHandler(Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    :cond_0
    iput-boolean v2, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    .line 920
    iput-boolean v2, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_foundFirstElement:Z

    .line 921
    return-void

    .line 913
    :catch_0
    move-exception v0

    .line 915
    .local v0, "te":Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1036
    iget-boolean v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_foundFirstElement:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    if-eqz v3, :cond_2

    .line 1038
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_foundFirstElement:Z

    .line 1044
    :try_start_0
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v3}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    invoke-static {p1, p2, v3, v4}, Lorg/apache/xalan/transformer/SerializerSwitcher;->switchSerializerIfHTML(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Lorg/apache/xml/serializer/Serializer;)Lorg/apache/xml/serializer/Serializer;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1052
    .local v1, "newSerializer":Lorg/apache/xml/serializer/Serializer;
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    if-eq v1, v3, :cond_2

    .line 1056
    :try_start_1
    invoke-interface {v1}, Lorg/apache/xml/serializer/Serializer;->asContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1063
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v3, v3, Lorg/xml/sax/DTDHandler;

    if-eqz v3, :cond_0

    .line 1064
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v3, Lorg/xml/sax/DTDHandler;

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 1066
    :cond_0
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v3, v3, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v3, :cond_1

    .line 1067
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v3, Lorg/xml/sax/ext/LexicalHandler;

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 1069
    :cond_1
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_serializer:Lorg/apache/xml/serializer/Serializer;

    .line 1072
    .end local v1    # "newSerializer":Lorg/apache/xml/serializer/Serializer;
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    .line 1073
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v3, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 1074
    return-void

    .line 1047
    :catch_0
    move-exception v2

    .line 1049
    .local v2, "te":Ljavax/xml/transform/TransformerException;
    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 1058
    .end local v2    # "te":Ljavax/xml/transform/TransformerException;
    .restart local v1    # "newSerializer":Lorg/apache/xml/serializer/Serializer;
    :catch_1
    move-exception v0

    .line 1060
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1263
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    .line 1265
    :cond_0
    return-void
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
    .line 984
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->flushStartDoc()V

    .line 985
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    return-void
.end method

.method public transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .locals 27
    .param p1, "source"    # Ljavax/xml/transform/Source;
    .param p2, "outputTarget"    # Ljavax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 330
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->createResultContentHandler(Ljavax/xml/transform/Result;)V

    .line 340
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/stream/StreamSource;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    invoke-interface/range {p1 .. p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_0

    move-object/from16 v22, p1

    check-cast v22, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v22

    if-nez v22, :cond_0

    move-object/from16 v22, p1

    check-cast v22, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v22

    if-eqz v22, :cond_2

    :cond_0
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/sax/SAXSource;

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v22, p1

    check-cast v22, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v22

    if-nez v22, :cond_1

    move-object/from16 v22, p1

    check-cast v22, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v22

    if-eqz v22, :cond_2

    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/dom/DOMSource;

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v22, p1

    check-cast v22, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v22

    if-nez v22, :cond_4

    .line 348
    :cond_2
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 349
    .local v4, "builderF":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 350
    .local v3, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-interface/range {p1 .. p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v17

    .line 351
    .local v17, "systemID":Ljava/lang/String;
    new-instance v16, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    .end local p1    # "source":Ljavax/xml/transform/Source;
    .local v16, "source":Ljavax/xml/transform/Source;
    if-eqz v17, :cond_3

    .line 355
    :try_start_1
    invoke-interface/range {v16 .. v17}, Ljavax/xml/transform/Source;->setSystemId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_c

    :cond_3
    move-object/from16 p1, v16

    .line 364
    .end local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "builderF":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v16    # "source":Ljavax/xml/transform/Source;
    .end local v17    # "systemID":Ljava/lang/String;
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    :cond_4
    :try_start_2
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/dom/DOMSource;

    move/from16 v22, v0

    if-eqz v22, :cond_c

    .line 366
    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/dom/DOMSource;

    move-object v8, v0

    .line 368
    .local v8, "dsource":Ljavax/xml/transform/dom/DOMSource;
    invoke-virtual {v8}, Ljavax/xml/transform/dom/DOMSource;->getSystemId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    .line 370
    invoke-virtual {v8}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    .line 372
    .local v6, "dNode":Lorg/w3c/dom/Node;
    if-eqz v6, :cond_b

    .line 376
    :try_start_3
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 377
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->startDocument()V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 380
    :cond_5
    :try_start_4
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 382
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 383
    .local v7, "data":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 384
    .local v5, "chars":[C
    const/16 v22, 0x0

    array-length v0, v5

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v5, v1, v2}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->characters([CII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 395
    .end local v5    # "chars":[C
    .end local v7    # "data":Ljava/lang/String;
    :goto_0
    :try_start_5
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 396
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->endDocument()V
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 515
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    .line 519
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    .line 522
    :goto_1
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    .line 525
    .end local v6    # "dNode":Lorg/w3c/dom/Node;
    .end local v8    # "dsource":Ljavax/xml/transform/dom/DOMSource;
    .end local p1    # "source":Ljavax/xml/transform/Source;
    :cond_7
    :goto_2
    return-void

    .line 357
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    :catch_0
    move-exception v9

    .line 358
    .local v9, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_3
    new-instance v22, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v9}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 389
    .end local v9    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v6    # "dNode":Lorg/w3c/dom/Node;
    .restart local v8    # "dsource":Ljavax/xml/transform/dom/DOMSource;
    :cond_8
    :try_start_7
    new-instance v19, Lorg/apache/xml/serializer/TreeWalker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lorg/apache/xml/serializer/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V

    .line 390
    .local v19, "walker":Lorg/apache/xml/serializer/TreeWalker;
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lorg/apache/xml/serializer/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 395
    .end local v19    # "walker":Lorg/apache/xml/serializer/TreeWalker;
    :catchall_0
    move-exception v22

    :try_start_8
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 396
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->endDocument()V

    :cond_9
    throw v22
    :try_end_8
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 399
    :catch_1
    move-exception v15

    .line 401
    .local v15, "se":Lorg/xml/sax/SAXException;
    :try_start_9
    new-instance v22, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v22

    invoke-direct {v0, v15}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v22
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 515
    .end local v6    # "dNode":Lorg/w3c/dom/Node;
    .end local v8    # "dsource":Ljavax/xml/transform/dom/DOMSource;
    .end local v15    # "se":Lorg/xml/sax/SAXException;
    .end local p1    # "source":Ljavax/xml/transform/Source;
    :catchall_1
    move-exception v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    move-object/from16 v23, v0

    if-eqz v23, :cond_a

    .line 519
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 522
    :goto_4
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    :cond_a
    throw v22

    .line 408
    .restart local v6    # "dNode":Lorg/w3c/dom/Node;
    .restart local v8    # "dsource":Ljavax/xml/transform/dom/DOMSource;
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    :cond_b
    :try_start_b
    const-string v22, "ER_ILLEGAL_DOMSOURCE_INPUT"

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 411
    .local v13, "messageStr":Ljava/lang/String;
    new-instance v22, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v22

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 415
    .end local v6    # "dNode":Lorg/w3c/dom/Node;
    .end local v8    # "dsource":Ljavax/xml/transform/dom/DOMSource;
    .end local v13    # "messageStr":Ljava/lang/String;
    :cond_c
    invoke-static/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object v21

    .line 417
    .local v21, "xmlSource":Lorg/xml/sax/InputSource;
    if-nez v21, :cond_d

    .line 419
    new-instance v22, Ljavax/xml/transform/TransformerException;

    const-string v23, "ER_CANNOT_TRANSFORM_SOURCE_TYPE"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 423
    :cond_d
    invoke-virtual/range {v21 .. v21}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_e

    .line 424
    invoke-virtual/range {v21 .. v21}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 426
    :cond_e
    const/4 v14, 0x0

    .line 427
    .local v14, "reader":Lorg/xml/sax/XMLReader;
    const/4 v12, 0x0

    .line 431
    .local v12, "managedReader":Z
    :try_start_c
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/sax/SAXSource;

    move/from16 v22, v0

    if-eqz v22, :cond_f

    .line 432
    check-cast p1, Ljavax/xml/transform/sax/SAXSource;

    .end local p1    # "source":Ljavax/xml/transform/Source;
    invoke-virtual/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_c
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_c .. :try_end_c} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v14

    .line 435
    :cond_f
    if-nez v14, :cond_16

    .line 437
    :try_start_d
    invoke-static {}, Lorg/apache/xml/utils/XMLReaderManager;->getInstance()Lorg/apache/xml/utils/XMLReaderManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/apache/xml/utils/XMLReaderManager;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_d
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_d} :catch_2
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-result-object v14

    .line 438
    const/4 v12, 0x1

    .line 453
    :goto_5
    move-object/from16 v10, p0

    .line 455
    .local v10, "inputHandler":Lorg/xml/sax/ContentHandler;
    :try_start_e
    invoke-interface {v14, v10}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 457
    instance-of v0, v10, Lorg/xml/sax/DTDHandler;

    move/from16 v22, v0

    if-eqz v22, :cond_10

    .line 458
    move-object v0, v10

    check-cast v0, Lorg/xml/sax/DTDHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v14, v0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    :try_end_e
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_e .. :try_end_e} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 462
    :cond_10
    :try_start_f
    instance-of v0, v10, Lorg/xml/sax/ext/LexicalHandler;

    move/from16 v22, v0

    if-eqz v22, :cond_11

    .line 463
    const-string v22, "http://xml.org/sax/properties/lexical-handler"

    move-object/from16 v0, v22

    invoke-interface {v14, v0, v10}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 466
    :cond_11
    instance-of v0, v10, Lorg/xml/sax/ext/DeclHandler;

    move/from16 v22, v0

    if-eqz v22, :cond_12

    .line 467
    const-string v22, "http://xml.org/sax/properties/declaration-handler"

    move-object/from16 v0, v22

    invoke-interface {v14, v0, v10}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_f
    .catch Lorg/xml/sax/SAXException; {:try_start_f .. :try_end_f} :catch_a
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 475
    :cond_12
    :goto_6
    :try_start_10
    instance-of v0, v10, Lorg/xml/sax/ext/LexicalHandler;

    move/from16 v22, v0

    if-eqz v22, :cond_13

    .line 476
    const-string v22, "http://xml.org/sax/handlers/LexicalHandler"

    move-object/from16 v0, v22

    invoke-interface {v14, v0, v10}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 479
    :cond_13
    instance-of v0, v10, Lorg/xml/sax/ext/DeclHandler;

    move/from16 v22, v0

    if-eqz v22, :cond_14

    .line 480
    const-string v22, "http://xml.org/sax/handlers/DeclHandler"

    move-object/from16 v0, v22

    invoke-interface {v14, v0, v10}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_10
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 485
    :cond_14
    :goto_7
    :try_start_11
    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_11
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 508
    if-eqz v12, :cond_15

    .line 509
    :try_start_12
    invoke-static {}, Lorg/apache/xml/utils/XMLReaderManager;->getInstance()Lorg/apache/xml/utils/XMLReaderManager;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lorg/apache/xml/utils/XMLReaderManager;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 515
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    .line 519
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    .line 522
    :goto_8
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    goto/16 :goto_2

    .line 439
    .end local v10    # "inputHandler":Lorg/xml/sax/ContentHandler;
    :catch_2
    move-exception v15

    .line 440
    .restart local v15    # "se":Lorg/xml/sax/SAXException;
    :try_start_14
    new-instance v22, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v22

    invoke-direct {v0, v15}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v22
    :try_end_14
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_14 .. :try_end_14} :catch_5
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 487
    .end local v15    # "se":Lorg/xml/sax/SAXException;
    :catch_3
    move-exception v20

    .line 489
    .local v20, "wre":Lorg/apache/xml/utils/WrappedRuntimeException;
    :try_start_15
    invoke-virtual/range {v20 .. v20}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v18

    .line 492
    .local v18, "throwable":Ljava/lang/Throwable;
    :goto_9
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    move/from16 v22, v0

    if-eqz v22, :cond_17

    .line 494
    check-cast v18, Lorg/apache/xml/utils/WrappedRuntimeException;

    .end local v18    # "throwable":Ljava/lang/Throwable;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    move-result-object v18

    .restart local v18    # "throwable":Ljava/lang/Throwable;
    goto :goto_9

    .line 444
    .end local v18    # "throwable":Ljava/lang/Throwable;
    .end local v20    # "wre":Lorg/apache/xml/utils/WrappedRuntimeException;
    :cond_16
    :try_start_16
    const-string v22, "http://xml.org/sax/features/namespace-prefixes"

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v14, v0, v1}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_16
    .catch Lorg/xml/sax/SAXException; {:try_start_16 .. :try_end_16} :catch_4
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_16 .. :try_end_16} :catch_3
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto/16 :goto_5

    .line 446
    :catch_4
    move-exception v22

    goto/16 :goto_5

    .line 498
    .restart local v18    # "throwable":Ljava/lang/Throwable;
    .restart local v20    # "wre":Lorg/apache/xml/utils/WrappedRuntimeException;
    :cond_17
    :try_start_17
    new-instance v22, Ljavax/xml/transform/TransformerException;

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v22
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 508
    .end local v18    # "throwable":Ljava/lang/Throwable;
    .end local v20    # "wre":Lorg/apache/xml/utils/WrappedRuntimeException;
    :catchall_2
    move-exception v22

    if-eqz v12, :cond_18

    .line 509
    :try_start_18
    invoke-static {}, Lorg/apache/xml/utils/XMLReaderManager;->getInstance()Lorg/apache/xml/utils/XMLReaderManager;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lorg/apache/xml/utils/XMLReaderManager;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V

    :cond_18
    throw v22
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 500
    :catch_5
    move-exception v15

    .line 502
    .restart local v15    # "se":Lorg/xml/sax/SAXException;
    :try_start_19
    new-instance v22, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v22

    invoke-direct {v0, v15}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v22

    .line 504
    .end local v15    # "se":Lorg/xml/sax/SAXException;
    :catch_6
    move-exception v11

    .line 506
    .local v11, "ioe":Ljava/io/IOException;
    new-instance v22, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v22

    invoke-direct {v0, v11}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v22
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 521
    .end local v11    # "ioe":Ljava/io/IOException;
    .end local v12    # "managedReader":Z
    .end local v14    # "reader":Lorg/xml/sax/XMLReader;
    .end local v21    # "xmlSource":Lorg/xml/sax/InputSource;
    :catch_7
    move-exception v23

    goto/16 :goto_4

    .restart local v10    # "inputHandler":Lorg/xml/sax/ContentHandler;
    .restart local v12    # "managedReader":Z
    .restart local v14    # "reader":Lorg/xml/sax/XMLReader;
    .restart local v21    # "xmlSource":Lorg/xml/sax/InputSource;
    :catch_8
    move-exception v22

    goto :goto_8

    .line 483
    :catch_9
    move-exception v22

    goto/16 :goto_7

    .line 471
    :catch_a
    move-exception v22

    goto/16 :goto_6

    .line 521
    .end local v10    # "inputHandler":Lorg/xml/sax/ContentHandler;
    .end local v12    # "managedReader":Z
    .end local v14    # "reader":Lorg/xml/sax/XMLReader;
    .end local v21    # "xmlSource":Lorg/xml/sax/InputSource;
    .restart local v6    # "dNode":Lorg/w3c/dom/Node;
    .restart local v8    # "dsource":Ljavax/xml/transform/dom/DOMSource;
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    :catch_b
    move-exception v22

    goto/16 :goto_1

    .line 357
    .end local v6    # "dNode":Lorg/w3c/dom/Node;
    .end local v8    # "dsource":Ljavax/xml/transform/dom/DOMSource;
    .end local p1    # "source":Ljavax/xml/transform/Source;
    .restart local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "builderF":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v16    # "source":Ljavax/xml/transform/Source;
    .restart local v17    # "systemID":Ljava/lang/String;
    :catch_c
    move-exception v9

    move-object/from16 p1, v16

    .end local v16    # "source":Ljavax/xml/transform/Source;
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    goto/16 :goto_3
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "notationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 856
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    :cond_0
    return-void
.end method
