.class public Lorg/apache/xpath/functions/FunctionOneArg;
.super Lorg/apache/xpath/functions/Function;
.source "FunctionOneArg.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# static fields
.field static final serialVersionUID:J = -0x47e3acf8bf2f2f1eL


# instance fields
.field m_arg0:Lorg/apache/xpath/Expression;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function;-><init>()V

    return-void
.end method


# virtual methods
.method public callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .locals 1
    .param p1, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    .prologue
    .line 129
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p0, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 131
    :cond_0
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v0}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    move-result v0

    return v0
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
    .line 83
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lorg/apache/xpath/functions/FunctionOneArg;->reportWrongNumberArgs()V

    .line 85
    :cond_0
    return-void
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 3
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-super {p0, p1}, Lorg/apache/xpath/functions/Function;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 170
    .end local p1    # "expr":Lorg/apache/xpath/Expression;
    :goto_0
    return v0

    .line 159
    .restart local p1    # "expr":Lorg/apache/xpath/Expression;
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 161
    check-cast v0, Lorg/apache/xpath/functions/FunctionOneArg;

    iget-object v0, v0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    if-nez v0, :cond_1

    move v0, v1

    .line 162
    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    check-cast p1, Lorg/apache/xpath/functions/FunctionOneArg;

    .end local p1    # "expr":Lorg/apache/xpath/Expression;
    iget-object v2, p1, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, v2}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 165
    goto :goto_0

    .line 167
    .restart local p1    # "expr":Lorg/apache/xpath/Expression;
    :cond_2
    check-cast p1, Lorg/apache/xpath/functions/FunctionOneArg;

    .end local p1    # "expr":Lorg/apache/xpath/Expression;
    iget-object v0, p1, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_3

    move v0, v1

    .line 168
    goto :goto_0

    .line 170
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 1
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    .line 122
    :cond_0
    return-void
.end method

.method public getArg0()Lorg/apache/xpath/Expression;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

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
    .line 94
    new-instance v0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    const-string v1, "one"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setArg(Lorg/apache/xpath/Expression;I)V
    .locals 0
    .param p1, "arg"    # Lorg/apache/xpath/Expression;
    .param p2, "argNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 64
    if-nez p2, :cond_0

    .line 66
    iput-object p1, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    .line 67
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/functions/FunctionOneArg;->reportWrongNumberArgs()V

    goto :goto_0
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .locals 0
    .param p1, "exp"    # Lorg/apache/xpath/Expression;

    .prologue
    .line 147
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 148
    iput-object p1, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    .line 149
    return-void
.end method
