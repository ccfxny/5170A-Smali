.class public Lorg/apache/xpath/functions/FuncLocalPart;
.super Lorg/apache/xpath/functions/FunctionDef1Arg;
.source "FuncLocalPart.java"


# static fields
.field static final serialVersionUID:J = 0x695b7cc22f847ddaL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionDef1Arg;-><init>()V

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
    const/4 v3, -0x1

    .line 47
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncLocalPart;->getArg0AsNode(Lorg/apache/xpath/XPathContext;)I

    move-result v0

    .line 48
    .local v0, "context":I
    if-ne v3, v0, :cond_0

    .line 49
    sget-object v3, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    .line 55
    :goto_0
    return-object v3

    .line 50
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    .line 51
    .local v1, "dtm":Lorg/apache/xml/dtm/DTM;
    if-eq v0, v3, :cond_2

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "s":Ljava/lang/String;
    :goto_1
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "xmlns"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 53
    :cond_1
    sget-object v3, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    goto :goto_0

    .line 51
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    const-string v2, ""

    goto :goto_1

    .line 55
    .restart local v2    # "s":Ljava/lang/String;
    :cond_3
    new-instance v3, Lorg/apache/xpath/objects/XString;

    invoke-direct {v3, v2}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
