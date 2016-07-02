.class public Lorg/apache/xalan/templates/ElemAttributeSet;
.super Lorg/apache/xalan/templates/ElemUse;
.source "ElemAttributeSet.java"


# static fields
.field static final serialVersionUID:J = -0x5ec160efa4ea010L


# instance fields
.field public m_qname:Lorg/apache/xml/utils/QName;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemUse;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemAttributeSet;->m_qname:Lorg/apache/xml/utils/QName;

    return-void
.end method


# virtual methods
.method public appendChildElem(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 5
    .param p1, "newChild"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    .prologue
    .line 147
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    .line 149
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 154
    const-string v1, "ER_CANNOT_ADD"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemAttributeSet;->getNodeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/apache/xalan/templates/ElemAttributeSet;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    :pswitch_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemUse;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    return-object v1

    .line 149
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
    .end packed-switch
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 6
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->isRecursiveAttrSet(Lorg/apache/xalan/templates/ElemAttributeSet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    new-instance v1, Ljavax/xml/transform/TransformerException;

    const-string v2, "ER_XSLATTRSET_USED_ITSELF"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/xalan/templates/ElemAttributeSet;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v5}, Lorg/apache/xml/utils/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_0
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemAttributeSet(Lorg/apache/xalan/templates/ElemAttributeSet;)V

    .line 116
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemUse;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V

    .line 118
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemAttributeSet;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemAttribute;

    .line 120
    .local v0, "attr":Lorg/apache/xalan/templates/ElemAttribute;
    :goto_0
    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/ElemAttribute;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V

    .line 124
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemAttribute;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .end local v0    # "attr":Lorg/apache/xalan/templates/ElemAttribute;
    check-cast v0, Lorg/apache/xalan/templates/ElemAttribute;

    .restart local v0    # "attr":Lorg/apache/xalan/templates/ElemAttribute;
    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemAttributeSet()V

    .line 128
    return-void
.end method

.method public getName()Lorg/apache/xml/utils/QName;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemAttributeSet;->m_qname:Lorg/apache/xml/utils/QName;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "attribute-set"

    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    .prologue
    .line 82
    const/16 v0, 0x28

    return v0
.end method

.method public recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0
    .param p1, "root"    # Lorg/apache/xalan/templates/StylesheetRoot;

    .prologue
    .line 171
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->recomposeAttributeSets(Lorg/apache/xalan/templates/ElemAttributeSet;)V

    .line 172
    return-void
.end method

.method public setName(Lorg/apache/xml/utils/QName;)V
    .locals 0
    .param p1, "name"    # Lorg/apache/xml/utils/QName;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemAttributeSet;->m_qname:Lorg/apache/xml/utils/QName;

    .line 61
    return-void
.end method
