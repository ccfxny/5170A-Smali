.class public Lorg/apache/xpath/patterns/StepPattern;
.super Lorg/apache/xpath/patterns/NodeTest;
.source "StepPattern.java"

# interfaces
.implements Lorg/apache/xpath/axes/SubContextList;
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/patterns/StepPattern$PredOwner;
    }
.end annotation


# static fields
.field private static final DEBUG_MATCHES:Z = false

.field static final serialVersionUID:J = 0x7de50adb02c28e44L


# instance fields
.field protected m_axis:I

.field m_predicates:[Lorg/apache/xpath/Expression;

.field m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

.field m_targetString:Ljava/lang/String;


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "whatToShow"    # I
    .param p2, "axis"    # I
    .param p3, "axisForPredicate"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lorg/apache/xpath/patterns/NodeTest;-><init>(I)V

    .line 78
    iput p2, p0, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    .line 79
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "whatToShow"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "axis"    # I
    .param p5, "axisForPredicate"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xpath/patterns/NodeTest;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    iput p4, p0, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    .line 63
    return-void
.end method

.method private final checkProximityPosition(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;II)Z
    .locals 10
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "predPos"    # I
    .param p3, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .param p4, "context"    # I
    .param p5, "pos"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 434
    const/16 v8, 0xc

    :try_start_0
    invoke-interface {p3, v8}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v5

    .line 437
    .local v5, "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-virtual {v5, p4}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, "child":I
    :goto_0
    const/4 v8, -0x1

    if-eq v8, v0, :cond_5

    .line 442
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 444
    sget-object v8, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    invoke-super {p0, p1, v0}, Lorg/apache/xpath/patterns/NodeTest;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v9

    if-eq v8, v9, :cond_4

    .line 446
    const/4 v2, 0x1

    .line 450
    .local v2, "pass":Z
    :try_start_2
    invoke-virtual {p1, p0}, Lorg/apache/xpath/XPathContext;->pushSubContextList(Lorg/apache/xpath/axes/SubContextList;)V

    .line 452
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p2, :cond_1

    .line 454
    invoke-virtual {p1, v1}, Lorg/apache/xpath/XPathContext;->pushPredicatePos(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 457
    :try_start_3
    iget-object v8, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v8, v8, v1

    invoke-virtual {v8, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    .line 461
    .local v3, "pred":Lorg/apache/xpath/objects/XObject;
    const/4 v8, 0x2

    :try_start_4
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 463
    new-instance v6, Ljava/lang/Error;

    const-string v7, "Why: Should never have been called"

    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 474
    :catchall_0
    move-exception v6

    :try_start_5
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->detach()V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 479
    .end local v3    # "pred":Lorg/apache/xpath/objects/XObject;
    :catchall_1
    move-exception v6

    :try_start_6
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 485
    .end local v1    # "i":I
    :catchall_2
    move-exception v6

    :try_start_7
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 497
    .end local v2    # "pass":Z
    :catchall_3
    move-exception v6

    :try_start_8
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    throw v6
    :try_end_8
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_0

    .line 501
    .end local v0    # "child":I
    .end local v5    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :catch_0
    move-exception v4

    .line 505
    .local v4, "se":Ljavax/xml/transform/TransformerException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-virtual {v4}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 465
    .end local v4    # "se":Ljavax/xml/transform/TransformerException;
    .restart local v0    # "child":I
    .restart local v1    # "i":I
    .restart local v2    # "pass":Z
    .restart local v3    # "pred":Lorg/apache/xpath/objects/XObject;
    .restart local v5    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :cond_0
    :try_start_9
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->boolWithSideEffects()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v8

    if-nez v8, :cond_3

    .line 467
    const/4 v2, 0x0

    .line 474
    :try_start_a
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 479
    :try_start_b
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 485
    .end local v3    # "pred":Lorg/apache/xpath/objects/XObject;
    :cond_1
    :try_start_c
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popSubContextList()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 488
    if-eqz v2, :cond_2

    .line 489
    add-int/lit8 p5, p5, -0x1

    .line 491
    :cond_2
    if-ge p5, v6, :cond_4

    .line 497
    :try_start_d
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V
    :try_end_d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_d .. :try_end_d} :catch_0

    .line 508
    .end local v1    # "i":I
    .end local v2    # "pass":Z
    :goto_2
    return v7

    .line 474
    .restart local v1    # "i":I
    .restart local v2    # "pass":Z
    .restart local v3    # "pred":Lorg/apache/xpath/objects/XObject;
    :cond_3
    :try_start_e
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 479
    :try_start_f
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 452
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 497
    .end local v1    # "i":I
    .end local v2    # "pass":Z
    .end local v3    # "pred":Lorg/apache/xpath/objects/XObject;
    :cond_4
    :try_start_10
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 438
    invoke-virtual {v5, p4, v0}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I
    :try_end_10
    .catch Ljavax/xml/transform/TransformerException; {:try_start_10 .. :try_end_10} :catch_0

    move-result v0

    goto :goto_0

    .line 508
    :cond_5
    if-ne p5, v6, :cond_6

    :goto_3
    move v7, v6

    goto :goto_2

    :cond_6
    move v6, v7

    goto :goto_3
.end method

.method private final getProximityPosition(Lorg/apache/xpath/XPathContext;IZ)I
    .locals 16
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "predPos"    # I
    .param p3, "findLast"    # Z

    .prologue
    .line 527
    const/4 v8, 0x0

    .line 528
    .local v8, "pos":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v3

    .line 529
    .local v3, "context":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v4

    .line 530
    .local v4, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v4, v3}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result v6

    .line 534
    .local v6, "parent":I
    const/4 v13, 0x3

    :try_start_0
    invoke-interface {v4, v13}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v12

    .line 536
    .local v12, "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-virtual {v12, v6}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, "child":I
    :goto_0
    const/4 v13, -0x1

    if-eq v13, v2, :cond_5

    .line 541
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 543
    sget-object v13, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super {v0, v1, v2}, Lorg/apache/xpath/patterns/NodeTest;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v14

    if-eq v13, v14, :cond_4

    .line 545
    const/4 v7, 0x1

    .line 549
    .local v7, "pass":Z
    :try_start_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->pushSubContextList(Lorg/apache/xpath/axes/SubContextList;)V

    .line 551
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    move/from16 v0, p2

    if-ge v5, v0, :cond_0

    .line 553
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/apache/xpath/XPathContext;->pushPredicatePos(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 556
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v13, v13, v5

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v10

    .line 560
    .local v10, "pred":Lorg/apache/xpath/objects/XObject;
    const/4 v13, 0x2

    :try_start_4
    invoke-virtual {v10}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v14

    if-ne v13, v14, :cond_2

    .line 562
    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v10}, Lorg/apache/xpath/objects/XObject;->numWithSideEffects()D
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-wide v14

    double-to-int v14, v14

    if-eq v13, v14, :cond_3

    .line 564
    const/4 v7, 0x0

    .line 578
    :try_start_5
    invoke-virtual {v10}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 583
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 589
    .end local v10    # "pred":Lorg/apache/xpath/objects/XObject;
    :cond_0
    :goto_2
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popSubContextList()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 592
    if-eqz v7, :cond_1

    .line 593
    add-int/lit8 v8, v8, 0x1

    .line 595
    :cond_1
    if-nez p3, :cond_4

    if-ne v2, v3, :cond_4

    .line 603
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V
    :try_end_8
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_0

    move v9, v8

    .line 614
    .end local v5    # "i":I
    .end local v7    # "pass":Z
    .end local v8    # "pos":I
    .local v9, "pos":I
    :goto_3
    return v9

    .line 569
    .end local v9    # "pos":I
    .restart local v5    # "i":I
    .restart local v7    # "pass":Z
    .restart local v8    # "pos":I
    .restart local v10    # "pred":Lorg/apache/xpath/objects/XObject;
    :cond_2
    :try_start_9
    invoke-virtual {v10}, Lorg/apache/xpath/objects/XObject;->boolWithSideEffects()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result v13

    if-nez v13, :cond_3

    .line 571
    const/4 v7, 0x0

    .line 578
    :try_start_a
    invoke-virtual {v10}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 583
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    .line 589
    .end local v5    # "i":I
    .end local v10    # "pred":Lorg/apache/xpath/objects/XObject;
    :catchall_0
    move-exception v13

    :try_start_c
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    throw v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 603
    .end local v7    # "pass":Z
    :catchall_1
    move-exception v13

    :try_start_d
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    throw v13
    :try_end_d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_d .. :try_end_d} :catch_0

    .line 607
    .end local v2    # "child":I
    .end local v12    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :catch_0
    move-exception v11

    .line 611
    .local v11, "se":Ljavax/xml/transform/TransformerException;
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-virtual {v11}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 578
    .end local v11    # "se":Ljavax/xml/transform/TransformerException;
    .restart local v2    # "child":I
    .restart local v5    # "i":I
    .restart local v7    # "pass":Z
    .restart local v10    # "pred":Lorg/apache/xpath/objects/XObject;
    .restart local v12    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :cond_3
    :try_start_e
    invoke-virtual {v10}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 583
    :try_start_f
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 551
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 578
    :catchall_2
    move-exception v13

    :try_start_10
    invoke-virtual {v10}, Lorg/apache/xpath/objects/XObject;->detach()V

    throw v13
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 583
    .end local v10    # "pred":Lorg/apache/xpath/objects/XObject;
    :catchall_3
    move-exception v13

    :try_start_11
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V

    throw v13
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 603
    .end local v5    # "i":I
    .end local v7    # "pass":Z
    :cond_4
    :try_start_12
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 537
    invoke-virtual {v12, v6, v2}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I
    :try_end_12
    .catch Ljavax/xml/transform/TransformerException; {:try_start_12 .. :try_end_12} :catch_0

    move-result v2

    goto/16 :goto_0

    :cond_5
    move v9, v8

    .line 614
    .end local v8    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_3
