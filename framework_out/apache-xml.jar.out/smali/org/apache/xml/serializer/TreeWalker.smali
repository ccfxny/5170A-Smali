.class public final Lorg/apache/xml/serializer/TreeWalker;
.super Ljava/lang/Object;
.source "TreeWalker.java"


# instance fields
.field private final m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

.field private final m_contentHandler:Lorg/xml/sax/ContentHandler;

.field protected final m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

.field private final m_locator:Lorg/xml/sax/helpers/LocatorImpl;

.field nextIsRaw:Z


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 1
    .param p1, "ch"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xml/serializer/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V
    .locals 3
    .param p1, "contentHandler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "systemId"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/serializer/TreeWalker;->nextIsRaw:Z

    .line 91
    iput-object p1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 92
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, v0, Lorg/apache/xml/serializer/SerializationHandler;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v0, Lorg/apache/xml/serializer/SerializationHandler;

    iput-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

    .line 99
    :goto_0
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 100
    if-eqz p2, :cond_2

    .line 101
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-virtual {v0, p2}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    .line 112
    :goto_1
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 116
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user.dir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dummy.xsl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    :goto_2
    new-instance v0, Lorg/apache/xml/serializer/utils/DOM2Helper;

    invoke-direct {v0}, Lorg/apache/xml/serializer/utils/DOM2Helper;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    .line 122
    return-void

    .line 96
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

    goto :goto_0

    .line 105
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user.dir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dummy.xsl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 107
    :catch_0
    move-exception v0

    goto :goto_1

    .line 118
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private final dispatachChars(Lorg/w3c/dom/Node;)V
    .locals 5
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v1, p1}, Lorg/apache/xml/serializer/SerializationHandler;->characters(Lorg/w3c/dom/Node;)V

    .line 248
    .end local p1    # "node":Lorg/w3c/dom/Node;
    :goto_0
    return-void

    .line 245
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :cond_0
    check-cast p1, Lorg/w3c/dom/Text;

    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto :goto_0
.end method


