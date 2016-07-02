.class public Lorg/apache/xpath/functions/FunctionMultiArgs;
.super Lorg/apache/xpath/functions/Function3Args;
.source "FunctionMultiArgs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x62c59436157a481dL


# instance fields
.field m_args:[Lorg/apache/xpath/Expression;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function3Args;-><init>()V

    .line 162
    return-void
.end method


# virtual methods
.method public callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .locals 4
    .param p1, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    .prologue
    .line 196
    invoke-super {p0, p1}, Lorg/apache/xpath/functions/Function3Args;->callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V

    .line 197
    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    if-eqz v2, :cond_0

    .line 199
    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length v1, v2

    .line 200
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 202
    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    aget-object v2, v2, v0

    new-instance v3, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;

    invoke-direct {v3, p0, v0}, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;-><init>(Lorg/apache/xpath/functions/FunctionMultiArgs;I)V

    invoke-virtual {v2, v3, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 146
    invoke-super {p0}, Lorg/apache/xpath/functions/Function3Args;->canTraverseOutsideSubtree()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v2

    .line 150
    :cond_1
    iget-object v3, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length v1, v3

    .line 152
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 154
    iget-object v3, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    move-result v3

    if-nez v3, :cond_0

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public checkNumberArgs(I)V
    .locals 0
    .param p1, "argNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 120
    return-void
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 6
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    .prologue
    const/4 v3, 0x0

    .line 212
    invoke-super {p0, p1}, Lorg/apache/xpath/functions/Function3Args;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v0, p1

    .line 215
    check-cast v0, Lorg/apache/xpath/functions/FunctionMultiArgs;

    .line 216
    .local v0, "fma":Lorg/apache/xpath/functions/FunctionMultiArgs;
    iget-object v4, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    if-eqz v4, :cond_2

    .line 218
    iget-object v4, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length v2, v4

    .line 219
    .local v2, "n":I
    if-eqz v0, :cond_0

    iget-object v4, v0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length v4, v4

    if-ne v4, v2, :cond_0

    .line 222
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 224
    iget-object v4, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    aget-object v4, v4, v1

    iget-object v5, v0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 229
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_2
    iget-object v4, v0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    if-nez v4, :cond_0

    .line 234
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 2
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/functions/Function3Args;->fixupVariables(Ljava/util/Vector;I)V

    .line 103
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    if-eqz v1, :cond_0

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 107
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getArgs()[Lorg/apache/xpath/Expression;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method protected reportWrongNumberArgs()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 130
    const-string v1, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Programmer\'s assertion:  the method FunctionMultiArgs.reportWrongNumberArgs() should never be called."

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "fMsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setArg(Lorg/apache/xpath/Expression;I)V
    .locals 4
    .param p1, "arg"    # Lorg/apache/xpath/Expression;
    .param p2, "argNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 66
    const/4 v1, 0x3

    if-ge p2, v1, :cond_0

    .line 67
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/functions/Function3Args;->setArg(Lorg/apache/xpath/Expression;I)V

    .line 88
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    if-nez v1, :cond_1

    .line 72
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/xpath/Expression;

    iput-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    .line 73
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    aput-object p1, v1, v3

    .line 86
    :goto_1
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Lorg/apache/xpath/Expression;

    .line 81
    .local v0, "args":[Lorg/apache/xpath/Expression;
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length v1, v1

    aput-object p1, v0, v1

    .line 84
    iput-object v0, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    goto :goto_1
.end method
