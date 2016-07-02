.class Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;
.super Ljava/lang/Object;
.source "ElemNumber.java"

# interfaces
.implements Lorg/apache/xml/utils/PrefixResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xalan/templates/ElemNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPrefixResolver"
.end annotation


# instance fields
.field dtm:Lorg/apache/xml/dtm/DTM;

.field handle:I

.field handleNullPrefix:Z

.field final synthetic this$0:Lorg/apache/xalan/templates/ElemNumber;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/ElemNumber;Lorg/w3c/dom/Node;Lorg/apache/xml/dtm/DTM;IZ)V
    .locals 0
    .param p2, "xpathExpressionContext"    # Lorg/w3c/dom/Node;
    .param p3, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .param p4, "handle"    # I
    .param p5, "handleNullPrefix"    # Z

    .prologue
    .line 95
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;->this$0:Lorg/apache/xalan/templates/ElemNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p3, p0, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;->dtm:Lorg/apache/xml/dtm/DTM;

    .line 97
    iput p4, p0, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;->handle:I

    .line 98
    iput-boolean p5, p0, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;->handleNullPrefix:Z

    .line 99
    return-void
.end method


# virtual methods
.method public getBaseIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;->this$0:Lorg/apache/xalan/templates/ElemNumber;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemNumber;->getBaseIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;->handle:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "context"    # Lorg/w3c/dom/Node;

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handlesNullPrefixes()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;->handleNullPrefix:Z

    return v0
.end method
