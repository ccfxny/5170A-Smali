.class public Lorg/apache/xpath/functions/FuncPosition;
.super Lorg/apache/xpath/functions/Function;
.source "FuncPosition.java"


# static fields
.field static final serialVersionUID:J = -0x7e304793e581981eL


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
    .locals 3
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncPosition;->getPositionInContextNodeList(Lorg/apache/xpath/XPathContext;)I

    move-result v2

    int-to-double v0, v2

    .line 124
    .local v0, "pos":D
    new-instance v2, Lorg/apache/xpath/objects/XNumber;

    invoke-direct {v2, v0, v1}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    return-object v2
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    .prologue
    .line 133
    return-void
.end method

.method public getPositionInContextNodeList(Lorg/apache/xpath/XPathContext;)I
    .locals 7
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;

    .prologue
    const/4 v5, -0x1

    .line 62
    iget-boolean v6, p0, Lorg/apache/xpath/functions/FuncPosition;->m_isTopLevel:Z

    if-eqz v6, :cond_1

    const/4 v3, 0x0

    .line 64
    .local v3, "iter":Lorg/apache/xpath/axes/SubContextList;
    :goto_0
    if-eqz v3, :cond_2

    .line 66
    invoke-interface {v3, p1}, Lorg/apache/xpath/axes/SubContextList;->getProximityPosition(Lorg/apache/xpath/XPathContext;)I

    move-result v5

    .line 109
    :cond_0
    :goto_1
    return v5

    .line 62
    .end local v3    # "iter":Lorg/apache/xpath/axes/SubContextList;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSubContextList()Lorg/apache/xpath/axes/SubContextList;

    move-result-object v3

    goto :goto_0

    .line 72
    .restart local v3    # "iter":Lorg/apache/xpath/axes/SubContextList;
    :cond_2
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    .line 74
    .local v0, "cnl":Lorg/apache/xml/dtm/DTMIterator;
    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentNode()I

    move-result v4

    .line 77
    .local v4, "n":I
    if-ne v4, v5, :cond_5

    .line 79
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentPos()I

    move-result v6

    if-nez v6, :cond_3

    .line 80
    const/4 v5, 0x0

    goto :goto_1

    .line 89
    :cond_3
    :try_start_0
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 95
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getContextNode()I

    move-result v2

    .line 97
    .local v2, "currentNode":I
    :cond_4
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v4

    if-eq v5, v4, :cond_5

    .line 99
    if-ne v4, v2, :cond_4

    .line 105
    .end local v2    # "currentNode":I
    :cond_5
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentPos()I

    move-result v5

    goto :goto_1

    .line 91
    :catch_0
    move-exception v1

    .line 93
    .local v1, "cnse":Ljava/lang/CloneNotSupportedException;
    new-instance v6, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v6, v1}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method

.method public postCompileStep(Lorg/apache/xpath/compiler/Compiler;)V
    .locals 2
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;

    .prologue
    .line 46
    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->getLocationPathDepth()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/xpath/functions/FuncPosition;->m_isTopLevel:Z

    .line 47
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
