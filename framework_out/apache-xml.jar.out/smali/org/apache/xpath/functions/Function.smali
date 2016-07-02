.class public abstract Lorg/apache/xpath/functions/Function;
.super Lorg/apache/xpath/Expression;
.source "Function.java"


# static fields
.field static final serialVersionUID:J = 0x6023ff31b9615858L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    return-void
.end method


# virtual methods
.method public callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .locals 0
    .param p1, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    .prologue
    .line 111
    return-void
.end method

.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 1
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    .prologue
    .line 119
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitFunction(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/functions/Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0, p2}, Lorg/apache/xpath/functions/Function;->callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V

    .line 123
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
    .line 74
    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0}, Lorg/apache/xpath/functions/Function;->reportWrongNumberArgs()V

    .line 76
    :cond_0
    return-void
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 1
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/Function;->isSameClass(Lorg/apache/xpath/Expression;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 2
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 101
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Error! Function.execute should not be called!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public postCompileStep(Lorg/apache/xpath/compiler/Compiler;)V
    .locals 0
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;

    .prologue
    .line 143
    return-void
.end method

.method protected reportWrongNumberArgs()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    const-string v1, "zero"

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
    .line 59
    invoke-virtual {p0}, Lorg/apache/xpath/functions/Function;->reportWrongNumberArgs()V

    .line 60
    return-void
.end method
