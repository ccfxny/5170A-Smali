.class public Lorg/apache/xpath/objects/XNodeSet;
.super Lorg/apache/xpath/axes/NodeSequence;
.source "XNodeSet.java"


# static fields
.field static final S_EQ:Lorg/apache/xpath/objects/EqualComparator;

.field static final S_GT:Lorg/apache/xpath/objects/GreaterThanComparator;

.field static final S_GTE:Lorg/apache/xpath/objects/GreaterThanOrEqualComparator;

.field static final S_LT:Lorg/apache/xpath/objects/LessThanComparator;

.field static final S_LTE:Lorg/apache/xpath/objects/LessThanOrEqualComparator;

.field static final S_NEQ:Lorg/apache/xpath/objects/NotEqualComparator;

.field static final serialVersionUID:J = 0x1a9717d4870bd173L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 444
    new-instance v0, Lorg/apache/xpath/objects/LessThanComparator;

    invoke-direct {v0}, Lorg/apache/xpath/objects/LessThanComparator;-><init>()V

    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_LT:Lorg/apache/xpath/objects/LessThanComparator;

    .line 447
    new-instance v0, Lorg/apache/xpath/objects/LessThanOrEqualComparator;

    invoke-direct {v0}, Lorg/apache/xpath/objects/LessThanOrEqualComparator;-><init>()V

    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_LTE:Lorg/apache/xpath/objects/LessThanOrEqualComparator;

    .line 450
    new-instance v0, Lorg/apache/xpath/objects/GreaterThanComparator;

    invoke-direct {v0}, Lorg/apache/xpath/objects/GreaterThanComparator;-><init>()V

    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_GT:Lorg/apache/xpath/objects/GreaterThanComparator;

    .line 453
    new-instance v0, Lorg/apache/xpath/objects/GreaterThanOrEqualComparator;

    invoke-direct {v0}, Lorg/apache/xpath/objects/GreaterThanOrEqualComparator;-><init>()V

    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_GTE:Lorg/apache/xpath/objects/GreaterThanOrEqualComparator;

    .line 457
    new-instance v0, Lorg/apache/xpath/objects/EqualComparator;

    invoke-direct {v0}, Lorg/apache/xpath/objects/EqualComparator;-><init>()V

    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_EQ:Lorg/apache/xpath/objects/EqualComparator;

    .line 460
    new-instance v0, Lorg/apache/xpath/objects/NotEqualComparator;

    invoke-direct {v0}, Lorg/apache/xpath/objects/NotEqualComparator;-><init>()V

    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_NEQ:Lorg/apache/xpath/objects/NotEqualComparator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(ILorg/apache/xml/dtm/DTMManager;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "dtmMgr"    # Lorg/apache/xml/dtm/DTMManager;

    .prologue
    .line 108
    new-instance v0, Lorg/apache/xpath/NodeSetDTM;

    invoke-direct {v0, p2}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;-><init>(Ljava/lang/Object;)V

    .line 109
    iput-object p2, p0, Lorg/apache/xpath/objects/XNodeSet;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    .line 111
    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    .line 113
    iget-object v0, p0, Lorg/apache/xpath/objects/XNodeSet;->m_obj:Ljava/lang/Object;

    check-cast v0, Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/NodeSetDTM;->addNode(I)V

    .line 114
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/xpath/objects/XNodeSet;->m_last:I

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xpath/objects/XNodeSet;->m_last:I

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMIterator;)V
    .locals 2
    .param p1, "val"    # Lorg/apache/xml/dtm/DTMIterator;

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;-><init>()V

    .line 56
    instance-of v1, p1, Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 58
    check-cast v0, Lorg/apache/xpath/objects/XNodeSet;

    .line 59
    .local v0, "nodeSet":Lorg/apache/xpath/objects/XNodeSet;
    iget-object v1, v0, Lorg/apache/xpath/objects/XNodeSet;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-virtual {p0, v1}, Lorg/apache/xpath/objects/XNodeSet;->setIter(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 60
    iget-object v1, v0, Lorg/apache/xpath/objects/XNodeSet;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    iput-object v1, p0, Lorg/apache/xpath/objects/XNodeSet;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    .line 61
    iget v1, v0, Lorg/apache/xpath/objects/XNodeSet;->m_last:I

    iput v1, p0, Lorg/apache/xpath/objects/XNodeSet;->m_last:I

    .line 64
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->hasCache()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/objects/XNodeSet;->setShouldCacheNodes(Z)V

    .line 68
    :cond_0
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->getIteratorCache()Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xpath/objects/XNodeSet;->setObject(Ljava/lang/Object;)V

    .line 72
    .end local v0    # "nodeSet":Lorg/apache/xpath/objects/XNodeSet;
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XNodeSet;->setIter(Lorg/apache/xml/dtm/DTMIterator;)V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;)V
    .locals 1
    .param p1, "dtmMgr"    # Lorg/apache/xml/dtm/DTMManager;

    .prologue
    .line 97
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/objects/XNodeSet;)V
    .locals 1
    .param p1, "val"    # Lorg/apache/xpath/objects/XNodeSet;

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;-><init>()V

    .line 82
    iget-object v0, p1, Lorg/apache/xpath/objects/XNodeSet;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->setIter(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 83
    iget-object v0, p1, Lorg/apache/xpath/objects/XNodeSet;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    iput-object v0, p0, Lorg/apache/xpath/objects/XNodeSet;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    .line 84
    iget v0, p1, Lorg/apache/xpath/objects/XNodeSet;->m_last:I

    iput v0, p0, Lorg/apache/xpath/objects/XNodeSet;->m_last:I

    .line 85
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XNodeSet;->hasCache()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->setShouldCacheNodes(Z)V

    .line 87
    :cond_0
    iget-object v0, p1, Lorg/apache/xpath/objects/XNodeSet;->m_obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->setObject(Ljava/lang/Object;)V

    .line 88
    return-void
.end method


# virtual methods
.method public appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 1
    .param p1, "fsb"    # Lorg/apache/xml/utils/FastStringBuffer;

    .prologue
    .line 266
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/objects/XString;

    .line 267
    .local v0, "xstring":Lorg/apache/xpath/objects/XString;
    invoke-virtual {v0, p1}, Lorg/apache/xpath/objects/XString;->appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 268
    return-void
.end method

.method public bool()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->item(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public boolWithSideEffects()Z
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->nextNode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z
    .locals 26
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;
    .param p2, "comparator"    # Lorg/apache/xpath/objects/Comparator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 476
    const/16 v18, 0x0

    .line 477
    .local v18, "result":Z
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v21

    .line 479
    .local v21, "type":I
    const/16 v22, 0x4

    move/from16 v0, v22

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 494
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v7

    .line 495
    .local v7, "list1":Lorg/apache/xml/dtm/DTMIterator;
    check-cast p1, Lorg/apache/xpath/objects/XNodeSet;

    .end local p1    # "obj2":Lorg/apache/xpath/objects/XObject;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v8

    .line 497
    .local v8, "list2":Lorg/apache/xml/dtm/DTMIterator;
    const/4 v13, 0x0

    .line 499
    .local v13, "node2Strings":Ljava/util/Vector;
    :cond_0
    :goto_0
    const/16 v22, -0x1

    invoke-interface {v7}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v11

    .local v11, "node1":I
    move/from16 v0, v22

    if-eq v0, v11, :cond_5

    .line 501
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v19

    .line 503
    .local v19, "s1":Lorg/apache/xml/utils/XMLString;
    if-nez v13, :cond_3

    .line 507
    :goto_1
    const/16 v22, -0x1

    invoke-interface {v8}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v12

    .local v12, "node2":I
    move/from16 v0, v22

    if-eq v0, v12, :cond_0

    .line 509
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v20

    .line 511
    .local v20, "s2":Lorg/apache/xml/utils/XMLString;
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/objects/Comparator;->compareStrings(Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/XMLString;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 513
    const/16 v18, 0x1

    .line 515
    goto :goto_0

    .line 518
    :cond_1
    if-nez v13, :cond_2

    .line 519
    new-instance v13, Ljava/util/Vector;

    .end local v13    # "node2Strings":Ljava/util/Vector;
    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    .line 521
    .restart local v13    # "node2Strings":Ljava/util/Vector;
    :cond_2
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 526
    .end local v12    # "node2":I
    .end local v20    # "s2":Lorg/apache/xml/utils/XMLString;
    :cond_3
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v9

    .line 528
    .local v9, "n":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v9, :cond_0

    .line 530
    invoke-virtual {v13, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/xml/utils/XMLString;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/objects/Comparator;->compareStrings(Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/XMLString;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 532
    const/16 v18, 0x1

    .line 534
    goto :goto_0

    .line 528
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 539
    .end local v6    # "i":I
    .end local v9    # "n":I
    .end local v19    # "s1":Lorg/apache/xml/utils/XMLString;
    :cond_5
    invoke-interface {v7}, Lorg/apache/xml/dtm/DTMIterator;->reset()V

    .line 540
    invoke-interface {v8}, Lorg/apache/xml/dtm/DTMIterator;->reset()V

    .line 632
    .end local v7    # "list1":Lorg/apache/xml/dtm/DTMIterator;
    .end local v8    # "list2":Lorg/apache/xml/dtm/DTMIterator;
    .end local v11    # "node1":I
    .end local v13    # "node2Strings":Ljava/util/Vector;
    :goto_3
    return v18

    .line 542
    .restart local p1    # "obj2":Lorg/apache/xpath/objects/XObject;
    :cond_6
    const/16 v22, 0x1

    move/from16 v0, v22

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 551
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xpath/objects/XNodeSet;->bool()Z

    move-result v22

    if-eqz v22, :cond_7

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 552
    .local v14, "num1":D
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v16

    .line 554
    .local v16, "num2":D
    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1, v2}, Lorg/apache/xpath/objects/Comparator;->compareNumbers(DD)Z

    move-result v18

    .line 555
    goto :goto_3

    .line 551
    .end local v14    # "num1":D
    .end local v16    # "num2":D
    :cond_7
    const-wide/16 v14, 0x0

    goto :goto_4

    .line 556
    :cond_8
    const/16 v22, 0x2

    move/from16 v0, v22

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 566
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v7

    .line 567
    .restart local v7    # "list1":Lorg/apache/xml/dtm/DTMIterator;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v16

    .line 570
    .restart local v16    # "num2":D
    :cond_9
    const/16 v22, -0x1

    invoke-interface {v7}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v10

    .local v10, "node":I
    move/from16 v0, v22

    if-eq v0, v10, :cond_a

    .line 572
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/apache/xpath/objects/XNodeSet;->getNumberFromNode(I)D

    move-result-wide v14

    .line 574
    .restart local v14    # "num1":D
    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1, v2}, Lorg/apache/xpath/objects/Comparator;->compareNumbers(DD)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 576
    const/16 v18, 0x1

    .line 581
    .end local v14    # "num1":D
    :cond_a
    invoke-interface {v7}, Lorg/apache/xml/dtm/DTMIterator;->reset()V

    goto :goto_3

    .line 583
    .end local v7    # "list1":Lorg/apache/xml/dtm/DTMIterator;
    .end local v10    # "node":I
    .end local v16    # "num2":D
    :cond_b
    const/16 v22, 0x5

    move/from16 v0, v22

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 585
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v20

    .line 586
    .restart local v20    # "s2":Lorg/apache/xml/utils/XMLString;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v7

    .line 589
    .restart local v7    # "list1":Lorg/apache/xml/dtm/DTMIterator;
    :cond_c
    const/16 v22, -0x1

    invoke-interface {v7}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v10

    .restart local v10    # "node":I
    move/from16 v0, v22

    if-eq v0, v10, :cond_d

    .line 591
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v19

    .line 593
    .restart local v19    # "s1":Lorg/apache/xml/utils/XMLString;
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/objects/Comparator;->compareStrings(Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/XMLString;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 595
    const/16 v18, 0x1

    .line 600
    .end local v19    # "s1":Lorg/apache/xml/utils/XMLString;
    :cond_d
    invoke-interface {v7}, Lorg/apache/xml/dtm/DTMIterator;->reset()V

    goto/16 :goto_3

    .line 602
    .end local v7    # "list1":Lorg/apache/xml/dtm/DTMIterator;
    .end local v10    # "node":I
    .end local v20    # "s2":Lorg/apache/xml/utils/XMLString;
    :cond_e
    const/16 v22, 0x3

    move/from16 v0, v22

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 611
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v20

    .line 612
    .restart local v20    # "s2":Lorg/apache/xml/utils/XMLString;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v7

    .line 615
    .restart local v7    # "list1":Lorg/apache/xml/dtm/DTMIterator;
    :cond_f
    const/16 v22, -0x1

    invoke-interface {v7}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v10

    .restart local v10    # "node":I
    move/from16 v0, v22

    if-eq v0, v10, :cond_10

    .line 617
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v19

    .line 618
    .restart local v19    # "s1":Lorg/apache/xml/utils/XMLString;
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/objects/Comparator;->compareStrings(Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/XMLString;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 620
    const/16 v18, 0x1

    .line 625
    .end local v19    # "s1":Lorg/apache/xml/utils/XMLString;
    :cond_10
    invoke-interface {v7}, Lorg/apache/xml/dtm/DTMIterator;->reset()V

    goto/16 :goto_3

    .line 629
    .end local v7    # "list1":Lorg/apache/xml/dtm/DTMIterator;
    .end local v10    # "node":I
    .end local v20    # "s2":Lorg/apache/xml/utils/XMLString;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xpath/objects/XNodeSet;->num()D

    move-result-wide v22

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v24

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xpath/objects/Comparator;->compareNumbers(DD)Z

    move-result v18

    goto/16 :goto_3
.end method

.method public dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .locals 3
    .param p1, "ch"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 239
    invoke-virtual {p0, v2}, Lorg/apache/xpath/objects/XNodeSet;->item(I)I

    move-result v0

    .line 241
    .local v0, "node":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 243
    iget-object v1, p0, Lorg/apache/xpath/objects/XNodeSet;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    invoke-interface {v1, v0, p1, v2}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    .line 246
    :cond_0
    return-void
.end method

.method public equals(Lorg/apache/xpath/objects/XObject;)Z
    .locals 2
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;

    .prologue
    .line 705
    :try_start_0
    sget-object v1, Lorg/apache/xpath/objects/XNodeSet;->S_EQ:Lorg/apache/xpath/objects/EqualComparator;

    invoke-virtual {p0, p1, v1}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 707
    :catch_0
    move-exception v0

    .line 709
    .local v0, "te":Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getFresh()Lorg/apache/xpath/objects/XObject;
    .locals 3

    .prologue
    .line 409
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->hasCache()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    check-cast v1, Lorg/apache/xpath/objects/XObject;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p0

    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 416
    .local v0, "cnse":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNumberFromNode(I)D
    .locals 4
    .param p1, "n"    # I

    .prologue
    .line 150
    iget-object v1, p0, Lorg/apache/xpath/objects/XNodeSet;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    .line 151
    .local v0, "xstr":Lorg/apache/xml/utils/XMLString;
    invoke-interface {v0}, Lorg/apache/xml/utils/XMLString;->toDouble()D

    move-result-wide v2

    return-wide v2
.end method

.method public getStringFromNode(I)Lorg/apache/xml/utils/XMLString;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 215
    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    .line 217
    iget-object v0, p0, Lorg/apache/xpath/objects/XNodeSet;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x4

    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string v0, "#NODESET"

    return-object v0
.end method

.method public greaterThan(Lorg/apache/xpath/objects/XObject;)Z
    .locals 1
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 674
    sget-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_GT:Lorg/apache/xpath/objects/GreaterThanComparator;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z

    move-result v0

    return v0
.end method

.method public greaterThanOrEqual(Lorg/apache/xpath/objects/XObject;)Z
    .locals 1
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 689
    sget-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_GTE:Lorg/apache/xpath/objects/GreaterThanOrEqualComparator;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z

    move-result v0

    return v0
.end method

.method public iter()Lorg/apache/xml/dtm/DTMIterator;
    .locals 3

    .prologue
    .line 389
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->hasCache()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 392
    .end local p0    # "this":Lorg/apache/xpath/objects/XNodeSet;
    :cond_0
    return-object p0

    .line 394
    .restart local p0    # "this":Lorg/apache/xpath/objects/XNodeSet;
    :catch_0
    move-exception v0

    .line 396
    .local v0, "cnse":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public iterRaw()Lorg/apache/xml/dtm/DTMIterator;
    .locals 0

    .prologue
    .line 373
    return-object p0
.end method

.method public lessThan(Lorg/apache/xpath/objects/XObject;)Z
    .locals 1
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 646
    sget-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_LT:Lorg/apache/xpath/objects/LessThanComparator;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z

    move-result v0

    return v0
.end method

.method public lessThanOrEqual(Lorg/apache/xpath/objects/XObject;)Z
    .locals 1
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 660
    sget-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_LTE:Lorg/apache/xpath/objects/LessThanOrEqualComparator;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z

    move-result v0

    return v0
.end method

.method public mutableNodeset()Lorg/apache/xpath/NodeSetDTM;
    .locals 2

    .prologue
    .line 429
    iget-object v1, p0, Lorg/apache/xpath/objects/XNodeSet;->m_obj:Ljava/lang/Object;

    instance-of v1, v1, Lorg/apache/xpath/NodeSetDTM;

    if-eqz v1, :cond_0

    .line 431
    iget-object v0, p0, Lorg/apache/xpath/objects/XNodeSet;->m_obj:Ljava/lang/Object;

    check-cast v0, Lorg/apache/xpath/NodeSetDTM;

    .line 440
    .local v0, "mnl":Lorg/apache/xpath/NodeSetDTM;
    :goto_0
    return-object v0

    .line 435
    .end local v0    # "mnl":Lorg/apache/xpath/NodeSetDTM;
    :cond_0
    new-instance v0, Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 436
    .restart local v0    # "mnl":Lorg/apache/xpath/NodeSetDTM;
    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->setObject(Ljava/lang/Object;)V

    .line 437
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/xpath/objects/XNodeSet;->setCurrentPos(I)V

    goto :goto_0
.end method

.method public nodelist()Lorg/w3c/dom/NodeList;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 346
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMNodeList;

    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/DTMNodeList;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 351
    .local v1, "nodelist":Lorg/apache/xml/dtm/ref/DTMNodeList;
    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMNodeList;->getDTMIterator()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/objects/XNodeSet;

    .line 352
    .local v0, "clone":Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xpath/objects/XNodeSet;->SetVector(Lorg/apache/xml/utils/NodeVector;)V

    .line 353
    return-object v1
.end method

.method public nodeset()Lorg/w3c/dom/traversal/NodeIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 334
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/ref/DTMNodeIterator;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    return-object v0
.end method

.method public notEquals(Lorg/apache/xpath/objects/XObject;)Z
    .locals 1
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 724
    sget-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_NEQ:Lorg/apache/xpath/objects/NotEqualComparator;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z

    move-result v0

    return v0
.end method

.method public num()D
    .locals 4

    .prologue
    .line 163
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/xpath/objects/XNodeSet;->item(I)I

    move-result v0

    .line 164
    .local v0, "node":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->getNumberFromNode(I)D

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    goto :goto_0
.end method

.method public numWithSideEffects()D
    .locals 4

    .prologue
    .line 176
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->nextNode()I

    move-result v0

    .line 178
    .local v0, "node":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->getNumberFromNode(I)D

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    goto :goto_0
.end method

.method public object()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lorg/apache/xpath/objects/XNodeSet;->m_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 294
    .end local p0    # "this":Lorg/apache/xpath/objects/XNodeSet;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/xpath/objects/XNodeSet;
    :cond_0
    iget-object p0, p0, Lorg/apache/xpath/objects/XNodeSet;->m_obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public release(Lorg/apache/xml/dtm/DTMIterator;)V
    .locals 0
    .param p1, "iter"    # Lorg/apache/xml/dtm/DTMIterator;

    .prologue
    .line 378
    return-void
.end method

.method public str()Ljava/lang/String;
    .locals 2

    .prologue
    .line 279
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/xpath/objects/XNodeSet;->item(I)I

    move-result v0

    .line 280
    .local v0, "node":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public xstr()Lorg/apache/xml/utils/XMLString;
    .locals 2

    .prologue
    .line 255
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/xpath/objects/XNodeSet;->item(I)I

    move-result v0

    .line 256
    .local v0, "node":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    goto :goto_0
.end method
