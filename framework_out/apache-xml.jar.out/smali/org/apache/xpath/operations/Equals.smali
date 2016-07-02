.class public Lorg/apache/xpath/operations/Equals;
.super Lorg/apache/xpath/operations/Operation;
.source "Equals.java"


# static fields
.field static final serialVersionUID:J = -0x24e43bfc13ae5a56L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/apache/xpath/operations/Operation;-><init>()V

    return-void
.end method


# virtual methods
.method public bool(Lorg/apache/xpath/XPathContext;)Z
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 65
    iget-object v3, p0, Lorg/apache/xpath/operations/Equals;->m_left:Lorg/apache/xpath/Expression;

    invoke-virtual {v3, p1, v1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 66
    .local v0, "left":Lorg/apache/xpath/objects/XObject;
    iget-object v3, p0, Lorg/apache/xpath/operations/Equals;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {v3, p1, v1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    .line 68
    .local v2, "right":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v0, v2}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    .local v1, "result":Z
    :goto_0
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->detach()V

    .line 70
    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->detach()V

    .line 71
    return v1

    .line 68
    .end local v1    # "result":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public operate(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .param p1, "left"    # Lorg/apache/xpath/objects/XObject;
    .param p2, "right"    # Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p1, p2}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    goto :goto_0
.end method
