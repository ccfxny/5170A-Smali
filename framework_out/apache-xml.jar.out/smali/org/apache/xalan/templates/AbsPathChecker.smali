.class public Lorg/apache/xalan/templates/AbsPathChecker;
.super Lorg/apache/xpath/XPathVisitor;
.source "AbsPathChecker.java"


# instance fields
.field private m_isAbs:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/xpath/XPathVisitor;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xalan/templates/AbsPathChecker;->m_isAbs:Z

    return-void
.end method


# virtual methods
.method public checkAbsolute(Lorg/apache/xpath/axes/LocPathIterator;)Z
    .locals 1
    .param p1, "path"    # Lorg/apache/xpath/axes/LocPathIterator;

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xalan/templates/AbsPathChecker;->m_isAbs:Z

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lorg/apache/xpath/axes/LocPathIterator;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 50
    iget-boolean v0, p0, Lorg/apache/xalan/templates/AbsPathChecker;->m_isAbs:Z

    return v0
.end method

.method public visitFunction(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/functions/Function;)Z
    .locals 1
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "func"    # Lorg/apache/xpath/functions/Function;

    .prologue
    .line 62
    instance-of v0, p2, Lorg/apache/xpath/functions/FuncCurrent;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/apache/xpath/functions/FuncExtFunction;

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/templates/AbsPathChecker;->m_isAbs:Z

    .line 65
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public visitVariableRef(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/operations/Variable;)Z
    .locals 1
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "var"    # Lorg/apache/xpath/operations/Variable;

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/templates/AbsPathChecker;->m_isAbs:Z

    .line 78
    const/4 v0, 0x1

    return v0
.end method
