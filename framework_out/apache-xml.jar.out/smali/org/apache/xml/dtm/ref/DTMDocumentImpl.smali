.class public Lorg/apache/xml/dtm/ref/DTMDocumentImpl;
.super Ljava/lang/Object;
.source "DTMDocumentImpl.java"

# interfaces
.implements Lorg/apache/xml/dtm/DTM;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field protected static final DOCHANDLE_MASK:I = -0x800000

.field protected static final DOCHANDLE_SHIFT:B = 0x16t

.field protected static final NODEHANDLE_MASK:I = 0x7fffff

.field private static final fixednames:[Ljava/lang/String;


# instance fields
.field private final DEBUG:Z

.field currentParent:I

.field private done:Z

.field gotslot:[I

.field private m_char:Lorg/apache/xml/utils/FastStringBuffer;

.field private m_char_current_start:I

.field protected m_currentNode:I

.field m_docElement:I

.field m_docHandle:I

.field protected m_documentBaseURI:Ljava/lang/String;

.field private m_expandedNames:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

.field private m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

.field m_isError:Z

.field private m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

.field private m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

.field private m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

.field private m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

.field nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

.field previousSibling:I

.field private previousSiblingWasParent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1586
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v2, "#text"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "#cdata_section"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v2, "#comment"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "#document"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v2, "#document-fragment"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    sput-object v0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->fixednames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;)V
    .locals 3
    .param p1, "mgr"    # Lorg/apache/xml/dtm/DTMManager;
    .param p2, "documentNumber"    # I
    .param p3, "whiteSpaceFilter"    # Lorg/apache/xml/dtm/DTMWSFilter;
    .param p4, "xstringfactory"    # Lorg/apache/xml/utils/XMLStringFactory;

    .prologue
    const/4 v2, 0x4

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    .line 77
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docElement:I

    .line 80
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    .line 81
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    .line 82
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_currentNode:I

    .line 88
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    .line 90
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    .line 93
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->done:Z

    .line 94
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_isError:Z

    .line 96
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->DEBUG:Z

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    .line 121
    new-instance v0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-direct {v0, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    .line 125
    new-instance v0, Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    .line 128
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    .line 135
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    .line 136
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    .line 137
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    .line 145
    new-instance v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_expandedNames:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    .line 164
    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->initDocument(I)V

    .line 165
    iput-object p4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

    .line 166
    return-void
.end method

.method private final appendNode(IIII)I
    .locals 4
    .param p1, "w0"    # I
    .param p2, "w1"    # I
    .param p3, "w2"    # I
    .param p4, "w3"    # I

    .prologue
    .line 209
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->appendSlot(IIII)I

    move-result v0

    .line 213
    .local v0, "slotnumber":I
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->writeEntry(III)V

    .line 216
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    .line 218
    return v0
.end method

.method private processAccumulatedText()V
    .locals 3

    .prologue
    .line 419
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v1}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v0

    .line 420
    .local v0, "len":I
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    if-eq v0, v1, :cond_0

    .line 423
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendTextChild(II)V

    .line 424
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    .line 426
    :cond_0
    return-void
.end method


# virtual methods
.method appendAttribute(IIIZII)V
    .locals 8
    .param p1, "namespaceIndex"    # I
    .param p2, "localNameIndex"    # I
    .param p3, "prefixIndex"    # I
    .param p4, "isID"    # Z
    .param p5, "m_char_current_start"    # I
    .param p6, "contentLength"    # I

    .prologue
    .line 2237
    shl-int/lit8 v5, p1, 0x10

    or-int/lit8 v1, v5, 0x2

    .line 2240
    .local v1, "w0":I
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    .line 2242
    .local v2, "w1":I
    const/4 v3, 0x0

    .line 2244
    .local v3, "w2":I
    shl-int/lit8 v5, p3, 0x10

    or-int v4, p2, v5

    .line 2245
    .local v4, "w3":I
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set w3="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    shr-int/lit8 v7, v4, 0x10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0xffff

    and-int/2addr v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2247
    invoke-direct {p0, v1, v2, v3, v4}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    move-result v0

    .line 2248
    .local v0, "ourslot":I
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    .line 2253
    const/4 v1, 0x3

    .line 2255
    move v2, v0

    .line 2257
    move v3, p5

    .line 2259
    move v4, p6

    .line 2260
    invoke-direct {p0, v1, v2, v3, v4}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    .line 2263
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    .line 2264
    return-void
.end method

.method public appendChild(IZZ)V
    .locals 3
    .param p1, "newChild"    # I
    .param p2, "clone"    # Z
    .param p3, "cloneDepth"    # Z

    .prologue
    .line 2056
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    and-int/2addr v1, p1

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 2057
    .local v0, "sameDoc":Z
    :goto_0
    if-nez p2, :cond_0

    if-nez v0, :cond_0

    .line 2062
    :cond_0
    return-void

    .line 2056
    .end local v0    # "sameDoc":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method appendComment(II)V
    .locals 5
    .param p1, "m_char_current_start"    # I
    .param p2, "contentLength"    # I

    .prologue
    .line 2118
    const/16 v1, 0x8

    .line 2120
    .local v1, "w0":I
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    .line 2122
    .local v2, "w1":I
    move v3, p1

    .line 2124
    .local v3, "w2":I
    move v4, p2

    .line 2126
    .local v4, "w3":I
    invoke-direct {p0, v1, v2, v3, v4}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    move-result v0

    .line 2127
    .local v0, "ourslot":I
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    .line 2128
    return-void
.end method

.method appendEndDocument()V
    .locals 1

    .prologue
    .line 2353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->done:Z

    .line 2356
    return-void
.end method

.method appendEndElement()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2320
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    if-eqz v0, :cond_0

    .line 2321
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->writeEntry(III)V

    .line 2324
    :cond_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    .line 2325
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 2326
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v0, v0, v4

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    .line 2330
    iput-boolean v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    .line 2334
    return-void
.end method

.method appendNSDeclaration(IIZ)V
    .locals 8
    .param p1, "prefixIndex"    # I
    .param p2, "namespaceIndex"    # I
    .param p3, "isID"    # Z

    .prologue
    .line 2197
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    const-string v7, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v6, v7}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v0

    .line 2200
    .local v0, "namespaceForNamespaces":I
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    const-string v7, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v6, v7}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    or-int/lit8 v2, v6, 0xd

    .line 2203
    .local v2, "w0":I
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    .line 2205
    .local v3, "w1":I
    const/4 v4, 0x0

    .line 2207
    .local v4, "w2":I
    move v5, p2

    .line 2209
    .local v5, "w3":I
    invoke-direct {p0, v2, v3, v4, v5}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    move-result v1

    .line 2210
    .local v1, "ourslot":I
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    .line 2211
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    .line 2212
    return-void
