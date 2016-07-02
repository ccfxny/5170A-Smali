.class public Lorg/apache/xpath/axes/WalkerFactory;
.super Ljava/lang/Object;
.source "WalkerFactory.java"


# static fields
.field public static final BITMASK_TRAVERSES_OUTSIDE_SUBTREE:I = 0xdf86000

.field public static final BITS_COUNT:I = 0xff

.field public static final BITS_RESERVED:I = 0xf00

.field public static final BIT_ANCESTOR:I = 0x2000

.field public static final BIT_ANCESTOR_OR_SELF:I = 0x4000

.field public static final BIT_ANY_DESCENDANT_FROM_ROOT:I = 0x20000000

.field public static final BIT_ATTRIBUTE:I = 0x8000

.field public static final BIT_BACKWARDS_SELF:I = 0x10000000

.field public static final BIT_CHILD:I = 0x10000

.field public static final BIT_DESCENDANT:I = 0x20000

.field public static final BIT_DESCENDANT_OR_SELF:I = 0x40000

.field public static final BIT_FILTER:I = 0x4000000

.field public static final BIT_FOLLOWING:I = 0x80000

.field public static final BIT_FOLLOWING_SIBLING:I = 0x100000

.field public static final BIT_MATCH_PATTERN:I = -0x80000000

.field public static final BIT_NAMESPACE:I = 0x200000

.field public static final BIT_NODETEST_ANY:I = 0x40000000

.field public static final BIT_PARENT:I = 0x400000

.field public static final BIT_PRECEDING:I = 0x800000

.field public static final BIT_PRECEDING_SIBLING:I = 0x1000000

.field public static final BIT_PREDICATE:I = 0x1000

.field public static final BIT_ROOT:I = 0x8000000

.field public static final BIT_SELF:I = 0x2000000

.field static final DEBUG_ITERATOR_CREATION:Z

.field static final DEBUG_PATTERN_CREATION:Z

