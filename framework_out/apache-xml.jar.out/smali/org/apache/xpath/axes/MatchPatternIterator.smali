.class public Lorg/apache/xpath/axes/MatchPatternIterator;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "MatchPatternIterator.java"


# static fields
.field private static final DEBUG:Z = false

.field static final serialVersionUID:J = -0x482e35cb67d7471aL


# instance fields
.field protected m_pattern:Lorg/apache/xpath/patterns/StepPattern;

.field protected m_superAxis:I

.field protected m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;


# direct methods
.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .locals 8
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "opPos"    # I
    .param p3, "analysis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3, v6}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    .line 50
    const/4 v5, -0x1

    iput v5, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    .line 80
    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result v0

    .line 82
    .local v0, "firstStepPos":I
    invoke-static {p0, p1, v0, v6}, Lorg/apache/xpath/axes/WalkerFactory;->loadSteps(Lorg/apache/xpath/axes/MatchPatternIterator;Lorg/apache/xpath/compiler/Compiler;II)Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_pattern:Lorg/apache/xpath/patterns/StepPattern;

    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, "fromRoot":Z
    const/4 v3, 0x0

    .line 86
    .local v3, "walkBack":Z
    const/4 v4, 0x0

    .line 87
    .local v4, "walkDescendants":Z
    const/4 v2, 0x0

    .line 89
    .local v2, "walkAttributes":Z
    const/high16 v5, 0x28000000

    and-int/2addr v5, p3

    if-eqz v5, :cond_0

    .line 91
    const/4 v1, 0x1

    .line 93
    :cond_0
    const v5, 0x5d86000

    and-int/2addr v5, p3

    if-eqz v5, :cond_1

    .line 101
    const/4 v3, 0x1

    .line 103
    :cond_1
    const/high16 v5, 0x70000

    and-int/2addr v5, p3

    if-eqz v5, :cond_2

    .line 107
    const/4 v4, 0x1

    .line 109
    :cond_2
    const v5, 0x208000

    and-int/2addr v5, p3

    if-eqz v5, :cond_3

    .line 111
    const/4 v2, 0x1

    .line 119
    :cond_3
    if-nez v1, :cond_4

    if-eqz v3, :cond_6

    .line 121
    :cond_4
    if-eqz v2, :cond_5

    .line 123
    iput v7, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    .line 150
    :goto_0
    return-void

    .line 127
    :cond_5
    const/16 v5, 0x11

    iput v5, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    goto :goto_0

    .line 130
    :cond_6
    if-eqz v4, :cond_8

    .line 132
    if-eqz v2, :cond_7

    .line 134
    const/16 v5, 0xe

    iput v5, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    goto :goto_0

    .line 138
    :cond_7
    const/4 v5, 0x5

    iput v5, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    goto :goto_0

    .line 143
    :cond_8
    iput v7, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    goto :goto_0
.end method


# virtual methods
.method public acceptNode(ILorg/apache/xpath/XPathContext;)S
    .locals 4
    .param p1, "n"    # I
    .param p2, "xctxt"    # Lorg/apache/xpath/XPathContext;

    .prologue
    .line 292
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 293
    iget v2, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_context:I

    invoke-virtual {p2, v2}, Lorg/apache/xpath/XPathContext;->pushIteratorRoot(I)V

    .line 304
    iget-object v2, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_pattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v2, p2}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 314
    .local v0, "score":Lorg/apache/xpath/objects/XObject;
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    const/4 v2, 0x3

    .line 325
    :goto_0
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 326
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popIteratorRoot()V

    return v2

    .line 314
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 317
    .end local v0    # "score":Lorg/apache/xpath/objects/XObject;
    :catch_0
    move-exception v1

    .line 321
    .local v1, "se":Ljavax/xml/transform/TransformerException;
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    .end local v1    # "se":Ljavax/xml/transform/TransformerException;
    :catchall_0
    move-exception v2

    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 326
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popIteratorRoot()V

    throw v2
.end method

.method public detach()V
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_allowDetach:Z

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    .line 180
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->detach()V

    .line 182
    :cond_0
    return-void
.end method

.method protected getNextNode()I
    .locals 3

    .prologue
    .line 190
    const/4 v0, -0x1

    iget v1, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_lastFetched:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v1, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_context:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_lastFetched:I

    .line 193
    iget v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_lastFetched:I

    return v0

    .line 190
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v1, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_context:I

    iget v2, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_lastFetched:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v0

    goto :goto_0
.end method

.method public nextNode()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 205
    iget-boolean v4, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_foundLast:Z

    if-eqz v4, :cond_1

    move v0, v3

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 212
    :cond_1
    iget v4, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_stackFrame:I

    if-eq v3, v4, :cond_4

    .line 214
    iget-object v4, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v2

    .line 217
    .local v2, "vars":Lorg/apache/xpath/VariableStack;
    invoke-virtual {v2}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v1

    .line 219
    .local v1, "savedStart":I
    iget v4, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_stackFrame:I

    invoke-virtual {v2, v4}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    .line 235
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/MatchPatternIterator;->getNextNode()I

    move-result v0

    .line 237
    .local v0, "next":I
    if-eq v3, v0, :cond_3

    .line 239
    iget-object v4, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {p0, v0, v4}, Lorg/apache/xpath/axes/MatchPatternIterator;->acceptNode(ILorg/apache/xpath/XPathContext;)S

    move-result v4

    if-ne v5, v4, :cond_5

    .line 249
    :cond_3
    :goto_2
    if-eq v3, v0, :cond_6

    .line 256
    invoke-virtual {p0}, Lorg/apache/xpath/axes/MatchPatternIterator;->incrementCurrentPos()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    iget v4, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_stackFrame:I

    if-eq v3, v4, :cond_0

    .line 272
    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    goto :goto_0

    .line 224
    .end local v0    # "next":I
    .end local v1    # "savedStart":I
    .end local v2    # "vars":Lorg/apache/xpath/VariableStack;
    :cond_4
    const/4 v2, 0x0

    .line 225
    .restart local v2    # "vars":Lorg/apache/xpath/VariableStack;
    const/4 v1, 0x0

    .restart local v1    # "savedStart":I
    goto :goto_1

    .line 247
    .restart local v0    # "next":I
    :cond_5
    if-ne v0, v3, :cond_2

    goto :goto_2

    .line 262
    :cond_6
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_foundLast:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    iget v4, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_stackFrame:I

    if-eq v3, v4, :cond_7

    .line 272
    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    :cond_7
    move v0, v3

    goto :goto_0

    .line 269
    .end local v0    # "next":I
    :catchall_0
    move-exception v4

    iget v5, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_stackFrame:I

    if-eq v3, v5, :cond_8

    .line 272
    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    :cond_8
    throw v4
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 2
    .param p1, "context"    # I
    .param p2, "environment"    # Ljava/lang/Object;

    .prologue
    .line 162
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    .line 164
    return-void
.end method
