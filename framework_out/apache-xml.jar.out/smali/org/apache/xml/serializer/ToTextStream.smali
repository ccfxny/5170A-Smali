.class public Lorg/apache/xml/serializer/ToTextStream;
.super Lorg/apache/xml/serializer/ToStream;
.source "ToTextStream.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 589
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "rawName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "XSLAttribute"    # Z

    .prologue
    .line 527
    return-void
.end method

.method public addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "qName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 598
    return-void
.end method

.method public cdata([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 382
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_lineSepUse:Z

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/apache/xml/serializer/ToTextStream;->writeNormalizedChars([CIIZ)V

    .line 383
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v1, :cond_0

    .line 384
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->fireCDATAEvent([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :cond_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 388
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public characters(Ljava/lang/String;)V
    .locals 3
    .param p1, "characters"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 573
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 574
    .local v0, "length":I
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 576
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_charsBuff:[C

    .line 578
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_charsBuff:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 579
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_charsBuff:[C

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/xml/serializer/ToTextStream;->characters([CII)V

    .line 580
    return-void
.end method

.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->flushPending()V

    .line 203
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->inTemporaryOutputState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_writer:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 222
    :goto_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v1, :cond_0

    .line 223
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->fireCharEvent([CII)V

    .line 229
    :cond_0
    return-void

    .line 219
    :cond_1
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_lineSepUse:Z

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/apache/xml/serializer/ToTextStream;->writeNormalizedChars([CIIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 227
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public charactersRaw([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 248
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_lineSepUse:Z

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/apache/xml/serializer/ToTextStream;->writeNormalizedChars([CIIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 252
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public comment(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 472
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 473
    .local v0, "length":I
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 475
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_charsBuff:[C

    .line 477
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_charsBuff:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 478
    iget-object v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_charsBuff:[C

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/xml/serializer/ToTextStream;->comment([CII)V

    .line 479
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
    .line 497
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->flushPending()V

    .line 498
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    .line 499
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->fireCommentEvent([CII)V

    .line 500
    :cond_0
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
    .line 535
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->flushPending()V

    .line 89
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->flushWriter()V

    .line 90
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    .line 91
    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->fireEndDoc()V

    .line 92
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "elemName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 542
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    .line 543
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/ToStream;->fireEndElem(Ljava/lang/String;)V

    .line 544
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    .line 167
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/ToStream;->fireEndElem(Ljava/lang/String;)V

    .line 168
    :cond_0
    return-void
.end method

.method public entityReference(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 511
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    .line 512
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/ToStream;->fireEntityReference(Ljava/lang/String;)V

    .line 513
    :cond_0
    return-void
.end method

.method public flushPending()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 628
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToTextStream;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->startDocumentInternal()V

    .line 631
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToTextStream;->m_needToCallStartDocument:Z

    .line 633
    :cond_0
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 424
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToTextStream;->m_lineSepUse:Z

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/apache/xml/serializer/ToTextStream;->writeNormalizedChars([CIIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 428
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 624
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 455
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->flushPending()V

    .line 457
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    .line 458
    invoke-super {p0, p1, p2}, Lorg/apache/xml/serializer/ToStream;->fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_0
    return-void
.end method

.method protected startDocumentInternal()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->startDocumentInternal()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToTextStream;->m_needToCallStartDocument:Z

    .line 70
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
    .line 555
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToTextStream;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->startDocumentInternal()V

    .line 558
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_1

    .line 559
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/ToStream;->fireStartElem(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->firePseudoAttributes()V

    .line 563
    :cond_1
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
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
    .line 131
    iget-object v0, p0, Lorg/apache/xml/serializer/ToTextStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    .line 132
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/ToStream;->fireStartElem(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->firePseudoAttributes()V

    .line 135
    :cond_0
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
    .line 615
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "shouldFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 607
    const/4 v0, 0x0

    return v0
.end method

.method writeNormalizedChars([CIIZ)V
    .locals 13
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "useLineSep"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToTextStream;->getEncoding()Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "encoding":Ljava/lang/String;
    iget-object v8, p0, Lorg/apache/xml/serializer/ToTextStream;->m_writer:Ljava/io/Writer;

    .line 279
    .local v8, "writer":Ljava/io/Writer;
    add-int v4, p2, p3

    .line 282
    .local v4, "end":I
    const/16 v0, 0xa

    .line 288
    .local v0, "S_LINEFEED":C
    move v5, p2

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_5

    .line 289
    aget-char v1, p1, v5

    .line 291
    .local v1, "c":C
    const/16 v9, 0xa

    if-ne v9, v1, :cond_0

    if-eqz p4, :cond_0

    .line 292
    iget-object v9, p0, Lorg/apache/xml/serializer/ToTextStream;->m_lineSep:[C

    const/4 v10, 0x0

    iget v11, p0, Lorg/apache/xml/serializer/ToTextStream;->m_lineSepLen:I

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/Writer;->write([CII)V

    .line 288
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 294
    :cond_0
    iget-object v9, p0, Lorg/apache/xml/serializer/ToTextStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    invoke-virtual {v9, v1}, Lorg/apache/xml/serializer/EncodingInfo;->isInEncoding(C)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 295
    invoke-virtual {v8, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 297
    :cond_1
    invoke-static {v1}, Lorg/apache/xml/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 298
    invoke-virtual {p0, v1, p1, v5, v4}, Lorg/apache/xml/serializer/ToTextStream;->writeUTF16Surrogate(C[CII)I

    move-result v2

    .line 299
    .local v2, "codePoint":I
    if-eqz v2, :cond_2

    .line 302
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 303
    .local v6, "integralValue":Ljava/lang/String;
    sget-object v9, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v10, "ER_ILLEGAL_CHARACTER"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    const/4 v12, 0x1

    aput-object v3, v11, v12

    invoke-virtual {v9, v10, v11}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 310
    .local v7, "msg":Ljava/lang/String;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v9, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 313
    .end local v6    # "integralValue":Ljava/lang/String;
    .end local v7    # "msg":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 314
    goto :goto_1

    .line 318
    .end local v2    # "codePoint":I
    :cond_3
    if-eqz v3, :cond_4

    .line 324
    const/16 v9, 0x26

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(I)V

    .line 325
    const/16 v9, 0x23

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(I)V

    .line 326
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 327
    const/16 v9, 0x3b

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(I)V

    .line 331
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 332
    .restart local v6    # "integralValue":Ljava/lang/String;
    sget-object v9, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v10, "ER_ILLEGAL_CHARACTER"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    const/4 v12, 0x1

    aput-object v3, v11, v12

    invoke-virtual {v9, v10, v11}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 339
    .restart local v7    # "msg":Ljava/lang/String;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v9, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 344
    .end local v6    # "integralValue":Ljava/lang/String;
    .end local v7    # "msg":Ljava/lang/String;
    :cond_4
    invoke-virtual {v8, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 350
    .end local v1    # "c":C
    :cond_5
    return-void
.end method
