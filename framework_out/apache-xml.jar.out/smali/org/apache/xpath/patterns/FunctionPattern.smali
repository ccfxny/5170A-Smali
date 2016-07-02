.class public Lorg/apache/xpath/patterns/FunctionPattern;
.super Lorg/apache/xpath/patterns/StepPattern;
.source "FunctionPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/patterns/FunctionPattern$FunctionOwner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = -0x4b4fd7db58bb32d8L


# instance fields
.field m_functionExpr:Lorg/apache/xpath/Expression;


# direct methods
.method public constructor <init>(Lorg/apache/xpath/Expression;II)V
    .locals 6
    .param p1, "expr"    # Lorg/apache/xpath/Expression;
    .param p2, "axis"    # I
    .param p3, "predaxis"    # I

    .prologue
    const/4 v2, 0x0

    .line 49
    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, v2

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    .line 51
    iput-object p1, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    .line 52
    return-void
.end method


# virtual methods
.method public final calcScore()V
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    iput-object v0, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_score:Lorg/apache/xpath/objects/XNumber;

    .line 62
    iget-object v0, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_targetString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/FunctionPattern;->calcTargetString()V

    .line 64
    :cond_0
    return-void
.end method

.method protected callSubtreeVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .locals 2
    .param p1, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    .prologue
    .line 244
    iget-object v0, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    new-instance v1, Lorg/apache/xpath/patterns/FunctionPattern$FunctionOwner;

    invoke-direct {v1, p0}, Lorg/apache/xpath/patterns/FunctionPattern$FunctionOwner;-><init>(Lorg/apache/xpath/patterns/FunctionPattern;)V

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 245
    invoke-super {p0, p1}, Lorg/apache/xpath/patterns/StepPattern;->callSubtreeVisitors(Lorg/apache/xpath/XPathVisitor;)V

    .line 246
    return-void
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 5
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    .line 193
    .local v0, "context":I
    iget-object v4, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    invoke-virtual {v4, p1, v0}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v2

    .line 194
    .local v2, "nl":Lorg/apache/xml/dtm/DTMIterator;
    sget-object v3, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    .line 196
    .local v3, "score":Lorg/apache/xpath/objects/XNumber;
    if-eqz v2, :cond_2

    .line 200
    :cond_0
    const/4 v4, -0x1

    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v1

    .local v1, "n":I
    if-eq v4, v1, :cond_1

    .line 202
    if-ne v1, v0, :cond_3

    sget-object v3, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    .line 204
    :goto_0
    sget-object v4, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    if-ne v3, v4, :cond_0

    .line 206
    move v0, v1

    .line 212
    :cond_1
    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    .line 215
    .end local v1    # "n":I
    :cond_2
    return-object v3

    .line 202
    .restart local v1    # "n":I
    :cond_3
    sget-object v3, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "context"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v3, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    invoke-virtual {v3, p1, p2}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    .line 107
    .local v1, "nl":Lorg/apache/xml/dtm/DTMIterator;
    sget-object v2, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    .line 109
    .local v2, "score":Lorg/apache/xpath/objects/XNumber;
    if-eqz v1, :cond_1

    .line 113
    :cond_0
    const/4 v3, -0x1

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v0

    .local v0, "n":I
    if-eq v3, v0, :cond_1

    .line 115
    if-ne v0, p2, :cond_2

    sget-object v2, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    .line 117
    :goto_0
    sget-object v3, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    if-ne v2, v3, :cond_0

    .line 119
    move p2, v0

    .line 127
    .end local v0    # "n":I
    :cond_1
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    .line 129
    return-object v2

    .line 115
    .restart local v0    # "n":I
    :cond_2
    sget-object v2, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "context"    # I
    .param p3, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .param p4, "expType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v3, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    invoke-virtual {v3, p1, p2}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    .line 151
    .local v1, "nl":Lorg/apache/xml/dtm/DTMIterator;
    sget-object v2, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    .line 153
    .local v2, "score":Lorg/apache/xpath/objects/XNumber;
    if-eqz v1, :cond_2

    .line 157
    :cond_0
    const/4 v3, -0x1

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v0

    .local v0, "n":I
    if-eq v3, v0, :cond_1

    .line 159
    if-ne v0, p2, :cond_3

    sget-object v2, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    .line 161
    :goto_0
    sget-object v3, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    if-ne v2, v3, :cond_0

    .line 163
    move p2, v0

    .line 169
    :cond_1
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    .line 172
    .end local v0    # "n":I
    :cond_2
    return-object v2

    .line 159
    .restart local v0    # "n":I
    :cond_3
    sget-object v2, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 1
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;->fixupVariables(Ljava/util/Vector;I)V

    .line 85
    iget-object v0, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    .line 86
    return-void
.end method
