.class public Lorg/apache/xpath/objects/XRTreeFragSelectWrapper;
.super Lorg/apache/xpath/objects/XRTreeFrag;
.source "XRTreeFragSelectWrapper.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = -0x5a91a43a5bb8e343L


# direct methods
.method public constructor <init>(Lorg/apache/xpath/Expression;)V
    .locals 0
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XRTreeFrag;-><init>(Lorg/apache/xpath/Expression;)V

    .line 39
    return-void
.end method


# virtual methods
.method public asNodeIterator()Lorg/apache/xml/dtm/DTMIterator;
    .locals 3

    .prologue
    .line 151
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_RTF_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public detach()V
    .locals 3

    .prologue
    .line 88
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_DETACH_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 3
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v1, p0, Lorg/apache/xpath/objects/XRTreeFragSelectWrapper;->m_obj:Ljava/lang/Object;

    check-cast v1, Lorg/apache/xpath/Expression;

    invoke-virtual {v1, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 70
    .local v0, "m_selected":Lorg/apache/xpath/objects/XObject;
    iget-boolean v1, p0, Lorg/apache/xpath/objects/XRTreeFragSelectWrapper;->m_allowRelease:Z

    invoke-virtual {v0, v1}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V

    .line 71
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 74
    .end local v0    # "m_selected":Lorg/apache/xpath/objects/XObject;
    :goto_0
    return-object v0

    .restart local v0    # "m_selected":Lorg/apache/xpath/objects/XObject;
    :cond_0
    new-instance v1, Lorg/apache/xpath/objects/XString;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 1
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFragSelectWrapper;->m_obj:Ljava/lang/Object;

    check-cast v0, Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    .line 54
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x3

    return v0
.end method

.method public num()D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NUM_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rtf()I
    .locals 3

    .prologue
    .line 141
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_RTF_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public str()Ljava/lang/String;
    .locals 3

    .prologue
    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_STR_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public xstr()Lorg/apache/xml/utils/XMLString;
    .locals 3

    .prologue
    .line 111
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_XSTR_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
