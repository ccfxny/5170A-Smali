.class public Lorg/apache/xpath/axes/WalkingIteratorSorted;
.super Lorg/apache/xpath/axes/WalkingIterator;
.source "WalkingIteratorSorted.java"


# static fields
.field static final serialVersionUID:J = -0x3e9fa9c3363f67d5L


# instance fields
.field protected m_inNaturalOrderStatic:Z


# direct methods
.method public constructor <init>(Lorg/apache/xml/utils/PrefixResolver;)V
    .locals 1
    .param p1, "nscontext"    # Lorg/apache/xml/utils/PrefixResolver;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/apache/xpath/axes/WalkingIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/axes/WalkingIteratorSorted;->m_inNaturalOrderStatic:Z

    .line 51
    return-void
.end method

.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V
    .locals 1
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "opPos"    # I
    .param p3, "analysis"    # I
    .param p4, "shouldLoadWalkers"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xpath/axes/WalkingIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/axes/WalkingIteratorSorted;->m_inNaturalOrderStatic:Z

    .line 73
    return-void
.end method


# virtual methods
.method canBeWalkedInNaturalDocOrderStatic()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 96
    iget-object v9, p0, Lorg/apache/xpath/axes/WalkingIteratorSorted;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-eqz v9, :cond_9

    .line 98
    iget-object v6, p0, Lorg/apache/xpath/axes/WalkingIteratorSorted;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 99
    .local v6, "walker":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v4, -0x1

    .line 100
    .local v4, "prevAxis":I
    const/4 v5, 0x1

    .line 102
    .local v5, "prevIsSimpleDownAxis":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz v6, :cond_5

    .line 104
    invoke-virtual {v6}, Lorg/apache/xpath/axes/AxesWalker;->getAxis()I

    move-result v0

    .line 106
    .local v0, "axis":I
    invoke-virtual {v6}, Lorg/apache/xpath/axes/AxesWalker;->isDocOrdered()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 108
    const/4 v9, 0x3

    if-eq v0, v9, :cond_0

    const/16 v9, 0xd

    if-eq v0, v9, :cond_0

    const/16 v9, 0x13

    if-ne v0, v9, :cond_2

    :cond_0
    move v3, v7

    .line 113
    .local v3, "isSimpleDownAxis":Z
    :goto_1
    if-nez v3, :cond_1

    const/4 v9, -0x1

    if-ne v0, v9, :cond_3

    .line 114
    :cond_1
    invoke-virtual {v6}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v6

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "isSimpleDownAxis":Z
    :cond_2
    move v3, v8

    .line 108
    goto :goto_1

    .line 117
    .restart local v3    # "isSimpleDownAxis":Z
    :cond_3
    invoke-virtual {v6}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v9

    if-nez v9, :cond_6

    move v2, v7

    .line 118
    .local v2, "isLastWalker":Z
    :goto_2
    if-eqz v2, :cond_7

    .line 120
    invoke-virtual {v6}, Lorg/apache/xpath/axes/AxesWalker;->isDocOrdered()Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x4

    if-eq v0, v9, :cond_5

    const/4 v9, 0x5

    if-eq v0, v9, :cond_5

    const/16 v9, 0x11

    if-eq v0, v9, :cond_5

    const/16 v9, 0x12

    if-eq v0, v9, :cond_5

    :cond_4
    const/4 v9, 0x2

    if-ne v0, v9, :cond_7

    .line 133
    .end local v0    # "axis":I
    .end local v1    # "i":I
    .end local v2    # "isLastWalker":Z
    .end local v3    # "isSimpleDownAxis":Z
    .end local v4    # "prevAxis":I
    .end local v5    # "prevIsSimpleDownAxis":Z
    .end local v6    # "walker":Lorg/apache/xpath/axes/AxesWalker;
    :cond_5
    :goto_3
    return v7

    .restart local v0    # "axis":I
    .restart local v1    # "i":I
    .restart local v3    # "isSimpleDownAxis":Z
    .restart local v4    # "prevAxis":I
    .restart local v5    # "prevIsSimpleDownAxis":Z
    .restart local v6    # "walker":Lorg/apache/xpath/axes/AxesWalker;
    :cond_6
    move v2, v8

    .line 117
    goto :goto_2

    .restart local v2    # "isLastWalker":Z
    :cond_7
    move v7, v8

    .line 125
    goto :goto_3

    .end local v2    # "isLastWalker":Z
    .end local v3    # "isSimpleDownAxis":Z
    :cond_8
    move v7, v8

    .line 129
    goto :goto_3

    .end local v0    # "axis":I
    .end local v1    # "i":I
    .end local v4    # "prevAxis":I
    .end local v5    # "prevIsSimpleDownAxis":Z
    .end local v6    # "walker":Lorg/apache/xpath/axes/AxesWalker;
    :cond_9
    move v7, v8

    .line 133
    goto :goto_3
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 2
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    .prologue
    .line 198
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/WalkingIterator;->fixupVariables(Ljava/util/Vector;I)V

    .line 200
    invoke-virtual {p0}, Lorg/apache/xpath/axes/WalkingIteratorSorted;->getAnalysisBits()I

    move-result v0

    .line 201
    .local v0, "analysis":I
    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->isNaturalDocOrder(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xpath/axes/WalkingIteratorSorted;->m_inNaturalOrderStatic:Z

    .line 212
    :goto_0
    return-void

    .line 207
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xpath/axes/WalkingIteratorSorted;->m_inNaturalOrderStatic:Z

    goto :goto_0
.end method

.method public isDocOrdered()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/apache/xpath/axes/WalkingIteratorSorted;->m_inNaturalOrderStatic:Z

    return v0
.end method
