.class Lorg/apache/xpath/objects/GreaterThanOrEqualComparator;
.super Lorg/apache/xpath/objects/Comparator;
.source "XNodeSet.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 868
    invoke-direct {p0}, Lorg/apache/xpath/objects/Comparator;-><init>()V

    return-void
.end method


# virtual methods
.method compareNumbers(DD)Z
    .locals 1
    .param p1, "n1"    # D
    .param p3, "n2"    # D

    .prologue
    .line 897
    cmpl-double v0, p1, p3

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method compareStrings(Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/XMLString;)Z
    .locals 4
    .param p1, "s1"    # Lorg/apache/xml/utils/XMLString;
    .param p2, "s2"    # Lorg/apache/xml/utils/XMLString;

    .prologue
    .line 882
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->toDouble()D

    move-result-wide v0

    invoke-interface {p2}, Lorg/apache/xml/utils/XMLString;->toDouble()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
