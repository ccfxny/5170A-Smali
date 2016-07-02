.class public Lorg/apache/xml/dtm/ref/DTMTreeWalker;
.super Ljava/lang/Object;
.source "DTMTreeWalker.java"


# instance fields
.field private m_contentHandler:Lorg/xml/sax/ContentHandler;

.field protected m_dtm:Lorg/apache/xml/dtm/DTM;

.field nextIsRaw:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/dtm/DTM;)V
    .locals 1
    .param p1, "contentHandler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "dtm"    # Lorg/apache/xml/dtm/DTM;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    .line 93
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 94
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    .line 95
    return-void
.end method

.method private final dispatachChars(I)V
    .locals 3
    .param p1, "node"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    .line 205
    return-void
.end method


# virtual methods
.method protected endNode(I)V
    .locals 8
    .param p1, "node"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 366
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v4, p1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 402
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 369
    :pswitch_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v4}, Lorg/xml/sax/ContentHandler;->endDocument()V

    goto :goto_0

    .line 372
    :pswitch_2
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v4, p1}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "ns":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 374
    const-string v1, ""

    .line 375
    :cond_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v5, p1}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v6, p1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v1, v5, v6}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v4, p1, v7}, Lorg/apache/xml/dtm/DTM;->getFirstNamespaceNode(IZ)I

    move-result v2

    .local v2, "nsn":I
    :goto_1
    const/4 v4, -0x1

    if-eq v4, v2, :cond_0

    .line 383
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v4, v2}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, "prefix":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v4, v3}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 380
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v4, p1, v2, v7}, Lorg/apache/xml/dtm/DTM;->getNextNamespaceNode(IIZ)I

    move-result v2

    goto :goto_1

    .line 392
    .end local v1    # "ns":Ljava/lang/String;
    .end local v2    # "nsn":I
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_3
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v4, v4, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v4, :cond_0

    .line 394
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    .line 396
    .local v0, "lh":Lorg/xml/sax/ext/LexicalHandler;
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v4, p1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    goto :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getcontentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public setDTM(Lorg/apache/xml/dtm/DTM;)V
    .locals 0
    .param p1, "dtm"    # Lorg/apache/xml/dtm/DTM;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    .line 56
    return-void
.end method

.method public setcontentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "ch"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 75
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 76
    return-void
.end method

