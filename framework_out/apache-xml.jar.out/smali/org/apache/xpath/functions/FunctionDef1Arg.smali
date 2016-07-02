.class public Lorg/apache/xpath/functions/FunctionDef1Arg;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FunctionDef1Arg.java"


# static fields
.field static final serialVersionUID:J = 0x2044bb739a495690L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    return-void
.end method


# virtual methods
.method public Arg0IsNodesetExpr()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionDef1Arg;->m_arg0:Lorg/apache/xpath/Expression;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionDef1Arg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v0}, Lorg/apache/xpath/Expression;->isNodesetExpr()Z

    move-result v0

    goto :goto_0
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionDef1Arg;->m_arg0:Lorg/apache/xpath/Expression;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lorg/apache/xpath/functions/FunctionOneArg;->canTraverseOutsideSubtree()Z

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
    .line 143
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lorg/apache/xpath/functions/FunctionDef1Arg;->reportWrongNumberArgs()V

    .line 145
    :cond_0
    return-void
.end method

.method protected getArg0AsNode(Lorg/apache/xpath/XPathContext;)I
    .locals 1
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionDef1Arg;->m_arg0:Lorg/apache/xpath/Expression;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionDef1Arg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->asNode(Lorg/apache/xpath/XPathContext;)I

    move-result v0

    goto :goto_0
.end method

.method protected getArg0AsNumber(Lorg/apache/xpath/XPathContext;)D
    .locals 6
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v3, p0, Lorg/apache/xpath/functions/FunctionDef1Arg;->m_arg0:Lorg/apache/xpath/Expression;

    if-nez v3, :cond_1

    .line 119
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    .line 120
    .local v0, "currentNode":I
    const/4 v3, -0x1

    if-ne v3, v0, :cond_0

    .line 121
    const-wide/16 v4, 0x0

    .line 131
    .end local v0    # "currentNode":I
    :goto_0
    return-wide v4

    .line 124
    .restart local v0    # "currentNode":I
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    .line 125
    .local v1, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v2

    .line 126
    .local v2, "str":Lorg/apache/xml/utils/XMLString;
    invoke-interface {v2}, Lorg/apache/xml/utils/XMLString;->toDouble()D

    move-result-wide v4

    goto :goto_0

    .line 131
    .end local v0    # "currentNode":I
    .end local v1    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v2    # "str":Lorg/apache/xml/utils/XMLString;
    :cond_1
    iget-object v3, p0, Lorg/apache/xpath/functions/FunctionDef1Arg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v3, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v4

    goto :goto_0
.end method

.method protected getArg0AsString(Lorg/apache/xpath/XPathContext;)Lorg/apache/xml/utils/XMLString;
    .locals 3
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionDef1Arg;->m_arg0:Lorg/apache/xpath/Expression;

    if-nez v2, :cond_1

    .line 86
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    .line 87
    .local v0, "currentNode":I
    const/4 v2, -0x1

    if-ne v2, v0, :cond_0

    .line 88
    sget-object v2, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    .line 97
    .end local v0    # "currentNode":I
    :goto_0
    return-object v2

    .line 91
    .restart local v0    # "currentNode":I
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    .line 92
    .local v1, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v2

    goto :goto_0

    .line 97
    .end local v0    # "currentNode":I
    .end local v1    # "dtm":Lorg/apache/xml/dtm/DTM;
    :cond_1
    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionDef1Arg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v2, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v2

    goto :goto_0
.end method

.method protected reportWrongNumberArgs()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    const-string v1, "ER_ZERO_OR_ONE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
