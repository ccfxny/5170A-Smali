.class public Lorg/apache/xpath/objects/XString;
.super Lorg/apache/xpath/objects/XObject;
.source "XString.java"

# interfaces
.implements Lorg/apache/xml/utils/XMLString;


# static fields
.field public static final EMPTYSTRING:Lorg/apache/xpath/objects/XString;

.field static final serialVersionUID:J = 0x1c0a273b4816c5fdL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lorg/apache/xpath/objects/XString;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method private static isSpace(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 1008
    invoke-static {p0}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public bool()Z
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 0
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    .prologue
    .line 1119
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitStringLiteral(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/objects/XString;)Z

    .line 1120
    return-void
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 253
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/xml/utils/XMLString;)I
    .locals 9
    .param p1, "xstr"    # Lorg/apache/xml/utils/XMLString;

    .prologue
    .line 429
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->length()I

    move-result v4

    .line 430
    .local v4, "len1":I
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->length()I

    move-result v5

    .line 431
    .local v5, "len2":I
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 432
    .local v6, "n":I
    const/4 v2, 0x0

    .line 433
    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    move v7, v6

    .line 435
    .end local v6    # "n":I
    .local v7, "n":I
    :goto_0
    add-int/lit8 v6, v7, -0x1

    .end local v7    # "n":I
    .restart local v6    # "n":I
    if-eqz v7, :cond_1

    .line 437
    invoke-virtual {p0, v2}, Lorg/apache/xpath/objects/XString;->charAt(I)C

    move-result v0

    .line 438
    .local v0, "c1":C
    invoke-interface {p1, v3}, Lorg/apache/xml/utils/XMLString;->charAt(I)C

    move-result v1

    .line 440
    .local v1, "c2":C
    if-eq v0, v1, :cond_0

    .line 442
    sub-int v8, v0, v1

    .line 449
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    :goto_1
    return v8

    .line 445
    .restart local v0    # "c1":C
    .restart local v1    # "c2":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 446
    add-int/lit8 v3, v3, 0x1

    move v7, v6

    .line 447
    .end local v6    # "n":I
    .restart local v7    # "n":I
    goto :goto_0

    .line 449
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v7    # "n":I
    .restart local v6    # "n":I
    :cond_1
    sub-int v8, v4, v5

    goto :goto_1
.end method