.end method

.method appendStartDocument()V
    .locals 1

    .prologue
    .line 2344
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docElement:I

    .line 2345
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->initDocument(I)V

    .line 2346
    return-void
.end method

.method appendStartElement(III)V
    .locals 8
    .param p1, "namespaceIndex"    # I
    .param p2, "localNameIndex"    # I
    .param p3, "prefixIndex"    # I

    .prologue
    .line 2154
    shl-int/lit8 v5, p1, 0x10

    or-int/lit8 v1, v5, 0x1

    .line 2156
    .local v1, "w0":I
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    .line 2158
    .local v2, "w1":I
    const/4 v3, 0x0

    .line 2160
    .local v3, "w2":I
    shl-int/lit8 v5, p3, 0x10

    or-int v4, p2, v5

    .line 2161
    .local v4, "w3":I
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set w3="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    shr-int/lit8 v7, v4, 0x10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0xffff

    and-int/2addr v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2164
    invoke-direct {p0, v1, v2, v3, v4}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    move-result v0

    .line 2165
    .local v0, "ourslot":I
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    .line 2166
    const/4 v5, 0x0

    iput v5, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    .line 2169
    iget v5, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docElement:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 2170
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docElement:I

    .line 2171
    :cond_0
    return-void
.end method

.method appendTextChild(II)V
    .locals 5
    .param p1, "m_char_current_start"    # I
    .param p2, "contentLength"    # I

    .prologue
    .line 2095
    const/4 v1, 0x3

    .line 2097
    .local v1, "w0":I
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    .line 2099
    .local v2, "w1":I
    move v3, p1

    .line 2101
    .local v3, "w2":I
    move v4, p2

    .line 2103
    .local v4, "w3":I
    invoke-direct {p0, v1, v2, v3, v4}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    move-result v0

    .line 2104
    .local v0, "ourslot":I
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    .line 2105
    return-void
