.class public Lorg/apache/xpath/functions/FuncLast;
.super Lorg/apache/xpath/functions/Function;
.source "FuncLast.java"


# static fields
.field static final serialVersionUID:J = 0x7fc19d9b2acad86fL


# instance fields
.field private m_isTopLevel:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncLast;->getCountOfContextNodeList(Lorg/apache/xpath/XPathContext;)I

    move-result v1

    int-to-double v2, v1

    invoke-direct {v0, v2, v3}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    .line 95
    .local v0, "xnum":Lorg/apache/xpath/objects/XNumber;
    return-object v0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    .prologue
    .line 104
    return-void
.end method

.method public getCountOfContextNodeList(Lorg/apache/xpath/XPathContext;)I
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 65
    iget-boolean v3, p0, Lorg/apache/xpath/functions/FuncLast;->m_isTopLevel:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    .line 68
    .local v2, "iter":Lorg/apache/xpath/axes/SubContextList;
    :goto_0
    if-eqz v2, :cond_1

    .line 69
    invoke-interface {v2, p1}, Lorg/apache/xpath/axes/SubContextList;->getLastPos(Lorg/apache/xpath/XPathContext;)I

    move-result v1

    .line 80
    :goto_1
    return v1

    .line 65
    .end local v2    # "iter":Lorg/apache/xpath/axes/SubContextList;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSubContextList()Lorg/apache/xpath/axes/SubContextList;

    move-result-object v2

    goto :goto_0

    .line 71
    .restart local v2    # "iter":Lorg/apache/xpath/axes/SubContextList;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    .line 73
    .local v0, "cnl":Lorg/apache/xml/dtm/DTMIterator;
    if-eqz v0, :cond_2

    .line 75
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    move-result v1

    .local v1, "count":I
    goto :goto_1

    .line 79
    .end local v1    # "count":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "count":I
    goto :goto_1
.end method

.method public postCompileStep(Lorg/apache/xpath/compiler/Compiler;)V
    .locals 2
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;

    .prologue
    .line 47
    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->getLocationPathDepth()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/xpath/functions/FuncLast;->m_isTopLevel:Z

    .line 48
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
