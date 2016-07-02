.class public Lorg/apache/xpath/axes/WalkingIterator;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "WalkingIterator.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# static fields
.field static final serialVersionUID:J = 0x7e6e0639dd78a4f2L


# instance fields
.field protected m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

.field protected m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;


# direct methods
.method public constructor <init>(Lorg/apache/xml/utils/PrefixResolver;)V
    .locals 0
    .param p1, "nscontext"    # Lorg/apache/xml/utils/PrefixResolver;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 79
    return-void
.end method

.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V
    .locals 2
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
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    .line 60
    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result v0

    .line 62
    .local v0, "firstStepPos":I
    if-eqz p4, :cond_0

    .line 64
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/xpath/axes/WalkerFactory;->loadWalkers(Lorg/apache/xpath/axes/WalkingIterator;Lorg/apache/xpath/compiler/Compiler;II)Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 65
    iget-object v1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    iput-object v1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 1
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    .prologue
    .line 304
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitLocationPath(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/axes/LocPathIterator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    invoke-virtual {v0, p0, p2}, Lorg/apache/xpath/axes/AxesWalker;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 311
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/WalkingIterator;

    .line 118
    .local v0, "clone":Lorg/apache/xpath/axes/WalkingIterator;
    iget-object v1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/apache/xpath/axes/AxesWalker;->cloneDeep(Lorg/apache/xpath/axes/WalkingIterator;Ljava/util/Vector;)Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 123
    :cond_0
    return-object v0
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 4
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    .prologue
    const/4 v2, 0x0

    .line 344
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 360
    .end local p1    # "expr":Lorg/apache/xpath/Expression;
    :cond_0
    :goto_0
    return v2

    .line 347
    .restart local p1    # "expr":Lorg/apache/xpath/Expression;
    :cond_1
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 348
    .local v0, "walker1":Lorg/apache/xpath/axes/AxesWalker;
    check-cast p1, Lorg/apache/xpath/axes/WalkingIterator;

    .end local p1    # "expr":Lorg/apache/xpath/Expression;
    iget-object v1, p1, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 349
    .local v1, "walker2":Lorg/apache/xpath/axes/AxesWalker;
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 351
    invoke-virtual {v0, v1}, Lorg/apache/xpath/axes/AxesWalker;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 353
    invoke-virtual {v0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v0

    .line 354
    invoke-virtual {v1}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v1

    goto :goto_1

    .line 357
    :cond_2
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 360
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public detach()V
    .locals 2

    .prologue
    .line 260
    iget-boolean v1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_allowDetach:Z

    if-eqz v1, :cond_1

    .line 262
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 263
    .local v0, "walker":Lorg/apache/xpath/axes/AxesWalker;
    :goto_0
    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Lorg/apache/xpath/axes/AxesWalker;->detach()V

    .line 266
    invoke-virtual {v0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v0

    goto :goto_0

    .line 269
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 272
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->detach()V

    .line 274
    .end local v0    # "walker":Lorg/apache/xpath/axes/AxesWalker;
    :cond_1
    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 2
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    .prologue
    .line 288
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_predicateIndex:I

    .line 290
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 292
    .local v0, "walker":Lorg/apache/xpath/axes/AxesWalker;
    :goto_0
    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/axes/AxesWalker;->fixupVariables(Ljava/util/Vector;I)V

    .line 295
    invoke-virtual {v0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v0

    goto :goto_0

    .line 297
    :cond_0
    return-void
.end method

.method public getAnalysisBits()I
    .locals 4

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, "bits":I
    iget-object v3, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-eqz v3, :cond_0

    .line 91
    iget-object v2, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 93
    .local v2, "walker":Lorg/apache/xpath/axes/AxesWalker;
    :goto_0
    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {v2}, Lorg/apache/xpath/axes/AxesWalker;->getAnalysisBits()I

    move-result v0

    .line 96
    .local v0, "bit":I
    or-int/2addr v1, v0

    .line 97
    invoke-virtual {v2}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v2

    .line 98
    goto :goto_0

    .line 100
    .end local v0    # "bit":I
    .end local v2    # "walker":Lorg/apache/xpath/axes/AxesWalker;
    :cond_0
    return v1
.end method

.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-object v0
.end method

.method public final getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-object v0
.end method

.method public final getLastUsedWalker()Lorg/apache/xpath/axes/AxesWalker;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-object v0
.end method

.method public nextNode()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 171
    iget-boolean v3, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_foundLast:Z

    if-eqz v3, :cond_0

    .line 200
    :goto_0
    return v0

    .line 182
    :cond_0
    iget v3, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_stackFrame:I

    if-ne v0, v3, :cond_1

    .line 184
    iget-object v3, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    invoke-virtual {v3}, Lorg/apache/xpath/axes/AxesWalker;->nextNode()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/xpath/axes/WalkingIterator;->returnNextNode(I)I

    move-result v0

    goto :goto_0

    .line 188
    :cond_1
    iget-object v3, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v2

    .line 191
    .local v2, "vars":Lorg/apache/xpath/VariableStack;
    invoke-virtual {v2}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v1

    .line 193
    .local v1, "savedStart":I
    iget v3, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_stackFrame:I

    invoke-virtual {v2, v3}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    .line 195
    iget-object v3, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    invoke-virtual {v3}, Lorg/apache/xpath/axes/AxesWalker;->nextNode()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/xpath/axes/WalkingIterator;->returnNextNode(I)I

    move-result v0

    .line 198
    .local v0, "n":I
    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->reset()V

    .line 134
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    iput-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 138
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    iget v1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_context:I

    invoke-virtual {v0, v1}, Lorg/apache/xpath/axes/AxesWalker;->setRoot(I)V

    .line 141
    :cond_0
    return-void
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .locals 0
    .param p1, "exp"    # Lorg/apache/xpath/Expression;

    .prologue
    .line 335
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 336
    check-cast p1, Lorg/apache/xpath/axes/AxesWalker;

    .end local p1    # "exp":Lorg/apache/xpath/Expression;
    iput-object p1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 337
    return-void
.end method

.method public final setFirstWalker(Lorg/apache/xpath/axes/AxesWalker;)V
    .locals 0
    .param p1, "walker"    # Lorg/apache/xpath/axes/AxesWalker;

    .prologue
    .line 225
    iput-object p1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 226
    return-void
.end method

.method public final setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V
    .locals 0
    .param p1, "walker"    # Lorg/apache/xpath/axes/AxesWalker;

    .prologue
    .line 237
    iput-object p1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 238
    return-void
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 1
    .param p1, "context"    # I
    .param p2, "environment"    # Ljava/lang/Object;

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/axes/AxesWalker;->setRoot(I)V

    .line 158
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    iput-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 160
    :cond_0
    return-void
.end method