.field static final DEBUG_WALKER_CREATION:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static analyze(Lorg/apache/xpath/compiler/Compiler;II)I
    .locals 9
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "stepOpCodePos"    # I
    .param p2, "stepIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/high16 v6, 0x8000000

    .line 670
    const/4 v2, 0x0

    .line 671
    .local v2, "stepCount":I
    const/4 v0, 0x0

    .line 673
    .local v0, "analysisResult":I
    :cond_0
    const/4 v4, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v3

    .local v3, "stepType":I
    if-eq v4, v3, :cond_3

    .line 675
    add-int/lit8 v2, v2, 0x1

    .line 682
    invoke-static {p0, p1, v3}, Lorg/apache/xpath/axes/WalkerFactory;->analyzePredicate(Lorg/apache/xpath/compiler/Compiler;II)Z

    move-result v1

    .line 685
    .local v1, "predAnalysis":Z
    if-eqz v1, :cond_1

    .line 686
    or-int/lit16 v0, v0, 0x1000

    .line 688
    :cond_1
    packed-switch v3, :pswitch_data_0

    .line 755
    :pswitch_0
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "ER_NULL_ERROR_HANDLER"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 694
    :pswitch_1
    const/high16 v4, 0x4000000

    or-int/2addr v0, v4

    .line 759
    :goto_0
    const/16 v4, 0x409

    add-int/lit8 v5, p1, 0x3

    invoke-virtual {p0, v5}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 761
    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v0, v4

    .line 764
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getNextStepPos(I)I

    move-result p1

    .line 766
    if-gez p1, :cond_0

    .line 770
    .end local v1    # "predAnalysis":Z
    :cond_3
    and-int/lit16 v4, v2, 0xff

    or-int/2addr v0, v4

    .line 772
    return v0

    .line 697
    .restart local v1    # "predAnalysis":Z
    :pswitch_2
    or-int/2addr v0, v6

    .line 698
    goto :goto_0

    .line 700
    :pswitch_3
    or-int/lit16 v0, v0, 0x2000

    .line 701
    goto :goto_0

    .line 703
    :pswitch_4
    or-int/lit16 v0, v0, 0x4000

    .line 704
    goto :goto_0

    .line 706
    :pswitch_5
    const v4, 0x8000

    or-int/2addr v0, v4

    .line 707
    goto :goto_0

    .line 709
    :pswitch_6
    const/high16 v4, 0x200000

    or-int/2addr v0, v4

    .line 710
    goto :goto_0

    .line 712
    :pswitch_7
    const/high16 v4, 0x10000

    or-int/2addr v0, v4

    .line 713
    goto :goto_0

    .line 715
    :pswitch_8
    const/high16 v4, 0x20000

    or-int/2addr v0, v4

    .line 716
    goto :goto_0

    .line 720
    :pswitch_9
    const/4 v4, 0x2

    if-ne v4, v2, :cond_4

    if-ne v6, v0, :cond_4

    .line 722
    const/high16 v4, 0x20000000

    or-int/2addr v0, v4

    .line 725
    :cond_4
    const/high16 v4, 0x40000

    or-int/2addr v0, v4

    .line 726
    goto :goto_0

    .line 728
    :pswitch_a
    const/high16 v4, 0x80000

    or-int/2addr v0, v4

    .line 729
    goto :goto_0

    .line 731
    :pswitch_b
    const/high16 v4, 0x100000

    or-int/2addr v0, v4

    .line 732
    goto :goto_0

    .line 734
    :pswitch_c
    const/high16 v4, 0x800000

    or-int/2addr v0, v4

    .line 735
    goto :goto_0

    .line 737
    :pswitch_d
    const/high16 v4, 0x1000000

    or-int/2addr v0, v4

    .line 738
    goto :goto_0

    .line 740
    :pswitch_e
    const/high16 v4, 0x400000

    or-int/2addr v0, v4

    .line 741
    goto :goto_0

    .line 743
    :pswitch_f
    const/high16 v4, 0x2000000

    or-int/2addr v0, v4

    .line 744
    goto :goto_0

    .line 746
    :pswitch_10
    const v4, -0x7fff8000

    or-int/2addr v0, v4

    .line 747
    goto :goto_0

    .line 749
    :pswitch_11
    const v4, -0x7fffe000

    or-int/2addr v0, v4

    .line 750
    goto :goto_0

    .line 752
    :pswitch_12
    const/high16 v4, -0x7fc00000

    or-int/2addr v0, v4

    .line 753
    goto :goto_0

    .line 688
    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_6
        :pswitch_2
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method static analyzePredicate(Lorg/apache/xpath/compiler/Compiler;II)Z
    .locals 4
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "opPos"    # I
    .param p2, "stepType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1133
    packed-switch p2, :pswitch_data_0

    .line 1142
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getArgLengthOfStep(I)I

    move-result v0

    .line 1145
    .local v0, "argLen":I
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstPredicateOpPos(I)I

    move-result v2

    .line 1146
    .local v2, "pos":I
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->countPredicates(I)I

    move-result v1

    .line 1148
    .local v1, "nPredicates":I
    if-lez v1, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 1139
    .end local v0    # "argLen":I
    .end local v1    # "nPredicates":I
    .end local v2    # "pos":I
    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getArgLength(I)I

    move-result v0

    .line 1140
    .restart local v0    # "argLen":I
    goto :goto_0

    .line 1148
    .restart local v1    # "nPredicates":I
    .restart local v2    # "pos":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 1133
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static canCrissCross(I)Z
    .locals 2
    .param p0, "analysis"    # I

    .prologue
    const/4 v0, 0x0

    .line 1566
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSelfOnly(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1584
    :cond_0
    :goto_0
    return v0

    .line 1568
    :cond_1
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksDownOnly(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->canSkipSubtrees(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1570
    :cond_2
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksChildrenAndExtraAndSelfOnly(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1572
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksDescendantsAndExtraAndSelfOnly(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1574
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUpOnly(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1576
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodesOnly(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1578
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->canSkipSubtrees(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1582
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static canSkipSubtrees(I)Z
    .locals 2
    .param p0, "analysis"    # I

    .prologue
    .line 1560
    const/high16 v0, 0x10000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static createDefaultStepPattern(Lorg/apache/xpath/compiler/Compiler;ILorg/apache/xpath/axes/MatchPatternIterator;ILorg/apache/xpath/patterns/StepPattern;Lorg/apache/xpath/patterns/StepPattern;)Lorg/apache/xpath/patterns/StepPattern;
    .locals 14
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "opPos"    # I
    .param p2, "mpi"    # Lorg/apache/xpath/axes/MatchPatternIterator;
    .param p3, "analysis"    # I
    .param p4, "tail"    # Lorg/apache/xpath/patterns/StepPattern;
    .param p5, "head"    # Lorg/apache/xpath/patterns/StepPattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 984
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v10

    .line 985
    .local v10, "stepType":I
    const/4 v9, 0x0

    .line 986
    .local v9, "simpleInit":Z
    const/4 v8, 0x1

    .line 988
    .local v8, "prevIsOneStepDown":Z
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    move-result v1

    .line 989
    .local v1, "whatToShow":I
    const/4 v0, 0x0

    .line 992
    .local v0, "ai":Lorg/apache/xpath/patterns/StepPattern;
    packed-switch v10, :pswitch_data_0

    .line 1086
    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ER_NULL_ERROR_HANDLER"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v3, v11}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 998
    :pswitch_1
    const/4 v8, 0x0

    .line 1002
    packed-switch v10, :pswitch_data_1

    .line 1011
    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v7

    .line 1014
    .local v7, "expr":Lorg/apache/xpath/Expression;
    :goto_0
    const/16 v4, 0x14

    .line 1015
    .local v4, "axis":I
    const/16 v5, 0x14

    .line 1016
    .local v5, "predicateAxis":I
    new-instance v0, Lorg/apache/xpath/patterns/FunctionPattern;

    .end local v0    # "ai":Lorg/apache/xpath/patterns/StepPattern;
    invoke-direct {v0, v7, v4, v5}, Lorg/apache/xpath/patterns/FunctionPattern;-><init>(Lorg/apache/xpath/Expression;II)V

    .line 1017
    .restart local v0    # "ai":Lorg/apache/xpath/patterns/StepPattern;
    const/4 v9, 0x1

    .line 1089
    .end local v7    # "expr":Lorg/apache/xpath/Expression;
    :goto_1
    if-nez v0, :cond_0

    .line 1091
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    move-result v1

    .line 1092
    new-instance v0, Lorg/apache/xpath/patterns/StepPattern;

    .end local v0    # "ai":Lorg/apache/xpath/patterns/StepPattern;
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getStepNS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    .line 1107
    .restart local v0    # "ai":Lorg/apache/xpath/patterns/StepPattern;
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstPredicateOpPos(I)I

    move-result v6

    .line 1109
    .local v6, "argLen":I
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/Compiler;->getCompiledPredicates(I)[Lorg/apache/xpath/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setPredicates([Lorg/apache/xpath/Expression;)V

    .line 1111
    return-object v0

    .line 1008
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    .end local v6    # "argLen":I
    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v7

    .line 1009
    .restart local v7    # "expr":Lorg/apache/xpath/Expression;
    goto :goto_0

    .line 1020
    .end local v7    # "expr":Lorg/apache/xpath/Expression;
    :pswitch_3
    const/16 v1, 0x500

    .line 1023
    const/16 v4, 0x13

    .line 1024
    .restart local v4    # "axis":I
    const/16 v5, 0x13

    .line 1025
    .restart local v5    # "predicateAxis":I
    new-instance v0, Lorg/apache/xpath/patterns/StepPattern;

    .end local v0    # "ai":Lorg/apache/xpath/patterns/StepPattern;
    const/16 v2, 0x500

    invoke-direct {v0, v2, v4, v5}, Lorg/apache/xpath/patterns/StepPattern;-><init>(III)V

    .line 1028
    .restart local v0    # "ai":Lorg/apache/xpath/patterns/StepPattern;
    goto :goto_1

    .line 1030
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_4
    const/4 v1, 0x2

    .line 1031
    const/16 v4, 0xa

    .line 1032
    .restart local v4    # "axis":I
    const/4 v5, 0x2

    .line 1034
    .restart local v5    # "predicateAxis":I
    goto :goto_1

    .line 1036
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_5
    const/16 v1, 0x1000

    .line 1037
    const/16 v4, 0xa

    .line 1038
    .restart local v4    # "axis":I
    const/16 v5, 0x9

    .line 1040
    .restart local v5    # "predicateAxis":I
    goto :goto_1

    .line 1042
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_6
    const/4 v4, 0x4

    .line 1043
    .restart local v4    # "axis":I
    const/4 v5, 0x0

    .line 1044
    .restart local v5    # "predicateAxis":I
    goto :goto_1

    .line 1046
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_7
    const/16 v4, 0xa

    .line 1047
    .restart local v4    # "axis":I
    const/4 v5, 0x3

    .line 1048
    .restart local v5    # "predicateAxis":I
    goto :goto_1

    .line 1050
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_8
    const/4 v4, 0x5

    .line 1051
    .restart local v4    # "axis":I
    const/4 v5, 0x1

    .line 1052
    .restart local v5    # "predicateAxis":I
    goto :goto_1

    .line 1054
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_9
    const/16 v4, 0xd

    .line 1055
    .restart local v4    # "axis":I
    const/16 v5, 0xd

    .line 1056
    .restart local v5    # "predicateAxis":I
    goto :goto_1

    .line 1058
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_a
    const/4 v4, 0x3

    .line 1059
    .restart local v4    # "axis":I
    const/16 v5, 0xa

    .line 1060
    .restart local v5    # "predicateAxis":I
    goto :goto_1

    .line 1062
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_b
    const/4 v4, 0x7

    .line 1063
    .restart local v4    # "axis":I
    const/16 v5, 0xc

    .line 1064
    .restart local v5    # "predicateAxis":I
    goto :goto_1

    .line 1066
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_c
    const/4 v4, 0x6

    .line 1067
    .restart local v4    # "axis":I
    const/16 v5, 0xb

    .line 1068
    .restart local v5    # "predicateAxis":I
    goto :goto_1

    .line 1070
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_d
    const/16 v4, 0xc

    .line 1071
    .restart local v4    # "axis":I
    const/4 v5, 0x7

    .line 1072
    .restart local v5    # "predicateAxis":I
    goto :goto_1

    .line 1074
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_e
    const/16 v4, 0xb

    .line 1075
    .restart local v4    # "axis":I
    const/4 v5, 0x6

    .line 1076
    .restart local v5    # "predicateAxis":I
    goto :goto_1

    .line 1078
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_f
    const/4 v4, 0x1

    .line 1079
    .restart local v4    # "axis":I
    const/4 v5, 0x5

    .line 1080
    .restart local v5    # "predicateAxis":I
    goto :goto_1

    .line 1082
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_10
    const/4 v4, 0x0

    .line 1083
    .restart local v4    # "axis":I
    const/4 v5, 0x4

    .line 1084
    .restart local v5    # "predicateAxis":I
    goto :goto_1

    .line 992
    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_4
        :pswitch_7
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_9
        :pswitch_5
        :pswitch_3
    .end packed-switch

    .line 1002
    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static createDefaultWalker(Lorg/apache/xpath/compiler/Compiler;ILorg/apache/xpath/axes/WalkingIterator;I)Lorg/apache/xpath/axes/AxesWalker;
    .locals 11
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "opPos"    # I
    .param p2, "lpi"    # Lorg/apache/xpath/axes/WalkingIterator;
    .param p3, "analysis"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v7, -0x1

    .line 1168
    const/4 v0, 0x0

    .line 1169
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v3

    .line 1179
    .local v3, "stepType":I
    const/4 v2, 0x0

    .line 1180
    .local v2, "simpleInit":Z
    and-int/lit16 v4, p3, 0xff

    .line 1181
    .local v4, "totalNumberWalkers":I
    const/4 v1, 0x1

    .line 1183
    .local v1, "prevIsOneStepDown":Z
    packed-switch v3, :pswitch_data_0

    .line 1250
    :pswitch_0
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "ER_NULL_ERROR_HANDLER"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1189
    :pswitch_1
    const/4 v1, 0x0

    .line 1195
    new-instance v0, Lorg/apache/xpath/axes/FilterExprWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    invoke-direct {v0, p2}, Lorg/apache/xpath/axes/FilterExprWalker;-><init>(Lorg/apache/xpath/axes/WalkingIterator;)V

    .line 1196
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v2, 0x1

    .line 1254
    :goto_0
    if-eqz v2, :cond_0

    .line 1256
    invoke-virtual {v0, v7}, Lorg/apache/xpath/axes/AxesWalker;->initNodeTest(I)V

    .line 1280
    :goto_1
    return-object v0

    .line 1199
    :pswitch_2
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/16 v6, 0x13

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 1200
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_0

    .line 1202
    :pswitch_3
    const/4 v1, 0x0

    .line 1203
    new-instance v0, Lorg/apache/xpath/axes/ReverseAxesWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    invoke-direct {v0, p2, v10}, Lorg/apache/xpath/axes/ReverseAxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 1204
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_0

    .line 1206
    :pswitch_4
    const/4 v1, 0x0

    .line 1207
    new-instance v0, Lorg/apache/xpath/axes/ReverseAxesWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    invoke-direct {v0, p2, v8}, Lorg/apache/xpath/axes/ReverseAxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 1208
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_0

    .line 1210
    :pswitch_5
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v6, 0x2

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 1211
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_0

    .line 1213
    :pswitch_6
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/16 v6, 0x9

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 1214
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_0

    .line 1216
    :pswitch_7
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v6, 0x3

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 1217
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_0

    .line 1219
    :pswitch_8
    const/4 v1, 0x0

    .line 1220
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v6, 0x4

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 1221
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_0

    .line 1223
    :pswitch_9
    const/4 v1, 0x0

    .line 1224
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v6, 0x5

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 1225
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_0

    .line 1227
    :pswitch_a
    const/4 v1, 0x0

    .line 1228
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v6, 0x6

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 1229
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_0

    .line 1231
    :pswitch_b
    const/4 v1, 0x0

    .line 1232
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v6, 0x7

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 1233
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_0

    .line 1235
    :pswitch_c
    const/4 v1, 0x0

    .line 1236
    new-instance v0, Lorg/apache/xpath/axes/ReverseAxesWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/16 v6, 0xb

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/ReverseAxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 1237
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_0

    .line 1239
    :pswitch_d
    const/4 v1, 0x0

    .line 1240
    new-instance v0, Lorg/apache/xpath/axes/ReverseAxesWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/16 v6, 0xc

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/ReverseAxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 1241
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_0

    .line 1243
    :pswitch_e
    const/4 v1, 0x0

    .line 1244
    new-instance v0, Lorg/apache/xpath/axes/ReverseAxesWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/16 v6, 0xa

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/ReverseAxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 1245
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_0

    .line 1247
    :pswitch_f
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/16 v6, 0xd

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 1248
    .restart local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_0

    .line 1260
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    move-result v5

    .line 1269
    .local v5, "whatToShow":I
    and-int/lit16 v6, v5, 0x1043

    if-eqz v6, :cond_1

    if-ne v5, v7, :cond_2

    .line 1272
    :cond_1
    invoke-virtual {v0, v5}, Lorg/apache/xpath/axes/AxesWalker;->initNodeTest(I)V

    goto :goto_1

    .line 1275
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getStepNS(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Lorg/apache/xpath/axes/AxesWalker;->initNodeTest(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1183
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public static diagnoseIterator(Ljava/lang/String;ILorg/apache/xpath/compiler/Compiler;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "analysis"    # I
    .param p2, "compiler"    # Lorg/apache/xpath/compiler/Compiler;

    .prologue
    .line 141
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/apache/xpath/compiler/Compiler;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/apache/xpath/axes/WalkerFactory;->getAnalysisString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method static functionProximateOrContainsProximate(Lorg/apache/xpath/compiler/Compiler;I)Z
    .locals 9
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "opPos"    # I

    .prologue
    const/4 v7, 0x1

    .line 403
    add-int/lit8 v8, p1, 0x1

    invoke-virtual {p0, v8}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v8

    add-int/2addr v8, p1

    add-int/lit8 v1, v8, -0x1

    .line 404
    .local v1, "endFunc":I
    invoke-static {p1}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result p1

    .line 405
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v2

    .line 409
    .local v2, "funcID":I
    packed-switch v2, :pswitch_data_0

    .line 415
    add-int/lit8 p1, p1, 0x1

    .line 416
    const/4 v3, 0x0

    .line 417
    .local v3, "i":I
    move v5, p1

    .local v5, "p":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 419
    add-int/lit8 v4, v5, 0x2

    .line 420
    .local v4, "innerExprOpPos":I
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v0

    .line 421
    .local v0, "argOp":I
    invoke-static {p0, v4}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result v6

    .line 422
    .local v6, "prox":Z
    if-eqz v6, :cond_0

    .line 427
    .end local v0    # "argOp":I
    .end local v3    # "i":I
    .end local v4    # "innerExprOpPos":I
    .end local v5    # "p":I
    .end local v6    # "prox":Z
    :goto_1
    :pswitch_0
    return v7

    .line 417
    .restart local v0    # "argOp":I
    .restart local v3    # "i":I
    .restart local v4    # "innerExprOpPos":I
    .restart local v5    # "p":I
    .restart local v6    # "prox":Z
    :cond_0
    invoke-virtual {p0, v5}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 427
    .end local v0    # "argOp":I
    .end local v4    # "innerExprOpPos":I
    .end local v6    # "prox":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getAnalysisBitFromAxes(I)I
    .locals 2
    .param p0, "axis"    # I

    .prologue
    const/high16 v1, 0x4000000

    const/high16 v0, 0x40000

    .line 355
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 396
    :goto_0
    :pswitch_1
    return v0

    .line 358
    :pswitch_2
    const/16 v0, 0x2000

    goto :goto_0

    .line 360
    :pswitch_3
    const/16 v0, 0x4000

    goto :goto_0

    .line 362
    :pswitch_4
    const v0, 0x8000

    goto :goto_0

    .line 364
    :pswitch_5
    const/high16 v0, 0x10000

    goto :goto_0

    .line 366
    :pswitch_6
    const/high16 v0, 0x20000

    goto :goto_0

    .line 370
    :pswitch_7
    const/high16 v0, 0x80000

    goto :goto_0

    .line 372
    :pswitch_8
    const/high16 v0, 0x100000

    goto :goto_0

    .line 375
    :pswitch_9
    const/high16 v0, 0x200000

    goto :goto_0

    .line 377
    :pswitch_a
    const/high16 v0, 0x400000

    goto :goto_0

    .line 379
    :pswitch_b
    const/high16 v0, 0x800000

    goto :goto_0

    .line 381
    :pswitch_c
    const/high16 v0, 0x1000000

    goto :goto_0

    .line 383
    :pswitch_d
    const/high16 v0, 0x2000000

    goto :goto_0

    .line 390
    :pswitch_e
    const/high16 v0, 0x20000000

    goto :goto_0

    .line 392
    :pswitch_f
    const/high16 v0, 0x8000000

    goto :goto_0

    :pswitch_10
    move v0, v1

    .line 394
    goto :goto_0

    .line 355
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_1
        :pswitch_0
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public static getAnalysisString(I)Ljava/lang/String;
    .locals 3
    .param p0, "analysis"    # I

    .prologue
    .line 1285
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1286
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->getStepCount(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1287
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    .line 1289
    const-string v1, "NTANY|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1291
    :cond_0
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_1

    .line 1293
    const-string v1, "PRED|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1295
    :cond_1
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_2

    .line 1297
    const-string v1, "ANC|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1299
    :cond_2
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_3

    .line 1301
    const-string v1, "ANCOS|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1303
    :cond_3
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_4

    .line 1305
    const-string v1, "ATTR|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1307
    :cond_4
    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_5

    .line 1309
    const-string v1, "CH|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1311
    :cond_5
    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    if-eqz v1, :cond_6

    .line 1313
    const-string v1, "DESC|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1315
    :cond_6
    const/high16 v1, 0x40000

    and-int/2addr v1, p0

    if-eqz v1, :cond_7

    .line 1317
    const-string v1, "DESCOS|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1319
    :cond_7
    const/high16 v1, 0x80000

    and-int/2addr v1, p0

    if-eqz v1, :cond_8

    .line 1321
    const-string v1, "FOL|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1323
    :cond_8
    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_9

    .line 1325
    const-string v1, "FOLS|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1327
    :cond_9
    const/high16 v1, 0x200000

    and-int/2addr v1, p0

    if-eqz v1, :cond_a

    .line 1329
    const-string v1, "NS|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1331
    :cond_a
    const/high16 v1, 0x400000

    and-int/2addr v1, p0

    if-eqz v1, :cond_b

    .line 1333
    const-string v1, "P|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1335
    :cond_b
    const/high16 v1, 0x800000

    and-int/2addr v1, p0

    if-eqz v1, :cond_c

    .line 1337
    const-string v1, "PREC|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1339
    :cond_c
    const/high16 v1, 0x1000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_d

    .line 1341
    const-string v1, "PRECS|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1343
    :cond_d
    const/high16 v1, 0x2000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_e

    .line 1345
    const-string v1, ".|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1347
    :cond_e
    const/high16 v1, 0x4000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_f

    .line 1349
    const-string v1, "FLT|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1351
    :cond_f
    const/high16 v1, 0x8000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_10

    .line 1353
    const-string v1, "R|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1355
    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAxisFromStep(Lorg/apache/xpath/compiler/Compiler;I)I
    .locals 6
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "stepOpCodePos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 305
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v0

    .line 307
    .local v0, "stepType":I
    packed-switch v0, :pswitch_data_0

    .line 344
    :pswitch_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "ER_NULL_ERROR_HANDLER"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v4, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 310
    :pswitch_1
    const/4 v1, 0x6

    .line 341
    :goto_0
    :pswitch_2
    return v1

    .line 312
    :pswitch_3
    const/4 v1, 0x7

    goto :goto_0

    .line 314
    :pswitch_4
    const/16 v1, 0xb

    goto :goto_0

    .line 316
    :pswitch_5
    const/16 v1, 0xc

    goto :goto_0

    .line 318
    :pswitch_6
    const/16 v1, 0xa

    goto :goto_0

    .line 320
    :pswitch_7
    const/16 v1, 0x9

    goto :goto_0

    :pswitch_8
    move v1, v2

    .line 324
    goto :goto_0

    .line 326
    :pswitch_9
    const/4 v1, 0x2

    goto :goto_0

    .line 328
    :pswitch_a
    const/16 v1, 0x13

    goto :goto_0

    .line 330
    :pswitch_b
    const/4 v1, 0x3

    goto :goto_0

    .line 332
    :pswitch_c
    const/4 v1, 0x5

    goto :goto_0

    .line 334
    :pswitch_d
    const/4 v1, 0x4

    goto :goto_0

    .line 336
    :pswitch_e
    const/16 v1, 0xd

    goto :goto_0

    .line 341
    :pswitch_f
    const/16 v1, 0x14

    goto :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_e
        :pswitch_7
        :pswitch_a
    .end packed-switch
.end method

.method public static getStepCount(I)I
    .locals 1
    .param p0, "analysis"    # I

    .prologue
    .line 1728
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static hasPredicate(I)Z
    .locals 1
    .param p0, "analysis"    # I

    .prologue
    .line 1369
    and-int/lit16 v0, p0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAbsolute(I)Z
    .locals 1
    .param p0, "analysis"    # I

    .prologue
    .line 1485
    const/high16 v0, 0xc000000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    return v0
.end method

.method public static isDownwardAxisOfMany(I)Z
    .locals 1
    .param p0, "axis"    # I

    .prologue
    .line 785
    const/4 v0, 0x5

    if-eq v0, p0, :cond_0

    const/4 v0, 0x4

    if-eq v0, p0, :cond_0

    const/4 v0, 0x6

    if-eq v0, p0, :cond_0

    const/16 v0, 0xb

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNaturalDocOrder(I)Z
    .locals 2
    .param p0, "analysis"    # I

    .prologue
    const/4 v0, 0x0

    .line 1599
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->canCrissCross(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x200000

    invoke-static {p0, v1}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksFilteredList(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1606
    :cond_0
    :goto_0
    return v0

    .line 1603
    :cond_1
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksInDocOrder(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1604
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isNaturalDocOrder(Lorg/apache/xpath/compiler/Compiler;III)Z
    .locals 11
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "stepOpCodePos"    # I
    .param p2, "stepIndex"    # I
    .param p3, "analysis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1627
    invoke-static {p3}, Lorg/apache/xpath/axes/WalkerFactory;->canCrissCross(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1718
    :cond_0
    :goto_0
    return v6

    .line 1632
    :cond_1
    const/high16 v8, 0x200000

    invoke-static {p3, v8}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1641
    const/high16 v8, 0x180000

    invoke-static {p3, v8}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v8

    if-eqz v8, :cond_2

    const/high16 v8, 0x1800000

    invoke-static {p3, v8}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1651
    :cond_2
    const/4 v4, 0x0

    .line 1652
    .local v4, "stepCount":I
    const/4 v0, 0x0

    .line 1657
    .local v0, "foundWildAttribute":Z
    const/4 v3, 0x0

    .line 1659
    .local v3, "potentialDuplicateMakingStepCount":I
    :goto_1
    const/4 v8, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v5

    .local v5, "stepType":I
    if-eq v8, v5, :cond_4

    .line 1661
    add-int/lit8 v4, v4, 0x1

    .line 1663
    packed-switch v5, :pswitch_data_0

    .line 1706
    :pswitch_0
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "ER_NULL_ERROR_HANDLER"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v6

    invoke-static {v9, v7}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1667
    :pswitch_1
    if-nez v0, :cond_0

    .line 1673
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 1675
    .local v1, "localName":Ljava/lang/String;
    const-string v8, "*"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1677
    const/4 v0, 0x1

    .line 1710
    .end local v1    # "localName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getNextStepPos(I)I

    move-result v2

    .line 1712
    .local v2, "nextStepOpCodePos":I
    if-gez v2, :cond_5

    .end local v2    # "nextStepOpCodePos":I
    :cond_4
    move v6, v7

    .line 1718
    goto :goto_0

    .line 1696
    :pswitch_2
    if-gtz v3, :cond_0

    .line 1698
    add-int/lit8 v3, v3, 0x1

    .line 1702
    :pswitch_3
    if-eqz v0, :cond_3

    goto :goto_0

    .line 1715
    .restart local v2    # "nextStepOpCodePos":I
    :cond_5
    move p1, v2

    .line 1716
    goto :goto_1

    .line 1663
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static isOneStep(I)Z
    .locals 2
    .param p0, "analysis"    # I

    .prologue
    const/4 v0, 0x1

    .line 1723
    and-int/lit16 v1, p0, 0xff

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isOptimizableForDescendantIterator(Lorg/apache/xpath/compiler/Compiler;II)Z
    .locals 13
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "stepOpCodePos"    # I
    .param p2, "stepIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 562
    const/4 v6, 0x0

    .line 563
    .local v6, "stepCount":I
    const/4 v1, 0x0

    .line 564
    .local v1, "foundDorDS":Z
    const/4 v2, 0x0

    .line 565
    .local v2, "foundSelf":Z
    const/4 v0, 0x0

    .line 567
    .local v0, "foundDS":Z
    const/16 v5, 0x409

    .line 569
    .local v5, "nodeTestType":I
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v7

    .local v7, "stepType":I
    if-eq v11, v7, :cond_3

    .line 573
    const/16 v10, 0x409

    if-eq v5, v10, :cond_1

    const/16 v10, 0x23

    if-eq v5, v10, :cond_1

    .line 646
    :cond_0
    :goto_1
    :pswitch_0
    return v8

    .line 576
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 577
    if-gt v6, v12, :cond_0

    .line 580
    invoke-static {p0, p1, v7}, Lorg/apache/xpath/axes/WalkerFactory;->mightBeProximate(Lorg/apache/xpath/compiler/Compiler;II)Z

    move-result v3

    .line 581
    .local v3, "mightBeProximate":Z
    if-nez v3, :cond_0

    .line 584
    packed-switch v7, :pswitch_data_0

    .line 624
    :pswitch_1
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "ER_NULL_ERROR_HANDLER"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v8

    invoke-static {v11, v9}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 604
    :pswitch_2
    if-ne v9, v6, :cond_0

    .line 628
    :cond_2
    :goto_2
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getStepTestType(I)I

    move-result v5

    .line 630
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getNextStepPos(I)I

    move-result v4

    .line 632
    .local v4, "nextStepOpCodePos":I
    if-gez v4, :cond_4

    .end local v3    # "mightBeProximate":Z
    .end local v4    # "nextStepOpCodePos":I
    :cond_3
    move v8, v9

    .line 646
    goto :goto_1

    .line 608
    .restart local v3    # "mightBeProximate":Z
    :pswitch_3
    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    if-nez v2, :cond_2

    goto :goto_1

    .line 612
    :pswitch_4
    const/4 v0, 0x1

    .line 614
    :pswitch_5
    if-eq v12, v6, :cond_0

    .line 616
    const/4 v1, 0x1

    .line 617
    goto :goto_2

    .line 619
    :pswitch_6
    if-ne v9, v6, :cond_0

    .line 621
    const/4 v2, 0x1

    .line 622
    goto :goto_2

    .line 635
    .restart local v4    # "nextStepOpCodePos":I
    :cond_4
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v10

    if-eq v11, v10, :cond_5

    .line 637
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->countPredicates(I)I

    move-result v10

    if-gtz v10, :cond_0

    .line 643
    :cond_5
    move p1, v4

    .line 644
    goto :goto_0

    .line 584
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z
    .locals 7
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "opPos"    # I

    .prologue
    const/4 v5, 0x1

    .line 432
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v3

    .line 433
    .local v3, "op":I
    add-int/lit8 v0, p1, 0x2

    .line 434
    .local v0, "innerExprOpPos":I
    packed-switch v3, :pswitch_data_0

    .line 467
    :cond_0
    :goto_0
    :pswitch_0
    return v5

    .line 437
    :pswitch_1
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 467
    :cond_1
    :pswitch_2
    const/4 v5, 0x0

    goto :goto_0

    .line 446
    :pswitch_3
    invoke-static {p0, p1}, Lorg/apache/xpath/axes/WalkerFactory;->functionProximateOrContainsProximate(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result v1

    .line 447
    .local v1, "isProx":Z
    if-eqz v1, :cond_1

    goto :goto_0

    .line 455
    .end local v1    # "isProx":Z
    :pswitch_4
    invoke-static {v3}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result v2

    .line 456
    .local v2, "leftPos":I
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result v4

    .line 457
    .local v4, "rightPos":I
    invoke-static {p0, v2}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result v1

    .line 458
    .restart local v1    # "isProx":Z
    if-nez v1, :cond_0

    .line 460
    invoke-static {p0, v4}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result v1

    .line 461
    if-eqz v1, :cond_1

    goto :goto_0

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static isSet(II)Z
    .locals 1
    .param p0, "analysis"    # I
    .param p1, "bits"    # I

    .prologue
    .line 136
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWild(I)Z
    .locals 1
    .param p0, "analysis"    # I

    .prologue
    .line 1374
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static loadOneWalker(Lorg/apache/xpath/axes/WalkingIterator;Lorg/apache/xpath/compiler/Compiler;I)Lorg/apache/xpath/axes/AxesWalker;
    .locals 3
    .param p0, "lpi"    # Lorg/apache/xpath/axes/WalkingIterator;
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "stepOpCodePos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "firstWalker":Lorg/apache/xpath/axes/AxesWalker;
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v1

    .line 68
    .local v1, "stepType":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 73
    const/4 v2, 0x0

    invoke-static {p1, v1, p0, v2}, Lorg/apache/xpath/axes/WalkerFactory;->createDefaultWalker(Lorg/apache/xpath/compiler/Compiler;ILorg/apache/xpath/axes/WalkingIterator;I)Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v0

    .line 75
    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xpath/axes/AxesWalker;->init(Lorg/apache/xpath/compiler/Compiler;II)V

    .line 78
    :cond_0
    return-object v0
.end method

.method static loadSteps(Lorg/apache/xpath/axes/MatchPatternIterator;Lorg/apache/xpath/compiler/Compiler;II)Lorg/apache/xpath/patterns/StepPattern;
    .locals 24
    .param p0, "mpi"    # Lorg/apache/xpath/axes/MatchPatternIterator;
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "stepOpCodePos"    # I
    .param p3, "stepIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 830
    const/16 v21, 0x0

    .line 831
    .local v21, "step":Lorg/apache/xpath/patterns/StepPattern;
    const/4 v6, 0x0

    .local v6, "firstStep":Lorg/apache/xpath/patterns/StepPattern;
    const/4 v7, 0x0

    .line 832
    .local v7, "prevStep":Lorg/apache/xpath/patterns/StepPattern;
    invoke-static/range {p1 .. p3}, Lorg/apache/xpath/axes/WalkerFactory;->analyze(Lorg/apache/xpath/compiler/Compiler;II)I

    move-result v5

    .line 834
    .local v5, "analysis":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual/range {p1 .. p2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v22

    .local v22, "stepType":I
    move/from16 v0, v22

    if-eq v2, v0, :cond_1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p0

    .line 836
    invoke-static/range {v2 .. v7}, Lorg/apache/xpath/axes/WalkerFactory;->createDefaultStepPattern(Lorg/apache/xpath/compiler/Compiler;ILorg/apache/xpath/axes/MatchPatternIterator;ILorg/apache/xpath/patterns/StepPattern;Lorg/apache/xpath/patterns/StepPattern;)Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v21

    .line 839
    if-nez v6, :cond_5

    .line 841
    move-object/from16 v6, v21

    .line 850
    :goto_0
    move-object/from16 v7, v21

    .line 851
    invoke-virtual/range {p1 .. p2}, Lorg/apache/xpath/compiler/Compiler;->getNextStepPos(I)I

    move-result p2

    .line 853
    if-gez p2, :cond_0

    .line 857
    :cond_1
    const/16 v14, 0xd

    .line 858
    .local v14, "axis":I
    const/16 v17, 0xd

    .line 859
    .local v17, "paxis":I
    move-object/from16 v23, v21

    .line 860
    .local v23, "tail":Lorg/apache/xpath/patterns/StepPattern;
    move-object/from16 v16, v21

    .local v16, "pat":Lorg/apache/xpath/patterns/StepPattern;
    :goto_1
    if-eqz v16, :cond_9

    .line 863
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getAxis()I

    move-result v15

    .line 865
    .local v15, "nextAxis":I
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lorg/apache/xpath/patterns/StepPattern;->setAxis(I)V

    .line 890
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getWhatToShow()I

    move-result v9

    .line 891
    .local v9, "whatToShow":I
    const/4 v2, 0x2

    if-eq v9, v2, :cond_2

    const/16 v2, 0x1000

    if-ne v9, v2, :cond_4

    .line 894
    :cond_2
    const/4 v2, 0x2

    if-ne v9, v2, :cond_6

    const/4 v12, 0x2

    .line 896
    .local v12, "newAxis":I
    :goto_2
    invoke-static {v14}, Lorg/apache/xpath/axes/WalkerFactory;->isDownwardAxisOfMany(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 898
    new-instance v8, Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getNamespace()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getLocalName()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lorg/apache/xpath/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    .line 903
    .local v8, "attrPat":Lorg/apache/xpath/patterns/StepPattern;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getStaticScore()Lorg/apache/xpath/objects/XNumber;

    move-result-object v19

    .line 904
    .local v19, "score":Lorg/apache/xpath/objects/XNumber;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setNamespace(Ljava/lang/String;)V

    .line 905
    const-string v2, "*"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setLocalName(Ljava/lang/String;)V

    .line 906
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getPredicates()[Lorg/apache/xpath/Expression;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/apache/xpath/patterns/StepPattern;->setPredicates([Lorg/apache/xpath/Expression;)V

    .line 907
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setPredicates([Lorg/apache/xpath/Expression;)V

    .line 908
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setWhatToShow(I)V

    .line 909
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getRelativePathPattern()Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v18

    .line 910
    .local v18, "rel":Lorg/apache/xpath/patterns/StepPattern;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/apache/xpath/patterns/StepPattern;->setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V

    .line 911
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/apache/xpath/patterns/StepPattern;->setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V

    .line 912
    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/apache/xpath/patterns/StepPattern;->setStaticScore(Lorg/apache/xpath/objects/XNumber;)V

    .line 918
    const/16 v2, 0xb

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getAxis()I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 919
    const/16 v2, 0xf

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setAxis(I)V

    .line 924
    :cond_3
    :goto_3
    move-object/from16 v16, v8

    .line 933
    .end local v8    # "attrPat":Lorg/apache/xpath/patterns/StepPattern;
    .end local v12    # "newAxis":I
    .end local v18    # "rel":Lorg/apache/xpath/patterns/StepPattern;
    .end local v19    # "score":Lorg/apache/xpath/objects/XNumber;
    :cond_4
    :goto_4
    move v14, v15

    .line 935
    move-object/from16 v23, v16

    .line 861
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getRelativePathPattern()Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v16

    goto :goto_1

    .line 847
    .end local v9    # "whatToShow":I
    .end local v14    # "axis":I
    .end local v15    # "nextAxis":I
    .end local v16    # "pat":Lorg/apache/xpath/patterns/StepPattern;
    .end local v17    # "paxis":I
    .end local v23    # "tail":Lorg/apache/xpath/patterns/StepPattern;
    :cond_5
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lorg/apache/xpath/patterns/StepPattern;->setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V

    goto/16 :goto_0

    .line 894
    .restart local v9    # "whatToShow":I
    .restart local v14    # "axis":I
    .restart local v15    # "nextAxis":I
    .restart local v16    # "pat":Lorg/apache/xpath/patterns/StepPattern;
    .restart local v17    # "paxis":I
    .restart local v23    # "tail":Lorg/apache/xpath/patterns/StepPattern;
    :cond_6
    const/16 v12, 0x9

    goto :goto_2

    .line 921
    .restart local v8    # "attrPat":Lorg/apache/xpath/patterns/StepPattern;
    .restart local v12    # "newAxis":I
    .restart local v18    # "rel":Lorg/apache/xpath/patterns/StepPattern;
    .restart local v19    # "score":Lorg/apache/xpath/objects/XNumber;
    :cond_7
    const/4 v2, 0x4

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getAxis()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 922
    const/4 v2, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setAxis(I)V

    goto :goto_3

    .line 926
    .end local v8    # "attrPat":Lorg/apache/xpath/patterns/StepPattern;
    .end local v18    # "rel":Lorg/apache/xpath/patterns/StepPattern;
    .end local v19    # "score":Lorg/apache/xpath/objects/XNumber;
    :cond_8
    const/4 v2, 0x3

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getAxis()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 930
    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setAxis(I)V

    goto :goto_4

    .line 938
    .end local v9    # "whatToShow":I
    .end local v12    # "newAxis":I
    .end local v15    # "nextAxis":I
    :cond_9
    const/16 v2, 0x10

    if-ge v14, v2, :cond_a

    .line 940
    new-instance v20, Lorg/apache/xpath/patterns/ContextMatchStepPattern;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-direct {v0, v14, v1}, Lorg/apache/xpath/patterns/ContextMatchStepPattern;-><init>(II)V

    .line 942
    .local v20, "selfPattern":Lorg/apache/xpath/patterns/StepPattern;
    invoke-virtual/range {v23 .. v23}, Lorg/apache/xpath/patterns/StepPattern;->getStaticScore()Lorg/apache/xpath/objects/XNumber;

    move-result-object v19

    .line 943
    .restart local v19    # "score":Lorg/apache/xpath/objects/XNumber;
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/xpath/patterns/StepPattern;->setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V

    .line 944
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/xpath/patterns/StepPattern;->setStaticScore(Lorg/apache/xpath/objects/XNumber;)V

    .line 945
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/xpath/patterns/StepPattern;->setStaticScore(Lorg/apache/xpath/objects/XNumber;)V

    .line 954
    .end local v19    # "score":Lorg/apache/xpath/objects/XNumber;
    .end local v20    # "selfPattern":Lorg/apache/xpath/patterns/StepPattern;
    :cond_a
    return-object v21
.end method

.method static loadWalkers(Lorg/apache/xpath/axes/WalkingIterator;Lorg/apache/xpath/compiler/Compiler;II)Lorg/apache/xpath/axes/AxesWalker;
    .locals 6
    .param p0, "lpi"    # Lorg/apache/xpath/axes/WalkingIterator;
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "stepOpCodePos"    # I
    .param p3, "stepIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, "firstWalker":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v2, 0x0

    .line 104
    .local v2, "prevWalker":Lorg/apache/xpath/axes/AxesWalker;
    invoke-static {p1, p2, p3}, Lorg/apache/xpath/axes/WalkerFactory;->analyze(Lorg/apache/xpath/compiler/Compiler;II)I

    move-result v0

    .line 106
    .local v0, "analysis":I
    :cond_0
    const/4 v5, -0x1

    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v3

    .local v3, "stepType":I
    if-eq v5, v3, :cond_1

    .line 108
    invoke-static {p1, p2, p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->createDefaultWalker(Lorg/apache/xpath/compiler/Compiler;ILorg/apache/xpath/axes/WalkingIterator;I)Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v4

    .line 110
    .local v4, "walker":Lorg/apache/xpath/axes/AxesWalker;
    invoke-virtual {v4, p1, p2, v3}, Lorg/apache/xpath/axes/AxesWalker;->init(Lorg/apache/xpath/compiler/Compiler;II)V

    .line 111
    invoke-virtual {v4, p0}, Lorg/apache/xpath/axes/AxesWalker;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 114
    if-nez v1, :cond_2

    .line 116
    move-object v1, v4

    .line 124
    :goto_0
    move-object v2, v4

    .line 125
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->getNextStepPos(I)I

    move-result p2

    .line 127
    if-gez p2, :cond_0

    .line 131
    .end local v4    # "walker":Lorg/apache/xpath/axes/AxesWalker;
    :cond_1
    return-object v1

    .line 120
    .restart local v4    # "walker":Lorg/apache/xpath/axes/AxesWalker;
    :cond_2
    invoke-virtual {v2, v4}, Lorg/apache/xpath/axes/AxesWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 121
    invoke-virtual {v4, v2}, Lorg/apache/xpath/axes/AxesWalker;->setPrevWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    goto :goto_0
.end method

.method public static mightBeProximate(Lorg/apache/xpath/compiler/Compiler;II)Z
    .locals 12
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "opPos"    # I
    .param p2, "stepType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 477
    const/4 v5, 0x0

    .line 480
    .local v5, "mightBeProximate":Z
    packed-switch p2, :pswitch_data_0

    .line 489
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getArgLengthOfStep(I)I

    move-result v0

    .line 492
    .local v0, "argLen":I
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstPredicateOpPos(I)I

    move-result v7

    .line 493
    .local v7, "predPos":I
    const/4 v1, 0x0

    .line 495
    .local v1, "count":I
    :goto_1
    const/16 v10, 0x1d

    invoke-virtual {p0, v7}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v11

    if-ne v10, v11, :cond_0

    .line 497
    add-int/lit8 v1, v1, 0x1

    .line 499
    add-int/lit8 v2, v7, 0x2

    .line 500
    .local v2, "innerExprOpPos":I
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v6

    .line 502
    .local v6, "predOp":I
    packed-switch v6, :pswitch_data_1

    :pswitch_0
    move v5, v9

    .line 539
    .end local v2    # "innerExprOpPos":I
    .end local v5    # "mightBeProximate":Z
    .end local v6    # "predOp":I
    :cond_0
    :goto_2
    return v5

    .line 486
    .end local v0    # "argLen":I
    .end local v1    # "count":I
    .end local v7    # "predPos":I
    .restart local v5    # "mightBeProximate":Z
    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getArgLength(I)I

    move-result v0

    .line 487
    .restart local v0    # "argLen":I
    goto :goto_0

    .restart local v1    # "count":I
    .restart local v2    # "innerExprOpPos":I
    .restart local v6    # "predOp":I
    .restart local v7    # "predPos":I
    :pswitch_2
    move v5, v9

    .line 505
    goto :goto_2

    :pswitch_3
    move v5, v9

    .line 511
    goto :goto_2

    .line 513
    :pswitch_4
    invoke-static {p0, v2}, Lorg/apache/xpath/axes/WalkerFactory;->functionProximateOrContainsProximate(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result v3

    .line 515
    .local v3, "isProx":Z
    if-eqz v3, :cond_2

    move v5, v9

    .line 516
    goto :goto_2

    .line 523
    .end local v3    # "isProx":Z
    :pswitch_5
    invoke-static {v2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result v4

    .line 524
    .local v4, "leftPos":I
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result v8

    .line 525
    .local v8, "rightPos":I
    invoke-static {p0, v4}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result v3

    .line 526
    .restart local v3    # "isProx":Z
    if-eqz v3, :cond_1

    move v5, v9

    .line 527
    goto :goto_2

    .line 528
    :cond_1
    invoke-static {p0, v8}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result v3

    .line 529
    if-eqz v3, :cond_2

    move v5, v9

    .line 530
    goto :goto_2

    .line 536
    .end local v3    # "isProx":Z
    .end local v4    # "leftPos":I
    .end local v8    # "rightPos":I
    :cond_2
    :pswitch_6
    invoke-virtual {p0, v7}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result v7

    .line 537
    goto :goto_1

    .line 480
    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 502
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public static newDTMIterator(Lorg/apache/xpath/compiler/Compiler;IZ)Lorg/apache/xml/dtm/DTMIterator;
    .locals 7
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "opPos"    # I
    .param p2, "isTopLevel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 164
    invoke-static {p1}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result v1

    .line 165
    .local v1, "firstStepPos":I
    invoke-static {p0, v1, v5}, Lorg/apache/xpath/axes/WalkerFactory;->analyze(Lorg/apache/xpath/compiler/Compiler;II)I

    move-result v0

    .line 166
    .local v0, "analysis":I
    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->isOneStep(I)Z

    move-result v2

    .line 170
    .local v2, "isOneStep":Z
    if-eqz v2, :cond_1

    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSelfOnly(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->isWild(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->hasPredicate(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 178
    new-instance v3, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;

    invoke-direct {v3, p0, p1, v0}, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    .line 281
    .local v3, "iter":Lorg/apache/xml/dtm/DTMIterator;
    :goto_0
    instance-of v4, v3, Lorg/apache/xpath/axes/LocPathIterator;

    if-eqz v4, :cond_0

    move-object v4, v3

    .line 282
    check-cast v4, Lorg/apache/xpath/axes/LocPathIterator;

    invoke-virtual {v4, p2}, Lorg/apache/xpath/axes/LocPathIterator;->setIsTopLevel(Z)V

    .line 284
    :cond_0
    return-object v3

    .line 181
    .end local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    :cond_1
    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->walksChildrenOnly(I)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    .line 185
    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->isWild(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->hasPredicate(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 191
    new-instance v3, Lorg/apache/xpath/axes/ChildIterator;

    invoke-direct {v3, p0, p1, v0}, Lorg/apache/xpath/axes/ChildIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    .restart local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    goto :goto_0

    .line 199
    .end local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    :cond_2
    new-instance v3, Lorg/apache/xpath/axes/ChildTestIterator;

    invoke-direct {v3, p0, p1, v0}, Lorg/apache/xpath/axes/ChildTestIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    .restart local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    goto :goto_0

    .line 203
    .end local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    :cond_3
    if-eqz v2, :cond_4

    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->walksAttributes(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 210
    new-instance v3, Lorg/apache/xpath/axes/AttributeIterator;

    invoke-direct {v3, p0, p1, v0}, Lorg/apache/xpath/axes/AttributeIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    .restart local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    goto :goto_0

    .line 212
    .end local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    :cond_4
    if-eqz v2, :cond_7

    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->walksFilteredList(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 214
    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->walksNamespaces(I)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->walksInDocOrder(I)Z

    move-result v4

    if-nez v4, :cond_5

    const/high16 v4, 0x400000

    invoke-static {v0, v4}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 222
    :cond_5
    new-instance v3, Lorg/apache/xpath/axes/OneStepIteratorForward;

    invoke-direct {v3, p0, p1, v0}, Lorg/apache/xpath/axes/OneStepIteratorForward;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    .restart local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    goto :goto_0

    .line 231
    .end local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    :cond_6
    new-instance v3, Lorg/apache/xpath/axes/OneStepIterator;

    invoke-direct {v3, p0, p1, v0}, Lorg/apache/xpath/axes/OneStepIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    .restart local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    goto :goto_0

    .line 247
    .end local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    :cond_7
    invoke-static {p0, v1, v5}, Lorg/apache/xpath/axes/WalkerFactory;->isOptimizableForDescendantIterator(Lorg/apache/xpath/compiler/Compiler;II)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 256
    new-instance v3, Lorg/apache/xpath/axes/DescendantIterator;

    invoke-direct {v3, p0, p1, v0}, Lorg/apache/xpath/axes/DescendantIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    .restart local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    goto :goto_0

    .line 260
    .end local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    :cond_8
    invoke-static {p0, v1, v5, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isNaturalDocOrder(Lorg/apache/xpath/compiler/Compiler;III)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 267
    new-instance v3, Lorg/apache/xpath/axes/WalkingIterator;

    invoke-direct {v3, p0, p1, v0, v6}, Lorg/apache/xpath/axes/WalkingIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    .restart local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    goto :goto_0

    .line 278
    .end local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    :cond_9
    new-instance v3, Lorg/apache/xpath/axes/WalkingIteratorSorted;

    invoke-direct {v3, p0, p1, v0, v6}, Lorg/apache/xpath/axes/WalkingIteratorSorted;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    .restart local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    goto :goto_0
.end method

.method public static walksAncestors(I)Z
    .locals 1
    .param p0, "analysis"    # I

    .prologue
    .line 1379
    const/16 v0, 0x6000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    return v0
.end method

.method public static walksAttributes(I)Z
    .locals 1
    .param p0, "analysis"    # I

    .prologue
    .line 1384
    const v0, 0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static walksChildren(I)Z
    .locals 1
    .param p0, "analysis"    # I

    .prologue
    .line 1394
    const/high16 v0, 0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static walksChildrenAndExtraAndSelfOnly(I)Z
    .locals 1
    .param p0, "analysis"    # I

    .prologue
    .line 1502
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksChildren(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksDescendants(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x8000000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static walksChildrenOnly(I)Z
    .locals 1
    .param p0, "analysis"    # I

    .prologue
    .line 1490
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksChildren(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x2000000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodes(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksDescendants(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x8000000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static walksDescendants(I)Z
    .locals 1
    .param p0, "analysis"    # I

    .prologue
    .line 1399
    const/high16 v0, 0x60000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    return v0
.end method

.method public static walksDescendantsAndExtraAndSelfOnly(I)Z
    .locals 1
    .param p0, "analysis"    # I

    .prologue
    .line 1512
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksChildren(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksDescendants(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x8000000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static walksDownExtraOnly(I)Z
    .locals 1
    .param p0, "analysis"    # I

    .prologue
    .line 1551
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static walksDownOnly(I)Z
    .locals 1
    .param p0, "analysis"    # I

    .prologue
    .line 1542
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static walksExtraNodes(I)Z
    .locals 1
    .param p0, "analysis"    # I

    .prologue
    .line 1469
    const v0, 0x208000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    return v0
.end method

.method public static walksExtraNodesOnly(I)Z
    .locals 1
    .param p0, "analysis"    # I

    .prologue
    .line 1474
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x2000000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static walksFilteredList(I)Z
    .locals 1
    .param p0, "analysis"    # I

    .prologue
    .line 1425
    const/high16 v0, 0x4000000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    return v0
.end method

.method public static walksFollowingOnlyMaybeAbsolute(I)Z
    .locals 1
    .param p0, "analysis"    # I

    .prologue
    .line 1449
    const/high16 v0, 0x2180000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static walksInDocOrder(I)Z
    .locals 1
    .param p0, "analysis"    # I

    .prologue
    .line 1440
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtreeOnlyMaybeAbsolute(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodesOnly(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksFollowingOnlyMaybeAbsolute(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/high16 v0, 0x4000000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static walksNamespaces(I)Z
    .locals 1
    .param p0, "analysis"    # I

    .prologue
    .line 1389
    const/high16 v0, 0x200000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static walksSelfOnly(I)Z
    .locals 1
    .param p0, "analysis"    # I

    .prologue
    .line 1522
    const/high16 v0, 0x2000000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static walksSideways(I)Z
    .locals 1
    .param p0, "analysis"    # I

    .prologue
    .line 1463
    const/high16 v0, 0x1980000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    return v0
.end method

.method public static walksSubtree(I)Z
    .locals 1
    .param p0, "analysis"    # I

    .prologue
    .line 1404
    const/high16 v0, 0x70000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    return v0
.end method

.method public static walksSubtreeOnly(I)Z
    .locals 1
    .param p0, "analysis"    # I

    .prologue
    .line 1418
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtreeOnlyMaybeAbsolute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static walksSubtreeOnlyFromRootOrContext(I)Z
    .locals 1
    .param p0, "analysis"    # I

    .prologue
    .line 1430
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodes(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x4000000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static walksSubtreeOnlyMaybeAbsolute(I)Z
    .locals 1
    .param p0, "analysis"    # I

    .prologue
    .line 1409
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodes(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static walksUp(I)Z
    .locals 1
    .param p0, "analysis"    # I

    .prologue
    .line 1458
    const v0, 0x406000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    return v0
.end method

.method public static walksUpOnly(I)Z
    .locals 1
    .param p0, "analysis"    # I

    .prologue
    .line 1533
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
