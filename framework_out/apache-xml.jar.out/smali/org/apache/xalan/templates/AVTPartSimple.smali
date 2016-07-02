.class public Lorg/apache/xalan/templates/AVTPartSimple;
.super Lorg/apache/xalan/templates/AVTPart;
.source "AVTPartSimple.java"


# static fields
.field static final serialVersionUID:J = -0x33f8c32d8f0120e9L


# instance fields
.field private m_val:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/xalan/templates/AVTPart;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/xalan/templates/AVTPartSimple;->m_val:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V
    .locals 0
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;

    .prologue
    .line 98
    return-void
.end method

.method public evaluate(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/FastStringBuffer;ILorg/apache/xml/utils/PrefixResolver;)V
    .locals 1
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "buf"    # Lorg/apache/xml/utils/FastStringBuffer;
    .param p3, "context"    # I
    .param p4, "nsNode"    # Lorg/apache/xml/utils/PrefixResolver;

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/xalan/templates/AVTPartSimple;->m_val:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    .prologue
    .line 72
    return-void
.end method

.method public getSimpleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/xalan/templates/AVTPartSimple;->m_val:Ljava/lang/String;

    return-object v0
.end method
