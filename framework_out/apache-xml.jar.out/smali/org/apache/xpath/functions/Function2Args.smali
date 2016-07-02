.class public Lorg/apache/xpath/functions/Function2Args;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "Function2Args.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/functions/Function2Args$Arg1Owner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x4d5bdfc4080c0671L


# instance fields
.field m_arg1:Lorg/apache/xpath/Expression;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    .line 130
    return-void
.end method


# virtual methods
.method public callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .locals 2
    .param p1, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    .prologue
    .line 157
    invoke-super {p0, p1}, Lorg/apache/xpath/functions/FunctionOneArg;->callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V

    .line 158
    iget-object v0, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    new-instance v1, Lorg/apache/xpath/functions/Function2Args$Arg1Owner;

    invoke-direct {v1, p0}, Lorg/apache/xpath/functions/Function2Args$Arg1Owner;-><init>(Lorg/apache/xpath/functions/Function2Args;)V

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 160
    :cond_0
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Lorg/apache/xpath/functions/FunctionOneArg;->canTraverseOutsideSubtree()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    invoke-virtual {v0}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    move-result v0

    goto :goto_0
.end method

.method public checkNumberArgs(I)V
    .locals 1
    .param p1, "argNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lorg/apache/xpath/functions/Function2Args;->reportWrongNumberArgs()V

    .line 106
    :cond_0
    return-void
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 3
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-super {p0, p1}, Lorg/apache/xpath/functions/FunctionOneArg;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 181
    .end local p1    # "expr":Lorg/apache/xpath/Expression;
    :goto_0
    return v0

    .line 170
    .restart local p1    # "expr":Lorg/apache/xpath/Expression;
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 172
    check-cast v0, Lorg/apache/xpath/functions/Function2Args;

    iget-object v0, v0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    if-nez v0, :cond_1

    move v0, v1

    .line 173
    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    check-cast p1, Lorg/apache/xpath/functions/Function2Args;

    .end local p1    # "expr":Lorg/apache/xpath/Expression;
    iget-object v2, p1, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, v2}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 176
    goto :goto_0

    .line 178
    .restart local p1    # "expr":Lorg/apache/xpath/Expression;
    :cond_2
    check-cast p1, Lorg/apache/xpath/functions/Function2Args;

    .end local p1    # "expr":Lorg/apache/xpath/Expression;
    iget-object v0, p1, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_3

    move v0, v1

    .line 179
    goto :goto_0

    .line 181
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 1
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/functions/FunctionOneArg;->fixupVariables(Ljava/util/Vector;I)V

    .line 64
    iget-object v0, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    .line 66
    :cond_0
    return-void
.end method

.method public getArg1()Lorg/apache/xpath/Expression;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method protected reportWrongNumberArgs()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    const-string v1, "two"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setArg(Lorg/apache/xpath/Expression;I)V
    .locals 1
    .param p1, "arg"    # Lorg/apache/xpath/Expression;
    .param p2, "argNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 83
    if-nez p2, :cond_0

    .line 84
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/functions/FunctionOneArg;->setArg(Lorg/apache/xpath/Expression;I)V

    .line 92
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    .line 87
    iput-object p1, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    .line 88
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xpath/functions/Function2Args;->reportWrongNumberArgs()V

    goto :goto_0
.end method
