.class public Lorg/apache/xpath/functions/FuncNormalizeSpace;
.super Lorg/apache/xpath/functions/FunctionDef1Arg;
.source "FuncNormalizeSpace.java"


# static fields
.field static final serialVersionUID:J = -0x2ee0e9e0c01181a0L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionDef1Arg;-><init>()V

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
    const/4 v2, 0x1

    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncNormalizeSpace;->getArg0AsString(Lorg/apache/xpath/XPathContext;)Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    .line 50
    .local v0, "s1":Lorg/apache/xml/utils/XMLString;
    const/4 v1, 0x0

    invoke-interface {v0, v2, v2, v1}, Lorg/apache/xml/utils/XMLString;->fixWhiteSpace(ZZZ)Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    check-cast v1, Lorg/apache/xpath/objects/XString;

    return-object v1
.end method

.method public executeCharsToContentHandler(Lorg/apache/xpath/XPathContext;Lorg/xml/sax/ContentHandler;)V
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "handler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/apache/xpath/functions/FuncNormalizeSpace;->Arg0IsNodesetExpr()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncNormalizeSpace;->getArg0AsNode(Lorg/apache/xpath/XPathContext;)I

    move-result v1

    .line 73
    .local v1, "node":I
    const/4 v3, -0x1

    if-eq v3, v1, :cond_0

    .line 75
    invoke-virtual {p1, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 76
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    const/4 v3, 0x1

    invoke-interface {v0, v1, p2, v3}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    .line 84
    .end local v0    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v1    # "node":I
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncNormalizeSpace;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    .line 82
    .local v2, "obj":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v2, p2}, Lorg/apache/xpath/objects/XObject;->dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V

    goto :goto_0
.end method