.end method


# virtual methods
.method public calcScore()V
    .locals 1

    .prologue
    .line 304
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->getPredicateCount()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v0, :cond_2

    .line 306
    :cond_0
    sget-object v0, Lorg/apache/xpath/patterns/StepPattern;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    iput-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_score:Lorg/apache/xpath/objects/XNumber;

    .line 311
    :goto_0
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 312
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->calcTargetString()V

    .line 313
    :cond_1
    return-void

    .line 309
    :cond_2
    invoke-super {p0}, Lorg/apache/xpath/patterns/NodeTest;->calcScore()V

    goto :goto_0
.end method

.method public calcTargetString()V
    .locals 3

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->getWhatToShow()I

    move-result v0

    .line 98
    .local v0, "whatToShow":I
    sparse-switch v0, :sswitch_data_0

    .line 122
    const-string v1, "*"

    iput-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    .line 125
    :goto_0
    return-void

    .line 101
    :sswitch_0
    const-string v1, "#comment"

    iput-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    goto :goto_0

    .line 106
    :sswitch_1
    const-string v1, "#text"

    iput-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    goto :goto_0

    .line 109
    :sswitch_2
    const-string v1, "*"

    iput-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    goto :goto_0

    .line 113
    :sswitch_3
    const-string v1, "/"

    iput-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    goto :goto_0

    .line 116
    :sswitch_4
    const-string v1, "*"

    iget-object v2, p0, Lorg/apache/xpath/patterns/StepPattern;->m_name:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    .line 117
    const-string v1, "*"

    iput-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    goto :goto_0

    .line 119
    :cond_0
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_name:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    goto :goto_0

    .line 98
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x1 -> :sswitch_4
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0xc -> :sswitch_1
        0x80 -> :sswitch_0
        0x100 -> :sswitch_3
        0x500 -> :sswitch_3
    .end sparse-switch