.end method

.method public appendTextChild(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 2076
    return-void
.end method

.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xml/utils/FastStringBuffer;->append([CII)V

    .line 414
    return-void
.end method

.method public comment([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    .line 572
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xml/utils/FastStringBuffer;->append([CII)V

    .line 573
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    invoke-virtual {p0, v0, p3}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendComment(II)V

    .line 574
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    .line 575
    return-void
.end method

.method public dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .locals 0
    .param p1, "nodeHandle"    # I
    .param p2, "ch"    # Lorg/xml/sax/ContentHandler;
    .param p3, "normalize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2012
    return-void
.end method

.method public dispatchToEvents(ILorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "nodeHandle"    # I
    .param p2, "ch"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2024
    return-void
.end method

.method public documentRegistration()V
    .locals 0

    .prologue
    .line 2389
    return-void
.end method

.method public documentRelease()V
    .locals 0

    .prologue
    .line 2398
    return-void
.end method

.method public endCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 580
    return-void
.end method

.method public endDTD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 585
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 432
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendEndDocument()V

    .line 433
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 438
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    .line 441
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendEndElement()V

    .line 442
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 590
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
    .line 447
    return-void
.end method

.method public getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "nodeHandle"    # I
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1087
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v3, p2}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v1

    .line 1088
    .local v1, "nsIndex":I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v3, p3}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v0

    .line 1089
    .local v0, "nameIndex":I
    const v3, 0x7fffff

    and-int/2addr p1, v3

    .line 1090
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v3, p1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1091
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v3, v3, v5

    const v4, 0xffff

    and-int/2addr v3, v4

    int-to-short v2, v3

    .line 1093
    .local v2, "type":S
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1094
    add-int/lit8 p1, p1, 0x1

    .line 1096
    :cond_0
    :goto_0
    if-ne v2, v6, :cond_2

    .line 1097
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v3, v3, v5

    shl-int/lit8 v3, v3, 0x10

    if-ne v1, v3, :cond_1

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    if-ne v3, v0, :cond_1

    .line 1098
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr v3, p1

    .line 1103
    :goto_1
    return v3

    .line 1100
    :cond_1
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget p1, v3, v6

    .line 1101
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v3, p1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    goto :goto_0

    .line 1103
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public getAxisIterator(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 1
    .param p1, "axis"    # I

    .prologue
    .line 2293
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;
    .locals 1
    .param p1, "axis"    # I

    .prologue
    .line 2277
    const/4 v0, 0x0

    return-object v0
.end method

.method getContentBuffer()Lorg/apache/xml/utils/FastStringBuffer;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    return-object v0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    instance-of v0, v0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    check-cast v0, Lorg/xml/sax/ContentHandler;

    .line 326
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocument()I
    .locals 1

    .prologue
    .line 1371
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    return v0
.end method

.method public getDocumentAllDeclarationsProcessed()Z
    .locals 1

    .prologue
    .line 1843
    const/4 v0, 0x0

    return v0
.end method

.method public getDocumentBaseURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1777
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_documentBaseURI:Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentEncoding(I)Ljava/lang/String;
    .locals 1
    .param p1, "nodeHandle"    # I

    .prologue
    .line 1807
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentRoot()I
    .locals 2

    .prologue
    .line 1362
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docElement:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getDocumentRoot(I)I
    .locals 1
    .param p1, "nodeHandle"    # I

    .prologue
    .line 1408
    const v0, 0x7fffff

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 1409
    const/4 v0, -0x1

    .line 1410
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    and-int/2addr v0, p1

    goto :goto_0
.end method

.method public getDocumentStandalone(I)Ljava/lang/String;
    .locals 1
    .param p1, "nodeHandle"    # I

    .prologue
    .line 1819
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentSystemIdentifier(I)Ljava/lang/String;
    .locals 1
    .param p1, "nodeHandle"    # I

    .prologue
    .line 1798
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentTypeDeclarationPublicIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1863
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentTypeDeclarationSystemIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1853
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentVersion(I)Ljava/lang/String;
    .locals 1
    .param p1, "documentHandle"    # I

    .prologue
    .line 1831
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementById(Ljava/lang/String;)I
    .locals 1
    .param p1, "elementId"    # Ljava/lang/String;

    .prologue
    .line 1882
    const/4 v0, 0x0

    return v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x0

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpandedTypeID(I)I
    .locals 9
    .param p1, "nodeHandle"    # I

    .prologue
    .line 1511
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v6, p1, v7}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1512
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v5

    .line 1515
    .local v5, "qName":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1516
    .local v0, "colonpos":I
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1518
    .local v3, "localName":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    shl-int/lit8 v7, v7, 0x10

    invoke-virtual {v6, v7}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v4

    .line 1520
    .local v4, "namespace":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1521
    .local v1, "expandedName":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v6, v1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v2

    .line 1523
    .local v2, "expandedNameID":I
    return v2
.end method

.method public getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 1541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1542
    .local v0, "expandedName":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v1

    .line 1544
    .local v1, "expandedNameID":I
    return v1
.end method

.method public getFirstAttribute(I)I
    .locals 5
    .param p1, "nodeHandle"    # I

    .prologue
    const v4, 0xffff

    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 1113
    const v1, 0x7fffff

    and-int/2addr p1, v1

    .line 1121
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v2, p1, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v2

    and-int/2addr v2, v4

    if-eq v1, v2, :cond_1

    .line 1125
    :cond_0
    :goto_0
    return v0

    .line 1124
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 1125
    const/4 v1, 0x2

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v2, p1, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v2

    and-int/2addr v2, v4

    if-ne v1, v2, :cond_0

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr v0, p1

    goto :goto_0
.end method

.method public getFirstChild(I)I
    .locals 9
    .param p1, "nodeHandle"    # I

    .prologue
    const v8, 0xffff

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, -0x1

    .line 1013
    const v3, 0x7fffff

    and-int/2addr p1, v3

    .line 1015
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v3, p1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1018
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v3, v3, v5

    and-int/2addr v3, v8

    int-to-short v2, v3

    .line 1021
    .local v2, "type":S
    if-eq v2, v6, :cond_0

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 1031
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 1032
    .local v1, "kid":I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v3, v1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1033
    :goto_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v3, v3, v5

    and-int/2addr v3, v8

    if-ne v7, v3, :cond_3

    .line 1035
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v1, v3, v7

    .line 1037
    if-ne v1, v0, :cond_2

    .line 1050
    .end local v1    # "kid":I
    :cond_1
    :goto_1
    return v0

    .line 1038
    .restart local v1    # "kid":I
    :cond_2
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v3, v1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    goto :goto_0

    .line 1041
    :cond_3
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v3, v3, v6

    if-ne v3, p1, :cond_1

    .line 1043
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int v0, v1, v3

    .line 1045
    .local v0, "firstChild":I
    goto :goto_1
.end method

.method public getFirstNamespaceNode(IZ)I
    .locals 1
    .param p1, "nodeHandle"    # I
    .param p2, "inScope"    # Z

    .prologue
    .line 1144
    const/4 v0, -0x1

    return v0
.end method

.method public getLastChild(I)I
    .locals 3
    .param p1, "nodeHandle"    # I

    .prologue
    .line 1064
    const v2, 0x7fffff

    and-int/2addr p1, v2

    .line 1066
    const/4 v0, -0x1

    .line 1067
    .local v0, "lastChild":I
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getFirstChild(I)I

    move-result v1

    .local v1, "nextkid":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1069
    move v0, v1

    .line 1068
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getNextSibling(I)I

    move-result v1

    goto :goto_0

    .line 1071
    :cond_0
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr v2, v0

    return v2
.end method

.method public getLevel(I)S
    .locals 3
    .param p1, "nodeHandle"    # I

    .prologue
    .line 1743
    const/4 v0, 0x0

    .line 1744
    .local v0, "count":S
    :goto_0
    if-eqz p1, :cond_0

    .line 1745
    add-int/lit8 v1, v0, 0x1

    int-to-short v0, v1

    .line 1746
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result p1

    goto :goto_0

    .line 1748
    :cond_0
    return v0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    instance-of v0, v0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    .line 345
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 6
    .param p1, "nodeHandle"    # I

    .prologue
    const v5, 0xffff

    .line 1642
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v3, p1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1643
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    and-int/2addr v3, v5

    int-to-short v2, v3

    .line 1644
    .local v2, "type":S
    const-string v1, ""

    .line 1645
    .local v1, "name":Ljava/lang/String;
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1646
    :cond_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v4, 0x3

    aget v0, v3, v4

    .line 1647
    .local v0, "i":I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    and-int v4, v0, v5

    invoke-virtual {v3, v4}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1648
    if-nez v1, :cond_1

    const-string v1, ""

    .line 1650
    .end local v0    # "i":I
    :cond_1
    return-object v1
.end method

.method public getLocalNameFromExpandedNameID(I)Ljava/lang/String;
    .locals 4
    .param p1, "ExpandedNameID"    # I

    .prologue
    .line 1557
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v3, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1559
    .local v1, "expandedName":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1560
    .local v0, "colonpos":I
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1561
    .local v2, "localName":Ljava/lang/String;
    return-object v2
.end method

.method public getLocalNameTable()Lorg/apache/xml/dtm/ref/DTMStringPool;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    return-object v0
.end method

.method public getNamespaceFromExpandedNameID(I)Ljava/lang/String;
    .locals 4
    .param p1, "ExpandedNameID"    # I

    .prologue
    .line 1574
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v3, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1576
    .local v1, "expandedName":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1577
    .local v0, "colonpos":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1579
    .local v2, "nsName":Ljava/lang/String;
    return-object v2
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 1
    .param p1, "nodeHandle"    # I

    .prologue
    .line 1688
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextAttribute(I)I
    .locals 5
    .param p1, "nodeHandle"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x2

    .line 1223
    const v2, 0x7fffff

    and-int/2addr p1, v2

    .line 1224
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v2, p1, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1230
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    int-to-short v0, v2

    .line 1232
    .local v0, "type":S
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1233
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getFirstAttribute(I)I

    move-result v1

    .line 1238
    :cond_0
    :goto_0
    return v1

    .line 1234
    :cond_1
    if-ne v0, v4, :cond_0

    .line 1235
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v2, v2, v4

    if-eq v2, v1, :cond_0

    .line 1236
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v2, v2, v4

    or-int/2addr v1, v2

    goto :goto_0
.end method

.method public getNextDescendant(II)I
    .locals 7
    .param p1, "subtreeRootHandle"    # I
    .param p2, "nodeHandle"    # I

    .prologue
    const v3, 0x7fffff

    const/4 v6, 0x2

    const/4 v2, -0x1

    .line 1267
    and-int/2addr p1, v3

    .line 1268
    and-int/2addr p2, v3

    .line 1270
    if-nez p2, :cond_2

    .line 1298
    :cond_0
    :goto_0
    return v2

    .line 1276
    :cond_1
    if-le p2, p1, :cond_5

    .line 1277
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    add-int/lit8 v4, p2, 0x1

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v3, v4, v5}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1278
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v3, v3, v6

    if-eqz v3, :cond_4

    .line 1279
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const v4, 0xffff

    and-int/2addr v3, v4

    int-to-short v1, v3

    .line 1280
    .local v1, "type":S
    if-ne v1, v6, :cond_3

    .line 1281
    add-int/lit8 p2, p2, 0x2

    .line 1272
    .end local v1    # "type":S
    :cond_2
    :goto_1
    iget-boolean v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_isError:Z

    if-nez v3, :cond_0

    .line 1274
    iget-boolean v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->done:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->slotsUsed()I

    move-result v3

    if-le p2, v3, :cond_1

    goto :goto_0

    .line 1283
    .restart local v1    # "type":S
    :cond_3
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v4, 0x1

    aget v0, v3, v4

    .line 1284
    .local v0, "nextParentPos":I
    if-lt v0, p1, :cond_0

    .line 1285
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    add-int/lit8 v3, p2, 0x1

    or-int/2addr v2, v3

    goto :goto_0

    .line 1289
    .end local v0    # "nextParentPos":I
    .end local v1    # "type":S
    :cond_4
    iget-boolean v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->done:Z

    if-nez v3, :cond_0

    goto :goto_1

    .line 1294
    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1
.end method

.method public getNextFollowing(II)I
    .locals 1
    .param p1, "axisContextHandle"    # I
    .param p2, "nodeHandle"    # I

    .prologue
    .line 1311
    const/4 v0, -0x1

    return v0
.end method

.method public getNextNamespaceNode(IIZ)I
    .locals 1
    .param p1, "baseHandle"    # I
    .param p2, "namespaceHandle"    # I
    .param p3, "inScope"    # Z

    .prologue
    .line 1253
    const/4 v0, -0x1

    return v0
.end method

.method public getNextPreceding(II)I
    .locals 3
    .param p1, "axisContextHandle"    # I
    .param p2, "nodeHandle"    # I

    .prologue
    .line 1324
    const v0, 0x7fffff

    and-int/2addr p2, v0

    .line 1325
    :cond_0
    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    .line 1326
    add-int/lit8 p2, p2, -0x1

    .line 1327
    const/4 v0, 0x2

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    .line 1338
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v1, p1, p2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->specialFind(II)I

    move-result v1

    or-int/2addr v0, v1

    .line 1340
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getNextSibling(I)I
    .locals 8
    .param p1, "nodeHandle"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, -0x1

    .line 1165
    const v4, 0x7fffff

    and-int/2addr p1, v4

    .line 1167
    if-nez p1, :cond_1

    .line 1186
    :cond_0
    :goto_0
    return v3

    .line 1170
    :cond_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    int-to-short v2, v4

    .line 1171
    .local v2, "type":S
    if-eq v2, v6, :cond_2

    if-eq v2, v7, :cond_2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_3

    .line 1173
    :cond_2
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v4, p1, v7}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v0

    .line 1174
    .local v0, "nextSib":I
    if-eq v0, v3, :cond_0

    .line 1176
    if-eqz v0, :cond_3

    .line 1177
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr v3, v0

    goto :goto_0

    .line 1181
    .end local v0    # "nextSib":I
    :cond_3
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v4, p1, v6}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v1

    .line 1183
    .local v1, "thisParent":I
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v4, p1, v6}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 1184
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr v3, p1

    goto :goto_0
