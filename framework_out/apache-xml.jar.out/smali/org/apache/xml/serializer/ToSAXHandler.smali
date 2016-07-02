.class public abstract Lorg/apache/xml/serializer/ToSAXHandler;
.super Lorg/apache/xml/serializer/SerializerBase;
.source "ToSAXHandler.java"


# instance fields
.field protected m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

.field protected m_saxHandler:Lorg/xml/sax/ContentHandler;

.field private m_shouldGenerateNSAttribute:Z

.field protected m_state:Lorg/apache/xml/serializer/TransformStateSetter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;-><init>()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_shouldGenerateNSAttribute:Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V
    .locals 1
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;-><init>()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_shouldGenerateNSAttribute:Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    .line 57
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/ToSAXHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 58
    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/ToSAXHandler;->setEncoding(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V
    .locals 1
    .param p1, "hdlr"    # Lorg/xml/sax/ContentHandler;
    .param p2, "lex"    # Lorg/xml/sax/ext/LexicalHandler;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;-><init>()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_shouldGenerateNSAttribute:Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    .line 51
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/ToSAXHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 52
    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/ToSAXHandler;->setLexHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    .line 53
    invoke-virtual {p0, p3}, Lorg/apache/xml/serializer/ToSAXHandler;->setEncoding(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private resetToSAXHandler()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 424
    iput-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 425
    iput-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    .line 426
    iput-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_shouldGenerateNSAttribute:Z

    .line 428
    return-void
.end method


# virtual methods
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
    .line 436
    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/serializer/ToSAXHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    return-void
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

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 123
    .local v0, "len":I
    iget-object v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 125
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_charsBuff:[C

    .line 127
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_charsBuff:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 128
    iget-object v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_charsBuff:[C

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/xml/serializer/ToSAXHandler;->characters([CII)V

    .line 129
    return-void
.end method

.method public characters(Lorg/w3c/dom/Node;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 351
    iget-object v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    invoke-interface {v1, p1}, Lorg/apache/xml/serializer/TransformStateSetter;->setCurrentNode(Lorg/w3c/dom/Node;)V

    .line 358
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 360
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToSAXHandler;->characters(Ljava/lang/String;)V

    .line 362
    :cond_1
    return-void
.end method

.method protected closeCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 175
    return-void
.end method

.method protected closeStartTag()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 170
    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 4
    .param p1, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 138
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->flushPending()V

    .line 141
    iget-object v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_1

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 144
    .local v0, "len":I
    iget-object v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 146
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_charsBuff:[C

    .line 148
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_charsBuff:[C

    invoke-virtual {p1, v3, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 149
    iget-object v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    iget-object v2, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_charsBuff:[C

    invoke-interface {v1, v2, v3, v0}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    .line 151
    iget-object v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_charsBuff:[C

    invoke-super {p0, v1, v3, v0}, Lorg/apache/xml/serializer/SerializerBase;->fireCommentEvent([CII)V

    .line 155
    .end local v0    # "len":I
    :cond_1
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "exc"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->error(Lorg/xml/sax/SAXParseException;)V

    .line 383
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, v0, Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    check-cast v0, Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    .line 386
    :cond_0
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "exc"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->fatalError(Lorg/xml/sax/SAXParseException;)V

    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_needToCallStartDocument:Z

    .line 372
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, v0, Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    check-cast v0, Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    .line 375
    :cond_0
    return-void
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

    .line 271
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->startDocumentInternal()V

    .line 274
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_needToCallStartDocument:Z

    .line 277
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->closeStartTag()V

    .line 280
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 283
    :cond_1
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_cdataTagOpen:Z

    if-eqz v0, :cond_2

    .line 285
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->closeCDATA()V

    .line 286
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_cdataTagOpen:Z

    .line 289
    :cond_2
    return-void
.end method

.method getShouldOutputNSAttr()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_shouldGenerateNSAttribute:Z

    return v0
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
    .line 166
    return-void
.end method

.method public reset()Z
    .locals 2

    .prologue
    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "wasReset":Z
    invoke-super {p0}, Lorg/apache/xml/serializer/SerializerBase;->reset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->resetToSAXHandler()V

    .line 413
    const/4 v0, 0x1

    .line 415
    :cond_0
    return v0
.end method

.method public setCdataSectionElements(Ljava/util/Vector;)V
    .locals 0
    .param p1, "URI_and_localNames"    # Ljava/util/Vector;

    .prologue
    .line 240
    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 1
    .param p1, "_saxHandler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 223
    iput-object p1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    .line 224
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 228
    check-cast p1, Lorg/xml/sax/ext/LexicalHandler;

    .end local p1    # "_saxHandler":Lorg/xml/sax/ContentHandler;
    iput-object p1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 230
    :cond_0
    return-void
.end method

.method public setLexHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0
    .param p1, "_lexHandler"    # Lorg/xml/sax/ext/LexicalHandler;

    .prologue
    .line 214
    iput-object p1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 215
    return-void
.end method

.method public setShouldOutputNSAttr(Z)V
    .locals 0
    .param p1, "doOutputNSAttr"    # Z

    .prologue
    .line 250
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_shouldGenerateNSAttribute:Z

    .line 251
    return-void
.end method

.method public setTransformState(Lorg/apache/xml/serializer/TransformStateSetter;)V
    .locals 0
    .param p1, "ts"    # Lorg/apache/xml/serializer/TransformStateSetter;

    .prologue
    .line 300
    iput-object p1, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    .line 301
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 109
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
    .line 93
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-super {p0}, Lorg/apache/xml/serializer/SerializerBase;->startDocumentInternal()V

    .line 97
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_needToCallStartDocument:Z

    .line 100
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 2
    .param p1, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/TransformStateSetter;->resetState(Ljavax/xml/transform/Transformer;)V

    .line 337
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_1

    .line 338
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    .line 339
    :cond_1
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/TransformStateSetter;->resetState(Ljavax/xml/transform/Transformer;)V

    .line 321
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_1

    .line 322
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    .line 323
    :cond_1
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_state:Lorg/apache/xml/serializer/TransformStateSetter;

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToSAXHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/TransformStateSetter;->resetState(Ljavax/xml/transform/Transformer;)V

    .line 204
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_1

    .line 205
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    .line 206
    :cond_1
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "exc"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->warning(Lorg/xml/sax/SAXParseException;)V

    .line 394
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, v0, Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lorg/apache/xml/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    check-cast v0, Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->warning(Lorg/xml/sax/SAXParseException;)V

    .line 396
    :cond_0
    return-void
.end method