.end method

.method protected callSubtreeVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .locals 4
    .param p1, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    .prologue
    .line 981
    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v3, :cond_1

    .line 983
    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v1, v3

    .line 984
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 986
    new-instance v2, Lorg/apache/xpath/patterns/StepPattern$PredOwner;

    invoke-direct {v2, p0, v0}, Lorg/apache/xpath/patterns/StepPattern$PredOwner;-><init>(Lorg/apache/xpath/patterns/StepPattern;I)V

    .line 987
    .local v2, "predOwner":Lorg/apache/xpath/ExpressionOwner;
    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lorg/apache/xpath/XPathVisitor;->visitPredicate(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/Expression;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 989
    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 984
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 993
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "predOwner":Lorg/apache/xpath/ExpressionOwner;
    :cond_1
    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v3, :cond_2

    .line 995
    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v3, p0, p1}, Lorg/apache/xpath/patterns/StepPattern;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 997
    :cond_2
    return-void
.end method

.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 1
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    .prologue
    .line 969
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitMatchPattern(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/patterns/StepPattern;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    invoke-virtual {p0, p2}, Lorg/apache/xpath/patterns/StepPattern;->callSubtreeVisitors(Lorg/apache/xpath/XPathVisitor;)V

    .line 973
    :cond_0
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 3

    .prologue
    .line 241
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->getPredicateCount()I

    move-result v1

    .line 243
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 245
    invoke-virtual {p0, v0}, Lorg/apache/xpath/patterns/StepPattern;->getPredicate(I)Lorg/apache/xpath/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    const/4 v2, 0x1

    .line 249
    :goto_1
    return v2

    .line 243
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 6
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    .prologue
    const/4 v3, 0x0

    .line 1022
    invoke-super {p0, p1}, Lorg/apache/xpath/patterns/NodeTest;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1049
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v2, p1

    .line 1025
    check-cast v2, Lorg/apache/xpath/patterns/StepPattern;

    .line 1027
    .local v2, "sp":Lorg/apache/xpath/patterns/StepPattern;
    iget-object v4, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v4, :cond_2

    .line 1029
    iget-object v4, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v1, v4

    .line 1030
    .local v1, "n":I
    iget-object v4, v2, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v4, v4

    if-ne v4, v1, :cond_0

    .line 1032
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 1034
    iget-object v4, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v4, v4, v0

    iget-object v5, v2, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1032
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1038
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_2
    iget-object v4, v2, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-nez v4, :cond_0

    .line 1041
    :cond_3
    iget-object v4, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v4, :cond_5

    .line 1043
    iget-object v4, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    iget-object v5, v2, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v4, v5}, Lorg/apache/xpath/patterns/StepPattern;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1049
    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    .line 1046
    :cond_5
    iget-object v4, v2, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v4, :cond_4

    goto :goto_0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    .locals 3
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "currentNode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 336
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    if-eqz v0, :cond_0

    .line 338
    invoke-interface {v0, p2}, Lorg/apache/xml/dtm/DTM;->getExpandedTypeID(I)I

    move-result v1

    .line 340
    .local v1, "expType":I
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    .line 343
    .end local v1    # "expType":I
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;
    .locals 3
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "currentNode"    # I
    .param p3, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .param p4, "expType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 386
    iget v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_2

    .line 388
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v1, :cond_1

    .line 390
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v1, p1}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 413
    :cond_0
    :goto_0
    return-object v0

    .line 393
    :cond_1
    sget-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    .line 398
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xpath/patterns/NodeTest;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 400
    .local v0, "score":Lorg/apache/xpath/objects/XObject;
    sget-object v1, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-ne v0, v1, :cond_3

    .line 401
    sget-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    .line 403
    :cond_3
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->getPredicateCount()I

    move-result v1

    if-eqz v1, :cond_4

    .line 405
    invoke-virtual {p0, p1, p3, p2}, Lorg/apache/xpath/patterns/StepPattern;->executePredicates(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/dtm/DTM;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 406
    sget-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    .line 409
    :cond_4
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v1, p1, p3, p2}, Lorg/apache/xpath/patterns/StepPattern;->executeRelativePathPattern(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    goto :goto_0
.end method

.method protected final executePredicates(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/dtm/DTM;I)Z
    .locals 11
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .param p3, "currentNode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 713
    const/4 v9, 0x1

    .line 714
    .local v9, "result":Z
    const/4 v7, 0x0

    .line 715
    .local v7, "positionAlreadySeen":Z
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->getPredicateCount()I

    move-result v6

    .line 719
    .local v6, "n":I
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/apache/xpath/XPathContext;->pushSubContextList(Lorg/apache/xpath/axes/SubContextList;)V

    .line 721
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 723
    invoke-virtual {p1, v2}, Lorg/apache/xpath/XPathContext;->pushPredicatePos(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 727
    :try_start_1
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v8

    .line 731
    .local v8, "pred":Lorg/apache/xpath/objects/XObject;
    const/4 v0, 0x2

    :try_start_2
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 733
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->num()D
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v0

    double-to-int v5, v0

    .line 735
    .local v5, "pos":I
    if-eqz v7, :cond_2

    .line 737
    if-ne v5, v10, :cond_1

    move v9, v10

    .line 763
    :goto_1
    :try_start_3
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 768
    :try_start_4
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 774
    .end local v5    # "pos":I
    .end local v8    # "pred":Lorg/apache/xpath/objects/XObject;
    :cond_0
    :goto_2
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    .line 777
    return v9

    .line 737
    .restart local v5    # "pos":I
    .restart local v8    # "pred":Lorg/apache/xpath/objects/XObject;
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 743
    :cond_2
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    .line 745
    :try_start_5
    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/patterns/StepPattern;->checkProximityPosition(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;II)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v0

    if-nez v0, :cond_4

    .line 747
    const/4 v9, 0x0

    .line 763
    :try_start_6
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 768
    :try_start_7
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 774
    .end local v2    # "i":I
    .end local v5    # "pos":I
    .end local v8    # "pred":Lorg/apache/xpath/objects/XObject;
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    throw v0

    .line 754
    .restart local v2    # "i":I
    .restart local v8    # "pred":Lorg/apache/xpath/objects/XObject;
    :cond_3
    :try_start_8
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->boolWithSideEffects()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v0

    if-nez v0, :cond_4

    .line 756
    const/4 v9, 0x0

    .line 763
    :try_start_9
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 768
    :try_start_a
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 763
    :cond_4
    :try_start_b
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 768
    :try_start_c
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 721
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 763
    :catchall_1
    move-exception v0

    :try_start_d
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->detach()V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 768
    .end local v8    # "pred":Lorg/apache/xpath/objects/XObject;
    :catchall_2
    move-exception v0

    :try_start_e
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
.end method

.method protected final executeRelativePathPattern(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;
    .locals 5
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .param p3, "currentNode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 669
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    .line 670
    .local v2, "score":Lorg/apache/xpath/objects/XObject;
    move v0, p3

    .line 673
    .local v0, "context":I
    iget v4, p0, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    invoke-interface {p2, v4}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v3

    .line 675
    .local v3, "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result v1

    .local v1, "relative":I
    :goto_0
    const/4 v4, -0x1

    if-eq v4, v1, :cond_0

    .line 680
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 682
    invoke-virtual {p0, p1}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    .line 684
    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v4, :cond_1

    .line 689
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 693
    :cond_0
    return-object v2

    .line 689
    :cond_1
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 676
    invoke-virtual {v3, v0, v1}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v1

    goto :goto_0

    .line 689
    :catchall_0
    move-exception v4

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    throw v4
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 2
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    .prologue
    .line 161
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/patterns/NodeTest;->fixupVariables(Ljava/util/Vector;I)V

    .line 163
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v1, :cond_0

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 167
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v1, :cond_1

    .line 173
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;->fixupVariables(Ljava/util/Vector;I)V

    .line 175
    :cond_1
    return-void
.end method

.method public getAxis()I
    .locals 1

    .prologue
    .line 933
    iget v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    return v0
.end method

.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    return-object v0
.end method

.method public getLastPos(Lorg/apache/xpath/XPathContext;)I
    .locals 2
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;

    .prologue
    .line 645
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getPredicatePos()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xpath/patterns/StepPattern;->getProximityPosition(Lorg/apache/xpath/XPathContext;IZ)I

    move-result v0

    return v0
.end method

.method public getMatchScore(Lorg/apache/xpath/XPathContext;I)D
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "context"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 896
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 897
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentExpressionNode(I)V

    .line 901
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 903
    .local v0, "score":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->num()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 907
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 908
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    return-wide v2

    .line 907
    .end local v0    # "score":Lorg/apache/xpath/objects/XObject;
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 908
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    throw v1
.end method

.method public getPredicate(I)Lorg/apache/xpath/Expression;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 262
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getPredicateCount()I
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v0, v0

    goto :goto_0
.end method

.method public getPredicates()[Lorg/apache/xpath/Expression;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method public getProximityPosition(Lorg/apache/xpath/XPathContext;)I
    .locals 2
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;

    .prologue
    .line 629
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getPredicatePos()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xpath/patterns/StepPattern;->getProximityPosition(Lorg/apache/xpath/XPathContext;IZ)I

    move-result v0

    return v0
.end method

.method public getRelativePathPattern()Lorg/apache/xpath/patterns/StepPattern;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    return-object v0
.end method

.method public getTargetString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    return-object v0
.end method

.method public setAxis(I)V
    .locals 0
    .param p1, "axis"    # I

    .prologue
    .line 922
    iput p1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    .line 923
    return-void
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .locals 0
    .param p1, "exp"    # Lorg/apache/xpath/Expression;

    .prologue
    .line 1013
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 1014
    check-cast p1, Lorg/apache/xpath/patterns/StepPattern;

    .end local p1    # "exp":Lorg/apache/xpath/Expression;
    iput-object p1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    .line 1015
    return-void
.end method

.method public setPredicates([Lorg/apache/xpath/Expression;)V
    .locals 2
    .param p1, "predicates"    # [Lorg/apache/xpath/Expression;

    .prologue
    .line 286
    iput-object p1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    .line 287
    if-eqz p1, :cond_0

    .line 289
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 291
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->calcScore()V

    .line 296
    return-void
.end method

.method public setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V
    .locals 0
    .param p1, "expr"    # Lorg/apache/xpath/patterns/StepPattern;

    .prologue
    .line 187
    iput-object p1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    .line 188
    invoke-virtual {p1, p0}, Lorg/apache/xpath/patterns/StepPattern;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 190
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->calcScore()V

    .line 191
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 790
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 792
    .local v0, "buf":Ljava/lang/StringBuffer;
    move-object v2, p0

    .local v2, "pat":Lorg/apache/xpath/patterns/StepPattern;
    :goto_0
    if-eqz v2, :cond_e

    .line 794
    if-eq v2, p0, :cond_0

    .line 795
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 797
    :cond_0
    iget v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    invoke-static {v3}, Lorg/apache/xml/dtm/Axis;->getNames(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 798
    const-string v3, "::"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 800
    const/16 v3, 0x5000

    iget v4, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    if-ne v3, v4, :cond_1

    .line 802
    const-string v3, "doc()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 861
    :goto_1
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v3, :cond_d

    .line 863
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v3, v3

    if-ge v1, v3, :cond_d

    .line 865
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 866
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 867
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 863
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 804
    .end local v1    # "i":I
    :cond_1
    const/high16 v3, 0x10000

    iget v4, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    if-ne v3, v4, :cond_2

    .line 806
    const-string v3, "function()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 808
    :cond_2
    const/4 v3, -0x1

    iget v4, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    if-ne v3, v4, :cond_3

    .line 810
    const-string v3, "node()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 812
    :cond_3
    const/4 v3, 0x4

    iget v4, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    if-ne v3, v4, :cond_4

    .line 814
    const-string v3, "text()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 816
    :cond_4
    const/16 v3, 0x40

    iget v4, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    if-ne v3, v4, :cond_6

    .line 818
    const-string v3, "processing-instruction("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 820
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_name:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 822
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 825
    :cond_5
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 827
    :cond_6
    const/16 v3, 0x80

    iget v4, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    if-ne v3, v4, :cond_7

    .line 829
    const-string v3, "comment()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 831
    :cond_7
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_name:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 833
    iget v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    if-ne v5, v3, :cond_8

    .line 835
    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 838
    :cond_8
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_namespace:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 840
    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 841
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_namespace:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 842
    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 845
    :cond_9
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 847
    :cond_a
    iget v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    if-ne v5, v3, :cond_b

    .line 849
    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 851
    :cond_b
    const/16 v3, 0x500

    iget v4, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    if-ne v3, v4, :cond_c

    .line 854
    const-string v3, "doc-root()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 858
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 792
    :cond_d
    iget-object v2, v2, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    goto/16 :goto_0

    .line 872
    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
