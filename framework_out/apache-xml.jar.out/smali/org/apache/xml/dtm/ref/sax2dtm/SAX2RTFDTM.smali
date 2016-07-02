.class public Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;
.super Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
.source "SAX2RTFDTM.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private m_currentDocumentNode:I

.field m_emptyCharsCount:I

.field m_emptyDataCount:I

.field m_emptyDataQNCount:I

.field m_emptyNSDeclSetCount:I

.field m_emptyNSDeclSetElemsCount:I

.field m_emptyNodeCount:I

.field mark_char_size:Lorg/apache/xml/utils/IntStack;

.field mark_data_size:Lorg/apache/xml/utils/IntStack;

.field mark_doq_size:Lorg/apache/xml/utils/IntStack;

.field mark_nsdeclelem_size:Lorg/apache/xml/utils/IntStack;

.field mark_nsdeclset_size:Lorg/apache/xml/utils/IntStack;

.field mark_size:Lorg/apache/xml/utils/IntStack;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V
    .locals 3
    .param p1, "mgr"    # Lorg/apache/xml/dtm/DTMManager;
    .param p2, "source"    # Ljavax/xml/transform/Source;
    .param p3, "dtmIdentity"    # I
    .param p4, "whiteSpaceFilter"    # Lorg/apache/xml/dtm/DTMWSFilter;
    .param p5, "xstringfactory"    # Lorg/apache/xml/utils/XMLStringFactory;
    .param p6, "doIndexing"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 126
    invoke-direct/range {p0 .. p6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    .line 71
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_size:Lorg/apache/xml/utils/IntStack;

    .line 73
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_data_size:Lorg/apache/xml/utils/IntStack;

    .line 75
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_char_size:Lorg/apache/xml/utils/IntStack;

    .line 77
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_doq_size:Lorg/apache/xml/utils/IntStack;

    .line 83
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclset_size:Lorg/apache/xml/utils/IntStack;

    .line 89
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclelem_size:Lorg/apache/xml/utils/IntStack;

    .line 132
    iput-boolean v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_useSourceLocationProperty:Z

    .line 133
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_useSourceLocationProperty:Z

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/xml/utils/StringVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/StringVector;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

    .line 135
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_useSourceLocationProperty:Z

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/xml/utils/IntVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntVector;-><init>()V

    :goto_1
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_sourceLine:Lorg/apache/xml/utils/IntVector;

    .line 136
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_useSourceLocationProperty:Z

    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/xml/utils/IntVector;

    invoke-direct {v1}, Lorg/apache/xml/utils/IntVector;-><init>()V

    :cond_0
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_sourceColumn:Lorg/apache/xml/utils/IntVector;

    .line 141
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNodeCount:I

    .line 142
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSets:Ljava/util/Vector;

    if-nez v0, :cond_3

    move v0, v2

    :goto_2
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNSDeclSetCount:I

    .line 144
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-nez v0, :cond_4

    :goto_3
    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNSDeclSetElemsCount:I

    .line 146
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyDataCount:I

    .line 147
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyCharsCount:I

    .line 148
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyDataQNCount:I

    .line 149
    return-void

    :cond_1
    move-object v0, v1

    .line 133
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 135
    goto :goto_1

    .line 142
    :cond_3
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_2

    .line 144
    :cond_4
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v2

    goto :goto_3
.end method


# virtual methods
.method protected _documentRoot(I)I
    .locals 2
    .param p1, "nodeIdentifier"    # I

    .prologue
    const/4 v1, -0x1

    .line 201
    if-ne p1, v1, :cond_0

    .line 208
    :goto_0
    return v1

    .line 203
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->_parent(I)I

    move-result v0

    .line 204
    .local v0, "parent":I
    :goto_1
    if-eq v0, v1, :cond_1

    .line 205
    move p1, v0

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->_parent(I)I

    move-result v0

    goto :goto_1

    :cond_1
    move v1, p1

    .line 208
    goto :goto_0
.end method

.method public endDocument()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 249
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->charactersFlush()V

    .line 251
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 253
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 254
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 256
    :cond_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_previous:I

    if-eq v2, v0, :cond_1

    .line 257
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_previous:I

    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 259
    :cond_1
    iput-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    .line 260
    iput-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_prefixMappings:Ljava/util/Vector;

    .line 261
    iput-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    .line 263
    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_endDocumentOccured:Z

    .line 265
    return-void
.end method

.method public getDocument()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->makeNodeHandle(I)I

    move-result v0

    return v0
.end method

.method public getDocumentRoot(I)I
    .locals 4
    .param p1, "nodeHandle"    # I

    .prologue
    const/4 v1, -0x1

    .line 182
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->makeNodeIdentity(I)I

    move-result v0

    .local v0, "id":I
    :goto_0
    if-eq v0, v1, :cond_0

    .line 183
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->_type(I)S

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 184
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->makeNodeHandle(I)I

    move-result v1

    .line 188
    :cond_0
    return v1

    .line 182
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->_parent(I)I

    move-result v0

    goto :goto_0
.end method

.method public isTreeIncomplete()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_endDocumentOccured:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public popRewindMark()Z
    .locals 5

    .prologue
    .line 326
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_size:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->empty()Z

    move-result v2

    .line 328
    .local v2, "top":Z
    if-eqz v2, :cond_2

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNodeCount:I

    :goto_0
    iput v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    .line 329
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    .line 330
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    .line 331
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    .line 332
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    .line 333
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    .line 335
    const/4 v3, 0x0

    check-cast v3, [[[I

    iput-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_elemIndexes:[[[I

    .line 337
    if-eqz v2, :cond_3

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNSDeclSetCount:I

    .line 338
    .local v0, "ds":I
    :goto_1
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSets:Ljava/util/Vector;

    if-eqz v3, :cond_0

    .line 339
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->setSize(I)V

    .line 342
    :cond_0
    if-eqz v2, :cond_4

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNSDeclSetElemsCount:I

    .line 343
    .local v1, "ds1":I
    :goto_2
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz v3, :cond_1

    .line 344
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v3, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    .line 348
    :cond_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz v2, :cond_5

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyDataCount:I

    :goto_3
    invoke-virtual {v4, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    .line 349
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v2, :cond_6

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyCharsCount:I

    :goto_4
    invoke-virtual {v4, v3}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    .line 350
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz v2, :cond_7

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyDataQNCount:I

    :goto_5
    invoke-virtual {v4, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    .line 353
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    if-nez v3, :cond_8

    const/4 v3, 0x1

    :goto_6
    return v3

    .line 328
    .end local v0    # "ds":I
    .end local v1    # "ds1":I
    :cond_2
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_size:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v3

    goto :goto_0

    .line 337
    :cond_3
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclset_size:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v0

    goto :goto_1

    .line 342
    .restart local v0    # "ds":I
    :cond_4
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclelem_size:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v1

    goto :goto_2

    .line 348
    .restart local v1    # "ds1":I
    :cond_5
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_data_size:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v3

    goto :goto_3

    .line 349
    :cond_6
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_char_size:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v3

    goto :goto_4

    .line 350
    :cond_7
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_doq_size:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v3

    goto :goto_5

    .line 353
    :cond_8
    const/4 v3, 0x0

    goto :goto_6
.end method

.method public pushRewindMark()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 280
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_indexing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_elemIndexes:[[[I

    if-eqz v0, :cond_1

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Coding error; Don\'t try to mark/rewind an indexed DTM"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_1
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_size:Lorg/apache/xml/utils/IntStack;

    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    invoke-virtual {v0, v2}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 286
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclset_size:Lorg/apache/xml/utils/IntStack;

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSets:Ljava/util/Vector;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 289
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclelem_size:Lorg/apache/xml/utils/IntStack;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 294
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_data_size:Lorg/apache/xml/utils/IntStack;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 295
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_char_size:Lorg/apache/xml/utils/IntStack;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v1}, Lorg/apache/xml/utils/FastStringBuffer;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 296
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_doq_size:Lorg/apache/xml/utils/IntStack;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 297
    return-void

    .line 286
    :cond_2
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    .line 289
    :cond_3
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v1

    goto :goto_1
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_endDocumentOccured:Z

    .line 227
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_prefixMappings:Ljava/util/Vector;

    .line 228
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    .line 229
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    .line 231
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    .line 232
    invoke-super {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->startDocument()V

    .line 233
    return-void
.end method
