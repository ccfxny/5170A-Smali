.class public Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.source "DOM2DTM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;
    }
.end annotation


# static fields
.field static final JJK_DEBUG:Z = false

.field static final JJK_NEWCODE:Z = true

.field static final NAMESPACE_DECL_NS:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field private m_last_kid:I

.field private m_last_parent:I

.field protected m_nodes:Ljava/util/Vector;

.field private transient m_nodesAreProcessed:Z

.field private transient m_pos:Lorg/w3c/dom/Node;

.field m_processedFirstElement:Z

.field private transient m_root:Lorg/w3c/dom/Node;

.field m_walker:Lorg/apache/xml/utils/TreeWalker;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/dom/DOMSource;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V
    .locals 9
    .param p1, "mgr"    # Lorg/apache/xml/dtm/DTMManager;
    .param p2, "domSource"    # Ljavax/xml/transform/dom/DOMSource;
    .param p3, "dtmIdentity"    # I
    .param p4, "whiteSpaceFilter"    # Lorg/apache/xml/dtm/DTMWSFilter;
    .param p5, "xstringfactory"    # Lorg/apache/xml/utils/XMLStringFactory;
    .param p6, "doIndexing"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v8, -0x1

    .line 123
    invoke-direct/range {p0 .. p6}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    .line 79
    iput v4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    .line 82
    iput v8, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    .line 91
    iput-boolean v4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    .line 104
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    .line 1702
    new-instance v5, Lorg/apache/xml/utils/TreeWalker;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lorg/apache/xml/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;)V

    iput-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_walker:Lorg/apache/xml/utils/TreeWalker;

    .line 127
    invoke-virtual {p2}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    iput-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_pos:Lorg/w3c/dom/Node;

    .line 129
    iput v8, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    iput v8, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    .line 130
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    iget v6, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    iget v7, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    invoke-virtual {p0, v5, v6, v7, v8}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    move-result v5

    iput v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    .line 143
    const/4 v5, 0x1

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    if-ne v5, v6, :cond_2

    .line 145
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 146
    .local v1, "attrs":Lorg/w3c/dom/NamedNodeMap;
    if-nez v1, :cond_0

    move v2, v4

    .line 147
    .local v2, "attrsize":I
    :goto_0
    if-lez v2, :cond_2

    .line 149
    const/4 v0, -0x1

    .line 150
    .local v0, "attrIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 155
    invoke-interface {v1, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {p0, v5, v4, v0, v8}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    move-result v0

    .line 156
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v5, v8, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 150
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 146
    .end local v0    # "attrIndex":I
    .end local v2    # "attrsize":I
    .end local v3    # "i":I
    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    goto :goto_0

    .line 160
    .restart local v0    # "attrIndex":I
    .restart local v2    # "attrsize":I
    .restart local v3    # "i":I
    :cond_1
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v5, v8, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 167
    .end local v0    # "attrIndex":I
    .end local v1    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .end local v2    # "attrsize":I
    .end local v3    # "i":I
    :cond_2
    iput-boolean v4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodesAreProcessed:Z

    .line 168
    return-void
.end method

.method protected static dispatchNodeData(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;I)V
    .locals 5
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .param p1, "ch"    # Lorg/xml/sax/ContentHandler;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1661
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1700
    .end local p1    # "ch":Lorg/xml/sax/ContentHandler;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1667
    .restart local p1    # "ch":Lorg/xml/sax/ContentHandler;
    :pswitch_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .local v0, "child":Lorg/w3c/dom/Node;
    :goto_1
    if-eqz v0, :cond_0

    .line 1670
    add-int/lit8 v2, p2, 0x1

    invoke-static {v0, p1, v2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->dispatchNodeData(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;I)V

    .line 1668
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    .line 1676
    .end local v0    # "child":Lorg/w3c/dom/Node;
    :pswitch_2
    if-nez p2, :cond_0

    .line 1683
    :pswitch_3
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 1684
    .local v1, "str":Ljava/lang/String;
    instance-of v2, p1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;

    if-eqz v2, :cond_1

    .line 1686
    check-cast p1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;

    .end local p1    # "ch":Lorg/xml/sax/ContentHandler;
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;->characters(Lorg/w3c/dom/Node;)V

    goto :goto_0

    .line 1690
    .restart local p1    # "ch":Lorg/xml/sax/ContentHandler;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto :goto_0

    .line 1661
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getHandleFromNode(Lorg/w3c/dom/Node;)I
    .locals 4
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 666
    if-eqz p1, :cond_3

    .line 668
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 670
    .local v2, "len":I
    const/4 v0, 0x0

    .line 673
    .local v0, "i":I
    :cond_0
    :goto_0
    if-ge v0, v2, :cond_2

    .line 675
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 676
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeHandle(I)I

    move-result v3

    .line 687
    .end local v0    # "i":I
    .end local v2    # "len":I
    :goto_1
    return v3

    .line 673
    .restart local v0    # "i":I
    .restart local v2    # "len":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 679
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->nextNode()Z

    move-result v1

    .line 681
    .local v1, "isMore":Z
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 684
    if-nez v1, :cond_0

    if-lt v0, v2, :cond_0

    .line 687
    .end local v0    # "i":I
    .end local v1    # "isMore":Z
    .end local v2    # "len":I
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method protected static getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 2
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .param p1, "buf"    # Lorg/apache/xml/utils/FastStringBuffer;

    .prologue
    .line 919
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 944
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 925
    :pswitch_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .local v0, "child":Lorg/w3c/dom/Node;
    :goto_1
    if-eqz v0, :cond_0

    .line 928
    invoke-static {v0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 926
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    .line 935
    .end local v0    # "child":Lorg/w3c/dom/Node;
    :pswitch_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 919
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static isSpace(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 1591
    invoke-static {p0}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v0

    return v0
.end method

.method private logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 4
    .param p1, "n"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v3, 0x5

    .line 1190
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1191
    .local v1, "p":Lorg/w3c/dom/Node;
    if-nez v1, :cond_0

    .line 1194
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    .line 1195
    :goto_0
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v3, v2, :cond_0

    .line 1198
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1199
    if-eqz v1, :cond_1

    .line 1203
    :cond_0
    move-object p1, v1

    .line 1204
    :goto_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v3, v2, :cond_3

    .line 1207
    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1208
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_1

    .line 1196
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    .line 1210
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_1

    .line 1212
    :cond_3
    if-eqz p1, :cond_4

    .line 1215
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    .line 1216
    .local v0, "ntype":I
    const/4 v2, 0x3

    if-eq v2, v0, :cond_4

    const/4 v2, 0x4

    if-eq v2, v0, :cond_4

    .line 1217
    const/4 p1, 0x0

    .line 1219
    .end local v0    # "ntype":I
    :cond_4
    return-object p1
.end method


# virtual methods
.method protected addNode(Lorg/w3c/dom/Node;III)I
    .locals 13
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "parentIndex"    # I
    .param p3, "previousSibling"    # I
    .param p4, "forceNodeType"    # I

    .prologue
    .line 185
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v8

    .line 188
    .local v8, "nodeIndex":I
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v11}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v11

    ushr-int/lit8 v12, v8, 0x10

    if-ne v11, v12, :cond_0

    .line 192
    :try_start_0
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    if-nez v11, :cond_9

    .line 193
    new-instance v11, Ljava/lang/ClassCastException;

    invoke-direct {v11}, Ljava/lang/ClassCastException;-><init>()V

    throw v11
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v11, "ER_NO_DTMIDS_AVAIL"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->error(Ljava/lang/String;)V

    .line 210
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_0
    :goto_0
    iget v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_size:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_size:I

    .line 214
    const/4 v11, -0x1

    move/from16 v0, p4

    if-ne v11, v0, :cond_a

    .line 215
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    .line 236
    .local v10, "type":I
    :goto_1
    const/4 v11, 0x2

    if-ne v11, v10, :cond_2

    .line 238
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    .line 240
    .local v7, "name":Ljava/lang/String;
    const-string v11, "xmlns:"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "xmlns"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 242
    :cond_1
    const/16 v10, 0xd

    .line 246
    .end local v7    # "name":Ljava/lang/String;
    :cond_2
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v11, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 248
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    const/4 v12, -0x2

    invoke-virtual {v11, v12, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 249
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    const/4 v12, -0x2

    invoke-virtual {v11, v12, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 250
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    move/from16 v0, p3

    invoke-virtual {v11, v0, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 251
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v11, p2, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 253
    const/4 v11, -0x1

    if-eq v11, p2, :cond_3

    const/4 v11, 0x2

    if-eq v10, v11, :cond_3

    const/16 v11, 0xd

    if-eq v10, v11, :cond_3

    .line 258
    const/4 v11, -0x2

    iget-object v12, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v12, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v12

    if-ne v11, v12, :cond_3

    .line 259
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v11, v8, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 262
    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    .line 267
    .local v9, "nsURI":Ljava/lang/String;
    const/4 v11, 0x7

    if-ne v10, v11, :cond_b

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, "localName":Ljava/lang/String;
    :goto_2
    const/4 v11, 0x1

    if-eq v10, v11, :cond_4

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    :cond_4
    if-nez v5, :cond_5

    .line 274
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 276
    :cond_5
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    .line 286
    .local v2, "exnt":Lorg/apache/xml/dtm/ref/ExpandedNameTable;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_6

    const/4 v11, 0x1

    if-eq v10, v11, :cond_6

    const/4 v11, 0x2

    if-ne v10, v11, :cond_6

    .line 292
    :cond_6
    if-eqz v5, :cond_c

    invoke-virtual {v2, v9, v5, v10}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 296
    .local v3, "expandedNameID":I
    :goto_3
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v11, v3, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 298
    invoke-virtual {p0, v3, v8}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->indexNode(II)V

    .line 300
    const/4 v11, -0x1

    move/from16 v0, p3

    if-eq v11, v0, :cond_7

    .line 301
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    move/from16 v0, p3

    invoke-virtual {v11, v8, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 305
    :cond_7
    const/16 v11, 0xd

    if-ne v10, v11, :cond_8

    .line 306
    invoke-virtual {p0, p2, v8}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->declareNamespaceInContext(II)V

    .line 308
    :cond_8
    return v8

    .line 196
    .end local v2    # "exnt":Lorg/apache/xml/dtm/ref/ExpandedNameTable;
    .end local v3    # "expandedNameID":I
    .end local v5    # "localName":Ljava/lang/String;
    .end local v9    # "nsURI":Ljava/lang/String;
    .end local v10    # "type":I
    :cond_9
    :try_start_1
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    check-cast v6, Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    .line 197
    .local v6, "mgrD":Lorg/apache/xml/dtm/ref/DTMManagerDefault;
    invoke-virtual {v6}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getFirstFreeDTMID()I

    move-result v4

    .line 198
    .local v4, "id":I
    invoke-virtual {v6, p0, v4, v8}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->addDTM(Lorg/apache/xml/dtm/DTM;II)V

    .line 199
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    shl-int/lit8 v12, v4, 0x10

    invoke-virtual {v11, v12}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 217
    .end local v4    # "id":I
    .end local v6    # "mgrD":Lorg/apache/xml/dtm/ref/DTMManagerDefault;
    :cond_a
    move/from16 v10, p4

    .restart local v10    # "type":I
    goto/16 :goto_1

    .line 267
    .restart local v9    # "nsURI":Ljava/lang/String;
    :cond_b
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 292
    .restart local v2    # "exnt":Lorg/apache/xml/dtm/ref/ExpandedNameTable;
    .restart local v5    # "localName":Ljava/lang/String;
    :cond_c
    invoke-virtual {v2, v10}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(I)I

    move-result v3

    goto :goto_3
.end method

.method public dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .locals 5
    .param p1, "nodeHandle"    # I
    .param p2, "ch"    # Lorg/xml/sax/ContentHandler;
    .param p3, "normalize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1612
    if-eqz p3, :cond_1

    .line 1614
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    .line 1615
    .local v1, "str":Lorg/apache/xml/utils/XMLString;
    invoke-interface {v1, v3, v3, v4}, Lorg/apache/xml/utils/XMLString;->fixWhiteSpace(ZZZ)Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    .line 1616
    invoke-interface {v1, p2}, Lorg/apache/xml/utils/XMLString;->dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V

    .line 1633
    .end local v1    # "str":Lorg/apache/xml/utils/XMLString;
    :cond_0
    return-void

    .line 1620
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    move-result v2

    .line 1621
    .local v2, "type":I
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1622
    .local v0, "node":Lorg/w3c/dom/Node;
    invoke-static {v0, p2, v4}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->dispatchNodeData(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;I)V

    .line 1625
    const/4 v3, 0x3

    if-eq v3, v2, :cond_2

    const/4 v3, 0x4

    if-ne v3, v2, :cond_0

    .line 1627
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1629
    invoke-static {v0, p2, v4}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->dispatchNodeData(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;I)V

    goto :goto_0
.end method

.method public dispatchToEvents(ILorg/xml/sax/ContentHandler;)V
    .locals 5
    .param p1, "nodeHandle"    # I
    .param p2, "ch"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1715
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_walker:Lorg/apache/xml/utils/TreeWalker;

    .line 1716
    .local v2, "treeWalker":Lorg/apache/xml/utils/TreeWalker;
    invoke-virtual {v2}, Lorg/apache/xml/utils/TreeWalker;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    .line 1718
    .local v1, "prevCH":Lorg/xml/sax/ContentHandler;
    if-eqz v1, :cond_0

    .line 1720
    new-instance v2, Lorg/apache/xml/utils/TreeWalker;

    .end local v2    # "treeWalker":Lorg/apache/xml/utils/TreeWalker;
    invoke-direct {v2, v4}, Lorg/apache/xml/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 1722
    .restart local v2    # "treeWalker":Lorg/apache/xml/utils/TreeWalker;
    :cond_0
    invoke-virtual {v2, p2}, Lorg/apache/xml/utils/TreeWalker;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 1726
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1727
    .local v0, "node":Lorg/w3c/dom/Node;
    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/TreeWalker;->traverseFragment(Lorg/w3c/dom/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1731
    invoke-virtual {v2, v4}, Lorg/apache/xml/utils/TreeWalker;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 1733
    return-void

    .line 1731
    .end local v0    # "node":Lorg/w3c/dom/Node;
    :catchall_0
    move-exception v3

    invoke-virtual {v2, v4}, Lorg/apache/xml/utils/TreeWalker;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    throw v3
.end method

.method public getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "nodeHandle"    # I
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 756
    if-nez p2, :cond_0

    .line 757
    const-string p2, ""

    .line 759
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    move-result v4

    .line 761
    .local v4, "type":I
    const/4 v6, 0x1

    if-ne v6, v4, :cond_4

    .line 765
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeIdentity(I)I

    move-result v0

    .line 767
    .local v0, "identity":I
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNextNodeIdentity(I)I

    move-result v0

    if-eq v5, v0, :cond_4

    .line 770
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->_type(I)S

    move-result v4

    .line 779
    const/4 v6, 0x2

    if-eq v4, v6, :cond_2

    const/16 v6, 0xd

    if-ne v4, v6, :cond_4

    .line 781
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->lookupNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 782
    .local v1, "node":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 784
    .local v3, "nodeuri":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 785
    const-string v3, ""

    .line 787
    :cond_3
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    .line 789
    .local v2, "nodelocalname":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 790
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeHandle(I)I

    move-result v5

    .line 800
    .end local v0    # "identity":I
    .end local v1    # "node":Lorg/w3c/dom/Node;
    .end local v2    # "nodelocalname":Ljava/lang/String;
    .end local v3    # "nodeuri":Ljava/lang/String;
    :cond_4
    return v5
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .prologue
    .line 1506
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    .prologue
    .line 1545
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
    .locals 1

    .prologue
    .line 1567
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentTypeDeclarationPublicIdentifier()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1310
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 1311
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Document;

    .line 1315
    .local v0, "doc":Lorg/w3c/dom/Document;
    :goto_0
    if-eqz v0, :cond_1

    .line 1317
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v1

    .line 1319
    .local v1, "dtd":Lorg/w3c/dom/DocumentType;
    if-eqz v1, :cond_1

    .line 1321
    invoke-interface {v1}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v2

    .line 1325
    .end local v1    # "dtd":Lorg/w3c/dom/DocumentType;
    :goto_1
    return-object v2

    .line 1313
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .restart local v0    # "doc":Lorg/w3c/dom/Document;
    goto :goto_0

    .line 1325
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getDocumentTypeDeclarationSystemIdentifier()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1279
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 1280
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Document;

    .line 1284
    .local v0, "doc":Lorg/w3c/dom/Document;
    :goto_0
    if-eqz v0, :cond_1

    .line 1286
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v1

    .line 1288
    .local v1, "dtd":Lorg/w3c/dom/DocumentType;
    if-eqz v1, :cond_1

    .line 1290
    invoke-interface {v1}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 1294
    .end local v1    # "dtd":Lorg/w3c/dom/DocumentType;
    :goto_1
    return-object v2

    .line 1282
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .restart local v0    # "doc":Lorg/w3c/dom/Document;
    goto :goto_0

    .line 1294
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getElementById(Ljava/lang/String;)I
    .locals 8
    .param p1, "elementId"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 1348
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/16 v7, 0x9

    if-ne v5, v7, :cond_2

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    check-cast v5, Lorg/w3c/dom/Document;

    move-object v0, v5

    .line 1351
    .local v0, "doc":Lorg/w3c/dom/Document;
    :goto_0
    if-eqz v0, :cond_3

    .line 1353
    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 1354
    .local v1, "elem":Lorg/w3c/dom/Node;
    if-eqz v1, :cond_3

    .line 1356
    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v2

    .line 1358
    .local v2, "elemHandle":I
    if-ne v6, v2, :cond_1

    .line 1360
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 1361
    .local v3, "identity":I
    :cond_0
    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNextNodeIdentity(I)I

    move-result v3

    if-eq v6, v3, :cond_1

    .line 1363
    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 1364
    .local v4, "node":Lorg/w3c/dom/Node;
    if-ne v4, v1, :cond_0

    .line 1366
    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v2

    .line 1376
    .end local v1    # "elem":Lorg/w3c/dom/Node;
    .end local v2    # "elemHandle":I
    .end local v3    # "identity":I
    .end local v4    # "node":Lorg/w3c/dom/Node;
    :cond_1
    :goto_1
    return v2

    .line 1348
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    :cond_2
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_0

    .restart local v0    # "doc":Lorg/w3c/dom/Document;
    :cond_3
    move v2, v6

    .line 1376
    goto :goto_1
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    .prologue
    .line 1534
    const/4 v0, 0x0

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .prologue
    .line 1556
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandleOfNode(Lorg/w3c/dom/Node;)I
    .locals 4
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/16 v3, 0x9

    .line 705
    if-eqz p1, :cond_4

    .line 710
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 722
    :cond_1
    move-object v0, p1

    .line 723
    .local v0, "cursor":Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v0, :cond_4

    .line 729
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    if-ne v0, v1, :cond_2

    .line 731
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v1

    .line 736
    .end local v0    # "cursor":Lorg/w3c/dom/Node;
    :goto_1
    return v1

    .line 724
    .restart local v0    # "cursor":Lorg/w3c/dom/Node;
    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_2
    goto :goto_0

    :cond_3
    check-cast v0, Lorg/w3c/dom/Attr;

    .end local v0    # "cursor":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    goto :goto_2

    .line 736
    :cond_4
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 1

    .prologue
    .line 1522
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 7
    .param p1, "nodeHandle"    # I

    .prologue
    .line 1026
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeIdentity(I)I

    move-result v0

    .line 1027
    .local v0, "id":I
    const/4 v5, -0x1

    if-ne v5, v0, :cond_1

    const/4 v2, 0x0

    .line 1046
    :cond_0
    :goto_0
    return-object v2

    .line 1028
    :cond_1
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    .line 1029
    .local v3, "newnode":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    .line 1030
    .local v2, "newname":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1033
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 1034
    .local v4, "qname":Ljava/lang/String;
    const/16 v5, 0x23

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_2

    .line 1038
    const-string v2, ""

    goto :goto_0

    .line 1042
    :cond_2
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1043
    .local v1, "index":I
    if-gez v1, :cond_3

    move-object v2, v4

    :goto_1
    goto :goto_0

    :cond_3
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 3
    .param p1, "nodeHandle"    # I

    .prologue
    .line 1146
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeIdentity(I)I

    move-result v0

    .line 1147
    .local v0, "id":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v2, 0x0

    .line 1149
    :goto_0
    return-object v2

    .line 1148
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .line 1149
    .local v1, "node":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected getNextNodeIdentity(I)I
    .locals 1
    .param p1, "identity"    # I

    .prologue
    .line 634
    add-int/lit8 p1, p1, 0x1

    .line 636
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 638
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->nextNode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    const/4 p1, -0x1

    .line 642
    :cond_0
    return p1
.end method

.method public getNode(I)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "nodeHandle"    # I

    .prologue
    .line 607
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeIdentity(I)I

    move-result v0

    .line 609
    .local v0, "identity":I
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    return-object v1
.end method

.method public getNodeName(I)Ljava/lang/String;
    .locals 2
    .param p1, "nodeHandle"    # I

    .prologue
    .line 958
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 961
    .local v0, "node":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNodeNameX(I)Ljava/lang/String;
    .locals 4
    .param p1, "nodeHandle"    # I

    .prologue
    .line 976
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    move-result v2

    .line 978
    .local v2, "type":S
    sparse-switch v2, :sswitch_data_0

    .line 1008
    const-string v0, ""

    .line 1011
    .local v0, "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 982
    .end local v0    # "name":Ljava/lang/String;
    :sswitch_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 985
    .local v1, "node":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 986
    .restart local v0    # "name":Ljava/lang/String;
    const-string v3, "xmlns:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 988
    invoke-static {v0}, Lorg/apache/xml/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 990
    :cond_1
    const-string v3, "xmlns"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 992
    const-string v0, ""

    goto :goto_0

    .line 1001
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "node":Lorg/w3c/dom/Node;
    :sswitch_1
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1004
    .restart local v1    # "node":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 1006
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 978
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x5 -> :sswitch_1
        0x7 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public getNodeValue(I)Ljava/lang/String;
    .locals 7
    .param p1, "nodeHandle"    # I

    .prologue
    const/4 v5, -0x1

    .line 1236
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeIdentity(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->_exptype(I)I

    move-result v4

    .line 1237
    .local v4, "type":I
    if-eq v5, v4, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    move-result v4

    .line 1239
    :goto_0
    const/4 v5, 0x3

    if-eq v5, v4, :cond_1

    const/4 v5, 0x4

    if-eq v5, v4, :cond_1

    .line 1240
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 1263
    :goto_1
    return-object v3

    :cond_0
    move v4, v5

    .line 1237
    goto :goto_0

    .line 1249
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1250
    .local v2, "node":Lorg/w3c/dom/Node;
    invoke-direct {p0, v2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1251
    .local v1, "n":Lorg/w3c/dom/Node;
    if-nez v1, :cond_2

    .line 1252
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1254
    :cond_2
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    .line 1255
    .local v0, "buf":Lorg/apache/xml/utils/FastStringBuffer;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 1256
    :goto_2
    if-eqz v1, :cond_3

    .line 1258
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 1259
    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_2

    .line 1261
    :cond_3
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1262
    .local v3, "s":Ljava/lang/String;
    :goto_3
    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    goto :goto_1

    .line 1261
    .end local v3    # "s":Ljava/lang/String;
    :cond_4
    const-string v3, ""

    goto :goto_3
.end method

.method public getNumberOfNodes()I
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 6
    .param p1, "nodeHandle"    # I

    .prologue
    const/16 v5, 0x3a

    .line 1097
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    move-result v4

    .line 1099
    .local v4, "type":S
    sparse-switch v4, :sswitch_data_0

    .line 1125
    const-string v2, ""

    .line 1128
    .local v2, "prefix":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1103
    .end local v2    # "prefix":Ljava/lang/String;
    :sswitch_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1106
    .local v1, "node":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 1107
    .local v3, "qname":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1109
    .local v0, "index":I
    if-gez v0, :cond_0

    const-string v2, ""

    .line 1111
    .restart local v2    # "prefix":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 1109
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1115
    .end local v0    # "index":I
    .end local v1    # "node":Lorg/w3c/dom/Node;
    .end local v3    # "qname":Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1118
    .restart local v1    # "node":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 1119
    .restart local v3    # "qname":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1121
    .restart local v0    # "index":I
    if-gez v0, :cond_1

    const-string v2, ""

    .line 1123
    .restart local v2    # "prefix":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 1121
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1099
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;
    .locals 1
    .param p1, "node"    # I

    .prologue
    .line 1761
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStringValue(I)Lorg/apache/xml/utils/XMLString;
    .locals 6
    .param p1, "nodeHandle"    # I

    .prologue
    .line 815
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    move-result v3

    .line 816
    .local v3, "type":I
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 819
    .local v1, "node":Lorg/w3c/dom/Node;
    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/16 v4, 0x9

    if-eq v4, v3, :cond_0

    const/16 v4, 0xb

    if-ne v4, v3, :cond_2

    .line 822
    :cond_0
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    .line 827
    .local v0, "buf":Lorg/apache/xml/utils/FastStringBuffer;
    :try_start_0
    invoke-static {v1, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 829
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 833
    .local v2, "s":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 836
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    invoke-virtual {v4, v2}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    move-result-object v4

    .line 858
    .end local v0    # "buf":Lorg/apache/xml/utils/FastStringBuffer;
    .end local v2    # "s":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 829
    .restart local v0    # "buf":Lorg/apache/xml/utils/FastStringBuffer;
    :cond_1
    :try_start_1
    const-string v2, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 833
    :catchall_0
    move-exception v4

    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    throw v4

    .line 838
    .end local v0    # "buf":Lorg/apache/xml/utils/FastStringBuffer;
    :cond_2
    const/4 v4, 0x3

    if-eq v4, v3, :cond_3

    const/4 v4, 0x4

    if-ne v4, v3, :cond_6

    .line 847
    :cond_3
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    .line 848
    .restart local v0    # "buf":Lorg/apache/xml/utils/FastStringBuffer;
    :goto_2
    if-eqz v1, :cond_4

    .line 850
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 851
    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_2

    .line 853
    :cond_4
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 854
    .restart local v2    # "s":Ljava/lang/String;
    :goto_3
    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 855
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    invoke-virtual {v4, v2}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    move-result-object v4

    goto :goto_1

    .line 853
    .end local v2    # "s":Ljava/lang/String;
    :cond_5
    const-string v2, ""

    goto :goto_3

    .line 858
    .end local v0    # "buf":Lorg/apache/xml/utils/FastStringBuffer;
    :cond_6
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    move-result-object v4

    goto :goto_1
.end method

.method public getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1416
    const-string v5, ""

    .line 1417
    .local v5, "url":Ljava/lang/String;
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    check-cast v7, Lorg/w3c/dom/Document;

    move-object v0, v7

    .line 1420
    .local v0, "doc":Lorg/w3c/dom/Document;
    :goto_0
    if-eqz v0, :cond_3

    .line 1422
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v1

    .line 1424
    .local v1, "doctype":Lorg/w3c/dom/DocumentType;
    if-eqz v1, :cond_3

    .line 1426
    invoke-interface {v1}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 1427
    .local v2, "entities":Lorg/w3c/dom/NamedNodeMap;
    if-nez v2, :cond_1

    move-object v6, v5

    .line 1461
    .end local v1    # "doctype":Lorg/w3c/dom/DocumentType;
    .end local v2    # "entities":Lorg/w3c/dom/NamedNodeMap;
    .end local v5    # "url":Ljava/lang/String;
    .local v6, "url":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 1417
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "url":Ljava/lang/String;
    .restart local v5    # "url":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_0

    .line 1429
    .restart local v0    # "doc":Lorg/w3c/dom/Document;
    .restart local v1    # "doctype":Lorg/w3c/dom/DocumentType;
    .restart local v2    # "entities":Lorg/w3c/dom/NamedNodeMap;
    :cond_1
    invoke-interface {v2, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Entity;

    .line 1430
    .local v3, "entity":Lorg/w3c/dom/Entity;
    if-nez v3, :cond_2

    move-object v6, v5

    .line 1431
    .end local v5    # "url":Ljava/lang/String;
    .restart local v6    # "url":Ljava/lang/String;
    goto :goto_1

    .line 1433
    .end local v6    # "url":Ljava/lang/String;
    .restart local v5    # "url":Ljava/lang/String;
    :cond_2
    invoke-interface {v3}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object v4

    .line 1435
    .local v4, "notationName":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 1446
    invoke-interface {v3}, Lorg/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    move-result-object v5

    .line 1448
    if-nez v5, :cond_3

    .line 1450
    invoke-interface {v3}, Lorg/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    move-result-object v5

    .end local v1    # "doctype":Lorg/w3c/dom/DocumentType;
    .end local v2    # "entities":Lorg/w3c/dom/NamedNodeMap;
    .end local v3    # "entity":Lorg/w3c/dom/Entity;
    .end local v4    # "notationName":Ljava/lang/String;
    :cond_3
    move-object v6, v5

    .line 1461
    .end local v5    # "url":Ljava/lang/String;
    .restart local v6    # "url":Ljava/lang/String;
    goto :goto_1
.end method

.method public isAttributeSpecified(I)Z
    .locals 3
    .param p1, "attributeHandle"    # I

    .prologue
    .line 1475
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    move-result v1

    .line 1477
    .local v1, "type":I
    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    .line 1479
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    .line 1480
    .local v0, "attr":Lorg/w3c/dom/Attr;
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v2

    .line 1482
    .end local v0    # "attr":Lorg/w3c/dom/Attr;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isWhitespace(I)Z
    .locals 5
    .param p1, "nodeHandle"    # I

    .prologue
    const/4 v0, 0x0

    .line 870
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    move-result v3

    .line 871
    .local v3, "type":I
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 872
    .local v2, "node":Lorg/w3c/dom/Node;
    const/4 v4, 0x3

    if-eq v4, v3, :cond_0

    const/4 v4, 0x4

    if-ne v4, v3, :cond_2

    .line 881
    :cond_0
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v1

    .line 882
    .local v1, "buf":Lorg/apache/xml/utils/FastStringBuffer;
    :goto_0
    if-eqz v2, :cond_1

    .line 884
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 885
    invoke-direct {p0, v2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    .line 887
    :cond_1
    invoke-virtual {v1}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Lorg/apache/xml/utils/FastStringBuffer;->isWhitespace(II)Z

    move-result v0

    .line 888
    .local v0, "b":Z
    invoke-static {v1}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 891
    .end local v0    # "b":Z
    .end local v1    # "buf":Lorg/apache/xml/utils/FastStringBuffer;
    :cond_2
    return v0
.end method

.method protected lookupNode(I)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "nodeIdentity"    # I

    .prologue
    .line 621
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public needsTwoThreads()Z
    .locals 1

    .prologue
    .line 1577
    const/4 v0, 0x0

    return v0
.end method

.method protected nextNode()Z
    .locals 23

    .prologue
    .line 334
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodesAreProcessed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 335
    const/16 v18, 0x0

    .line 593
    :goto_0
    return v18

    .line 339
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_pos:Lorg/w3c/dom/Node;

    .line 340
    .local v14, "pos":Lorg/w3c/dom/Node;
    const/4 v11, 0x0

    .line 341
    .local v11, "next":Lorg/w3c/dom/Node;
    const/4 v13, -0x1

    .line 347
    .local v13, "nexttype":I
    :cond_1
    invoke-interface {v14}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 349
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    .line 353
    if-eqz v11, :cond_2

    const/16 v18, 0xa

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 354
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v11

    .line 358
    :cond_2
    const/16 v18, 0x5

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 360
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    .line 361
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeHandle(I)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Lorg/apache/xml/dtm/DTMWSFilter;->getShouldStripSpace(ILorg/apache/xml/dtm/DTM;)S

    move-result v17

    .line 367
    .local v17, "wsv":S
    const/16 v18, 0x3

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getShouldStripWhitespace()Z

    move-result v15

    .line 370
    .local v15, "shouldStrip":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->pushShouldStripWhitespace(Z)V

    .line 433
    .end local v15    # "shouldStrip":Z
    .end local v17    # "wsv":S
    :cond_3
    :goto_2
    if-eqz v11, :cond_4

    .line 434
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    .line 441
    :cond_4
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v0, v13, :cond_5

    .line 442
    move-object v14, v11

    .line 444
    :cond_5
    const/16 v18, 0x5

    move/from16 v0, v18

    if-eq v0, v13, :cond_1

    .line 447
    if-nez v11, :cond_10

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 450
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodesAreProcessed:Z

    .line 451
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_pos:Lorg/w3c/dom/Node;

    .line 460
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 367
    .restart local v17    # "wsv":S
    :cond_6
    const/16 v18, 0x2

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    const/4 v15, 0x1

    goto :goto_1

    :cond_7
    const/4 v15, 0x0

    goto :goto_1

    .line 378
    .end local v17    # "wsv":S
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v18

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 386
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    .line 390
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v11

    .line 391
    if-eqz v11, :cond_a

    const/16 v18, 0xa

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 392
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v11

    .line 394
    :cond_a
    if-eqz v11, :cond_c

    .line 429
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 430
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 398
    :cond_c
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v14

    .line 399
    if-nez v14, :cond_d

    .line 412
    :cond_d
    if-eqz v14, :cond_e

    const/16 v18, 0x5

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    .line 420
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->popShouldStripWhitespace()V

    .line 422
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 426
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    invoke-virtual/range {v18 .. v19}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    goto/16 :goto_3

    .line 425
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    goto :goto_4

    .line 478
    :cond_10
    const/16 v16, 0x0

    .line 479
    .local v16, "suppressNode":Z
    const/4 v9, 0x0

    .line 481
    .local v9, "lastTextNode":Lorg/w3c/dom/Node;
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    .line 484
    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v0, v13, :cond_11

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v0, v13, :cond_14

    .line 487
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_13

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getShouldStripWhitespace()Z

    move-result v18

    if-eqz v18, :cond_13

    const/16 v16, 0x1

    .line 491
    :goto_5
    move-object v10, v11

    .line 492
    .local v10, "n":Lorg/w3c/dom/Node;
    :goto_6
    if-eqz v10, :cond_15

    .line 494
    move-object v9, v10

    .line 496
    const/16 v18, 0x3

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    .line 497
    const/4 v13, 0x3

    .line 500
    :cond_12
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(Ljava/lang/String;)Z

    move-result v18

    and-int v16, v16, v18

    .line 503
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v10

    goto :goto_6

    .line 487
    .end local v10    # "n":Lorg/w3c/dom/Node;
    :cond_13
    const/16 v16, 0x0

    goto :goto_5

    .line 512
    :cond_14
    const/16 v18, 0x7

    move/from16 v0, v18

    if-ne v0, v13, :cond_15

    .line 514
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string v19, "xml"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 518
    :cond_15
    if-nez v16, :cond_1a

    .line 523
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v11, v1, v2, v13}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    move-result v12

    .line 526
    .local v12, "nextindex":I
    move-object/from16 v0, p0

    iput v12, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    .line 528
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v13, :cond_1a

    .line 530
    const/4 v5, -0x1

    .line 533
    .local v5, "attrIndex":I
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 534
    .local v6, "attrs":Lorg/w3c/dom/NamedNodeMap;
    if-nez v6, :cond_17

    const/4 v7, 0x0

    .line 535
    .local v7, "attrsize":I
    :goto_7
    if-lez v7, :cond_18

    .line 537
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_8
    if-ge v8, v7, :cond_18

    .line 542
    invoke-interface {v6, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v12, v5, v2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    move-result v5

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 555
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    move/from16 v18, v0

    if-nez v18, :cond_16

    const-string v18, "xmlns:xml"

    invoke-interface {v6, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 557
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    .line 537
    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 534
    .end local v7    # "attrsize":I
    .end local v8    # "i":I
    :cond_17
    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    goto :goto_7

    .line 562
    .restart local v7    # "attrsize":I
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    move/from16 v18, v0

    if-nez v18, :cond_19

    .line 570
    new-instance v20, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;

    move-object/from16 v18, v11

    check-cast v18, Lorg/w3c/dom/Element;

    const-string v21, "xml"

    const-string v22, "http://www.w3.org/XML/1998/namespace"

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_1d

    move/from16 v19, v12

    :goto_9
    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeHandle(I)I

    move-result v19

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v18, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v12, v5, v2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    move-result v5

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 576
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    .line 578
    :cond_19
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_1a

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 584
    .end local v5    # "attrIndex":I
    .end local v6    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .end local v7    # "attrsize":I
    .end local v12    # "nextindex":I
    :cond_1a
    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v0, v13, :cond_1b

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v0, v13, :cond_1c

    .line 588
    :cond_1b
    move-object v11, v9

    .line 592
    :cond_1c
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_pos:Lorg/w3c/dom/Node;

    .line 593
    const/16 v18, 0x1

    goto/16 :goto_0

    .restart local v5    # "attrIndex":I
    .restart local v6    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .restart local v7    # "attrsize":I
    .restart local v12    # "nextindex":I
    :cond_1d
    move/from16 v19, v5

    .line 570
    goto :goto_9
.end method

.method public setIncrementalSAXSource(Lorg/apache/xml/dtm/ref/IncrementalSAXSource;)V
    .locals 0
    .param p1, "source"    # Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    .prologue
    .line 1493
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1750
    return-void
.end method
