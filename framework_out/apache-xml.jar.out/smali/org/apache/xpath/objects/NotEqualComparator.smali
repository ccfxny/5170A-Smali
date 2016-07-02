.class Lorg/apache/xpath/objects/NotEqualComparator;
.super Lorg/apache/xpath/objects/Comparator;
.source "XNodeSet.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 939
    invoke-direct {p0}, Lorg/apache/xpath/objects/Comparator;-><init>()V

    return-void
.end method


# virtual methods
.method compareNumbers(DD)Z
    .locals 1
    .param p1, "n1"    # D
    .param p3, "n2"    # D

    .prologue
    .line 967
    cmpl-double v0, p1, p3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method compareStrings(Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/XMLString;)Z
    .locals 1
    .param p1, "s1"    # Lorg/apache/xml/utils/XMLString;
    .param p2, "s2"    # Lorg/apache/xml/utils/XMLString;

    .prologue
    .line 953
    invoke-interface {p1, p2}, Lorg/apache/xml/utils/XMLString;->equals(Lorg/apache/xml/utils/XMLString;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
