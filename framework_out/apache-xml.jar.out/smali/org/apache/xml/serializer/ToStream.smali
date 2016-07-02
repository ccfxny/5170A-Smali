.class public abstract Lorg/apache/xml/serializer/ToStream;
.super Lorg/apache/xml/serializer/SerializerBase;
.source "ToStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/ToStream$BoolStack;,
        Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;
    }
.end annotation


# static fields
.field private static final COMMENT_BEGIN:Ljava/lang/String; = "<!--"

.field private static final COMMENT_END:Ljava/lang/String; = "-->"

.field private static final s_systemLineSep:[C


# instance fields
.field protected m_cdataStartCalled:Z

.field protected m_charInfo:Lorg/apache/xml/serializer/CharInfo;

.field protected m_disableOutputEscapingStates:Lorg/apache/xml/serializer/ToStream$BoolStack;

.field m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

.field protected m_escaping:Z

.field private m_expandDTDEntities:Z

.field protected m_inDoctype:Z

.field m_isUTF8:Z

.field protected m_ispreserve:Z

.field protected m_isprevtext:Z

.field protected m_lineSep:[C

.field protected m_lineSepLen:I

.field protected m_lineSepUse:Z

.field m_outputStream:Ljava/io/OutputStream;

.field protected m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

.field m_shouldFlush:Z

.field protected m_spaceBeforeClose:Z

.field m_startNewLine:Z

.field private m_writer_set_by_user:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Lorg/apache/xml/serializer/SecuritySupport;->getInstance()Lorg/apache/xml/serializer/SecuritySupport;

    move-result-object v0

    .line 112
    .local v0, "ss":Lorg/apache/xml/serializer/SecuritySupport;
    const-string v1, "line.separator"

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lorg/apache/xml/serializer/ToStream;->s_systemLineSep:[C

    .line 113
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 184
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;-><init>()V

    .line 62
    new-instance v0, Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-direct {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_disableOutputEscapingStates:Lorg/apache/xml/serializer/ToStream$BoolStack;

    .line 76
    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo;

    invoke-direct {v0, v3, v3, v1}, Lorg/apache/xml/serializer/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;C)V

    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    .line 87
    new-instance v0, Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-direct {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    .line 97
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    .line 107
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    .line 121
    sget-object v0, Lorg/apache/xml/serializer/ToStream;->s_systemLineSep:[C

    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    .line 127
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    .line 133
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    array-length v0, v0

    iput v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    .line 142
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_shouldFlush:Z

    .line 147
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_spaceBeforeClose:Z

    .line 160
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_inDoctype:Z

    .line 165
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_isUTF8:Z

    .line 171
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataStartCalled:Z

    .line 177
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_expandDTDEntities:Z

    .line 232
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_escaping:Z

    .line 185
    return-void
.end method

.method private DTDprolog()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3551
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    .line 3552
    .local v0, "writer":Ljava/io/Writer;
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_needToOutputDocTypeDecl:Z

    if-eqz v1, :cond_0

    .line 3554
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lorg/apache/xml/serializer/ToStream;->outputDocTypeDecl(Ljava/lang/String;Z)V

    .line 3555
    iput-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_needToOutputDocTypeDecl:Z

    .line 3557
    :cond_0
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_inDoctype:Z

    if-eqz v1, :cond_1

    .line 3559
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3560
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    iget v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 3561
    iput-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_inDoctype:Z

    .line 3563
    :cond_1
    return-void
.end method

.method private accumDefaultEscape(Ljava/io/Writer;CI[CIZZ)I
    .locals 10
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "ch"    # C
    .param p3, "i"    # I
    .param p4, "chars"    # [C
    .param p5, "len"    # I
    .param p6, "fromTextNode"    # Z
    .param p7, "escLF"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1794
    invoke-virtual/range {p0 .. p7}, Lorg/apache/xml/serializer/ToStream;->accumDefaultEntity(Ljava/io/Writer;CI[CIZZ)I

    move-result v2

    .line 1796
    .local v2, "pos":I
    if-ne p3, v2, :cond_2

    .line 1798
    invoke-static {p2}, Lorg/apache/xml/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1804
    const/4 v0, 0x0

    .line 1806
    .local v0, "codePoint":I
    add-int/lit8 v3, p3, 0x1

    if-lt v3, p5, :cond_0

    .line 1808
    new-instance v3, Ljava/io/IOException;

    sget-object v4, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v5, "ER_INVALID_UTF16_SURROGATE"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1818
    :cond_0
    add-int/lit8 p3, p3, 0x1

    aget-char v1, p4, p3

    .line 1820
    .local v1, "next":C
    invoke-static {v1}, Lorg/apache/xml/serializer/Encodings;->isLowUTF16Surrogate(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1821
    new-instance v3, Ljava/io/IOException;

    sget-object v4, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v5, "ER_INVALID_UTF16_SURROGATE"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1832
    :cond_1
    invoke-static {p2, v1}, Lorg/apache/xml/serializer/Encodings;->toCodePoint(CC)I

    move-result v0

    .line 1835
    const-string v3, "&#"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1836
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1837
    const/16 v3, 0x3b

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 1838
    add-int/lit8 v2, v2, 0x2

    .line 1870
    .end local v0    # "codePoint":I
    .end local v1    # "next":C
    :cond_2
    :goto_0
    return v2

    .line 1847
    :cond_3
    invoke-static {p2}, Lorg/apache/xml/serializer/ToStream;->isCharacterInC0orC1Range(C)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p2}, Lorg/apache/xml/serializer/ToStream;->isNELorLSEPCharacter(C)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1849
    :cond_4
    const-string v3, "&#"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1850
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1851
    const/16 v3, 0x3b

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 1866
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1853
    :cond_5
    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/ToStream;->escapingNotNeeded(C)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz p6, :cond_6

    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {v3, p2}, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar(I)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    if-nez p6, :cond_8

    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {v3, p2}, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar(I)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    if-lez v3, :cond_8

    .line 1858
    const-string v3, "&#"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1859
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1860
    const/16 v3, 0x3b

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 1864
    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    goto :goto_1
.end method

.method private addCdataSectionElement(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 6
    .param p1, "URI_and_localName"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/util/Vector;

    .prologue
    const/4 v3, 0x0

    .line 2783
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "{}"

    const/4 v5, 0x0

    invoke-direct {v2, p1, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2785
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 2786
    .local v0, "s1":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 2788
    .local v1, "s2":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_1

    .line 2791
    invoke-virtual {p2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2792
    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2800
    :goto_1
    return-void

    .end local v1    # "s2":Ljava/lang/String;
    :cond_0
    move-object v1, v3

    .line 2786
    goto :goto_0

    .line 2797
    .restart local v1    # "s2":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2798
    invoke-virtual {p2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static isCharacterInC0orC1Range(C)Z
    .locals 3
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1676
    const/16 v2, 0x9

    if-eq p0, v2, :cond_0

    const/16 v2, 0xa

    if-eq p0, v2, :cond_0

    const/16 v2, 0xd

    if-ne p0, v2, :cond_2

    :cond_0
    move v0, v1

    .line 1679
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/16 v2, 0x7f

    if-lt p0, v2, :cond_3

    const/16 v2, 0x9f

    if-le p0, v2, :cond_1

    :cond_3
    if-lt p0, v0, :cond_4

    const/16 v2, 0x1f

    if-le p0, v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private isEscapingDisabled()Z
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_disableOutputEscapingStates:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;->peekOrFalse()Z

    move-result v0

    return v0
.end method

.method private static isNELorLSEPCharacter(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 1691
    const/16 v0, 0x85

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2028

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private printSpace(I)V
    .locals 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 816
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    .line 817
    .local v1, "writer":Ljava/io/Writer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 819
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 817
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 822
    :cond_0
    return-void
.end method

.method private processDirty([CIICIZ)I
    .locals 10
    .param p1, "chars"    # [C
    .param p2, "end"    # I
    .param p3, "i"    # I
    .param p4, "ch"    # C
    .param p5, "lastDirty"    # I
    .param p6, "fromTextNode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1714
    add-int/lit8 v9, p5, 0x1

    .line 1717
    .local v9, "startClean":I
    if-le p3, v9, :cond_0

    .line 1719
    sub-int v8, p3, v9

    .line 1720
    .local v8, "lengthClean":I
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    invoke-virtual {v0, p1, v9, v8}, Ljava/io/Writer;->write([CII)V

    .line 1724
    .end local v8    # "lengthClean":I
    :cond_0
    const/16 v0, 0xa

    if-ne v0, p4, :cond_1

    if-eqz p6, :cond_1

    .line 1726
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    .line 1743
    :goto_0
    return p3

    .line 1730
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p4

    move v3, p3

    move-object v4, p1

    move v5, p2

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/xml/serializer/ToStream;->accumDefaultEscape(Ljava/io/Writer;CI[CIZZ)I

    move-result v9

    .line 1739
    add-int/lit8 p3, v9, -0x1

    goto :goto_0
.end method

.method private processLineFeed([CIILjava/io/Writer;)I
    .locals 3
    .param p1, "chars"    # [C
    .param p2, "i"    # I
    .param p3, "lastProcessed"    # I
    .param p4, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1641
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    aget-char v0, v0, v2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1652
    :cond_0
    :goto_0
    return p3

    .line 1648
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    .line 1649
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    iget v1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {p4, v0, v2, v1}, Ljava/io/Writer;->write([CII)V

    .line 1650
    move p3, p2

    goto :goto_0
.end method

.method private resetToStream()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3264
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataStartCalled:Z

    .line 3272
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_disableOutputEscapingStates:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;->clear()V

    .line 3275
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_escaping:Z

    .line 3278
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_expandDTDEntities:Z

    .line 3279
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_inDoctype:Z

    .line 3280
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    .line 3281
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    .line 3282
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_isUTF8:Z

    .line 3283
    sget-object v0, Lorg/apache/xml/serializer/ToStream;->s_systemLineSep:[C

    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    .line 3284
    sget-object v0, Lorg/apache/xml/serializer/ToStream;->s_systemLineSep:[C

    array-length v0, v0

    iput v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    .line 3285
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    .line 3287
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;->clear()V

    .line 3288
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_shouldFlush:Z

    .line 3289
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_spaceBeforeClose:Z

    .line 3290
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    .line 3291
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer_set_by_user:Z

    .line 3292
    return-void
.end method

.method private setCdataSectionElements(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "props"    # Ljava/util/Properties;

    .prologue
    const/4 v8, 0x0

    .line 2725
    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2727
    .local v5, "s":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 2730
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 2731
    .local v6, "v":Ljava/util/Vector;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 2732
    .local v4, "l":I
    const/4 v3, 0x0

    .line 2733
    .local v3, "inCurly":Z
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2738
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 2740
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2742
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2744
    if-nez v3, :cond_2

    .line 2746
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 2748
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lorg/apache/xml/serializer/ToStream;->addCdataSectionElement(Ljava/lang/String;Ljava/util/Vector;)V

    .line 2749
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2738
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2754
    :cond_1
    const/16 v7, 0x7b

    if-ne v7, v1, :cond_3

    .line 2755
    const/4 v3, 0x1

    .line 2759
    :cond_2
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2756
    :cond_3
    const/16 v7, 0x7d

    if-ne v7, v1, :cond_2

    .line 2757
    const/4 v3, 0x0

    goto :goto_2

    .line 2762
    .end local v1    # "c":C
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 2764
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lorg/apache/xml/serializer/ToStream;->addCdataSectionElement(Ljava/lang/String;Ljava/util/Vector;)V

    .line 2765
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2768
    :cond_5
    invoke-virtual {p0, v6}, Lorg/apache/xml/serializer/ToStream;->setCdataSectionElements(Ljava/util/Vector;)V

    .line 2771
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "i":I
    .end local v3    # "inCurly":Z
    .end local v4    # "l":I
    .end local v6    # "v":Ljava/util/Vector;
    :cond_6
    return-void
.end method

.method private setOutputStreamInternal(Ljava/io/OutputStream;Z)V
    .locals 8
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "setByUser"    # Z

    .prologue
    const/4 v7, 0x0

    .line 714
    iput-object p1, p0, Lorg/apache/xml/serializer/ToStream;->m_outputStream:Ljava/io/OutputStream;

    .line 715
    const-string v4, "encoding"

    invoke-virtual {p0, v4}, Lorg/apache/xml/serializer/ToStream;->getOutputProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 716
    .local v1, "encoding":Ljava/lang/String;
    const-string v4, "UTF-8"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 720
    new-instance v4, Lorg/apache/xml/serializer/WriterToUTF8Buffered;

    invoke-direct {v4, p1}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v4, v7}, Lorg/apache/xml/serializer/ToStream;->setWriterInternal(Ljava/io/Writer;Z)V

    .line 764
    :goto_0
    return-void

    .line 721
    :cond_0
    const-string v4, "WINDOWS-1250"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "US-ASCII"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "ASCII"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 726
    :cond_1
    new-instance v4, Lorg/apache/xml/serializer/WriterToASCI;

    invoke-direct {v4, p1}, Lorg/apache/xml/serializer/WriterToASCI;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v4, v7}, Lorg/apache/xml/serializer/ToStream;->setWriterInternal(Ljava/io/Writer;Z)V

    goto :goto_0

    .line 727
    :cond_2
    if-eqz v1, :cond_4

    .line 728
    const/4 v2, 0x0

    .line 731
    .local v2, "osw":Ljava/io/Writer;
    :try_start_0
    invoke-static {p1, v1}, Lorg/apache/xml/serializer/Encodings;->getWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 739
    :goto_1
    if-nez v2, :cond_3

    .line 740
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Warning: encoding \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" not supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", using "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 747
    const-string v1, "UTF-8"

    .line 748
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToStream;->setEncoding(Ljava/lang/String;)V

    .line 750
    :try_start_1
    invoke-static {p1, v1}, Lorg/apache/xml/serializer/Encodings;->getWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 757
    :cond_3
    :goto_2
    invoke-direct {p0, v2, v7}, Lorg/apache/xml/serializer/ToStream;->setWriterInternal(Ljava/io/Writer;Z)V

    goto :goto_0

    .line 733
    :catch_0
    move-exception v3

    .line 735
    .local v3, "uee":Ljava/io/UnsupportedEncodingException;
    const/4 v2, 0x0

    goto :goto_1

    .line 751
    .end local v3    # "uee":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 754
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 761
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "osw":Ljava/io/Writer;
    :cond_4
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 762
    .restart local v2    # "osw":Ljava/io/Writer;
    invoke-direct {p0, v2, v7}, Lorg/apache/xml/serializer/ToStream;->setWriterInternal(Ljava/io/Writer;Z)V

    goto :goto_0
.end method

.method private setWriterInternal(Ljava/io/Writer;Z)V
    .locals 5
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "setByUser"    # Z

    .prologue
    .line 658
    iput-boolean p2, p0, Lorg/apache/xml/serializer/ToStream;->m_writer_set_by_user:Z

    .line 659
    iput-object p1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    .line 662
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v2, :cond_1

    .line 663
    const/4 v0, 0x1

    .line 664
    .local v0, "noTracerYet":Z
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    .line 665
    .local v1, "w2":Ljava/io/Writer;
    :goto_0
    instance-of v2, v1, Lorg/apache/xml/serializer/WriterChain;

    if-eqz v2, :cond_0

    .line 666
    instance-of v2, v1, Lorg/apache/xml/serializer/SerializerTraceWriter;

    if-eqz v2, :cond_2

    .line 667
    const/4 v0, 0x0

    .line 672
    :cond_0
    if-eqz v0, :cond_1

    .line 673
    new-instance v2, Lorg/apache/xml/serializer/SerializerTraceWriter;

    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    iget-object v4, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    invoke-direct {v2, v3, v4}, Lorg/apache/xml/serializer/SerializerTraceWriter;-><init>(Ljava/io/Writer;Lorg/apache/xml/serializer/SerializerTrace;)V

    iput-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    .line 675
    .end local v0    # "noTracerYet":Z
    .end local v1    # "w2":Ljava/io/Writer;
    :cond_1
    return-void

    .line 670
    .restart local v0    # "noTracerYet":Z
    .restart local v1    # "w2":Ljava/io/Writer;
    :cond_2
    check-cast v1, Lorg/apache/xml/serializer/WriterChain;

    .end local v1    # "w2":Ljava/io/Writer;
    invoke-interface {v1}, Lorg/apache/xml/serializer/WriterChain;->getWriter()Ljava/io/Writer;

    move-result-object v1

    .restart local v1    # "w2":Ljava/io/Writer;
    goto :goto_0
.end method

.method private writeOutCleanChars([CII)V
    .locals 3
    .param p1, "chars"    # [C
    .param p2, "i"    # I
    .param p3, "lastProcessed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1657
    add-int/lit8 v1, p3, 0x1

    .line 1658
    .local v1, "startClean":I
    if-ge v1, p2, :cond_0

    .line 1660
    sub-int v0, p2, v1

    .line 1661
    .local v0, "lengthClean":I
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    invoke-virtual {v2, p1, v1, v0}, Ljava/io/Writer;->write([CII)V

    .line 1663
    .end local v0    # "lengthClean":I
    :cond_0
    return-void
.end method


# virtual methods
.method accumDefaultEntity(Ljava/io/Writer;CI[CIZZ)I
    .locals 4
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "ch"    # C
    .param p3, "i"    # I
    .param p4, "chars"    # [C
    .param p5, "len"    # I
    .param p6, "fromTextNode"    # Z
    .param p7, "escLF"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1068
    if-nez p7, :cond_1

    const/16 v1, 0xa

    if-ne v1, p2, :cond_1

    .line 1070
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    .line 1091
    :goto_0
    add-int/lit8 p3, p3, 0x1

    .end local p3    # "i":I
    :cond_0
    return p3

    .line 1076
    .restart local p3    # "i":I
    :cond_1
    if-eqz p6, :cond_2

    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {v1, p2}, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar(I)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    if-nez p6, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {v1, p2}, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1078
    :cond_3
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {v1, p2}, Lorg/apache/xml/serializer/CharInfo;->getOutputStringForChar(C)Ljava/lang/String;

    move-result-object v0

    .line 1080
    .local v0, "outputStringForChar":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1082
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 14
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "rawName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "xslAttribute"    # Z

    .prologue
    .line 3019
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 3020
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getIndex(Ljava/lang/String;)I

    move-result v10

    .line 3025
    .local v10, "index":I
    :goto_0
    if-ltz v10, :cond_4

    .line 3027
    const/4 v11, 0x0

    .line 3028
    .local v11, "old_value":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v1, :cond_1

    .line 3030
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v1, v10}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getValue(I)Ljava/lang/String;

    move-result-object v11

    .line 3031
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3032
    const/4 v11, 0x0

    .line 3039
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    move-object/from16 v0, p5

    invoke-virtual {v1, v10, v0}, Lorg/apache/xml/serializer/AttributesImplSerializer;->setValue(ILjava/lang/String;)V

    .line 3040
    const/4 v13, 0x0

    .line 3041
    .local v13, "was_added":Z
    if-eqz v11, :cond_2

    .line 3042
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->firePseudoAttributes()V

    .line 3129
    .end local v11    # "old_value":Ljava/lang/String;
    :cond_2
    :goto_1
    return v13

    .line 3022
    .end local v10    # "index":I
    .end local v13    # "was_added":Z
    :cond_3
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    move-object/from16 v0, p2

    invoke-virtual {v1, p1, v0}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .restart local v10    # "index":I
    goto :goto_0

    .line 3048
    :cond_4
    if-eqz p6, :cond_7

    .line 3063
    const/16 v1, 0x3a

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 3064
    .local v7, "colonIndex":I
    if-lez v7, :cond_6

    .line 3066
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 3067
    .local v12, "prefix":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v1, v12}, Lorg/apache/xml/serializer/NamespaceMappings;->getMappingFromPrefix(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    move-result-object v9

    .line 3072
    .local v9, "existing_mapping":Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
    if-eqz v9, :cond_6

    iget v1, v9, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_declarationDepth:I

    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    if-ne v1, v2, :cond_6

    iget-object v1, v9, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_uri:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 3086
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v1, p1}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3087
    if-nez v12, :cond_5

    .line 3098
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v1}, Lorg/apache/xml/serializer/NamespaceMappings;->generateNextPrefix()Ljava/lang/String;

    move-result-object v12

    .line 3101
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 3112
    .end local v9    # "existing_mapping":Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
    .end local v12    # "prefix":Ljava/lang/String;
    :cond_6
    :try_start_0
    invoke-virtual/range {p0 .. p3}, Lorg/apache/xml/serializer/ToStream;->ensureAttributesNamespaceIsDeclared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3124
    .end local v7    # "colonIndex":I
    :cond_7
    :goto_2
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xml/serializer/AttributesImplSerializer;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3125
    const/4 v13, 0x1

    .line 3126
    .restart local v13    # "was_added":Z
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v1, :cond_2

    .line 3127
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->firePseudoAttributes()V

    goto :goto_1

    .line 3118
    .end local v13    # "was_added":Z
    .restart local v7    # "colonIndex":I
    :catch_0
    move-exception v8

    .line 3121
    .local v8, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v8}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_2
.end method

.method public addCdataSectionElements(Ljava/lang/String;)V
    .locals 2
    .param p1, "URI_and_localNames"    # Ljava/lang/String;

    .prologue
    .line 3594
    if-eqz p1, :cond_0

    .line 3595
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/ToStream;->initCdataElems(Ljava/lang/String;)V

    .line 3596
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_StringOfCDATASections:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 3597
    iput-object p1, p0, Lorg/apache/xml/serializer/ToStream;->m_StringOfCDATASections:Ljava/lang/String;

    .line 3600
    :goto_0
    return-void

    .line 3599
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_StringOfCDATASections:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_StringOfCDATASections:Ljava/lang/String;

    goto :goto_0
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "eName"    # Ljava/lang/String;
    .param p2, "aName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "valueDefault"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 852
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_inExternalDTD:Z

    if-eqz v2, :cond_0

    .line 881
    :goto_0
    return-void

    .line 856
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    .line 857
    .local v1, "writer":Ljava/io/Writer;
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->DTDprolog()V

    .line 859
    const-string v2, "<!ATTLIST "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 860
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 861
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 863
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 864
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 865
    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 866
    if-eqz p4, :cond_1

    .line 868
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 869
    invoke-virtual {v1, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 874
    :cond_1
    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 875
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 877
    .end local v1    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v0

    .line 879
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method protected cdata([CII)V
    .locals 9
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 1262
    move v7, p2

    .line 1263
    .local v7, "old_start":I
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v1, :cond_0

    .line 1265
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    .line 1266
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 1268
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    .line 1270
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->shouldIndent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1271
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->indent()V

    .line 1273
    :cond_1
    if-lt p3, v8, :cond_5

    aget-char v1, p1, p2

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToStream;->escapingNotNeeded(C)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1280
    .local v8, "writeCDataBrackets":Z
    :goto_0
    if-eqz v8, :cond_2

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    if-nez v0, :cond_2

    .line 1282
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    const-string v1, "<![CDATA["

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    .line 1287
    :cond_2
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->isEscapingDisabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1289
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->charactersRaw([CII)V

    .line 1298
    :goto_1
    if-eqz v8, :cond_3

    .line 1305
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    aget-char v0, p1, v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_3

    .line 1306
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    .line 1310
    :cond_3
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_4

    .line 1311
    invoke-super {p0, p1, v7, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireCDATAEvent([CII)V

    .line 1322
    :cond_4
    return-void

    .end local v8    # "writeCDataBrackets":Z
    :cond_5
    move v8, v0

    .line 1273
    goto :goto_0

    .line 1292
    .restart local v8    # "writeCDataBrackets":Z
    :cond_6
    const/4 v4, 0x1

    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/serializer/ToStream;->writeNormalizedChars([CIIZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1313
    .end local v8    # "writeCDataBrackets":Z
    :catch_0
    move-exception v6

    .line 1315
    .local v6, "ioe":Ljava/io/IOException;
    new-instance v0, Lorg/xml/sax/SAXException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_OIERROR"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public characters(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1755
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_inEntityRef:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_expandDTDEntities:Z

    if-nez v1, :cond_0

    .line 1764
    :goto_0
    return-void

    .line 1757
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1758
    .local v0, "length":I
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 1760
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_charsBuff:[C

    .line 1762
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_charsBuff:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1763
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_charsBuff:[C

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/xml/serializer/ToStream;->characters([CII)V

    goto :goto_0
.end method

.method public characters([CII)V
    .locals 13
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1403
    if-eqz p3, :cond_0

    iget-boolean v11, p0, Lorg/apache/xml/serializer/ToStream;->m_inEntityRef:Z

    if-eqz v11, :cond_1

    iget-boolean v11, p0, Lorg/apache/xml/serializer/ToStream;->m_expandDTDEntities:Z

    if-nez v11, :cond_1

    .line 1638
    :cond_0
    :goto_0
    return-void

    .line 1406
    :cond_1
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/apache/xml/serializer/ToStream;->m_docIsEmpty:Z

    .line 1408
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v11, v11, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v11, :cond_4

    .line 1410
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    .line 1411
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 1418
    :cond_2
    :goto_1
    iget-boolean v11, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataStartCalled:Z

    if-nez v11, :cond_3

    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v11, v11, Lorg/apache/xml/serializer/ElemContext;->m_isCdataSection:Z

    if-eqz v11, :cond_5

    .line 1423
    :cond_3
    invoke-virtual/range {p0 .. p3}, Lorg/apache/xml/serializer/ToStream;->cdata([CII)V

    goto :goto_0

    .line 1413
    :cond_4
    iget-boolean v11, p0, Lorg/apache/xml/serializer/ToStream;->m_needToCallStartDocument:Z

    if-eqz v11, :cond_2

    .line 1415
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->startDocumentInternal()V

    goto :goto_1

    .line 1428
    :cond_5
    iget-boolean v11, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    if-eqz v11, :cond_6

    .line 1429
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    .line 1431
    :cond_6
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_disableOutputEscapingStates:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v11}, Lorg/apache/xml/serializer/ToStream$BoolStack;->peekOrFalse()Z

    move-result v11

    if-nez v11, :cond_7

    iget-boolean v11, p0, Lorg/apache/xml/serializer/ToStream;->m_escaping:Z

    if-nez v11, :cond_8

    .line 1433
    :cond_7
    invoke-virtual/range {p0 .. p3}, Lorg/apache/xml/serializer/ToStream;->charactersRaw([CII)V

    .line 1436
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v11, :cond_0

    .line 1437
    invoke-super/range {p0 .. p3}, Lorg/apache/xml/serializer/SerializerBase;->fireCharEvent([CII)V

    goto :goto_0

    .line 1442
    :cond_8
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v11, v11, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v11, :cond_9

    .line 1444
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    .line 1445
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 1457
    :cond_9
    add-int v3, p2, p3

    .line 1458
    .local v3, "end":I
    add-int/lit8 v6, p2, -0x1

    .line 1460
    .local v6, "lastDirtyCharProcessed":I
    :try_start_0
    iget-object v10, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    .line 1461
    .local v10, "writer":Ljava/io/Writer;
    const/4 v5, 0x1

    .line 1464
    .local v5, "isAllWhitespace":Z
    move v4, p2

    .line 1465
    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_b

    if-eqz v5, :cond_b

    .line 1466
    aget-char v1, p1, v4

    .line 1468
    .local v1, "ch1":C
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {v11, v1}, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar(I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1473
    invoke-direct {p0, p1, v4, v6}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    .line 1474
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {v11, v1}, Lorg/apache/xml/serializer/CharInfo;->getOutputStringForChar(C)Ljava/lang/String;

    move-result-object v8

    .line 1476
    .local v8, "outputStringForChar":Ljava/lang/String;
    invoke-virtual {v10, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1479
    const/4 v5, 0x0

    .line 1480
    move v6, v4

    .line 1482
    add-int/lit8 v4, v4, 0x1

    .line 1483
    goto :goto_2

    .line 1485
    .end local v8    # "outputStringForChar":Ljava/lang/String;
    :cond_a
    sparse-switch v1, :sswitch_data_0

    .line 1510
    const/4 v5, 0x0

    goto :goto_2

    .line 1489
    :sswitch_0
    add-int/lit8 v4, v4, 0x1

    .line 1490
    goto :goto_2

    .line 1492
    :sswitch_1
    invoke-direct {p0, p1, v4, v6, v10}, Lorg/apache/xml/serializer/ToStream;->processLineFeed([CIILjava/io/Writer;)I

    move-result v6

    .line 1494
    add-int/lit8 v4, v4, 0x1

    .line 1495
    goto :goto_2

    .line 1497
    :sswitch_2
    invoke-direct {p0, p1, v4, v6}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    .line 1498
    const-string v11, "&#13;"

    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1499
    move v6, v4

    .line 1500
    add-int/lit8 v4, v4, 0x1

    .line 1501
    goto :goto_2

    .line 1504
    :sswitch_3
    add-int/lit8 v4, v4, 0x1

    .line 1505
    goto :goto_2

    .line 1519
    .end local v1    # "ch1":C
    :cond_b
    if-lt v4, v3, :cond_c

    if-nez v5, :cond_d

    .line 1520
    :cond_c
    const/4 v11, 0x1

    iput-boolean v11, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    .line 1523
    :cond_d
    :goto_3
    if-ge v4, v3, :cond_13

    .line 1525
    aget-char v0, p1, v4

    .line 1527
    .local v0, "ch":C
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {v11, v0}, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar(I)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 1531
    invoke-direct {p0, p1, v4, v6}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    .line 1532
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {v11, v0}, Lorg/apache/xml/serializer/CharInfo;->getOutputStringForChar(C)Ljava/lang/String;

    move-result-object v8

    .line 1533
    .restart local v8    # "outputStringForChar":Ljava/lang/String;
    invoke-virtual {v10, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1534
    move v6, v4

    .line 1523
    .end local v8    # "outputStringForChar":Ljava/lang/String;
    :cond_e
    :goto_4
    :pswitch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1537
    :cond_f
    const/16 v11, 0x1f

    if-gt v0, v11, :cond_10

    .line 1553
    packed-switch v0, :pswitch_data_0

    .line 1568
    :pswitch_1
    invoke-direct {p0, p1, v4, v6}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    .line 1569
    const-string v11, "&#"

    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1570
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1571
    const/16 v11, 0x3b

    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(I)V

    .line 1572
    move v6, v4

    .line 1573
    goto :goto_4

    .line 1559
    :pswitch_2
    invoke-direct {p0, p1, v4, v6, v10}, Lorg/apache/xml/serializer/ToStream;->processLineFeed([CIILjava/io/Writer;)I

    move-result v6

    .line 1560
    goto :goto_4

    .line 1562
    :pswitch_3
    invoke-direct {p0, p1, v4, v6}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    .line 1563
    const-string v11, "&#13;"

    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1564
    move v6, v4

    .line 1566
    goto :goto_4

    .line 1577
    :cond_10
    const/16 v11, 0x7f

    if-lt v0, v11, :cond_e

    .line 1583
    const/16 v11, 0x9f

    if-gt v0, v11, :cond_11

    .line 1586
    invoke-direct {p0, p1, v4, v6}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    .line 1587
    const-string v11, "&#"

    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1588
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1589
    const/16 v11, 0x3b

    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(I)V

    .line 1590
    move v6, v4

    goto :goto_4

    .line 1592
    :cond_11
    const/16 v11, 0x2028

    if-ne v0, v11, :cond_12

    .line 1594
    invoke-direct {p0, p1, v4, v6}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    .line 1595
    const-string v11, "&#8232;"

    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1596
    move v6, v4

    goto :goto_4

    .line 1598
    :cond_12
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    invoke-virtual {v11, v0}, Lorg/apache/xml/serializer/EncodingInfo;->isInEncoding(C)Z

    move-result v11

    if-nez v11, :cond_e

    .line 1609
    invoke-direct {p0, p1, v4, v6}, Lorg/apache/xml/serializer/ToStream;->writeOutCleanChars([CII)V

    .line 1610
    const-string v11, "&#"

    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1611
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1612
    const/16 v11, 0x3b

    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(I)V

    .line 1613
    move v6, v4

    goto :goto_4

    .line 1620
    .end local v0    # "ch":C
    :cond_13
    add-int/lit8 v9, v6, 0x1

    .line 1621
    .local v9, "startClean":I
    if-le v4, v9, :cond_14

    .line 1623
    sub-int v7, v4, v9

    .line 1624
    .local v7, "lengthClean":I
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    invoke-virtual {v11, p1, v9, v7}, Ljava/io/Writer;->write([CII)V

    .line 1628
    .end local v7    # "lengthClean":I
    :cond_14
    const/4 v11, 0x1

    iput-boolean v11, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1636
    iget-object v11, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v11, :cond_0

    .line 1637
    invoke-super/range {p0 .. p3}, Lorg/apache/xml/serializer/SerializerBase;->fireCharEvent([CII)V

    goto/16 :goto_0

    .line 1630
    .end local v4    # "i":I
    .end local v5    # "isAllWhitespace":Z
    .end local v9    # "startClean":I
    .end local v10    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v2

    .line 1632
    .local v2, "e":Ljava/io/IOException;
    new-instance v11, Lorg/xml/sax/SAXException;

    invoke-direct {v11, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v11

    .line 1485
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x20 -> :sswitch_0
    .end sparse-switch

    .line 1553
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected charactersRaw([CII)V
    .locals 3
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1348
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_inEntityRef:Z

    if-eqz v1, :cond_0

    .line 1367
    :goto_0
    return-void

    .line 1352
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v1, :cond_1

    .line 1354
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    .line 1355
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 1358
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    .line 1360
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1362
    :catch_0
    move-exception v0

    .line 1364
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected closeCDATA()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 196
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    const-string v2, "]]>"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 198
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected closeStartTag()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2613
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v2, :cond_3

    .line 2618
    :try_start_0
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v2, :cond_0

    .line 2619
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-super {p0, v2}, Lorg/apache/xml/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    .line 2620
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v2}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getLength()I

    move-result v1

    .line 2621
    .local v1, "nAttrs":I
    if-lez v1, :cond_1

    .line 2623
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    invoke-virtual {p0, v2, v1}, Lorg/apache/xml/serializer/ToStream;->processAttributes(Ljava/io/Writer;I)V

    .line 2625
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v2}, Lorg/apache/xml/serializer/AttributesImplSerializer;->clear()V

    .line 2627
    :cond_1
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2638
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_CdataElems:Ljava/util/Hashtable;

    if-eqz v2, :cond_2

    .line 2639
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->isCdataSection()Z

    move-result v3

    iput-boolean v3, v2, Lorg/apache/xml/serializer/ElemContext;->m_isCdataSection:Z

    .line 2641
    :cond_2
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_doIndent:Z

    if-eqz v2, :cond_3

    .line 2643
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    .line 2644
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    iget-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    invoke-virtual {v2, v3}, Lorg/apache/xml/serializer/ToStream$BoolStack;->push(Z)Z

    .line 2648
    .end local v1    # "nAttrs":I
    :cond_3
    return-void

    .line 2629
    :catch_0
    move-exception v0

    .line 2631
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public comment([CII)V
    .locals 11
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/16 v10, 0x2d

    const/4 v8, 0x0

    .line 2395
    move v4, p2

    .line 2396
    .local v4, "start_old":I
    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToStream;->m_inEntityRef:Z

    if-eqz v9, :cond_1

    .line 2464
    :cond_0
    :goto_0
    return-void

    .line 2398
    :cond_1
    iget-object v9, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v9, v9, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v9, :cond_6

    .line 2400
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    .line 2401
    iget-object v9, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-boolean v8, v9, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 2411
    :cond_2
    :goto_1
    add-int v2, p2, p3

    .line 2412
    .local v2, "limit":I
    const/4 v5, 0x0

    .line 2413
    .local v5, "wasDash":Z
    :try_start_0
    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    if-eqz v9, :cond_3

    .line 2414
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    .line 2416
    :cond_3
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->shouldIndent()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2417
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->indent()V

    .line 2419
    :cond_4
    iget-object v6, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    .line 2420
    .local v6, "writer":Ljava/io/Writer;
    const-string v9, "<!--"

    invoke-virtual {v6, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2422
    move v1, p2

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_8

    .line 2424
    if-eqz v5, :cond_5

    aget-char v9, p1, v1

    if-ne v9, v10, :cond_5

    .line 2426
    sub-int v9, v1, p2

    invoke-virtual {v6, p1, p2, v9}, Ljava/io/Writer;->write([CII)V

    .line 2427
    const-string v9, " -"

    invoke-virtual {v6, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2428
    add-int/lit8 p2, v1, 0x1

    .line 2430
    :cond_5
    aget-char v9, p1, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v9, v10, :cond_7

    move v5, v7

    .line 2422
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2403
    .end local v1    # "i":I
    .end local v2    # "limit":I
    .end local v5    # "wasDash":Z
    .end local v6    # "writer":Ljava/io/Writer;
    :cond_6
    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToStream;->m_needToCallStartDocument:Z

    if-eqz v9, :cond_2

    .line 2405
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->startDocumentInternal()V

    .line 2406
    iput-boolean v8, p0, Lorg/apache/xml/serializer/ToStream;->m_needToCallStartDocument:Z

    goto :goto_1

    .restart local v1    # "i":I
    .restart local v2    # "limit":I
    .restart local v5    # "wasDash":Z
    .restart local v6    # "writer":Ljava/io/Writer;
    :cond_7
    move v5, v8

    .line 2430
    goto :goto_3

    .line 2434
    :cond_8
    if-lez p3, :cond_a

    .line 2437
    sub-int v3, v2, p2

    .line 2438
    .local v3, "remainingChars":I
    if-lez v3, :cond_9

    .line 2439
    :try_start_1
    invoke-virtual {v6, p1, p2, v3}, Ljava/io/Writer;->write([CII)V

    .line 2441
    :cond_9
    add-int/lit8 v8, v2, -0x1

    aget-char v8, p1, v8

    if-ne v8, v10, :cond_a

    .line 2442
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/io/Writer;->write(I)V

    .line 2444
    .end local v3    # "remainingChars":I
    :cond_a
    const-string v8, "-->"

    invoke-virtual {v6, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2460
    iput-boolean v7, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    .line 2462
    iget-object v7, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v7, :cond_0

    .line 2463
    invoke-super {p0, p1, v4, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireCommentEvent([CII)V

    goto :goto_0

    .line 2446
    .end local v1    # "i":I
    .end local v6    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v0

    .line 2448
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Lorg/xml/sax/SAXException;

    invoke-direct {v7, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 303
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_inExternalDTD:Z

    if-eqz v2, :cond_0

    .line 322
    :goto_0
    return-void

    .line 307
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    .line 308
    .local v1, "writer":Ljava/io/Writer;
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->DTDprolog()V

    .line 310
    const-string v2, "<!ELEMENT "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 312
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 313
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 314
    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 315
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 317
    .end local v1    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public endCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2474
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    if-eqz v0, :cond_0

    .line 2475
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    .line 2476
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataStartCalled:Z

    .line 2477
    return-void
.end method

.method public endDTD()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2488
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_needToOutputDocTypeDecl:Z

    if-eqz v2, :cond_0

    .line 2490
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/xml/serializer/ToStream;->outputDocTypeDecl(Ljava/lang/String;Z)V

    .line 2491
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_needToOutputDocTypeDecl:Z

    .line 2493
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    .line 2494
    .local v1, "writer":Ljava/io/Writer;
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_inDoctype:Z

    if-nez v2, :cond_1

    .line 2495
    const-string v2, "]>"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2501
    :goto_0
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    .line 2508
    return-void

    .line 2498
    :cond_1
    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2503
    .end local v1    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v0

    .line 2505
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2277
    invoke-virtual {p0, v0, v0, p1}, Lorg/apache/xml/serializer/ToStream;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2207
    iget-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_inEntityRef:Z

    if-eqz v3, :cond_0

    .line 2267
    :goto_0
    return-void

    .line 2212
    :cond_0
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    iget-object v5, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v5, v5, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/apache/xml/serializer/NamespaceMappings;->popNamespaces(ILorg/xml/sax/ContentHandler;)V

    .line 2216
    :try_start_0
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    .line 2217
    .local v2, "writer":Ljava/io/Writer;
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v3, :cond_6

    .line 2219
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v3, :cond_1

    .line 2220
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-super {p0, v3}, Lorg/apache/xml/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    .line 2221
    :cond_1
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v3}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getLength()I

    move-result v1

    .line 2222
    .local v1, "nAttrs":I
    if-lez v1, :cond_2

    .line 2224
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    invoke-virtual {p0, v3, v1}, Lorg/apache/xml/serializer/ToStream;->processAttributes(Ljava/io/Writer;I)V

    .line 2226
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v3}, Lorg/apache/xml/serializer/AttributesImplSerializer;->clear()V

    .line 2228
    :cond_2
    iget-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_spaceBeforeClose:Z

    if-eqz v3, :cond_5

    .line 2229
    const-string v3, " />"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2256
    .end local v1    # "nAttrs":I
    :goto_1
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_doIndent:Z

    if-eqz v3, :cond_3

    .line 2258
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v3}, Lorg/apache/xml/serializer/ToStream$BoolStack;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    .line 2261
    :cond_3
    iput-boolean v4, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    .line 2264
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v3, :cond_4

    .line 2265
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireEndElem(Ljava/lang/String;)V

    .line 2266
    :cond_4
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_prev:Lorg/apache/xml/serializer/ElemContext;

    iput-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    goto :goto_0

    .line 2231
    .restart local v1    # "nAttrs":I
    :cond_5
    :try_start_1
    const-string v3, "/>"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2251
    .end local v1    # "nAttrs":I
    .end local v2    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v0

    .line 2253
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 2240
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "writer":Ljava/io/Writer;
    :cond_6
    :try_start_2
    iget-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    if-eqz v3, :cond_7

    .line 2241
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    .line 2243
    :cond_7
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->shouldIndent()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2244
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lorg/apache/xml/serializer/ToStream;->indent(I)V

    .line 2245
    :cond_8
    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 2246
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 2247
    invoke-virtual {v2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2248
    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 2258
    :cond_9
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v3}, Lorg/apache/xml/serializer/ToStream$BoolStack;->pop()Z

    move-result v3

    goto :goto_2
.end method

.method public endNonEscaping()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1211
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_disableOutputEscapingStates:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;->pop()Z

    .line 1212
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2520
    return-void
.end method

.method protected ensureAttributesNamespaceIsDeclared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "rawName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2857
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 2861
    const/4 v10, 0x0

    .line 2862
    .local v10, "index":I
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-gez v10, :cond_0

    const-string v2, ""

    .line 2867
    .local v2, "prefixFromRawName":Ljava/lang/String;
    :goto_0
    if-lez v10, :cond_2

    .line 2870
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v0, v2}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2871
    .local v11, "uri":Ljava/lang/String;
    if-eqz v11, :cond_1

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2875
    const/4 v2, 0x0

    .line 2914
    .end local v2    # "prefixFromRawName":Ljava/lang/String;
    .end local v10    # "index":I
    .end local v11    # "uri":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 2862
    .restart local v10    # "index":I
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2881
    .restart local v2    # "prefixFromRawName":Ljava/lang/String;
    .restart local v11    # "uri":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v2, p1, v0}, Lorg/apache/xml/serializer/ToStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2882
    const-string v1, "http://www.w3.org/2000/xmlns/"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xmlns:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CDATA"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/ToStream;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 2895
    .end local v11    # "uri":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v0, p1}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2896
    .local v5, "prefix":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 2900
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/NamespaceMappings;->generateNextPrefix()Ljava/lang/String;

    move-result-object v5

    .line 2901
    const/4 v0, 0x0

    invoke-virtual {p0, v5, p1, v0}, Lorg/apache/xml/serializer/ToStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2902
    const-string v4, "http://www.w3.org/2000/xmlns/"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CDATA"

    const/4 v9, 0x0

    move-object v3, p0

    move-object v8, p1

    invoke-virtual/range {v3 .. v9}, Lorg/apache/xml/serializer/ToStream;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    move-object v2, v5

    .line 2910
    goto :goto_1

    .line 2914
    .end local v2    # "prefixFromRawName":Ljava/lang/String;
    .end local v5    # "prefix":Ljava/lang/String;
    .end local v10    # "index":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method ensurePrefixIsDeclared(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "rawName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2921
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 2924
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .local v8, "index":I
    if-gez v8, :cond_2

    const/4 v9, 0x1

    .line 2925
    .local v9, "no_prefix":Z
    :goto_0
    if-eqz v9, :cond_3

    const-string v10, ""

    .line 2927
    .local v10, "prefix":Ljava/lang/String;
    :goto_1
    if-eqz v10, :cond_1

    .line 2929
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v0, v10}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2931
    .local v7, "foundURI":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2933
    :cond_0
    invoke-virtual {p0, v10, p1}, Lorg/apache/xml/serializer/ToStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 2938
    const-string v1, "http://www.w3.org/2000/xmlns/"

    if-eqz v9, :cond_4

    const-string v2, "xmlns"

    :goto_2
    if-eqz v9, :cond_5

    const-string v3, "xmlns"

    :goto_3
    const-string v4, "CDATA"

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/ToStream;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2949
    .end local v7    # "foundURI":Ljava/lang/String;
    .end local v8    # "index":I
    .end local v9    # "no_prefix":Z
    .end local v10    # "prefix":Ljava/lang/String;
    :cond_1
    return-void

    .restart local v8    # "index":I
    :cond_2
    move v9, v6

    .line 2924
    goto :goto_0

    .line 2925
    .restart local v9    # "no_prefix":Z
    :cond_3
    invoke-virtual {p2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .restart local v7    # "foundURI":Ljava/lang/String;
    .restart local v10    # "prefix":Ljava/lang/String;
    :cond_4
    move-object v2, v10

    .line 2938
    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xmlns:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method protected escapingNotNeeded(C)Z
    .locals 2
    .param p1, "ch"    # C

    .prologue
    .line 943
    const/16 v1, 0x7f

    if-ge p1, v1, :cond_2

    .line 947
    const/16 v1, 0x20

    if-ge p1, v1, :cond_0

    const/16 v1, 0xa

    if-eq v1, p1, :cond_0

    const/16 v1, 0xd

    if-eq v1, p1, :cond_0

    const/16 v1, 0x9

    if-ne v1, p1, :cond_1

    .line 949
    :cond_0
    const/4 v0, 0x1

    .line 956
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 951
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0

    .line 954
    .end local v0    # "ret":Z
    :cond_2
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    invoke-virtual {v1, p1}, Lorg/apache/xml/serializer/EncodingInfo;->isInEncoding(C)Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 915
    :try_start_0
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->DTDprolog()V

    .line 917
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    const-string v2, "<!ENTITY "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 918
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 919
    if-eqz p2, :cond_0

    .line 920
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    const-string v2, " PUBLIC \""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 921
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 928
    :goto_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    const-string v2, "\" >"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 929
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    .line 935
    :goto_1
    return-void

    .line 925
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    const-string v2, " SYSTEM \""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 926
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 930
    :catch_0
    move-exception v0

    .line 932
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected firePseudoAttributes()V
    .locals 8

    .prologue
    .line 3140
    iget-object v4, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v4, :cond_1

    .line 3145
    :try_start_0
    iget-object v4, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    invoke-virtual {v4}, Ljava/io/Writer;->flush()V

    .line 3148
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 3149
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lorg/apache/xml/serializer/ToStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v4}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getLength()I

    move-result v1

    .line 3150
    .local v1, "nAttrs":I
    if-lez v1, :cond_0

    .line 3154
    new-instance v3, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;

    invoke-direct {v3, p0, v2}, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;-><init>(Lorg/apache/xml/serializer/ToStream;Ljava/lang/StringBuffer;)V

    .line 3157
    .local v3, "writer":Ljava/io/Writer;
    invoke-virtual {p0, v3, v1}, Lorg/apache/xml/serializer/ToStream;->processAttributes(Ljava/io/Writer;I)V

    .line 3162
    .end local v3    # "writer":Ljava/io/Writer;
    :cond_0
    const/16 v4, 0x3e

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3166
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3167
    .local v0, "ch":[C
    iget-object v4, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/16 v5, 0xb

    const/4 v6, 0x0

    array-length v7, v0

    invoke-interface {v4, v5, v0, v6, v7}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(I[CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3182
    .end local v0    # "ch":[C
    .end local v1    # "nAttrs":I
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    :goto_0
    return-void

    .line 3177
    :catch_0
    move-exception v4

    goto :goto_0

    .line 3173
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public flushPending()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2957
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_0

    .line 2959
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->startDocumentInternal()V

    .line 2960
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_needToCallStartDocument:Z

    .line 2962
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_1

    .line 2964
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    .line 2965
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 2968
    :cond_1
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    if-eqz v0, :cond_2

    .line 2970
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    .line 2971
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    .line 2973
    :cond_2
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    if-eqz v0, :cond_3

    .line 2975
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2981
    :cond_3
    :goto_0
    return-void

    .line 2977
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final flushWriter()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    .line 242
    .local v2, "writer":Ljava/io/Writer;
    if-eqz v2, :cond_1

    .line 246
    :try_start_0
    instance-of v3, v2, Lorg/apache/xml/serializer/WriterToUTF8Buffered;

    if-eqz v3, :cond_0

    .line 248
    iget-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_shouldFlush:Z

    if-eqz v3, :cond_2

    .line 249
    move-object v0, v2

    check-cast v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flush()V

    .line 253
    :cond_0
    :goto_0
    instance-of v3, v2, Lorg/apache/xml/serializer/WriterToASCI;

    if-eqz v3, :cond_3

    .line 255
    iget-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_shouldFlush:Z

    if-eqz v3, :cond_1

    .line 256
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 271
    :cond_1
    :goto_1
    return-void

    .line 251
    :cond_2
    move-object v0, v2

    check-cast v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v1

    .line 268
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 263
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getIndentAmount()I
    .locals 1

    .prologue
    .line 2682
    iget v0, p0, Lorg/apache/xml/serializer/ToStream;->m_indentAmount:I

    return v0
.end method

.method public getOutputFormat()Ljava/util/Properties;
    .locals 7

    .prologue
    .line 618
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 620
    .local v0, "def":Ljava/util/Properties;
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->getOutputPropDefaultKeys()Ljava/util/Set;

    move-result-object v4

    .line 621
    .local v4, "s":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 622
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 623
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 624
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/apache/xml/serializer/ToStream;->getOutputPropertyDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 625
    .local v5, "val":Ljava/lang/String;
    invoke-virtual {v0, v2, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 629
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "val":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3, v0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 631
    .local v3, "props":Ljava/util/Properties;
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->getOutputPropKeys()Ljava/util/Set;

    move-result-object v4

    .line 632
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 633
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 634
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 635
    .restart local v2    # "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/apache/xml/serializer/ToStream;->getOutputPropertyNonDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 636
    .restart local v5    # "val":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 637
    invoke-virtual {v3, v2, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 640
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "val":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2540
    if-nez p3, :cond_0

    .line 2543
    :goto_0
    return-void

    .line 2542
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->characters([CII)V

    goto :goto_0
.end method

.method protected indent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 806
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToStream;->indent(I)V

    .line 807
    return-void
.end method

.method protected indent(I)V
    .locals 1
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 789
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    if-eqz v0, :cond_0

    .line 790
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->outputLineSep()V

    .line 795
    :cond_0
    iget v0, p0, Lorg/apache/xml/serializer/ToStream;->m_indentAmount:I

    if-lez v0, :cond_1

    .line 796
    iget v0, p0, Lorg/apache/xml/serializer/ToStream;->m_indentAmount:I

    mul-int/2addr v0, p1

    invoke-direct {p0, v0}, Lorg/apache/xml/serializer/ToStream;->printSpace(I)V

    .line 798
    :cond_1
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 341
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_inExternalDTD:Z

    if-eqz v1, :cond_0

    .line 353
    :goto_0
    return-void

    .line 345
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->DTDprolog()V

    .line 346
    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/serializer/ToStream;->outputEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pubID"    # Ljava/lang/String;
    .param p3, "sysID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3492
    :try_start_0
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->DTDprolog()V

    .line 3494
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    const-string v2, "<!NOTATION "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3495
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3496
    if-eqz p2, :cond_0

    .line 3497
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    const-string v2, " PUBLIC \""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3498
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3505
    :goto_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    const-string v2, "\" >"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3506
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    .line 3511
    :goto_1
    return-void

    .line 3502
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    const-string v2, " SYSTEM \""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3503
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3507
    :catch_0
    move-exception v0

    .line 3509
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method outputDocTypeDecl(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "closeDecl"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2008
    iget-boolean v4, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    if-eqz v4, :cond_0

    .line 2009
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    .line 2012
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    .line 2013
    .local v3, "writer":Ljava/io/Writer;
    const-string v4, "<!DOCTYPE "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2014
    invoke-virtual {v3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2016
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->getDoctypePublic()Ljava/lang/String;

    move-result-object v0

    .line 2017
    .local v0, "doctypePublic":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2019
    const-string v4, " PUBLIC \""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2020
    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2021
    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 2024
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v1

    .line 2025
    .local v1, "doctypeSystem":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 2027
    if-nez v0, :cond_3

    .line 2028
    const-string v4, " SYSTEM \""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2032
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2034
    if-eqz p2, :cond_4

    .line 2036
    const-string v4, "\">"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2037
    iget-object v4, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v5, 0x0

    iget v6, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/Writer;->write([CII)V

    .line 2038
    const/4 p2, 0x0

    .line 2048
    :cond_2
    :goto_1
    return-void

    .line 2030
    :cond_3
    const-string v4, " \""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2044
    .end local v0    # "doctypePublic":Ljava/lang/String;
    .end local v1    # "doctypeSystem":Ljava/lang/String;
    .end local v3    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v2

    .line 2046
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 2041
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "doctypePublic":Ljava/lang/String;
    .restart local v1    # "doctypeSystem":Ljava/lang/String;
    .restart local v3    # "writer":Ljava/io/Writer;
    :cond_4
    const/16 v4, 0x22

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method outputEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    .line 366
    .local v0, "writer":Ljava/io/Writer;
    const-string v1, "<!ENTITY "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 368
    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 370
    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    .line 372
    return-void
.end method

.method protected final outputLineSep()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    .line 383
    return-void
.end method

.method public processAttributes(Ljava/io/Writer;I)V
    .locals 5
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "nAttrs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2070
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 2071
    .local v0, "encoding":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 2074
    iget-object v4, p0, Lorg/apache/xml/serializer/ToStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v4, v1}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getQName(I)Ljava/lang/String;

    move-result-object v2

    .line 2075
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/xml/serializer/ToStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v4, v1}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 2076
    .local v3, "value":Ljava/lang/String;
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    .line 2077
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2078
    const-string v4, "=\""

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2079
    invoke-virtual {p0, p1, v3, v0}, Lorg/apache/xml/serializer/ToStream;->writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    const/16 v4, 0x22

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    .line 2071
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2082
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public reset()Z
    .locals 2

    .prologue
    .line 3249
    const/4 v0, 0x0

    .line 3250
    .local v0, "wasReset":Z
    invoke-super {p0}, Lorg/apache/xml/serializer/SerializerBase;->reset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3252
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->resetToStream()V

    .line 3253
    const/4 v0, 0x1

    .line 3255
    :cond_0
    return v0
.end method

.method public serialize(Lorg/w3c/dom/Node;)V
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    :try_start_0
    new-instance v1, Lorg/apache/xml/serializer/TreeWalker;

    invoke-direct {v1, p0}, Lorg/apache/xml/serializer/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 221
    .local v1, "walker":Lorg/apache/xml/serializer/TreeWalker;
    invoke-virtual {v1, p1}, Lorg/apache/xml/serializer/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    return-void

    .line 223
    .end local v1    # "walker":Lorg/apache/xml/serializer/TreeWalker;
    :catch_0
    move-exception v0

    .line 225
    .local v0, "se":Lorg/xml/sax/SAXException;
    new-instance v2, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    invoke-direct {v2, v0}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public setCdataSectionElements(Ljava/util/Vector;)V
    .locals 6
    .param p1, "URI_and_localNames"    # Ljava/util/Vector;

    .prologue
    .line 2812
    if-eqz p1, :cond_3

    .line 2814
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .line 2815
    .local v1, "len":I
    if-lez v1, :cond_3

    .line 2817
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 2818
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 2821
    if-eqz v0, :cond_0

    .line 2822
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2823
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2824
    .local v4, "uri":Ljava/lang/String;
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2826
    .local v2, "localName":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 2829
    const/16 v5, 0x7b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2830
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2831
    const/16 v5, 0x7d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2833
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2818
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2835
    .end local v2    # "localName":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/xml/serializer/ToStream;->m_StringOfCDATASections:Ljava/lang/String;

    .line 2838
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_3
    iget-object v5, p0, Lorg/apache/xml/serializer/ToStream;->m_StringOfCDATASections:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/apache/xml/serializer/ToStream;->initCdataElems(Ljava/lang/String;)V

    .line 2839
    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "ch"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 2988
    return-void
.end method

.method public setDTDEntityExpansion(Z)V
    .locals 0
    .param p1, "expand"    # Z

    .prologue
    .line 3570
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToStream;->m_expandDTDEntities:Z

    .line 3571
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 3300
    const-string v0, "encoding"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/ToStream;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3301
    return-void
.end method

.method public setEscaping(Z)Z
    .locals 1
    .param p1, "escape"    # Z

    .prologue
    .line 771
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_escaping:Z

    .line 772
    .local v0, "temp":Z
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToStream;->m_escaping:Z

    .line 773
    return v0
.end method

.method public setIndentAmount(I)V
    .locals 0
    .param p1, "m_indentAmount"    # I

    .prologue
    .line 2692
    iput p1, p0, Lorg/apache/xml/serializer/ToStream;->m_indentAmount:I

    .line 2693
    return-void
.end method

.method public setLineSepUse(Z)Z
    .locals 1
    .param p1, "use_sytem_line_break"    # Z

    .prologue
    .line 691
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    .line 692
    .local v0, "oldValue":Z
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    .line 693
    return v0
.end method

.method public setNewLine([C)V
    .locals 1
    .param p1, "eolChars"    # [C

    .prologue
    .line 3578
    iput-object p1, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    .line 3579
    array-length v0, p1

    iput v0, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    .line 3580
    return-void
.end method

.method public setOutputFormat(Ljava/util/Properties;)V
    .locals 8
    .param p1, "format"    # Ljava/util/Properties;

    .prologue
    .line 564
    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToStream;->m_shouldFlush:Z

    .line 566
    .local v5, "shouldFlush":Z
    if-eqz p1, :cond_2

    .line 573
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v4

    .line 574
    .local v4, "propNames":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 576
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 578
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 580
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 581
    .local v1, "explicitValue":Ljava/lang/String;
    if-nez v1, :cond_1

    if-eqz v6, :cond_1

    .line 583
    invoke-virtual {p0, v2, v6}, Lorg/apache/xml/serializer/ToStream;->setOutputPropertyDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :cond_1
    if-eqz v1, :cond_0

    .line 587
    invoke-virtual {p0, v2, v1}, Lorg/apache/xml/serializer/ToStream;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 594
    .end local v1    # "explicitValue":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "propNames":Ljava/util/Enumeration;
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    const-string v7, "{http://xml.apache.org/xalan}entities"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 597
    .local v0, "entitiesFileName":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 600
    const-string v7, "method"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 603
    .local v3, "method":Ljava/lang/String;
    invoke-static {v0, v3}, Lorg/apache/xml/serializer/CharInfo;->getCharInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/CharInfo;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    .line 609
    .end local v3    # "method":Ljava/lang/String;
    :cond_3
    iput-boolean v5, p0, Lorg/apache/xml/serializer/ToStream;->m_shouldFlush:Z

    .line 610
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "output"    # Ljava/io/OutputStream;

    .prologue
    .line 709
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/xml/serializer/ToStream;->setOutputStreamInternal(Ljava/io/OutputStream;Z)V

    .line 710
    return-void
.end method

.method setProp(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 22
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;
    .param p3, "defaultVal"    # Z

    .prologue
    .line 386
    if-eqz p2, :cond_1

    .line 389
    invoke-static/range {p1 .. p1}, Lorg/apache/xml/serializer/ToStream;->getFirstCharLocName(Ljava/lang/String;)C

    move-result v7

    .line 390
    .local v7, "first":C
    packed-switch v7, :pswitch_data_0

    .line 549
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super/range {p0 .. p3}, Lorg/apache/xml/serializer/SerializerBase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 551
    .end local v7    # "first":C
    :cond_1
    return-void

    .line 392
    .restart local v7    # "first":C
    :pswitch_1
    const-string v18, "cdata-section-elements"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 393
    move-object/from16 v4, p2

    .line 394
    .local v4, "cdataSectionNames":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/xml/serializer/ToStream;->addCdataSectionElements(Ljava/lang/String;)V

    goto :goto_0

    .line 398
    .end local v4    # "cdataSectionNames":Ljava/lang/String;
    :pswitch_2
    const-string v18, "doctype-system"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 399
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/ToStream;->m_doctypeSystem:Ljava/lang/String;

    goto :goto_0

    .line 400
    :cond_2
    const-string v18, "doctype-public"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 401
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/ToStream;->m_doctypePublic:Ljava/lang/String;

    .line 402
    const-string v18, "-//W3C//DTD XHTML"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 403
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/serializer/ToStream;->m_spaceBeforeClose:Z

    goto :goto_0

    .line 407
    :pswitch_3
    move-object/from16 v10, p2

    .line 408
    .local v10, "newEncoding":Ljava/lang/String;
    const-string v18, "encoding"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 409
    invoke-static/range {p2 .. p2}, Lorg/apache/xml/serializer/Encodings;->getMimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 410
    .local v15, "possible_encoding":Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 414
    const-string v18, "mime-name"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p3

    invoke-super {v0, v1, v15, v2}, Lorg/apache/xml/serializer/SerializerBase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 417
    :cond_3
    const-string v18, "encoding"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToStream;->getOutputPropertyNonDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 418
    .local v13, "oldExplicitEncoding":Ljava/lang/String;
    const-string v18, "encoding"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToStream;->getOutputPropertyDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 419
    .local v11, "oldDefaultEncoding":Ljava/lang/String;
    if-eqz p3, :cond_4

    if-eqz v11, :cond_5

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    :cond_4
    if-nez p3, :cond_0

    if-eqz v13, :cond_5

    invoke-virtual {v13, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 424
    :cond_5
    invoke-static {v10}, Lorg/apache/xml/serializer/Encodings;->getEncodingInfo(Ljava/lang/String;)Lorg/apache/xml/serializer/EncodingInfo;

    move-result-object v5

    .line 425
    .local v5, "encodingInfo":Lorg/apache/xml/serializer/EncodingInfo;
    if-eqz v10, :cond_6

    iget-object v0, v5, Lorg/apache/xml/serializer/EncodingInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    .line 429
    sget-object v18, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v19, "ER_ENCODING_NOT_SUPPORTED"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v10, v20, v21

    invoke-virtual/range {v18 .. v20}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 432
    .local v8, "msg":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Warning: encoding \""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\" not supported, using "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "UTF-8"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 437
    .local v9, "msg2":Ljava/lang/String;
    :try_start_0
    invoke-super/range {p0 .. p0}, Lorg/apache/xml/serializer/SerializerBase;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v16

    .line 438
    .local v16, "tran":Ljavax/xml/transform/Transformer;
    if-eqz v16, :cond_b

    .line 439
    invoke-virtual/range {v16 .. v16}, Ljavax/xml/transform/Transformer;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v6

    .line 442
    .local v6, "errHandler":Ljavax/xml/transform/ErrorListener;
    if-eqz v6, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/ToStream;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    .line 444
    new-instance v18, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/ToStream;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v8, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    .line 447
    new-instance v18, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/ToStream;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v9, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .end local v6    # "errHandler":Ljavax/xml/transform/ErrorListener;
    .end local v16    # "tran":Ljavax/xml/transform/Transformer;
    :goto_1
    const-string v10, "UTF-8"

    .line 463
    const-string p2, "UTF-8"

    .line 464
    invoke-static {v10}, Lorg/apache/xml/serializer/Encodings;->getEncodingInfo(Ljava/lang/String;)Lorg/apache/xml/serializer/EncodingInfo;

    move-result-object v5

    .line 473
    .end local v8    # "msg":Ljava/lang/String;
    .end local v9    # "msg2":Ljava/lang/String;
    :cond_6
    if-eqz p3, :cond_7

    if-nez v13, :cond_0

    .line 474
    :cond_7
    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    .line 475
    if-eqz v10, :cond_8

    .line 476
    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/serializer/ToStream;->m_isUTF8:Z

    .line 479
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/serializer/ToStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    .line 480
    .local v14, "os":Ljava/io/OutputStream;
    if-eqz v14, :cond_0

    .line 481
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/serializer/ToStream;->getWriter()Ljava/io/Writer;

    move-result-object v17

    .line 486
    .local v17, "w":Ljava/io/Writer;
    const-string v18, "encoding"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToStream;->getOutputProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 487
    .local v12, "oldEncoding":Ljava/lang/String;
    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ToStream;->m_writer_set_by_user:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    :cond_9
    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 493
    invoke-super/range {p0 .. p3}, Lorg/apache/xml/serializer/SerializerBase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 494
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v14, v1}, Lorg/apache/xml/serializer/ToStream;->setOutputStreamInternal(Ljava/io/OutputStream;Z)V

    goto/16 :goto_0

    .line 451
    .end local v12    # "oldEncoding":Ljava/lang/String;
    .end local v14    # "os":Ljava/io/OutputStream;
    .end local v17    # "w":Ljava/io/Writer;
    .restart local v6    # "errHandler":Ljavax/xml/transform/ErrorListener;
    .restart local v8    # "msg":Ljava/lang/String;
    .restart local v9    # "msg2":Ljava/lang/String;
    .restart local v16    # "tran":Ljavax/xml/transform/Transformer;
    :cond_a
    :try_start_1
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 452
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 458
    .end local v6    # "errHandler":Ljavax/xml/transform/ErrorListener;
    .end local v16    # "tran":Ljavax/xml/transform/Transformer;
    :catch_0
    move-exception v18

    goto :goto_1

    .line 455
    .restart local v16    # "tran":Ljavax/xml/transform/Transformer;
    :cond_b
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 456
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 502
    .end local v5    # "encodingInfo":Lorg/apache/xml/serializer/EncodingInfo;
    .end local v8    # "msg":Ljava/lang/String;
    .end local v9    # "msg2":Ljava/lang/String;
    .end local v10    # "newEncoding":Ljava/lang/String;
    .end local v11    # "oldDefaultEncoding":Ljava/lang/String;
    .end local v13    # "oldExplicitEncoding":Ljava/lang/String;
    .end local v15    # "possible_encoding":Ljava/lang/String;
    .end local v16    # "tran":Ljavax/xml/transform/Transformer;
    :pswitch_4
    const-string v18, "{http://xml.apache.org/xalan}indent-amount"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 503
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToStream;->setIndentAmount(I)V

    goto/16 :goto_0

    .line 504
    :cond_c
    const-string v18, "indent"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 505
    const-string v18, "yes"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    const/4 v3, 0x1

    .line 506
    .local v3, "b":Z
    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/xml/serializer/ToStream;->m_doIndent:Z

    goto/16 :goto_0

    .line 505
    .end local v3    # "b":Z
    :cond_d
    const/4 v3, 0x0

    goto :goto_2

    .line 511
    :pswitch_5
    const-string v18, "{http://xml.apache.org/xalan}line-separator"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 512
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    goto/16 :goto_0

    .line 518
    :pswitch_6
    const-string v18, "media-type"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 519
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/ToStream;->m_mediatype:Ljava/lang/String;

    goto/16 :goto_0

    .line 523
    :pswitch_7
    const-string v18, "omit-xml-declaration"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 524
    const-string v18, "yes"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    const/4 v3, 0x1

    .line 525
    .restart local v3    # "b":Z
    :goto_3
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/xml/serializer/ToStream;->m_shouldNotWriteXMLHeader:Z

    goto/16 :goto_0

    .line 524
    .end local v3    # "b":Z
    :cond_e
    const/4 v3, 0x0

    goto :goto_3

    .line 530
    :pswitch_8
    const-string v18, "standalone"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 531
    if-eqz p3, :cond_f

    .line 532
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToStream;->setStandaloneInternal(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 534
    :cond_f
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/serializer/ToStream;->m_standaloneWasSpecified:Z

    .line 535
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToStream;->setStandaloneInternal(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 541
    :pswitch_9
    const-string v18, "version"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 542
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/ToStream;->m_version:Ljava/lang/String;

    goto/16 :goto_0

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public setTransformer(Ljavax/xml/transform/Transformer;)V
    .locals 3
    .param p1, "transformer"    # Ljavax/xml/transform/Transformer;

    .prologue
    .line 3233
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setTransformer(Ljavax/xml/transform/Transformer;)V

    .line 3234
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    instance-of v0, v0, Lorg/apache/xml/serializer/SerializerTraceWriter;

    if-nez v0, :cond_0

    .line 3236
    new-instance v0, Lorg/apache/xml/serializer/SerializerTraceWriter;

    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    invoke-direct {v0, v1, v2}, Lorg/apache/xml/serializer/SerializerTraceWriter;-><init>(Ljava/io/Writer;Lorg/apache/xml/serializer/SerializerTrace;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/xml/serializer/ToStream;->setWriterInternal(Ljava/io/Writer;Z)V

    .line 3239
    :cond_0
    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 652
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/xml/serializer/ToStream;->setWriterInternal(Ljava/io/Writer;Z)V

    .line 653
    return-void
.end method

.method protected shouldIndent()Z
    .locals 1

    .prologue
    .line 2703
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_doIndent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2558
    return-void
.end method

.method public startCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataStartCalled:Z

    .line 2569
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2669
    invoke-virtual {p0, p3}, Lorg/apache/xml/serializer/ToStream;->setDoctypeSystem(Ljava/lang/String;)V

    .line 2670
    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/ToStream;->setDoctypePublic(Ljava/lang/String;)V

    .line 2672
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-object p1, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    .line 2673
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_inDoctype:Z

    .line 2674
    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1995
    invoke-virtual {p0, v0, v0, p1, v0}, Lorg/apache/xml/serializer/ToStream;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 1996
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "elementNamespaceURI"    # Ljava/lang/String;
    .param p2, "elementLocalName"    # Ljava/lang/String;
    .param p3, "elementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1990
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xml/serializer/ToStream;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 1991
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1902
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_inEntityRef:Z

    if-eqz v2, :cond_1

    .line 1961
    :cond_0
    :goto_0
    return-void

    .line 1905
    :cond_1
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_needToCallStartDocument:Z

    if-eqz v2, :cond_9

    .line 1907
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->startDocumentInternal()V

    .line 1908
    iput-boolean v4, p0, Lorg/apache/xml/serializer/ToStream;->m_needToCallStartDocument:Z

    .line 1909
    iput-boolean v4, p0, Lorg/apache/xml/serializer/ToStream;->m_docIsEmpty:Z

    .line 1915
    :cond_2
    :goto_1
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_needToOutputDocTypeDecl:Z

    if-eqz v2, :cond_4

    .line 1916
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1917
    const/4 v2, 0x1

    invoke-virtual {p0, p3, v2}, Lorg/apache/xml/serializer/ToStream;->outputDocTypeDecl(Ljava/lang/String;Z)V

    .line 1919
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_needToOutputDocTypeDecl:Z

    .line 1925
    :cond_4
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v2, :cond_5

    .line 1927
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    .line 1928
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 1931
    :cond_5
    if-eqz p1, :cond_6

    .line 1932
    invoke-virtual {p0, p1, p3}, Lorg/apache/xml/serializer/ToStream;->ensurePrefixIsDeclared(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    :cond_6
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    .line 1936
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->shouldIndent()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    if-eqz v2, :cond_7

    .line 1938
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->indent()V

    .line 1941
    :cond_7
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    .line 1943
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    .line 1944
    .local v1, "writer":Ljava/io/Writer;
    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 1945
    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1953
    if-eqz p4, :cond_8

    .line 1954
    invoke-virtual {p0, p4}, Lorg/apache/xml/serializer/ToStream;->addAttributes(Lorg/xml/sax/Attributes;)V

    .line 1956
    :cond_8
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    invoke-virtual {v2, p1, p2, p3}, Lorg/apache/xml/serializer/ElemContext;->push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/ElemContext;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    .line 1957
    iput-boolean v4, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    .line 1959
    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v2, :cond_0

    .line 1960
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->firePseudoAttributes()V

    goto :goto_0

    .line 1911
    .end local v1    # "writer":Ljava/io/Writer;
    :cond_9
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    if-eqz v2, :cond_2

    .line 1912
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    goto :goto_1

    .line 1947
    :catch_0
    move-exception v0

    .line 1949
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 2588
    const-string v0, "[dtd]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2589
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_inExternalDTD:Z

    .line 2591
    :cond_0
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_expandDTDEntities:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_inExternalDTD:Z

    if-nez v0, :cond_1

    .line 2596
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->startNonEscaping()V

    .line 2597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToStream;->characters(Ljava/lang/String;)V

    .line 2598
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->endNonEscaping()V

    .line 2601
    :cond_1
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_inEntityRef:Z

    .line 2602
    return-void
.end method

.method public startNonEscaping()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1226
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_disableOutputEscapingStates:Lorg/apache/xml/serializer/ToStream$BoolStack;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToStream$BoolStack;->push(Z)Z

    .line 1227
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2299
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/serializer/ToStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2300
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 12
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "shouldFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2338
    if-eqz p3, :cond_1

    .line 2340
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->flushPending()V

    .line 2342
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    add-int/lit8 v10, v0, 0x1

    .line 2349
    .local v10, "pushDepth":I
    :goto_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v0, p1, p2, v10}, Lorg/apache/xml/serializer/NamespaceMappings;->pushNamespace(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v11

    .line 2351
    .local v11, "pushed":Z
    if-eqz v11, :cond_0

    .line 2359
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2361
    const-string v2, "xmlns"

    .line 2362
    .local v2, "name":Ljava/lang/String;
    const-string v1, "http://www.w3.org/2000/xmlns/"

    const-string v4, "CDATA"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/ToStream;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2379
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    :goto_1
    return v11

    .line 2347
    .end local v10    # "pushDepth":I
    .end local v11    # "pushed":Z
    :cond_1
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v10, v0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    .restart local v10    # "pushDepth":I
    goto :goto_0

    .line 2366
    .restart local v11    # "pushed":Z
    :cond_2
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2375
    .restart local v2    # "name":Ljava/lang/String;
    const-string v4, "http://www.w3.org/2000/xmlns/"

    const-string v7, "CDATA"

    const/4 v9, 0x0

    move-object v3, p0

    move-object v5, p1

    move-object v6, v2

    move-object v8, p2

    invoke-virtual/range {v3 .. v9}, Lorg/apache/xml/serializer/ToStream;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_1
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pubID"    # Ljava/lang/String;
    .param p3, "sysID"    # Ljava/lang/String;
    .param p4, "notationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3522
    :try_start_0
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;->DTDprolog()V

    .line 3524
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    const-string v2, "<!ENTITY "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3525
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3526
    if-eqz p2, :cond_0

    .line 3527
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    const-string v2, " PUBLIC \""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3528
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3535
    :goto_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    const-string v2, "\" NDATA "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3536
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    invoke-virtual {v1, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3537
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    const-string v2, " >"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3538
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    .line 3543
    :goto_1
    return-void

    .line 3532
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    const-string v2, " SYSTEM \""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3533
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3539
    :catch_0
    move-exception v0

    .line 3541
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x3b

    const/4 v6, 0x0

    .line 2099
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 2100
    .local v5, "len":I
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_attrBuff:[C

    array-length v0, v0

    if-le v5, v0, :cond_0

    .line 2102
    mul-int/lit8 v0, v5, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_attrBuff:[C

    .line 2104
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_attrBuff:[C

    invoke-virtual {p2, v6, v5, v0, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 2105
    iget-object v4, p0, Lorg/apache/xml/serializer/ToStream;->m_attrBuff:[C

    .line 2107
    .local v4, "stringChars":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_7

    .line 2109
    aget-char v2, v4, v3

    .line 2111
    .local v2, "ch":C
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {v0, v2}, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2115
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/xml/serializer/ToStream;->accumDefaultEscape(Ljava/io/Writer;CI[CIZZ)I

    .line 2107
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2118
    :cond_1
    if-ltz v2, :cond_2

    const/16 v0, 0x1f

    if-gt v2, v0, :cond_2

    .line 2133
    packed-switch v2, :pswitch_data_0

    .line 2145
    :pswitch_0
    const-string v0, "&#"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2146
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2147
    invoke-virtual {p1, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 2136
    :pswitch_1
    const-string v0, "&#9;"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 2139
    :pswitch_2
    const-string v0, "&#10;"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 2142
    :pswitch_3
    const-string v0, "&#13;"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 2152
    :cond_2
    const/16 v0, 0x7f

    if-ge v2, v0, :cond_3

    .line 2155
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 2157
    :cond_3
    const/16 v0, 0x9f

    if-gt v2, v0, :cond_4

    .line 2160
    const-string v0, "&#"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2161
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2162
    invoke-virtual {p1, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 2164
    :cond_4
    const/16 v0, 0x2028

    if-ne v2, v0, :cond_5

    .line 2166
    const-string v0, "&#8232;"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 2168
    :cond_5
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    invoke-virtual {v0, v2}, Lorg/apache/xml/serializer/EncodingInfo;->isInEncoding(C)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2172
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 2179
    :cond_6
    const-string v0, "&#"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2180
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2181
    invoke-virtual {p1, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 2186
    .end local v2    # "ch":C
    :cond_7
    return-void

    .line 2133
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method writeNormalizedChars([CIIZZ)V
    .locals 10
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "isCData"    # Z
    .param p5, "useSystemLineSeparator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5d

    const/16 v8, 0x3b

    .line 1115
    iget-object v4, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    .line 1116
    .local v4, "writer":Ljava/io/Writer;
    add-int v1, p2, p3

    .line 1118
    .local v1, "end":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_a

    .line 1120
    aget-char v0, p1, v2

    .line 1122
    .local v0, "c":C
    const/16 v5, 0xa

    if-ne v5, v0, :cond_0

    if-eqz p5, :cond_0

    .line 1124
    iget-object v5, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/Writer;->write([CII)V

    .line 1118
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1126
    :cond_0
    if-eqz p4, :cond_3

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToStream;->escapingNotNeeded(C)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1129
    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    if-eqz v5, :cond_1

    .line 1130
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    .line 1133
    :cond_1
    invoke-static {v0}, Lorg/apache/xml/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1135
    invoke-virtual {p0, v0, p1, v2, v1}, Lorg/apache/xml/serializer/ToStream;->writeUTF16Surrogate(C[CII)I

    .line 1136
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1140
    :cond_2
    const-string v5, "&#"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1142
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1144
    .local v3, "intStr":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {v4, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 1155
    .end local v3    # "intStr":Ljava/lang/String;
    :cond_3
    if-eqz p4, :cond_4

    add-int/lit8 v5, v1, -0x2

    if-ge v2, v5, :cond_4

    if-ne v9, v0, :cond_4

    add-int/lit8 v5, v2, 0x1

    aget-char v5, p1, v5

    if-ne v9, v5, :cond_4

    const/16 v5, 0x3e

    add-int/lit8 v6, v2, 0x2

    aget-char v6, p1, v6

    if-ne v5, v6, :cond_4

    .line 1162
    const-string v5, "]]]]><![CDATA[>"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1164
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 1168
    :cond_4
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToStream;->escapingNotNeeded(C)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1170
    if-eqz p4, :cond_5

    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    if-nez v5, :cond_5

    .line 1172
    const-string v5, "<![CDATA["

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1173
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    .line 1175
    :cond_5
    invoke-virtual {v4, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 1179
    :cond_6
    invoke-static {v0}, Lorg/apache/xml/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1181
    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    if-eqz v5, :cond_7

    .line 1182
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    .line 1183
    :cond_7
    invoke-virtual {p0, v0, p1, v2, v1}, Lorg/apache/xml/serializer/ToStream;->writeUTF16Surrogate(C[CII)I

    .line 1184
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1188
    :cond_8
    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataTagOpen:Z

    if-eqz v5, :cond_9

    .line 1189
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    .line 1190
    :cond_9
    const-string v5, "&#"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1192
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1194
    .restart local v3    # "intStr":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {v4, v8}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 1200
    .end local v0    # "c":C
    .end local v3    # "intStr":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method protected writeUTF16Surrogate(C[CII)I
    .locals 13
    .param p1, "c"    # C
    .param p2, "ch"    # [C
    .param p3, "i"    # I
    .param p4, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 986
    const/4 v1, 0x0

    .line 987
    .local v1, "codePoint":I
    add-int/lit8 v6, p3, 0x1

    move/from16 v0, p4

    if-lt v6, v0, :cond_0

    .line 989
    new-instance v6, Ljava/io/IOException;

    sget-object v7, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v8, "ER_INVALID_UTF16_SURROGATE"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 995
    :cond_0
    move v3, p1

    .line 996
    .local v3, "high":C
    add-int/lit8 v6, p3, 0x1

    aget-char v4, p2, v6

    .line 997
    .local v4, "low":C
    invoke-static {v4}, Lorg/apache/xml/serializer/Encodings;->isLowUTF16Surrogate(C)Z

    move-result v6

    if-nez v6, :cond_1

    .line 998
    new-instance v6, Ljava/io/IOException;

    sget-object v7, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v8, "ER_INVALID_UTF16_SURROGATE"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1007
    :cond_1
    iget-object v5, p0, Lorg/apache/xml/serializer/ToStream;->m_writer:Ljava/io/Writer;

    .line 1010
    .local v5, "writer":Ljava/io/Writer;
    iget-object v6, p0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    invoke-virtual {v6, p1, v4}, Lorg/apache/xml/serializer/EncodingInfo;->isInEncoding(CC)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1013
    const/4 v6, 0x2

    move/from16 v0, p3

    invoke-virtual {v5, p2, v0, v6}, Ljava/io/Writer;->write([CII)V

    .line 1038
    :goto_0
    return v1

    .line 1019
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->getEncoding()Ljava/lang/String;

    move-result-object v2

    .line 1020
    .local v2, "encoding":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1024
    invoke-static {v3, v4}, Lorg/apache/xml/serializer/Encodings;->toCodePoint(CC)I

    move-result v1

    .line 1026
    const/16 v6, 0x26

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(I)V

    .line 1027
    const/16 v6, 0x23

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(I)V

    .line 1028
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1029
    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 1034
    :cond_3
    const/4 v6, 0x2

    move/from16 v0, p3

    invoke-virtual {v5, p2, v0, v6}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method
