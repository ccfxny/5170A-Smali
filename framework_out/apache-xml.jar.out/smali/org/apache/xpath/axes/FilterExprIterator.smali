.class public Lorg/apache/xpath/axes/FilterExprIterator;
.super Lorg/apache/xpath/axes/BasicTestIterator;
.source "FilterExprIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/axes/FilterExprIterator$filterExprOwner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x236b26a548a4ce8eL


# instance fields
.field private m_canDetachNodeset:Z

.field private m_expr:Lorg/apache/xpath/Expression;

.field private transient m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

.field private m_mustHardReset:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/BasicTestIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_mustHardReset:Z

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_canDetachNodeset:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/Expression;)V
    .locals 1
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/BasicTestIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_mustHardReset:Z

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_canDetachNodeset:Z

    .line 58
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lorg/apache/xpath/axes/FilterExprIterator;)Lorg/apache/xpath/Expression;
    .locals 1
    .param p0, "x0"    # Lorg/apache/xpath/axes/FilterExprIterator;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method static synthetic access$002(Lorg/apache/xpath/axes/FilterExprIterator;Lorg/apache/xpath/Expression;)Lorg/apache/xpath/Expression;
    .locals 0
    .param p0, "x0"    # Lorg/apache/xpath/axes/FilterExprIterator;
    .param p1, "x1"    # Lorg/apache/xpath/Expression;

    .prologue
    .line 29
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    return-object p1
.end method


# virtual methods
.method public callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .locals 2
    .param p1, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    .prologue
    .line 194
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    new-instance v1, Lorg/apache/xpath/axes/FilterExprIterator$filterExprOwner;

    invoke-direct {v1, p0}, Lorg/apache/xpath/axes/FilterExprIterator$filterExprOwner;-><init>(Lorg/apache/xpath/axes/FilterExprIterator;)V

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 196
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/BasicTestIterator;->callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V

    .line 197
    return-void
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 4
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    .prologue
    const/4 v1, 0x0

    .line 204
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/BasicTestIterator;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 207
    check-cast v0, Lorg/apache/xpath/axes/FilterExprIterator;

    .line 208
    .local v0, "fet":Lorg/apache/xpath/axes/FilterExprIterator;
    iget-object v2, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    iget-object v3, v0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public detach()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lorg/apache/xpath/axes/BasicTestIterator;->detach()V

    .line 102
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->detach()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    .line 104
    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 1
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/BasicTestIterator;->fixupVariables(Ljava/util/Vector;I)V

    .line 119
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    .line 120
    return-void
.end method

.method public getAnalysisBits()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    instance-of v0, v0, Lorg/apache/xpath/axes/PathComponent;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    check-cast v0, Lorg/apache/xpath/axes/PathComponent;

    invoke-interface {v0}, Lorg/apache/xpath/axes/PathComponent;->getAnalysisBits()I

    move-result v0

    .line 149
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x4000000

    goto :goto_0
.end method

.method public getInnerExpression()Lorg/apache/xpath/Expression;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method protected getNextNode()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->nextNode()I

    move-result v0

    iput v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_lastFetched:I

    .line 91
    :goto_0
    iget v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_lastFetched:I

    return v0

    .line 89
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_lastFetched:I

    goto :goto_0
.end method

.method public isDocOrdered()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->isDocOrdered()Z

    move-result v0

    return v0
.end method

.method public setInnerExpression(Lorg/apache/xpath/Expression;)V
    .locals 0
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    .prologue
    .line 135
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 136
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    .line 137
    return-void
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 6
    .param p1, "context"    # I
    .param p2, "environment"    # Ljava/lang/Object;

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/BasicTestIterator;->setRoot(ILjava/lang/Object;)V

    .line 72
    iget-object v1, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {p0}, Lorg/apache/xpath/axes/FilterExprIterator;->getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/xpath/axes/FilterExprIterator;->getIsTopLevel()Z

    move-result v3

    iget v4, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_stackFrame:I

    iget-object v5, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_expr:Lorg/apache/xpath/Expression;

    move v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->executeFilterExpr(ILorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/PrefixResolver;ZILorg/apache/xpath/Expression;)Lorg/apache/xpath/objects/XNodeSet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    .line 75
    return-void
.end method