.method public compareToIgnoreCase(Lorg/apache/xml/utils/XMLString;)I
    .locals 3
    .param p1, "str"    # Lorg/apache/xml/utils/XMLString;

    .prologue
    .line 480
    new-instance v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    new-instance v1, Ljava/lang/NoSuchMethodException;

    const-string v2, "Java 1.2 method, not yet implemented"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public concat(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 913
    new-instance v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 4
    .param p1, "lh"    # Lorg/xml/sax/ext/LexicalHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    .line 225
    return-void
.end method

.method public dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .locals 4
    .param p1, "ch"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 207
    return-void
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 1
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 609
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj2"    # Ljava/lang/Object;

    .prologue
    .line 379
    if-nez p1, :cond_0

    .line 380
    const/4 v0, 0x0

    .line 390
    :goto_0
    return v0

    .line 385
    :cond_0
    instance-of v0, p1, Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v0, :cond_1

    .line 386
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 387
    :cond_1
    instance-of v0, p1, Lorg/apache/xpath/objects/XNumber;

    if-eqz v0, :cond_2

    .line 388
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 390
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/String;)Z
    .locals 1
    .param p1, "obj2"    # Ljava/lang/String;

    .prologue
    .line 335
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Lorg/apache/xml/utils/XMLString;)Z
    .locals 2
    .param p1, "obj2"    # Lorg/apache/xml/utils/XMLString;

    .prologue
    .line 353
    if-eqz p1, :cond_1

    .line 354
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->hasString()Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/xml/utils/XMLString;->equals(Ljava/lang/String;)Z

    move-result v0

    .line 360
    :goto_0
    return v0

    .line 357
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 360
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Lorg/apache/xpath/objects/XObject;)Z
    .locals 8
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 297
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    .line 300
    .local v0, "t":I
    const/4 v4, 0x4

    if-ne v4, v0, :cond_1

    .line 301
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result v2

    .line 319
    :cond_0
    :goto_0
    return v2

    .line 305
    :cond_1
    if-ne v2, v0, :cond_2

    .line 306
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result v4

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->bool()Z

    move-result v5

    if-eq v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    .line 309
    :cond_2
    const/4 v4, 0x2

    if-ne v4, v0, :cond_3

    .line 310
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->num()D
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 312
    :catch_0
    move-exception v1

    .line 314
    .local v1, "te":Ljavax/xml/transform/TransformerException;
    new-instance v2, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v2, v1}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 319
    .end local v1    # "te":Ljavax/xml/transform/TransformerException;
    :cond_3
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/xml/utils/XMLString;->equals(Lorg/apache/xml/utils/XMLString;)Z

    move-result v2

    goto :goto_0
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .locals 1
    .param p1, "anotherString"    # Ljava/lang/String;

    .prologue
    .line 410
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public fixWhiteSpace(ZZZ)Lorg/apache/xml/utils/XMLString;
    .locals 13
    .param p1, "trimHead"    # Z
    .param p2, "trimTail"    # Z
    .param p3, "doublePunctuationSpaces"    # Z

    .prologue
    .line 1030
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->length()I

    move-result v5

    .line 1031
    .local v5, "len":I
    new-array v0, v5, [C

    .line 1033
    .local v0, "buf":[C
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v5, v0, v12}, Lorg/apache/xpath/objects/XString;->getChars(II[CI)V

    .line 1035
    const/4 v4, 0x0

    .line 1038
    .local v4, "edit":Z
    const/4 v8, 0x0

    .local v8, "s":I
    :goto_0
    if-ge v8, v5, :cond_0

    .line 1040
    aget-char v11, v0, v8

    invoke-static {v11}, Lorg/apache/xpath/objects/XString;->isSpace(C)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1047
    :cond_0
    move v2, v8

    .line 1048
    .local v2, "d":I
    const/4 v6, 0x0

    .local v6, "pres":Z
    move v3, v2

    .line 1050
    .end local v2    # "d":I
    .local v3, "d":I
    :goto_1
    if-ge v8, v5, :cond_7

    .line 1052
    aget-char v1, v0, v8

    .line 1054
    .local v1, "c":C
    invoke-static {v1}, Lorg/apache/xpath/objects/XString;->isSpace(C)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1056
    if-nez v6, :cond_5

    .line 1058
    const/16 v11, 0x20

    if-eq v11, v1, :cond_1

    .line 1060
    const/4 v4, 0x1

    .line 1063
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "d":I
    .restart local v2    # "d":I
    const/16 v11, 0x20

    aput-char v11, v0, v3

    .line 1065
    if-eqz p3, :cond_4

    if-eqz v8, :cond_4

    .line 1067
    add-int/lit8 v11, v8, -0x1

    aget-char v7, v0, v11

    .line 1069
    .local v7, "prevChar":C
    const/16 v11, 0x2e

    if-eq v7, v11, :cond_2

    const/16 v11, 0x21

    if-eq v7, v11, :cond_2

    const/16 v11, 0x3f

    if-eq v7, v11, :cond_2

    .line 1072
    const/4 v6, 0x1

    .line 1050
    .end local v7    # "prevChar":C
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move v3, v2

    .end local v2    # "d":I
    .restart local v3    # "d":I
    goto :goto_1

    .line 1038
    .end local v1    # "c":C
    .end local v3    # "d":I
    .end local v6    # "pres":Z
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1077
    .restart local v1    # "c":C
    .restart local v2    # "d":I
    .restart local v6    # "pres":Z
    :cond_4
    const/4 v6, 0x1

    goto :goto_2

    .line 1082
    .end local v2    # "d":I
    .restart local v3    # "d":I
    :cond_5
    const/4 v4, 0x1

    .line 1083
    const/4 v6, 0x1

    move v2, v3

    .end local v3    # "d":I
    .restart local v2    # "d":I
    goto :goto_2

    .line 1088
    .end local v2    # "d":I
    .restart local v3    # "d":I
    :cond_6
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "d":I
    .restart local v2    # "d":I
    aput-char v1, v0, v3

    .line 1089
    const/4 v6, 0x0

    goto :goto_2

    .line 1093
    .end local v1    # "c":C
    .end local v2    # "d":I
    .restart local v3    # "d":I
    :cond_7
    if-eqz p2, :cond_a

    const/4 v11, 0x1

    if-gt v11, v3, :cond_a

    const/16 v11, 0x20

    add-int/lit8 v12, v3, -0x1

    aget-char v12, v0, v12

    if-ne v11, v12, :cond_a

    .line 1095
    const/4 v4, 0x1

    .line 1097
    add-int/lit8 v2, v3, -0x1

    .line 1100
    .end local v3    # "d":I
    .restart local v2    # "d":I
    :goto_3
    const/4 v9, 0x0

    .line 1102
    .local v9, "start":I
    if-eqz p1, :cond_8

    if-lez v2, :cond_8

    const/16 v11, 0x20

    const/4 v12, 0x0

    aget-char v12, v0, v12

    if-ne v11, v12, :cond_8

    .line 1104
    const/4 v4, 0x1

    .line 1106
    add-int/lit8 v9, v9, 0x1

    .line 1109
    :cond_8
    invoke-static {}, Lorg/apache/xpath/objects/XMLStringFactoryImpl;->getFactory()Lorg/apache/xml/utils/XMLStringFactory;

    move-result-object v10

    .line 1111
    .local v10, "xsf":Lorg/apache/xml/utils/XMLStringFactory;
    if-eqz v4, :cond_9

    new-instance v11, Ljava/lang/String;

    sub-int v12, v2, v9

    invoke-direct {v11, v0, v9, v12}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v10, v11}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    .end local p0    # "this":Lorg/apache/xpath/objects/XString;
    :cond_9
    return-object p0

    .end local v2    # "d":I
    .end local v9    # "start":I
    .end local v10    # "xsf":Lorg/apache/xml/utils/XMLStringFactory;
    .restart local v3    # "d":I
    .restart local p0    # "this":Lorg/apache/xpath/objects/XString;
    :cond_a
    move v2, v3

    .end local v3    # "d":I
    .restart local v2    # "d":I
    goto :goto_3
.end method

.method public getChars(II[CI)V
    .locals 1
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [C
    .param p4, "dstBegin"    # I

    .prologue
    .line 279
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    .line 280
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x3

    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "#STRING"

    return-object v0
.end method

.method public hasString()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 627
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(I)I
    .locals 1
    .param p1, "ch"    # I

    .prologue
    .line 649
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    return v0
.end method

.method public indexOf(II)I
    .locals 1
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I

    .prologue
    .line 682
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 752
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .prologue
    .line 805
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Lorg/apache/xml/utils/XMLString;)I
    .locals 2
    .param p1, "str"    # Lorg/apache/xml/utils/XMLString;

    .prologue
    .line 774
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(I)I
    .locals 1
    .param p1, "ch"    # I

    .prologue
    .line 702
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(II)I
    .locals 1
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I

    .prologue
    .line 730
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 828
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .prologue
    .line 853
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public num()D
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->toDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public rtf(Lorg/apache/xpath/XPathContext;)I
    .locals 2
    .param p1, "support"    # Lorg/apache/xpath/XPathContext;

    .prologue
    .line 182
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->createDocumentFragment()Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 184
    .local v0, "frag":Lorg/apache/xml/dtm/DTM;
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->appendTextChild(Ljava/lang/String;)V

    .line 186
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v1

    return v1
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 525
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XString;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public startsWith(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "toffset"    # I

    .prologue
    .line 506
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public startsWith(Lorg/apache/xml/utils/XMLString;)Z
    .locals 1
    .param p1, "prefix"    # Lorg/apache/xml/utils/XMLString;

    .prologue
    .line 591
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XString;->startsWith(Lorg/apache/xml/utils/XMLString;I)Z

    move-result v0

    return v0
.end method

.method public startsWith(Lorg/apache/xml/utils/XMLString;I)Z
    .locals 7
    .param p1, "prefix"    # Lorg/apache/xml/utils/XMLString;
    .param p2, "toffset"    # I

    .prologue
    const/4 v4, 0x0

    .line 550
    move v3, p2

    .line 551
    .local v3, "to":I
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->length()I

    move-result v2

    .line 552
    .local v2, "tlim":I
    const/4 v1, 0x0

    .line 553
    .local v1, "po":I
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->length()I

    move-result v0

    .line 556
    .local v0, "pc":I
    if-ltz p2, :cond_0

    sub-int v5, v2, v0

    if-le p2, v5, :cond_2

    .line 572
    :cond_0
    :goto_0
    return v4

    .line 568
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 569
    add-int/lit8 v1, v1, 0x1

    .line 561
    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    .line 563
    invoke-virtual {p0, v3}, Lorg/apache/xpath/objects/XString;->charAt(I)C

    move-result v5

    invoke-interface {p1, v1}, Lorg/apache/xml/utils/XMLString;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_1

    goto :goto_0

    .line 572
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public str()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/apache/xpath/objects/XString;->m_obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/objects/XString;->m_obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public substring(I)Lorg/apache/xml/utils/XMLString;
    .locals 2
    .param p1, "beginIndex"    # I

    .prologue
    .line 875
    new-instance v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public substring(II)Lorg/apache/xml/utils/XMLString;
    .locals 2
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 896
    new-instance v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toDouble()D
    .locals 8

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->trim()Lorg/apache/xml/utils/XMLString;

    move-result-object v6

    .line 123
    .local v6, "s":Lorg/apache/xml/utils/XMLString;
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 124
    .local v2, "result":D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v6}, Lorg/apache/xml/utils/XMLString;->length()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 126
    invoke-interface {v6, v1}, Lorg/apache/xml/utils/XMLString;->charAt(I)C

    move-result v0

    .line 127
    .local v0, "c":C
    const/16 v7, 0x2d

    if-eq v0, v7, :cond_1

    const/16 v7, 0x2e

    if-eq v0, v7, :cond_1

    const/16 v7, 0x30

    if-lt v0, v7, :cond_0

    const/16 v7, 0x39

    if-le v0, v7, :cond_1

    :cond_0
    move-wide v4, v2

    .line 138
    .end local v0    # "c":C
    .end local v2    # "result":D
    .local v4, "result":D
    :goto_1
    return-wide v4

    .line 124
    .end local v4    # "result":D
    .restart local v0    # "c":C
    .restart local v2    # "result":D
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "c":C
    :cond_2
    :try_start_0
    invoke-interface {v6}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_2
    move-wide v4, v2

    .line 138
    .end local v2    # "result":D
    .restart local v4    # "result":D
    goto :goto_1

    .line 136
    .end local v4    # "result":D
    .restart local v2    # "result":D
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method public toLowerCase()Lorg/apache/xml/utils/XMLString;
    .locals 2

    .prologue
    .line 942
    new-instance v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toLowerCase(Ljava/util/Locale;)Lorg/apache/xml/utils/XMLString;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 927
    new-instance v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toUpperCase()Lorg/apache/xml/utils/XMLString;
    .locals 2

    .prologue
    .line 986
    new-instance v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toUpperCase(Ljava/util/Locale;)Lorg/apache/xml/utils/XMLString;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 955
    new-instance v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public trim()Lorg/apache/xml/utils/XMLString;
    .locals 2

    .prologue
    .line 996
    new-instance v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public xstr()Lorg/apache/xml/utils/XMLString;
    .locals 0

    .prologue
    .line 159
    return-object p0
.end method