# virtual methods
.method protected endNode(Lorg/w3c/dom/Node;)V
    .locals 16
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 451
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 525
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 457
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    .line 458
    .local v10, "ns":Ljava/lang/String;
    if-nez v10, :cond_1

    .line 459
    const-string v10, ""

    .line 460
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v10, v14, v15}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/serializer/TreeWalker;->m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

    if-nez v13, :cond_0

    move-object/from16 v5, p1

    .line 468
    check-cast v5, Lorg/w3c/dom/Element;

    .line 469
    .local v5, "elem_node":Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 470
    .local v3, "atts":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v9

    .line 474
    .local v9, "nAttrs":I
    add-int/lit8 v7, v9, -0x1

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_6

    .line 476
    invoke-interface {v3, v7}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 477
    .local v1, "attr":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    .line 478
    .local v2, "attrName":Ljava/lang/String;
    const/16 v13, 0x3a

    invoke-virtual {v2, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 481
    .local v4, "colon":I
    const-string v13, "xmlns"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "xmlns:"

    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 486
    :cond_2
    if-gez v4, :cond_4

    .line 487
    const-string v11, ""

    .line 491
    .local v11, "prefix":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v13, v11}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 474
    .end local v11    # "prefix":Ljava/lang/String;
    :cond_3
    :goto_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 489
    :cond_4
    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v2, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "prefix":Ljava/lang/String;
    goto :goto_2

    .line 493
    .end local v11    # "prefix":Ljava/lang/String;
    :cond_5
    if-lez v4, :cond_3

    .line 494
    const/4 v13, 0x0

    invoke-virtual {v2, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 495
    .restart local v11    # "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v13, v11}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    goto :goto_3

    .line 499
    .end local v1    # "attr":Lorg/w3c/dom/Node;
    .end local v2    # "attrName":Ljava/lang/String;
    .end local v4    # "colon":I
    .end local v11    # "prefix":Ljava/lang/String;
    :cond_6
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v12

    .line 500
    .local v12, "uri":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 501
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    move-result-object v11

    .line 502
    .restart local v11    # "prefix":Ljava/lang/String;
    if-nez v11, :cond_7

    .line 503
    const-string v11, ""

    .line 504
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v13, v11}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3    # "atts":Lorg/w3c/dom/NamedNodeMap;
    .end local v5    # "elem_node":Lorg/w3c/dom/Element;
    .end local v7    # "i":I
    .end local v9    # "nAttrs":I
    .end local v10    # "ns":Ljava/lang/String;
    .end local v11    # "prefix":Ljava/lang/String;
    .end local v12    # "uri":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v6, p1

    .line 513
    check-cast v6, Lorg/w3c/dom/EntityReference;

    .line 515
    .local v6, "eref":Lorg/w3c/dom/EntityReference;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v13, v13, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v13, :cond_0

    .line 517
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v8, Lorg/xml/sax/ext/LexicalHandler;

    .line 519
    .local v8, "lh":Lorg/xml/sax/ext/LexicalHandler;
    invoke-interface {v6}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v13}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 451
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method protected startNode(Lorg/w3c/dom/Node;)V
    .locals 27
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 271
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/xml/sax/Locator;

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v15, p1

    .line 273
    check-cast v15, Lorg/xml/sax/Locator;

    .line 274
    .local v15, "loc":Lorg/xml/sax/Locator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v22, v0

    invoke-interface {v15}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v22, v0

    invoke-interface {v15}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v22, v0

    invoke-interface {v15}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v22, v0

    invoke-interface {v15}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    .line 285
    .end local v15    # "loc":Lorg/xml/sax/Locator;
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v22

    packed-switch v22, :pswitch_data_0

    .line 438
    .end local p1    # "node":Lorg/w3c/dom/Node;
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 281
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    goto :goto_0

    .line 289
    :pswitch_1
    check-cast p1, Lorg/w3c/dom/Comment;

    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Comment;->getData()Ljava/lang/String;

    move-result-object v9

    .line 291
    .local v9, "data":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/xml/sax/ext/LexicalHandler;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 293
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v14, Lorg/xml/sax/ext/LexicalHandler;

    .line 295
    .local v14, "lh":Lorg/xml/sax/ext/LexicalHandler;
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v14, v0, v1, v2}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    goto :goto_1

    .end local v9    # "data":Ljava/lang/String;
    .end local v14    # "lh":Lorg/xml/sax/ext/LexicalHandler;
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :pswitch_2
    move-object/from16 v10, p1

    .line 307
    check-cast v10, Lorg/w3c/dom/Element;

    .line 312
    .local v10, "elem_node":Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v21

    .line 313
    .local v21, "uri":Ljava/lang/String;
    if-eqz v21, :cond_3

    .line 314
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    move-result-object v20

    .line 315
    .local v20, "prefix":Ljava/lang/String;
    if-nez v20, :cond_2

    .line 316
    const-string v20, ""

    .line 317
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .end local v20    # "prefix":Ljava/lang/String;
    :cond_3
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 321
    .local v7, "atts":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v7}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v16

    .line 327
    .local v16, "nAttrs":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v12, v0, :cond_8

    .line 329
    invoke-interface {v7, v12}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 330
    .local v5, "attr":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 331
    .local v6, "attrName":Ljava/lang/String;
    const/16 v22, 0x3a

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 335
    .local v8, "colon":I
    const-string v22, "xmlns"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4

    const-string v22, "xmlns:"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 340
    :cond_4
    if-gez v8, :cond_6

    .line 341
    const-string v20, ""

    .line 345
    .restart local v20    # "prefix":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .end local v20    # "prefix":Ljava/lang/String;
    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 343
    :cond_6
    add-int/lit8 v22, v8, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "prefix":Ljava/lang/String;
    goto :goto_3

    .line 348
    .end local v20    # "prefix":Ljava/lang/String;
    :cond_7
    if-lez v8, :cond_5

    .line 349
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 350
    .restart local v20    # "prefix":Ljava/lang/String;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v21

    .line 351
    if-eqz v21, :cond_5

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 356
    .end local v5    # "attr":Lorg/w3c/dom/Node;
    .end local v6    # "attrName":Ljava/lang/String;
    .end local v8    # "colon":I
    .end local v20    # "prefix":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v18

    .line 357
    .local v18, "ns":Ljava/lang/String;
    if-nez v18, :cond_9

    .line 358
    const-string v18, ""

    .line 359
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Lorg/apache/xml/serializer/utils/AttList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v7, v1}, Lorg/apache/xml/serializer/utils/AttList;-><init>(Lorg/w3c/dom/NamedNodeMap;Lorg/apache/xml/serializer/utils/DOM2Helper;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    .end local v7    # "atts":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "elem_node":Lorg/w3c/dom/Element;
    .end local v12    # "i":I
    .end local v16    # "nAttrs":I
    .end local v18    # "ns":Ljava/lang/String;
    .end local v21    # "uri":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v19, p1

    .line 366
    check-cast v19, Lorg/w3c/dom/ProcessingInstruction;

    .line 367
    .local v19, "pi":Lorg/w3c/dom/ProcessingInstruction;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/ProcessingInstruction;->getNodeName()Ljava/lang/String;

    move-result-object v17

    .line 370
    .local v17, "name":Ljava/lang/String;
    const-string v22, "xslt-next-is-raw"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 372
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/serializer/TreeWalker;->nextIsRaw:Z

    goto/16 :goto_1

    .line 376
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/ProcessingInstruction;->getNodeName()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 383
    .end local v17    # "name":Ljava/lang/String;
    .end local v19    # "pi":Lorg/w3c/dom/ProcessingInstruction;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v13, v0, Lorg/xml/sax/ext/LexicalHandler;

    .line 384
    .local v13, "isLexH":Z
    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    check-cast v22, Lorg/xml/sax/ext/LexicalHandler;

    move-object/from16 v14, v22

    .line 387
    .restart local v14    # "lh":Lorg/xml/sax/ext/LexicalHandler;
    :goto_5
    if-eqz v13, :cond_b

    .line 389
    invoke-interface {v14}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 392
    :cond_b
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/serializer/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    .line 395
    if-eqz v13, :cond_0

    .line 397
    invoke-interface {v14}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    goto/16 :goto_1

    .line 384
    .end local v14    # "lh":Lorg/xml/sax/ext/LexicalHandler;
    :cond_c
    const/4 v14, 0x0

    goto :goto_5

    .line 406
    .end local v13    # "isLexH":Z
    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xml/serializer/TreeWalker;->nextIsRaw:Z

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 408
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/serializer/TreeWalker;->nextIsRaw:Z

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    const-string v23, "javax.xml.transform.disable-output-escaping"

    const-string v24, ""

    invoke-interface/range {v22 .. v24}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/serializer/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    const-string v23, "javax.xml.transform.enable-output-escaping"

    const-string v24, ""

    invoke-interface/range {v22 .. v24}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 416
    :cond_d
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/serializer/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v11, p1

    .line 422
    check-cast v11, Lorg/w3c/dom/EntityReference;

    .line 424
    .local v11, "eref":Lorg/w3c/dom/EntityReference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/xml/sax/ext/LexicalHandler;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    check-cast v22, Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v11}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public traverse(Lorg/w3c/dom/Node;)V
    .locals 3
    .param p1, "pos"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v2, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v2}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 141
    move-object v1, p1

    .line 143
    .local v1, "top":Lorg/w3c/dom/Node;
    :goto_0
    if-eqz p1, :cond_5

    .line 145
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/TreeWalker;->startNode(Lorg/w3c/dom/Node;)V

    .line 147
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 149
    .local v0, "nextNode":Lorg/w3c/dom/Node;
    :cond_0
    if-nez v0, :cond_1

    .line 151
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    .line 153
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    :cond_1
    :goto_1
    move-object p1, v0

    .line 175
    goto :goto_0

    .line 156
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 158
    if-nez v0, :cond_0

    .line 160
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    .line 162
    if-eqz p1, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    :cond_3
    if-eqz p1, :cond_4

    .line 165
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    .line 167
    :cond_4
    const/4 v0, 0x0

    .line 169
    goto :goto_1

    .line 176
    .end local v0    # "nextNode":Lorg/w3c/dom/Node;
    :cond_5
    iget-object v2, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v2}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 177
    return-void
.end method

.method public traverse(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .locals 2
    .param p1, "pos"    # Lorg/w3c/dom/Node;
    .param p2, "top"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 197
    :goto_0
    if-eqz p1, :cond_4

    .line 199
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/TreeWalker;->startNode(Lorg/w3c/dom/Node;)V

    .line 201
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 203
    .local v0, "nextNode":Lorg/w3c/dom/Node;
    :cond_0
    if-nez v0, :cond_1

    .line 205
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    .line 207
    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 225
    :cond_1
    :goto_1
    move-object p1, v0

    .line 226
    goto :goto_0

    .line 210
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 212
    if-nez v0, :cond_0

    .line 214
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    .line 216
    if-eqz p1, :cond_3

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    :cond_3
    const/4 v0, 0x0

    .line 220
    goto :goto_1

    .line 227
    .end local v0    # "nextNode":Lorg/w3c/dom/Node;
    :cond_4
    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 228
    return-void
.end method
