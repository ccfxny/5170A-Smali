.class public Lorg/apache/xpath/functions/FuncExtFunction;
.super Lorg/apache/xpath/functions/Function;
.source "FuncExtFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/functions/FuncExtFunction$ArgExtOwner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x481c4f9119667baeL


# instance fields
.field m_argVec:Ljava/util/Vector;

.field m_extensionName:Ljava/lang/String;

.field m_methodKey:Ljava/lang/Object;

.field m_namespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "extensionName"    # Ljava/lang/String;
    .param p3, "methodKey"    # Ljava/lang/Object;

    .prologue
    .line 167
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function;-><init>()V

    .line 72
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    .line 169
    iput-object p1, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_namespace:Ljava/lang/String;

    .line 170
    iput-object p2, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_extensionName:Ljava/lang/String;

    .line 171
    iput-object p3, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_methodKey:Ljava/lang/Object;

    .line 172
    return-void
.end method


# virtual methods
.method public callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .locals 3
    .param p1, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    .prologue
    .line 285
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 287
    iget-object v2, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/Expression;

    .line 288
    .local v0, "exp":Lorg/apache/xpath/Expression;
    new-instance v2, Lorg/apache/xpath/functions/FuncExtFunction$ArgExtOwner;

    invoke-direct {v2, p0, v0}, Lorg/apache/xpath/functions/FuncExtFunction$ArgExtOwner;-><init>(Lorg/apache/xpath/functions/FuncExtFunction;Lorg/apache/xpath/Expression;)V

    invoke-virtual {v0, v2, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    .end local v0    # "exp":Lorg/apache/xpath/Expression;
    :cond_0
    return-void
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
    .line 247
    return-void
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 13
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 185
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->isSecureProcessing()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 186
    new-instance v8, Ljavax/xml/transform/TransformerException;

    const-string v9, "ER_EXTENSION_FUNCTION_CANNOT_BE_INVOKED"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/xpath/functions/FuncExtFunction;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 192
    :cond_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 193
    .local v1, "argVec":Ljava/util/Vector;
    iget-object v8, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v4

    .line 195
    .local v4, "nArgs":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 197
    iget-object v8, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    invoke-virtual {v8, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/Expression;

    .line 199
    .local v0, "arg":Lorg/apache/xpath/Expression;
    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v7

    .line 203
    .local v7, "xobj":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v7, v12}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V

    .line 204
    invoke-virtual {v1, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 207
    .end local v0    # "arg":Lorg/apache/xpath/Expression;
    .end local v7    # "xobj":Lorg/apache/xpath/objects/XObject;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getOwnerObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xpath/ExtensionsProvider;

    .line 208
    .local v2, "extProvider":Lorg/apache/xpath/ExtensionsProvider;
    invoke-interface {v2, p0, v1}, Lorg/apache/xpath/ExtensionsProvider;->extFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;)Ljava/lang/Object;

    move-result-object v6

    .line 210
    .local v6, "val":Ljava/lang/Object;
    if-eqz v6, :cond_2

    .line 212
    invoke-static {v6, p1}, Lorg/apache/xpath/objects/XObject;->create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v5

    .line 219
    .local v5, "result":Lorg/apache/xpath/objects/XObject;
    :goto_1
    return-object v5

    .line 216
    .end local v5    # "result":Lorg/apache/xpath/objects/XObject;
    :cond_2
    new-instance v5, Lorg/apache/xpath/objects/XNull;

    invoke-direct {v5}, Lorg/apache/xpath/objects/XNull;-><init>()V

    .restart local v5    # "result":Lorg/apache/xpath/objects/XObject;
    goto :goto_1
.end method

.method public exprSetParent(Lorg/apache/xpath/ExpressionNode;)V
    .locals 4
    .param p1, "n"    # Lorg/apache/xpath/ExpressionNode;

    .prologue
    .line 303
    invoke-super {p0, p1}, Lorg/apache/xpath/functions/Function;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 305
    iget-object v3, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 307
    .local v2, "nArgs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 309
    iget-object v3, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/Expression;

    .line 311
    .local v0, "arg":Lorg/apache/xpath/Expression;
    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    .end local v0    # "arg":Lorg/apache/xpath/Expression;
    :cond_0
    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 4
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    .prologue
    .line 88
    iget-object v3, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    if-eqz v3, :cond_0

    .line 90
    iget-object v3, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 92
    .local v2, "nArgs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 94
    iget-object v3, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/Expression;

    .line 96
    .local v0, "arg":Lorg/apache/xpath/Expression;
    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "arg":Lorg/apache/xpath/Expression;
    .end local v1    # "i":I
    .end local v2    # "nArgs":I
    :cond_0
    return-void
.end method

.method public getArg(I)Lorg/apache/xpath/Expression;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 138
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/Expression;

    .line 141
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getArgCount()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_extensionName:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_methodKey:Ljava/lang/Object;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_namespace:Ljava/lang/String;

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
    .line 323
    const-string v1, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Programmer\'s assertion:  the method FunctionMultiArgs.reportWrongNumberArgs() should never be called."

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "fMsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
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
    .line 235
    iget-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_argVec:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 236
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 237
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_namespace:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_namespace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_extensionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction;->m_extensionName:Ljava/lang/String;

    goto :goto_0
.end method
