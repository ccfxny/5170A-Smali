.class public Lorg/apache/xalan/templates/ElemFallback;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemFallback.java"


# static fields
.field static final serialVersionUID:J = 0x18be5a9ea2c35f9fL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 0
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 74
    return-void
.end method

.method public executeFallback(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 3
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemFallback;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    .line 95
    .local v0, "parentElemType":I
    const/16 v1, 0x4f

    if-eq v1, v0, :cond_0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    .line 99
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, p0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Error!  parent of xsl:fallback must be an extension or unknown element!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "fallback"

    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x39

    return v0
.end method