.method protected startNode(I)V
    .locals 16
    .param p1, "node"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v2, v2, Lorg/apache/xml/utils/NodeConsumer;

    if-eqz v2, :cond_0

    .line 224
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 353
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 228
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v7

    .line 230
    .local v7, "data":Lorg/apache/xml/utils/XMLString;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v2, v2, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v2, :cond_1

    .line 232
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v11, Lorg/xml/sax/ext/LexicalHandler;

    .line 233
    .local v11, "lh":Lorg/xml/sax/ext/LexicalHandler;
    invoke-interface {v7, v11}, Lorg/apache/xml/utils/XMLString;->dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V

    goto :goto_0

    .line 242
    .end local v7    # "data":Lorg/apache/xml/utils/XMLString;
    .end local v11    # "lh":Lorg/xml/sax/ext/LexicalHandler;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v2}, Lorg/xml/sax/ContentHandler;->startDocument()V

    goto :goto_0

    .line 245
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    .line 247
    .local v8, "dtm":Lorg/apache/xml/dtm/DTM;
    const/4 v2, 0x1

    move/from16 v0, p1

    invoke-interface {v8, v0, v2}, Lorg/apache/xml/dtm/DTM;->getFirstNamespaceNode(IZ)I

    move-result v14

    .local v14, "nsn":I
    :goto_1
    const/4 v2, -0x1

    if-eq v2, v14, :cond_2

    .line 251
    invoke-interface {v8, v14}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v15

    .line 253
    .local v15, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v8, v14}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v15, v3}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v2, 0x1

    move/from16 v0, p1

    invoke-interface {v8, v0, v14, v2}, Lorg/apache/xml/dtm/DTM;->getNextNamespaceNode(IIZ)I

    move-result v14

    goto :goto_1

    .line 259
    .end local v15    # "prefix":Ljava/lang/String;
    :cond_2
    move/from16 v0, p1

    invoke-interface {v8, v0}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v13

    .line 260
    .local v13, "ns":Ljava/lang/String;
    if-nez v13, :cond_3

    .line 261
    const-string v13, ""

    .line 264
    :cond_3
    new-instance v1, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v1}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 267
    .local v1, "attrs":Lorg/xml/sax/helpers/AttributesImpl;
    move/from16 v0, p1

    invoke-interface {v8, v0}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    move-result v9

    .line 268
    .local v9, "i":I
    :goto_2
    const/4 v2, -0x1

    if-eq v9, v2, :cond_4

    .line 271
    invoke-interface {v8, v9}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v9}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v9}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CDATA"

    invoke-interface {v8, v9}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-interface {v8, v9}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    move-result v9

    goto :goto_2

    .line 279
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    move/from16 v0, p1

    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    move/from16 v0, p1

    invoke-interface {v4, v0}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v13, v3, v4, v1}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 286
    .end local v1    # "attrs":Lorg/xml/sax/helpers/AttributesImpl;
    .end local v8    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v9    # "i":I
    .end local v13    # "ns":Ljava/lang/String;
    .end local v14    # "nsn":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v12

    .line 289
    .local v12, "name":Ljava/lang/String;
    const-string v2, "xslt-next-is-raw"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 291
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    goto/16 :goto_0

    .line 295
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    move/from16 v0, p1

    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v12, v3}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 302
    .end local v12    # "name":Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v10, v2, Lorg/xml/sax/ext/LexicalHandler;

    .line 303
    .local v10, "isLexH":Z
    if-eqz v10, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v2, Lorg/xml/sax/ext/LexicalHandler;

    move-object v11, v2

    .line 306
    .restart local v11    # "lh":Lorg/xml/sax/ext/LexicalHandler;
    :goto_3
    if-eqz v10, :cond_6

    .line 308
    invoke-interface {v11}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 311
    :cond_6
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->dispatachChars(I)V

    .line 314
    if-eqz v10, :cond_1

    .line 316
    invoke-interface {v11}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    goto/16 :goto_0

    .line 303
    .end local v11    # "lh":Lorg/xml/sax/ext/LexicalHandler;
    :cond_7
    const/4 v11, 0x0

    goto :goto_3

    .line 323
    .end local v10    # "isLexH":Z
    :pswitch_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    if-eqz v2, :cond_8

    .line 325
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    const-string v3, "javax.xml.transform.disable-output-escaping"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->dispatachChars(I)V

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    const-string v3, "javax.xml.transform.enable-output-escaping"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 333
    :cond_8
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->dispatachChars(I)V

    goto/16 :goto_0

    .line 339
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v2, v2, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v2, :cond_1

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v2, Lorg/xml/sax/ext/LexicalHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    move/from16 v0, p1

    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public traverse(I)V
    .locals 4
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 110
    move v1, p1

    .line 112
    .local v1, "top":I
    :goto_0
    if-eq v3, p1, :cond_5

    .line 114
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->startNode(I)V

    .line 115
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, p1}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result v0

    .line 116
    .local v0, "nextNode":I
    :cond_0
    if-ne v3, v0, :cond_1

    .line 118
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->endNode(I)V

    .line 120
    if-ne v1, p1, :cond_2

    .line 143
    :cond_1
    :goto_1
    move p1, v0

    .line 144
    goto :goto_0

    .line 123
    :cond_2
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, p1}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    move-result v0

    .line 125
    if-ne v3, v0, :cond_0

    .line 127
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, p1}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result p1

    .line 129
    if-eq v3, p1, :cond_3

    if-ne v1, p1, :cond_0

    .line 133
    :cond_3
    if-eq v3, p1, :cond_4

    .line 134
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->endNode(I)V

    .line 136
    :cond_4
    const/4 v0, -0x1

    .line 138
    goto :goto_1

    .line 145
    .end local v0    # "nextNode":I
    :cond_5
    return-void
.end method

.method public traverse(II)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "top"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 165
    :goto_0
    if-eq v2, p1, :cond_4

    .line 167
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->startNode(I)V

    .line 168
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result v0

    .line 169
    .local v0, "nextNode":I
    :cond_0
    if-ne v2, v0, :cond_1

    .line 171
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->endNode(I)V

    .line 173
    if-eq v2, p2, :cond_2

    if-ne p2, p1, :cond_2

    .line 191
    :cond_1
    :goto_1
    move p1, v0

    .line 192
    goto :goto_0

    .line 176
    :cond_2
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    move-result v0

    .line 178
    if-ne v2, v0, :cond_0

    .line 180
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result p1

    .line 182
    if-eq v2, p1, :cond_3

    if-eq v2, p2, :cond_0

    if-ne p2, p1, :cond_0

    .line 184
    :cond_3
    const/4 v0, -0x1

    .line 186
    goto :goto_1

    .line 193
    .end local v0    # "nextNode":I
    :cond_4
    return-void
.end method
