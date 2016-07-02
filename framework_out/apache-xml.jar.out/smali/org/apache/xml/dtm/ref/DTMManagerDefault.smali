.class public Lorg/apache/xml/dtm/ref/DTMManagerDefault;
.super Lorg/apache/xml/dtm/DTMManager;
.source "DTMManagerDefault.java"


# static fields
.field private static final DEBUG:Z

.field private static final DUMPTREE:Z


# instance fields
.field protected m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

.field m_dtm_offsets:[I

.field protected m_dtms:[Lorg/apache/xml/dtm/DTM;

.field private m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

.field protected m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 207
    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMManager;-><init>()V

    .line 94
    new-array v0, v1, [Lorg/apache/xml/dtm/DTM;

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    .line 109
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    .line 120
    new-instance v0, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-direct {v0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    .line 200
    new-instance v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    .line 207
    return-void
.end method


# virtual methods
.method public declared-synchronized addDTM(Lorg/apache/xml/dtm/DTM;I)V
    .locals 1
    .param p1, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .param p2, "id"    # I

    .prologue
    .line 130
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->addDTM(Lorg/apache/xml/dtm/DTM;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addDTM(Lorg/apache/xml/dtm/DTM;II)V
    .locals 7
    .param p1, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .param p2, "id"    # I
    .param p3, "offset"    # I

    .prologue
    const/high16 v4, 0x10000

    .line 145
    monitor-enter p0

    if-lt p2, v4, :cond_0

    .line 148
    :try_start_0
    new-instance v4, Lorg/apache/xml/dtm/DTMException;

    const-string v5, "ER_NO_DTMIDS_AVAIL"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 156
    :cond_0
    :try_start_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    array-length v3, v4

    .line 157
    .local v3, "oldlen":I
    if-gt v3, p2, :cond_1

    .line 164
    add-int/lit16 v4, p2, 0x100

    const/high16 v5, 0x10000

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 166
    .local v2, "newlen":I
    new-array v1, v2, [Lorg/apache/xml/dtm/DTM;

    .line 167
    .local v1, "new_m_dtms":[Lorg/apache/xml/dtm/DTM;
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    .line 169
    new-array v0, v2, [I

    .line 170
    .local v0, "new_m_dtm_offsets":[I
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 171
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    .line 174
    .end local v0    # "new_m_dtm_offsets":[I
    .end local v1    # "new_m_dtms":[Lorg/apache/xml/dtm/DTM;
    .end local v2    # "newlen":I
    :cond_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    aput-object p1, v4, p2

    .line 175
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    aput p3, v4, p2

    .line 176
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTM;->documentRegistration()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized createDTMIterator(I)Lorg/apache/xml/dtm/DTMIterator;
    .locals 1
    .param p1, "node"    # I

    .prologue
    .line 829
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized createDTMIterator(ILorg/apache/xml/dtm/DTMFilter;Z)Lorg/apache/xml/dtm/DTMIterator;
    .locals 1
    .param p1, "whatToShow"    # I
    .param p2, "filter"    # Lorg/apache/xml/dtm/DTMFilter;
    .param p3, "entityReferenceExpansion"    # Z

    .prologue
    .line 797
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized createDTMIterator(Ljava/lang/Object;I)Lorg/apache/xml/dtm/DTMIterator;
    .locals 1
    .param p1, "xpathCompiler"    # Ljava/lang/Object;
    .param p2, "pos"    # I

    .prologue
    .line 845
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized createDTMIterator(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xml/dtm/DTMIterator;
    .locals 1
    .param p1, "xpathString"    # Ljava/lang/String;
    .param p2, "presolver"    # Lorg/apache/xml/utils/PrefixResolver;

    .prologue
    .line 814
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized createDocumentFragment()Lorg/apache/xml/dtm/DTM;
    .locals 11

    .prologue
    .line 766
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 768
    .local v7, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 770
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 771
    .local v6, "db":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v9

    .line 772
    .local v9, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v9}, Lorg/w3c/dom/Document;->createDocumentFragment()Lorg/w3c/dom/DocumentFragment;

    move-result-object v8

    .line 774
    .local v8, "df":Lorg/w3c/dom/Node;
    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 776
    .end local v6    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v8    # "df":Lorg/w3c/dom/Node;
    .end local v9    # "doc":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v10

    .line 778
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    invoke-direct {v0, v10}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 766
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDTM(I)Lorg/apache/xml/dtm/DTM;
    .locals 3
    .param p1, "nodeHandle"    # I

    .prologue
    .line 648
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    ushr-int/lit8 v2, p1, 0x10

    aget-object v1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    :goto_0
    monitor-exit p0

    return-object v1

    .line 650
    :catch_0
    move-exception v0

    .line 652
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 653
    const/4 v1, 0x0

    goto :goto_0

    .line 655
    :cond_0
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;
    .locals 21
    .param p1, "source"    # Ljavax/xml/transform/Source;
    .param p2, "unique"    # Z
    .param p3, "whiteSpaceFilter"    # Lorg/apache/xml/dtm/DTMWSFilter;
    .param p4, "incremental"    # Z
    .param p5, "doIndexing"    # Z

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

    .line 248
    .local v7, "xstringFactory":Lorg/apache/xml/utils/XMLStringFactory;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getFirstFreeDTMID()I

    move-result v10

    .line 249
    .local v10, "dtmPos":I
    shl-int/lit8 v5, v10, 0x10

    .line 251
    .local v5, "documentID":I
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    instance-of v3, v0, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v3, :cond_0

    .line 253
    new-instance v2, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;

    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/dom/DOMSource;

    move-object v4, v0

    move-object/from16 v3, p0

    move-object/from16 v6, p3

    move/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/dom/DOMSource;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    .line 256
    .local v2, "dtm":Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10, v3}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->addDTM(Lorg/apache/xml/dtm/DTM;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    .end local v2    # "dtm":Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 267
    :cond_0
    if-eqz p1, :cond_8

    :try_start_1
    move-object/from16 v0, p1

    instance-of v15, v0, Ljavax/xml/transform/sax/SAXSource;

    .line 269
    .local v15, "isSAXSource":Z
    :goto_1
    if-eqz p1, :cond_9

    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/stream/StreamSource;

    move/from16 v16, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    .local v16, "isStreamSource":Z
    :goto_2
    if-nez v15, :cond_1

    if-eqz v16, :cond_19

    .line 273
    :cond_1
    const/16 v18, 0x0

    .line 279
    .local v18, "reader":Lorg/xml/sax/XMLReader;
    if-nez p1, :cond_a

    .line 280
    const/16 v20, 0x0

    .line 299
    .local v20, "xmlSource":Lorg/xml/sax/InputSource;
    :cond_2
    :goto_3
    if-nez p1, :cond_d

    if-eqz p2, :cond_d

    if-nez p4, :cond_d

    if-nez p5, :cond_d

    .line 307
    :try_start_2
    new-instance v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    .line 326
    .local v2, "dtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
    :goto_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10, v3}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->addDTM(Lorg/apache/xml/dtm/DTM;II)V

    .line 329
    if-eqz v18, :cond_e

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "org.apache.xerces.parsers.SAXParser"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v14, 0x1

    .line 335
    .local v14, "haveXercesParser":Z
    :goto_5
    if-eqz v14, :cond_3

    .line 336
    const/16 p4, 0x1

    .line 341
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_incremental:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_14

    if-eqz p4, :cond_14

    .line 343
    const/4 v9, 0x0

    .line 345
    .local v9, "coParser":Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    if-eqz v14, :cond_4

    .line 348
    :try_start_3
    const-string v3, "org.apache.xml.dtm.ref.IncrementalSAXSource_Xerces"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "coParser":Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    check-cast v9, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 356
    .restart local v9    # "coParser":Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    :cond_4
    :goto_6
    if-nez v9, :cond_5

    .line 358
    if-nez v18, :cond_f

    .line 359
    :try_start_4
    new-instance v9, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    .end local v9    # "coParser":Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    invoke-direct {v9}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;-><init>()V

    .line 388
    .restart local v9    # "coParser":Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    :cond_5
    :goto_7
    invoke-virtual {v2, v9}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->setIncrementalSAXSource(Lorg/apache/xml/dtm/ref/IncrementalSAXSource;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 390
    if-nez v20, :cond_10

    .line 460
    if-eqz v18, :cond_7

    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_incremental:Z

    if-eqz v3, :cond_6

    if-nez p4, :cond_7

    .line 461
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 467
    :try_start_6
    const-string v3, "http://xml.org/sax/properties/lexical-handler"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v4}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 471
    :cond_7
    :goto_8
    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 247
    .end local v2    # "dtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
    .end local v5    # "documentID":I
    .end local v7    # "xstringFactory":Lorg/apache/xml/utils/XMLStringFactory;
    .end local v9    # "coParser":Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    .end local v10    # "dtmPos":I
    .end local v14    # "haveXercesParser":Z
    .end local v15    # "isSAXSource":Z
    .end local v16    # "isStreamSource":Z
    .end local v18    # "reader":Lorg/xml/sax/XMLReader;
    .end local v20    # "xmlSource":Lorg/xml/sax/InputSource;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 267
    .restart local v5    # "documentID":I
    .restart local v7    # "xstringFactory":Lorg/apache/xml/utils/XMLStringFactory;
    .restart local v10    # "dtmPos":I
    :cond_8
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 269
    .restart local v15    # "isSAXSource":Z
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 282
    .restart local v16    # "isStreamSource":Z
    .restart local v18    # "reader":Lorg/xml/sax/XMLReader;
    :cond_a
    :try_start_8
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getXMLReader(Ljavax/xml/transform/Source;)Lorg/xml/sax/XMLReader;

    move-result-object v18

    .line 283
    invoke-static/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object v20

    .line 285
    .restart local v20    # "xmlSource":Lorg/xml/sax/InputSource;
    invoke-virtual/range {v20 .. v20}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v19

    .line 287
    .local v19, "urlOfSource":Ljava/lang/String;
    if-eqz v19, :cond_2

    .line 289
    :try_start_9
    invoke-static/range {v19 .. v19}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v19

    .line 295
    :goto_9
    :try_start_a
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_3

    .line 460
    .end local v19    # "urlOfSource":Ljava/lang/String;
    .end local v20    # "xmlSource":Lorg/xml/sax/InputSource;
    :catchall_1
    move-exception v3

    if-eqz v18, :cond_c

    :try_start_b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_incremental:Z

    if-eqz v4, :cond_b

    if-nez p4, :cond_c

    .line 461
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 467
    :try_start_c
    const-string v4, "http://xml.org/sax/properties/lexical-handler"

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4, v6}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 471
    :cond_c
    :goto_a
    :try_start_d
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V

    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 290
    .restart local v19    # "urlOfSource":Ljava/lang/String;
    .restart local v20    # "xmlSource":Lorg/xml/sax/InputSource;
    :catch_0
    move-exception v11

    .line 292
    .local v11, "e":Ljava/lang/Exception;
    :try_start_e
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not absolutize URL: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 319
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v19    # "urlOfSource":Ljava/lang/String;
    :cond_d
    new-instance v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    .restart local v2    # "dtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
    goto/16 :goto_4

    .line 329
    :cond_e
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 350
    .restart local v14    # "haveXercesParser":Z
    :catch_1
    move-exception v12

    .line 351
    .local v12, "ex":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 352
    const/4 v9, 0x0

    .restart local v9    # "coParser":Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    goto/16 :goto_6

    .line 361
    .end local v12    # "ex":Ljava/lang/Exception;
    :cond_f
    new-instance v13, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    invoke-direct {v13}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;-><init>()V

    .line 363
    .local v13, "filter":Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    .line 364
    move-object v9, v13

    goto/16 :goto_7

    .line 396
    .end local v13    # "filter":Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;
    :cond_10
    invoke-interface/range {v18 .. v18}, Lorg/xml/sax/XMLReader;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v3

    if-nez v3, :cond_11

    .line 397
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 399
    :cond_11
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 405
    :try_start_f
    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->startParse(Lorg/xml/sax/InputSource;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 460
    .end local v9    # "coParser":Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    :goto_b
    if-eqz v18, :cond_13

    :try_start_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_incremental:Z

    if-eqz v3, :cond_12

    if-nez p4, :cond_13

    .line 461
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 467
    :try_start_11
    const-string v3, "http://xml.org/sax/properties/lexical-handler"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v4}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 471
    :cond_13
    :goto_c
    :try_start_12
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_0

    .line 406
    .restart local v9    # "coParser":Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    :catch_2
    move-exception v17

    .line 408
    .local v17, "re":Ljava/lang/RuntimeException;
    :try_start_13
    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    .line 410
    throw v17

    .line 411
    .end local v17    # "re":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v11

    .line 413
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    .line 415
    new-instance v3, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v3, v11}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 418
    .end local v9    # "coParser":Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_14
    if-nez v18, :cond_17

    .line 460
    if-eqz v18, :cond_16

    :try_start_14
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_incremental:Z

    if-eqz v3, :cond_15

    if-nez p4, :cond_16

    .line 461
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 467
    :try_start_15
    const-string v3, "http://xml.org/sax/properties/lexical-handler"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v4}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 471
    :cond_16
    :goto_d
    :try_start_16
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_0

    .line 425
    :cond_17
    :try_start_17
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 426
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 427
    invoke-interface/range {v18 .. v18}, Lorg/xml/sax/XMLReader;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v3

    if-nez v3, :cond_18

    .line 428
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 432
    :cond_18
    :try_start_18
    const-string v3, "http://xml.org/sax/properties/lexical-handler"

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_18
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_18 .. :try_end_18} :catch_9
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 439
    :goto_e
    :try_start_19
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_4
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_5
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    goto/16 :goto_b

    .line 440
    :catch_4
    move-exception v17

    .line 441
    .restart local v17    # "re":Ljava/lang/RuntimeException;
    :try_start_1a
    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    .line 443
    throw v17

    .line 444
    .end local v17    # "re":Ljava/lang/RuntimeException;
    :catch_5
    move-exception v11

    .line 445
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    .line 447
    new-instance v3, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v3, v11}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 477
    .end local v2    # "dtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v14    # "haveXercesParser":Z
    .end local v18    # "reader":Lorg/xml/sax/XMLReader;
    .end local v20    # "xmlSource":Lorg/xml/sax/InputSource;
    :cond_19
    :try_start_1b
    new-instance v3, Lorg/apache/xml/dtm/DTMException;

    const-string v4, "ER_NOT_SUPPORTED"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v6, v8

    invoke-static {v4, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 469
    .restart local v18    # "reader":Lorg/xml/sax/XMLReader;
    :catch_6
    move-exception v4

    goto/16 :goto_a

    .restart local v2    # "dtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
    .restart local v14    # "haveXercesParser":Z
    .restart local v20    # "xmlSource":Lorg/xml/sax/InputSource;
    :catch_7
    move-exception v3

    goto/16 :goto_c

    .line 436
    :catch_8
    move-exception v3

    goto :goto_e

    .line 435
    :catch_9
    move-exception v3

    goto :goto_e

    .line 469
    :catch_a
    move-exception v3

    goto :goto_d

    .restart local v9    # "coParser":Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    :catch_b
    move-exception v3

    goto/16 :goto_8
.end method

.method public declared-synchronized getDTMHandleFromNode(Lorg/w3c/dom/Node;)I
    .locals 15
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v14, -0x1

    .line 493
    monitor-enter p0

    if-nez p1, :cond_0

    .line 494
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ER_NODE_NON_NULL"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    .end local p1    # "node":Lorg/w3c/dom/Node;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 496
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :cond_0
    :try_start_1
    move-object/from16 v0, p1

    instance-of v1, v0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    if-eqz v1, :cond_2

    .line 497
    check-cast p1, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getDTMNodeNumber()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 578
    :cond_1
    monitor-exit p0

    return v8

    .line 522
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :cond_2
    :try_start_2
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    array-length v10, v1

    .line 523
    .local v10, "max":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v10, :cond_4

    .line 525
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    aget-object v13, v1, v9

    .line 526
    .local v13, "thisDTM":Lorg/apache/xml/dtm/DTM;
    if-eqz v13, :cond_3

    instance-of v1, v13, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;

    if-eqz v1, :cond_3

    .line 528
    check-cast v13, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;

    .end local v13    # "thisDTM":Lorg/apache/xml/dtm/DTM;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleOfNode(Lorg/w3c/dom/Node;)I

    move-result v8

    .line 529
    .local v8, "handle":I
    if-ne v8, v14, :cond_1

    .line 523
    .end local v8    # "handle":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 552
    :cond_4
    move-object/from16 v12, p1

    .line 553
    .local v12, "root":Lorg/w3c/dom/Node;
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    move-object v0, v12

    check-cast v0, Lorg/w3c/dom/Attr;

    move-object v1, v0

    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v11

    .line 554
    .local v11, "p":Lorg/w3c/dom/Node;
    :goto_1
    if-eqz v11, :cond_6

    .line 556
    move-object v12, v11

    .line 554
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v11

    goto :goto_1

    .line 553
    .end local v11    # "p":Lorg/w3c/dom/Node;
    :cond_5
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v11

    goto :goto_1

    .line 559
    .restart local v11    # "p":Lorg/w3c/dom/Node;
    :cond_6
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, v12}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    move-result-object v7

    check-cast v7, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;

    .line 564
    .local v7, "dtm":Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;
    move-object/from16 v0, p1

    instance-of v1, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;

    if-eqz v1, :cond_7

    .line 569
    move-object/from16 v0, p1

    check-cast v0, Lorg/w3c/dom/Attr;

    move-object v1, v0

    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleOfNode(Lorg/w3c/dom/Node;)I

    move-result v8

    .line 570
    .restart local v8    # "handle":I
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v8, v1, v2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 575
    :goto_2
    if-ne v14, v8, :cond_1

    .line 576
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ER_COULD_NOT_RESOLVE_NODE"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 573
    .end local v8    # "handle":I
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleOfNode(Lorg/w3c/dom/Node;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    .restart local v8    # "handle":I
    goto :goto_2
.end method

.method public declared-synchronized getDTMIdentity(Lorg/apache/xml/dtm/DTM;)I
    .locals 7
    .param p1, "dtm"    # Lorg/apache/xml/dtm/DTM;

    .prologue
    const/4 v5, -0x1

    .line 673
    monitor-enter p0

    :try_start_0
    instance-of v6, p1, Lorg/apache/xml/dtm/ref/DTMDefaultBase;

    if-eqz v6, :cond_1

    .line 675
    move-object v0, p1

    check-cast v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;

    move-object v1, v0

    .line 676
    .local v1, "dtmdb":Lorg/apache/xml/dtm/ref/DTMDefaultBase;
    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v6

    if-ne v6, p0, :cond_0

    .line 677
    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDTMIDs()Lorg/apache/xml/utils/SuballocatedIntVector;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 692
    .end local v1    # "dtmdb":Lorg/apache/xml/dtm/ref/DTMDefaultBase;
    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    .line 682
    :cond_1
    :try_start_1
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    array-length v3, v6

    .line 684
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 686
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    aget-object v4, v6, v2

    .line 688
    .local v4, "tdtm":Lorg/apache/xml/dtm/DTM;
    if-ne v4, p1, :cond_2

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    aget v6, v6, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_2

    .line 689
    shl-int/lit8 v5, v2, 0x10

    goto :goto_0

    .line 684
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 673
    .end local v2    # "i":I
    .end local v3    # "n":I
    .end local v4    # "tdtm":Lorg/apache/xml/dtm/DTM;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getExpandedNameTable(Lorg/apache/xml/dtm/DTM;)Lorg/apache/xml/dtm/ref/ExpandedNameTable;
    .locals 1
    .param p1, "dtm"    # Lorg/apache/xml/dtm/DTM;

    .prologue
    .line 857
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    return-object v0
.end method

.method public declared-synchronized getFirstFreeDTMID()I
    .locals 3

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    array-length v1, v2

    .line 187
    .local v1, "n":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 189
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    aget-object v2, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 194
    .end local v0    # "i":I
    :goto_1
    monitor-exit p0

    return v0

    .line 187
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 194
    goto :goto_1

    .line 186
    .end local v0    # "i":I
    .end local v1    # "n":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getXMLReader(Ljavax/xml/transform/Source;)Lorg/xml/sax/XMLReader;
    .locals 4
    .param p1, "inputSource"    # Ljavax/xml/transform/Source;

    .prologue
    .line 601
    monitor-enter p0

    :try_start_0
    instance-of v2, p1, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v2, :cond_2

    check-cast p1, Ljavax/xml/transform/sax/SAXSource;

    .end local p1    # "inputSource":Ljavax/xml/transform/Source;
    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 605
    .local v0, "reader":Lorg/xml/sax/XMLReader;
    :goto_0
    if-nez v0, :cond_1

    .line 606
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    if-nez v2, :cond_0

    .line 607
    invoke-static {}, Lorg/apache/xml/utils/XMLReaderManager;->getInstance()Lorg/apache/xml/utils/XMLReaderManager;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    .line 610
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    invoke-virtual {v2}, Lorg/apache/xml/utils/XMLReaderManager;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 613
    :cond_1
    monitor-exit p0

    return-object v0

    .line 601
    .end local v0    # "reader":Lorg/xml/sax/XMLReader;
    .restart local p1    # "inputSource":Ljavax/xml/transform/Source;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 615
    .end local p1    # "inputSource":Ljavax/xml/transform/Source;
    :catch_0
    move-exception v1

    .line 616
    .local v1, "se":Lorg/xml/sax/SAXException;
    :try_start_1
    new-instance v2, Lorg/apache/xml/dtm/DTMException;

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 601
    .end local v1    # "se":Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized release(Lorg/apache/xml/dtm/DTM;Z)Z
    .locals 6
    .param p1, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .param p2, "shouldHardDelete"    # Z

    .prologue
    .line 723
    monitor-enter p0

    :try_start_0
    instance-of v3, p1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;

    if-eqz v3, :cond_0

    .line 725
    move-object v0, p1

    check-cast v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    .line 736
    :cond_0
    instance-of v3, p1, Lorg/apache/xml/dtm/ref/DTMDefaultBase;

    if-eqz v3, :cond_1

    .line 738
    move-object v0, p1

    check-cast v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDTMIDs()Lorg/apache/xml/utils/SuballocatedIntVector;

    move-result-object v2

    .line 739
    .local v2, "ids":Lorg/apache/xml/utils/SuballocatedIntVector;
    invoke-virtual {v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 740
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    ushr-int/lit8 v4, v4, 0x10

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 739
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 744
    .end local v1    # "i":I
    .end local v2    # "ids":Lorg/apache/xml/utils/SuballocatedIntVector;
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getDTMIdentity(Lorg/apache/xml/dtm/DTM;)I

    move-result v1

    .line 745
    .restart local v1    # "i":I
    if-ltz v1, :cond_2

    .line 747
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    ushr-int/lit8 v4, v1, 0x10

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 751
    :cond_2
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTM;->documentRelease()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    const/4 v3, 0x1

    monitor-exit p0

    return v3

    .line 723
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 1
    .param p1, "reader"    # Lorg/xml/sax/XMLReader;

    .prologue
    .line 631
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/XMLReaderManager;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    :cond_0
    monitor-exit p0

    return-void

    .line 631
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
