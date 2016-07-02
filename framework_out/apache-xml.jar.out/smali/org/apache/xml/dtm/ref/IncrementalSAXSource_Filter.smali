.class public Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;
.super Ljava/lang/Object;
.source "IncrementalSAXSource_Filter.java"

# interfaces
.implements Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;
.implements Lorg/xml/sax/ErrorHandler;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter$StopException;
    }
.end annotation


# instance fields
.field DEBUG:Z

.field private clientContentHandler:Lorg/xml/sax/ContentHandler;

.field private clientDTDHandler:Lorg/xml/sax/DTDHandler;

.field private clientErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private eventcounter:I

.field private fControllerCoroutineID:I

.field private fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

.field private fNoMoreEvents:Z

.field private fSourceCoroutineID:I

.field private fXMLReader:Lorg/xml/sax/XMLReader;

.field private fXMLReaderInputSource:Lorg/xml/sax/InputSource;

.field private frequency:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->DEBUG:Z

    .line 75
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    .line 76
    iput v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    .line 77
    iput v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    .line 79
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    .line 80
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 81
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 82
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 84
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    .line 89
    iput-boolean v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    .line 92
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    .line 93
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReaderInputSource:Lorg/xml/sax/InputSource;

    .line 100
    new-instance v0, Lorg/apache/xml/dtm/ref/CoroutineManager;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/CoroutineManager;-><init>()V

    invoke-virtual {p0, v0, v2, v2}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->init(Lorg/apache/xml/dtm/ref/CoroutineManager;II)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/ref/CoroutineManager;I)V
    .locals 4
    .param p1, "co"    # Lorg/apache/xml/dtm/ref/CoroutineManager;
    .param p2, "controllerCoroutineID"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->DEBUG:Z

    .line 75
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    .line 76
    iput v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    .line 77
    iput v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    .line 79
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    .line 80
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 81
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 82
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 84
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    .line 89
    iput-boolean v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    .line 92
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    .line 93
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReaderInputSource:Lorg/xml/sax/InputSource;

    .line 108
    invoke-virtual {p0, p1, p2, v2}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->init(Lorg/apache/xml/dtm/ref/CoroutineManager;II)V

    .line 109
    return-void
.end method