.end method

.method public getNode(I)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "nodeHandle"    # I

    .prologue
    .line 2035
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeName(I)Ljava/lang/String;
    .locals 8
    .param p1, "nodeHandle"    # I

    .prologue
    const v7, 0xffff

    .line 1605
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v4, p1, v5}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1606
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-short v3, v4

    .line 1607
    .local v3, "type":S
    sget-object v4, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->fixednames:[Ljava/lang/String;

    aget-object v1, v4, v3

    .line 1608
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1609
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v5, 0x3

    aget v0, v4, v5

    .line 1610
    .local v0, "i":I
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v6, v0, 0x10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1612
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    and-int v5, v0, v7

    invoke-virtual {v4, v5}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1613
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    shr-int/lit8 v5, v0, 0x10

    invoke-virtual {v4, v5}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1614
    .local v2, "prefix":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1615
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1617
    .end local v0    # "i":I
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getNodeNameX(I)Ljava/lang/String;
    .locals 1
    .param p1, "nodeHandle"    # I

    .prologue
    .line 1628
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeType(I)S
    .locals 2
    .param p1, "nodeHandle"    # I

    .prologue
    .line 1731
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public getNodeValue(I)Ljava/lang/String;
    .locals 6
    .param p1, "nodeHandle"    # I

    .prologue
    .line 1701
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v2, p1, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1702
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    and-int/lit16 v0, v2, 0xff

    .line 1703
    .local v0, "nodetype":I
    const/4 v1, 0x0

    .line 1705
    .local v1, "value":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 1719
    :goto_0
    :pswitch_0
    return-object v1

    .line 1707
    :pswitch_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1711
    :pswitch_2
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v1

    .line 1712
    goto :goto_0

    .line 1705
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getNsNameTable()Lorg/apache/xml/dtm/ref/DTMStringPool;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    return-object v0
.end method

.method public getOwnerDocument(I)I
    .locals 1
    .param p1, "nodeHandle"    # I

    .prologue
    .line 1389
    const v0, 0x7fffff

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 1390
    const/4 v0, -0x1

    .line 1391
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    and-int/2addr v0, p1

    goto :goto_0
.end method

.method public getParent(I)I
    .locals 3
    .param p1, "nodeHandle"    # I

    .prologue
    .line 1354
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 5
    .param p1, "nodeHandle"    # I

    .prologue
    .line 1668
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v3, p1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1669
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const v4, 0xffff

    and-int/2addr v3, v4

    int-to-short v2, v3

    .line 1670
    .local v2, "type":S
    const-string v1, ""

    .line 1671
    .local v1, "name":Ljava/lang/String;
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1672
    :cond_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v4, 0x3

    aget v0, v3, v4

    .line 1673
    .local v0, "i":I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    shr-int/lit8 v4, v0, 0x10

    invoke-virtual {v3, v4}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1674
    if-nez v1, :cond_1

    const-string v1, ""

    .line 1676
    .end local v0    # "i":I
    :cond_1
    return-object v1
.end method

.method public getPrefixNameTable()Lorg/apache/xml/dtm/ref/DTMStringPool;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    return-object v0
.end method

.method public getPreviousSibling(I)I
    .locals 5
    .param p1, "nodeHandle"    # I

    .prologue
    .line 1199
    const v3, 0x7fffff

    and-int/2addr p1, v3

    .line 1201
    if-nez p1, :cond_0

    .line 1202
    const/4 v3, -0x1

    .line 1210
    :goto_0
    return v3

    .line 1204
    :cond_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v2

    .line 1205
    .local v2, "parent":I
    const/4 v0, -0x1

    .line 1206
    .local v0, "kid":I
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getFirstChild(I)I

    move-result v1

    .local v1, "nextkid":I
    :goto_1
    if-eq v1, p1, :cond_1

    .line 1208
    move v0, v1

    .line 1207
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getNextSibling(I)I

    move-result v1

    goto :goto_1

    .line 1210
    :cond_1
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr v3, v0

    goto :goto_0
.end method

.method public getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;
    .locals 1
    .param p1, "node"    # I

    .prologue
    .line 2378
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStringValue(I)Lorg/apache/xml/utils/XMLString;
    .locals 6
    .param p1, "nodeHandle"    # I

    .prologue
    .line 1424
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v2, p1, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1425
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    and-int/lit16 v0, v2, 0xff

    .line 1426
    .local v0, "nodetype":I
    const/4 v1, 0x0

    .line 1428
    .local v1, "value":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 1441
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    move-result-object v2

    return-object v2

    .line 1432
    :pswitch_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v1

    .line 1433
    goto :goto_0

    .line 1428
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getStringValueChunk(II[I)[C
    .locals 1
    .param p1, "nodeHandle"    # I
    .param p2, "chunkIndex"    # I
    .param p3, "startAndLen"    # [I

    .prologue
    .line 1501
    const/4 v0, 0x0

    new-array v0, v0, [C

    return-object v0
.end method

.method public getStringValueChunkCount(I)I
    .locals 1
    .param p1, "nodeHandle"    # I

    .prologue
    .line 1472
    const/4 v0, 0x0

    return v0
.end method

.method public getTypedAxisIterator(II)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 1
    .param p1, "axis"    # I
    .param p2, "type"    # I

    .prologue
    .line 2309
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1918
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasChildNodes(I)Z
    .locals 2
    .param p1, "nodeHandle"    # I

    .prologue
    .line 999
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getFirstChild(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 452
    return-void
.end method

.method final initDocument(I)V
    .locals 6
    .param p1, "documentNumber"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 625
    shl-int/lit8 v0, p1, 0x16

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    .line 628
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/16 v2, 0x9

    move v4, v3

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->writeSlot(IIIII)V

    .line 630
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->done:Z

    .line 631
    return-void
.end method

.method public isAttributeSpecified(I)Z
    .locals 1
    .param p1, "attributeHandle"    # I

    .prologue
    .line 1993
    const/4 v0, 0x0

    return v0
.end method

.method public isCharacterElementContentWhitespace(I)Z
    .locals 1
    .param p1, "nodeHandle"    # I

    .prologue
    .line 1968
    const/4 v0, 0x0

    return v0
.end method

.method public isDocumentAllDeclarationsProcessed(I)Z
    .locals 1
    .param p1, "documentHandle"    # I

    .prologue
    .line 1982
    const/4 v0, 0x0

    return v0
.end method

.method public isNodeAfter(II)Z
    .locals 1
    .param p1, "nodeHandle1"    # I
    .param p2, "nodeHandle2"    # I

    .prologue
    .line 1950
    const/4 v0, 0x0

    return v0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 1765
    const/4 v0, 0x0

    return v0
.end method

.method public migrateTo(Lorg/apache/xml/dtm/DTMManager;)V
    .locals 0
    .param p1, "manager"    # Lorg/apache/xml/dtm/DTMManager;

    .prologue
    .line 2409
    return-void
.end method

.method public needsTwoThreads()Z
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    .line 458
    return-void
.end method

.method setContentBuffer(Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 0
    .param p1, "buffer"    # Lorg/apache/xml/utils/FastStringBuffer;

    .prologue
    .line 300
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    .line 301
    return-void
.end method

.method public setDocumentBaseURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseURI"    # Ljava/lang/String;

    .prologue
    .line 1788
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_documentBaseURI:Ljava/lang/String;

    .line 1789
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 462
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "featureId"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .prologue
    .line 231
    return-void
.end method

.method public setIncrementalSAXSource(Lorg/apache/xml/dtm/ref/IncrementalSAXSource;)V
    .locals 0
    .param p1, "source"    # Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    .prologue
    .line 181
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    .line 184
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 185
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    .line 192
    return-void
.end method

.method public setLocalNameTable(Lorg/apache/xml/dtm/ref/DTMStringPool;)V
    .locals 0
    .param p1, "poolRef"    # Lorg/apache/xml/dtm/ref/DTMStringPool;

    .prologue
    .line 241
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    .line 242
    return-void
.end method

.method public setNsNameTable(Lorg/apache/xml/dtm/ref/DTMStringPool;)V
    .locals 0
    .param p1, "poolRef"    # Lorg/apache/xml/dtm/ref/DTMStringPool;

    .prologue
    .line 261
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    .line 262
    return-void
.end method

.method public setPrefixNameTable(Lorg/apache/xml/dtm/ref/DTMStringPool;)V
    .locals 0
    .param p1, "poolRef"    # Lorg/apache/xml/dtm/ref/DTMStringPool;

    .prologue
    .line 281
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    .line 282
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2367
    return-void
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
    .line 466
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    .line 468
    return-void
.end method

.method public startCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 595
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 601
    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 472
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendStartDocument()V

    .line 473
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 13
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 478
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    .line 481
    const/4 v12, 0x0

    .line 482
    .local v12, "prefix":Ljava/lang/String;
    const/16 v1, 0x3a

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 483
    .local v8, "colon":I
    if-lez v8, :cond_0

    .line 484
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 487
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prefix="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v3, v12}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v3, v12}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendStartElement(III)V

    .line 495
    if-nez p4, :cond_3

    const/4 v11, 0x0

    .line 497
    .local v11, "nAtts":I
    :goto_0
    add-int/lit8 v10, v11, -0x1

    .local v10, "i":I
    :goto_1
    if-ltz v10, :cond_5

    .line 499
    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object p3

    .line 500
    const-string v1, "xmlns:"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "xmlns"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 502
    :cond_1
    const/4 v12, 0x0

    .line 503
    const/16 v1, 0x3a

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 504
    if-lez v8, :cond_4

    .line 506
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 515
    :goto_2
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v1, v12}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNSDeclaration(IIZ)V

    .line 497
    :cond_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 495
    .end local v10    # "i":I
    .end local v11    # "nAtts":I
    :cond_3
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v11

    goto :goto_0

    .line 511
    .restart local v10    # "i":I
    .restart local v11    # "nAtts":I
    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    .line 522
    :cond_5
    add-int/lit8 v10, v11, -0x1

    :goto_3
    if-ltz v10, :cond_9

    .line 524
    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object p3

    .line 525
    const-string v1, "xmlns:"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "xmlns"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 530
    const/4 v12, 0x0

    .line 531
    const/16 v1, 0x3a

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 532
    if-lez v8, :cond_8

    .line 534
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 535
    add-int/lit8 v1, v8, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 544
    :goto_4
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 545
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v1}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v9

    .line 547
    .local v9, "contentEnd":I
    const-string v1, "xmlns"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "xmlns"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 548
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v2

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v1, p2}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v3

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v1, v12}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "ID"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    iget v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    sub-int v7, v9, v1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendAttribute(IIIZII)V

    .line 553
    :cond_6
    iput v9, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    .line 522
    .end local v9    # "contentEnd":I
    :cond_7
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_3

    .line 539
    :cond_8
    const-string v12, ""

    .line 540
    move-object/from16 p2, p3

    goto :goto_4

    .line 556
    :cond_9
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 606
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 561
    return-void
.end method

.method public supportsPreStripping()Z
    .locals 1

    .prologue
    .line 1930
    const/4 v0, 0x0

    return v0
.end method
