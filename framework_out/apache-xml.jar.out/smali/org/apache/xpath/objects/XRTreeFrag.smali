.class public Lorg/apache/xpath/objects/XRTreeFrag;
.super Lorg/apache/xpath/objects/XObject;
.source "XRTreeFrag.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = -0x2c6e343d20cc504fL


# instance fields
.field private m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

.field protected m_allowRelease:Z

.field private m_dtmRoot:I

.field private m_xmlStr:Lorg/apache/xml/utils/XMLString;


# direct methods
.method public constructor <init>(ILorg/apache/xpath/XPathContext;)V
    .locals 2
    .param p1, "root"    # I
    .param p2, "xctxt"    # Lorg/apache/xpath/XPathContext;

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, v1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_allowRelease:Z

    .line 171
    iput-object v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    .line 64
    invoke-direct {p0, p1, p2}, Lorg/apache/xpath/objects/XRTreeFrag;->initDTM(ILorg/apache/xpath/XPathContext;)V

    .line 65
    return-void
.end method

.method public constructor <init>(ILorg/apache/xpath/XPathContext;Lorg/apache/xpath/ExpressionNode;)V
    .locals 2
    .param p1, "root"    # I
    .param p2, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p3, "parent"    # Lorg/apache/xpath/ExpressionNode;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, v1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_allowRelease:Z

    .line 171
    iput-object v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    .line 53
    invoke-virtual {p0, p3}, Lorg/apache/xpath/objects/XRTreeFrag;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 54
    invoke-direct {p0, p1, p2}, Lorg/apache/xpath/objects/XRTreeFrag;->initDTM(ILorg/apache/xpath/XPathContext;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/Expression;)V
    .locals 1
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_allowRelease:Z

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    .line 96
    return-void
.end method

.method private final initDTM(ILorg/apache/xpath/XPathContext;)V
    .locals 2
    .param p1, "root"    # I
    .param p2, "xctxt"    # Lorg/apache/xpath/XPathContext;

    .prologue
    .line 68
    iput p1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    .line 69
    invoke-virtual {p2, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 70
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p2, v0}, Lorg/apache/xpath/XPathContext;->getDTMIdentity(Lorg/apache/xml/dtm/DTM;)I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/apache/xpath/XPathContext;->getDTMXRTreeFrag(I)Lorg/apache/xpath/objects/DTMXRTreeFrag;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public allowDetachToRelease(Z)V
    .locals 0
    .param p1, "allowRelease"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_allowRelease:Z

    .line 107
    return-void
.end method

.method public appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 1
    .param p1, "fsb"    # Lorg/apache/xml/utils/FastStringBuffer;

    .prologue
    .line 193
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/objects/XString;

    .line 194
    .local v0, "xstring":Lorg/apache/xpath/objects/XString;
    invoke-virtual {v0, p1}, Lorg/apache/xpath/objects/XString;->appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 195
    return-void
.end method

.method public asNodeIterator()Lorg/apache/xml/dtm/DTMIterator;
    .locals 3

    .prologue
    .line 229
    new-instance v0, Lorg/apache/xpath/axes/RTFIterator;

    iget v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    iget-object v2, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-virtual {v2}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/xpath/axes/RTFIterator;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    return-object v0
.end method

.method public bool()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method public convertToNodeset()Lorg/w3c/dom/NodeList;
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_obj:Ljava/lang/Object;

    instance-of v0, v0, Lorg/w3c/dom/NodeList;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_obj:Ljava/lang/Object;

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 243
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeList;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->asNodeIterator()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/ref/DTMNodeList;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    goto :goto_0
.end method

.method public detach()V
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_allowRelease:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->destruct()V

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XRTreeFrag;->setObject(Ljava/lang/Object;)V

    .line 123
    :cond_0
    return-void
.end method

.method public equals(Lorg/apache/xpath/objects/XObject;)Z
    .locals 8
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 260
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v3

    if-ne v5, v3, :cond_1

    .line 266
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result v1

    .line 292
    :cond_0
    :goto_0
    return v1

    .line 268
    :cond_1
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 270
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->bool()Z

    move-result v3

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .line 272
    :cond_2
    const/4 v3, 0x2

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 274
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->num()D

    move-result-wide v4

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 276
    :cond_3
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v1

    if-ne v5, v1, :cond_4

    .line 278
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/xml/utils/XMLString;->equals(Lorg/apache/xml/utils/XMLString;)Z

    move-result v1

    goto :goto_0

    .line 280
    :cond_4
    const/4 v1, 0x3

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 282
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/xml/utils/XMLString;->equals(Lorg/apache/xml/utils/XMLString;)Z

    move-result v1

    goto :goto_0

    .line 284
    :cond_5
    const/4 v1, 0x5

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 288
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/xml/utils/XMLString;->equals(Lorg/apache/xml/utils/XMLString;)Z

    move-result v1

    goto :goto_0

    .line 292
    :cond_6
    invoke-super {p0, p1}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 297
    .local v0, "te":Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x5

    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const-string v0, "#RTREEFRAG"

    return-object v0
.end method

.method public num()D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    .line 157
    .local v0, "s":Lorg/apache/xml/utils/XMLString;
    invoke-interface {v0}, Lorg/apache/xml/utils/XMLString;->toDouble()D

    move-result-wide v2

    return-wide v2
.end method

.method public object()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;

    new-instance v1, Lorg/apache/xpath/NodeSetDTM;

    iget v2, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    iget-object v3, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-virtual {v3}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/xpath/NodeSetDTM;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/ref/DTMNodeIterator;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 86
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public rtf()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    return v0
.end method

.method public str()Ljava/lang/String;
    .locals 3

    .prologue
    .line 205
    iget-object v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-virtual {v1}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getDTM()Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    iget v2, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public xstr()Lorg/apache/xml/utils/XMLString;
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getDTM()Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    return-object v0
.end method
