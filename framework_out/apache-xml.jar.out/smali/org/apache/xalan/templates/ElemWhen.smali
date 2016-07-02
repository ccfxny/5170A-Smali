.class public Lorg/apache/xalan/templates/ElemWhen;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemWhen.java"


# static fields
.field static final serialVersionUID:J = 0x530bac13a4dbf840L


# instance fields
.field private m_test:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    return-void
.end method


# virtual methods
.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .locals 2
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;
    .param p2, "callAttrs"    # Z

    .prologue
    .line 121
    if-eqz p2, :cond_0

    .line 122
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemWhen;->m_test:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemWhen;->m_test:Lorg/apache/xpath/XPath;

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 123
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    .line 124
    return-void
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 3
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 94
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v0

    .line 95
    .local v0, "vnames":Ljava/util/Vector;
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemWhen;->m_test:Lorg/apache/xpath/XPath;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemWhen;->m_test:Lorg/apache/xpath/XPath;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    .line 97
    :cond_0
    return-void
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-string v0, "when"

    return-object v0
.end method

.method public getTest()Lorg/apache/xpath/XPath;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemWhen;->m_test:Lorg/apache/xpath/XPath;

    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0x26

    return v0
.end method

.method public setTest(Lorg/apache/xpath/XPath;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xpath/XPath;

    .prologue
    .line 57
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemWhen;->m_test:Lorg/apache/xpath/XPath;

    .line 58
    return-void
.end method
