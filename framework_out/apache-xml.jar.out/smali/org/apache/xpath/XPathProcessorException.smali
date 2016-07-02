.class public Lorg/apache/xpath/XPathProcessorException;
.super Lorg/apache/xpath/XPathException;
.source "XPathProcessorException.java"


# static fields
.field static final serialVersionUID:J = 0x10de5b603c804fabL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/apache/xpath/XPathException;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/apache/xpath/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 53
    return-void
.end method