.method private co_entry_pause()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 507
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    if-nez v2, :cond_0

    .line 510
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3, v3}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->init(Lorg/apache/xml/dtm/ref/CoroutineManager;II)V

    .line 515
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    iget v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_entry_pause(I)Ljava/lang/Object;

    move-result-object v0

    .line 516
    .local v0, "arg":Ljava/lang/Object;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v2, :cond_1

    .line 517
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    :cond_1
    return-void

    .line 519
    .end local v0    # "arg":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 523
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->DEBUG:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 524
    :cond_2
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method private co_yield(Z)V
    .locals 7
    .param p1, "moreRemains"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 553
    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    if-eqz v2, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 559
    .local v0, "arg":Ljava/lang/Boolean;
    if-eqz p1, :cond_2

    .line 562
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    iget v5, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_resume(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    .line 568
    .end local v0    # "arg":Ljava/lang/Boolean;
    :cond_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v2, :cond_0

    .line 570
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    .line 572
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    if-eqz v2, :cond_3

    .line 573
    new-instance v2, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter$StopException;

    invoke-direct {v2, p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter$StopException;-><init>(Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :catch_0
    move-exception v1

    .line 584
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    iput-boolean v6, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    .line 585
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    iget v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_exit(I)V

    .line 586
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 576
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    iget v5, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_exit_to(Ljava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static createIncrementalSAXSource(Lorg/apache/xml/dtm/ref/CoroutineManager;I)Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    .locals 1
    .param p0, "co"    # Lorg/apache/xml/dtm/ref/CoroutineManager;
    .param p1, "controllerCoroutineID"    # I

    .prologue
    .line 115
    new-instance v0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    invoke-direct {v0, p0, p1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;-><init>(Lorg/apache/xml/dtm/ref/CoroutineManager;I)V

    return-object v0
.end method


# virtual methods
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
    .line 224
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_0

    .line 226
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    .line 227
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 231
    :cond_1
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
    .line 360
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    .line 362
    :cond_0
    return-void
.end method

.method protected count_and_yield(Z)V
    .locals 1
    .param p1, "moreExpected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 489
    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    .line 491
    :cond_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_1

    .line 493
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    .line 494
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    .line 496
    :cond_1
    return-void
.end method

.method public deliverMoreNodes(Z)Ljava/lang/Object;
    .locals 6
    .param p1, "parsemore"    # Z

    .prologue
    .line 711
    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    if-eqz v2, :cond_1

    .line 712
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 730
    :cond_0
    :goto_0
    return-object v1

    .line 716
    :cond_1
    :try_start_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    if-eqz p1, :cond_2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    iget v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    iget v5, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    invoke-virtual {v3, v2, v4, v5}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_resume(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    .line 719
    .local v1, "result":Ljava/lang/Object;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_0

    .line 720
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    iget v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_exit(I)V

    goto :goto_0

    .line 728
    .end local v1    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NoSuchMethodException;
    move-object v1, v0

    .line 730
    goto :goto_0

    .line 716
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public endCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    .line 368
    :cond_0
    return-void
.end method

.method public endDTD()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    .line 374
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 236
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 239
    :cond_0
    iput v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    .line 240
    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    .line 241
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 246
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_0

    .line 248
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    .line 249
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    .line 251
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_1
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    .line 380
    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 257
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_0

    .line 259
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    .line 260
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    .line 262
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 264
    :cond_1
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    .line 434
    :cond_0
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 440
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    .line 443
    :cond_0
    iput v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    .line 444
    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    .line 446
    return-void
.end method

.method public getControllerCoroutineID()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    return v0
.end method

.method public getCoroutineManager()Lorg/apache/xml/dtm/ref/CoroutineManager;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    return-object v0
.end method

.method public getSourceCoroutineID()I
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    return v0
.end method

.method public ignorableWhitespace([CII)V
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
    .line 268
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_0

    .line 270
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    .line 271
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    .line 273
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    .line 275
    :cond_1
    return-void
.end method

.method public init(Lorg/apache/xml/dtm/ref/CoroutineManager;II)V
    .locals 3
    .param p1, "co"    # Lorg/apache/xml/dtm/ref/CoroutineManager;
    .param p2, "controllerCoroutineID"    # I
    .param p3, "sourceCoroutineID"    # I

    .prologue
    const/4 v1, -0x1

    .line 125
    if-nez p1, :cond_0

    .line 126
    new-instance p1, Lorg/apache/xml/dtm/ref/CoroutineManager;

    .end local p1    # "co":Lorg/apache/xml/dtm/ref/CoroutineManager;
    invoke-direct {p1}, Lorg/apache/xml/dtm/ref/CoroutineManager;-><init>()V

    .line 127
    .restart local p1    # "co":Lorg/apache/xml/dtm/ref/CoroutineManager;
    :cond_0
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    .line 128
    invoke-virtual {p1, p2}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_joinCoroutineSet(I)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    .line 129
    invoke-virtual {p1, p3}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_joinCoroutineSet(I)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    .line 130
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    if-ne v0, v1, :cond_2

    .line 131
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_COJOINROUTINESET_FAILED"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    .line 134
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    .line 135
    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;
    .param p3, "c"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientDTDHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_0
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
    .line 279
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_0

    .line 281
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    .line 282
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    .line 284
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_1
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 622
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    if-nez v4, :cond_0

    .line 682
    :goto_0
    return-void

    .line 624
    :cond_0
    iget-boolean v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->DEBUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "IncrementalSAXSource_Filter parse thread launched"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 627
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 635
    .local v0, "arg":Ljava/lang/Boolean;
    :try_start_0
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReaderInputSource:Lorg/xml/sax/InputSource;

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter$StopException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3

    .line 666
    .end local v0    # "arg":Ljava/lang/Boolean;
    :cond_2
    :goto_1
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    .line 671
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    .line 672
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    iget v5, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    iget v6, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    invoke-virtual {v4, v0, v5, v6}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_exit_to(Ljava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 675
    :catch_0
    move-exception v1

    .line 679
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v4}, Ljava/lang/NoSuchMethodException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 680
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    iget v5, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    invoke-virtual {v4, v5}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_exit(I)V

    goto :goto_0

    .line 637
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v0    # "arg":Ljava/lang/Boolean;
    :catch_1
    move-exception v2

    .line 639
    .local v2, "ex":Ljava/io/IOException;
    move-object v0, v2

    .line 663
    .local v0, "arg":Ljava/io/IOException;
    goto :goto_1

    .line 641
    .end local v2    # "ex":Ljava/io/IOException;
    .local v0, "arg":Ljava/lang/Boolean;
    :catch_2
    move-exception v2

    .line 644
    .local v2, "ex":Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter$StopException;
    iget-boolean v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->DEBUG:Z

    if-eqz v4, :cond_2

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Active IncrementalSAXSource_Filter normal stop exception"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 646
    .end local v2    # "ex":Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter$StopException;
    :catch_3
    move-exception v2

    .line 648
    .local v2, "ex":Lorg/xml/sax/SAXException;
    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v3

    .line 649
    .local v3, "inner":Ljava/lang/Exception;
    instance-of v4, v3, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter$StopException;

    if-eqz v4, :cond_3

    .line 651
    iget-boolean v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->DEBUG:Z

    if-eqz v4, :cond_2

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Active IncrementalSAXSource_Filter normal stop exception"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 656
    :cond_3
    iget-boolean v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 658
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Active IncrementalSAXSource_Filter UNEXPECTED SAX exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 659
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 661
    :cond_4
    move-object v0, v2

    .local v0, "arg":Lorg/xml/sax/SAXException;
    goto :goto_1
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 172
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    .line 173
    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/DTDHandler;

    .prologue
    .line 177
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 178
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 289
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_0

    .line 293
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    .line 295
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 297
    :cond_1
    return-void
.end method

.method public setErrHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ErrorHandler;

    .prologue
    .line 191
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 192
    return-void
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ext/LexicalHandler;

    .prologue
    .line 185
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 186
    return-void
.end method

.method public setReturnFrequency(I)V
    .locals 1
    .param p1, "events"    # I

    .prologue
    .line 198
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    .line 199
    :cond_0
    iput p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    iput p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    .line 200
    return-void
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 1
    .param p1, "eventsource"    # Lorg/xml/sax/XMLReader;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    .line 145
    invoke-interface {p1, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 146
    invoke-interface {p1, p0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 147
    invoke-interface {p1, p0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 152
    :try_start_0
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {p1, v0, p0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    goto :goto_0

    .line 156
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 301
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_0

    .line 303
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    .line 304
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    .line 306
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    .line 308
    :cond_1
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
    .line 384
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 386
    :cond_0
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
    .line 391
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_entry_pause()V

    .line 315
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_0

    .line 317
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    .line 318
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    .line 320
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 322
    :cond_1
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
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
    .line 327
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_0

    .line 329
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    .line 330
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    .line 332
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 334
    :cond_1
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 397
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    .line 399
    :cond_0
    return-void
.end method

.method public startParse(Lorg/xml/sax/InputSource;)V
    .locals 3
    .param p1, "source"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 605
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    if-eqz v0, :cond_0

    .line 606
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "ER_INCRSAXSRCFILTER_NOT_RESTARTABLE"

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    if-nez v0, :cond_1

    .line 608
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "ER_XMLRDR_NOT_BEFORE_STARTPARSE"

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_1
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReaderInputSource:Lorg/xml/sax/InputSource;

    .line 614
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/apache/xml/utils/ThreadControllerWrapper;->runThread(Ljava/lang/Runnable;I)Ljava/lang/Thread;

    .line 615
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
    .line 338
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_0

    .line 340
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    .line 341
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    .line 343
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_1
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;
    .param p3, "c"    # Ljava/lang/String;
    .param p4, "d"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 411
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientDTDHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_0
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 450
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    .line 452
    :cond_0
    return-void
.end method
