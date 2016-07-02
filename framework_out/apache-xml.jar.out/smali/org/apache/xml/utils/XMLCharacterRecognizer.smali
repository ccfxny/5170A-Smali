.class public Lorg/apache/xml/utils/XMLCharacterRecognizer;
.super Ljava/lang/Object;
.source "XMLCharacterRecognizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isWhiteSpace(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 40
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWhiteSpace(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 95
    if-eqz p0, :cond_1

    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 99
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    const/4 v2, 0x0

    .line 106
    .end local v0    # "i":I
    .end local v1    # "n":I
    :goto_1
    return v2

    .line 99
    .restart local v0    # "i":I
    .restart local v1    # "n":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isWhiteSpace(Ljava/lang/StringBuffer;)Z
    .locals 3
    .param p0, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 75
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 77
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    const/4 v2, 0x0

    .line 83
    :goto_1
    return v2

    .line 77
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isWhiteSpace([CII)Z
    .locals 3
    .param p0, "ch"    # [C
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    .line 55
    add-int v0, p1, p2

    .line 57
    .local v0, "end":I
    move v1, p1

    .local v1, "s":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 59
    aget-char v2, p0, v1

    invoke-static {v2}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    const/4 v2, 0x0

    .line 63
    :goto_1
    return v2

    .line 57
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method
