.class public Lorg/apache/xpath/functions/FuncDoclocation;
.super Lorg/apache/xpath/functions/FunctionDef1Arg;
.source "FuncDoclocation.java"


# static fields
.field static final serialVersionUID:J = 0x67a7fa82b733b581L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionDef1Arg;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 6
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncDoclocation;->getArg0AsNode(Lorg/apache/xpath/XPathContext;)I

    move-result v2

    .line 49
    .local v2, "whereNode":I
    const/4 v1, 0x0

    .line 51
    .local v1, "fileLocation":Ljava/lang/String;
    if-eq v5, v2, :cond_1

    .line 53
    invoke-virtual {p1, v2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 56
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    const/16 v3, 0xb

    invoke-interface {v0, v2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v4

    if-ne v3, v4, :cond_0

    .line 58
    invoke-interface {v0, v2}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result v2

    .line 61
    :cond_0
    if-eq v5, v2, :cond_1

    .line 63
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTM;->getDocumentBaseURI()Ljava/lang/String;

    move-result-object v1

    .line 69
    .end local v0    # "dtm":Lorg/apache/xml/dtm/DTM;
    :cond_1
    new-instance v3, Lorg/apache/xpath/objects/XString;

    if-eqz v1, :cond_2

    .end local v1    # "fileLocation":Ljava/lang/String;
    :goto_0
    invoke-direct {v3, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v3

    .restart local v1    # "fileLocation":Ljava/lang/String;
    :cond_2
    const-string v1, ""

    goto :goto_0
.end method
