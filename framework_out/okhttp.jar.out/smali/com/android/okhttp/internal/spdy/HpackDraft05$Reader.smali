.class final Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;
.super Ljava/lang/Object;
.source "HpackDraft05.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/HpackDraft05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final emittedHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation
.end field

.field emittedReferencedHeaders:Lcom/android/okhttp/internal/BitArray;

.field headerCount:I

.field headerTable:[Lcom/android/okhttp/internal/spdy/Header;

.field headerTableByteCount:I

.field private final huffmanCodec:Lcom/android/okhttp/internal/spdy/Huffman$Codec;

.field private maxHeaderTableByteCount:I

.field nextHeaderIndex:I

.field referencedHeaders:Lcom/android/okhttp/internal/BitArray;

.field private final source:Lcom/android/okio/BufferedSource;


# direct methods
.method constructor <init>(ZILcom/android/okio/Source;)V
    .locals 2
    .param p1, "client"    # Z
    .param p2, "maxHeaderTableByteCount"    # I
    .param p3, "source"    # Lcom/android/okio/Source;

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->emittedHeaders:Ljava/util/List;

    .line 105
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/okhttp/internal/spdy/Header;

    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTable:[Lcom/android/okhttp/internal/spdy/Header;

    .line 107
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTable:[Lcom/android/okhttp/internal/spdy/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->nextHeaderIndex:I

    .line 108
    iput v1, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerCount:I

    .line 114
    new-instance v0, Lcom/android/okhttp/internal/BitArray$FixedCapacity;

    invoke-direct {v0}, Lcom/android/okhttp/internal/BitArray$FixedCapacity;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->referencedHeaders:Lcom/android/okhttp/internal/BitArray;

    .line 119
    new-instance v0, Lcom/android/okhttp/internal/BitArray$FixedCapacity;

    invoke-direct {v0}, Lcom/android/okhttp/internal/BitArray$FixedCapacity;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->emittedReferencedHeaders:Lcom/android/okhttp/internal/BitArray;

    .line 120
    iput v1, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTableByteCount:I

    .line 123
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/okhttp/internal/spdy/Huffman$Codec;->RESPONSE:Lcom/android/okhttp/internal/spdy/Huffman$Codec;

    :goto_0
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->huffmanCodec:Lcom/android/okhttp/internal/spdy/Huffman$Codec;

    .line 124
    iput p2, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->maxHeaderTableByteCount:I

    .line 125
    invoke-static {p3}, Lcom/android/okio/Okio;->buffer(Lcom/android/okio/Source;)Lcom/android/okio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->source:Lcom/android/okio/BufferedSource;

    .line 126
    return-void

    .line 123
    :cond_0
    sget-object v0, Lcom/android/okhttp/internal/spdy/Huffman$Codec;->REQUEST:Lcom/android/okhttp/internal/spdy/Huffman$Codec;

    goto :goto_0
.end method

.method private clearHeaderTable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->clearReferenceSet()V

    .line 150
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTable:[Lcom/android/okhttp/internal/spdy/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTable:[Lcom/android/okhttp/internal/spdy/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->nextHeaderIndex:I

    .line 152
    iput v2, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerCount:I

    .line 153
    iput v2, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTableByteCount:I

    .line 154
    return-void
.end method

.method private clearReferenceSet()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->referencedHeaders:Lcom/android/okhttp/internal/BitArray;

    invoke-interface {v0}, Lcom/android/okhttp/internal/BitArray;->clear()V

    .line 209
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->emittedReferencedHeaders:Lcom/android/okhttp/internal/BitArray;

    invoke-interface {v0}, Lcom/android/okhttp/internal/BitArray;->clear()V

    .line 210
    return-void
.end method

.method private evictToRecoverBytes(I)I
    .locals 7
    .param p1, "bytesToRecover"    # I

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "entriesToEvict":I
    if-lez p1, :cond_1

    .line 161
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTable:[Lcom/android/okhttp/internal/spdy/Header;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "j":I
    :goto_0
    iget v2, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->nextHeaderIndex:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 162
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTable:[Lcom/android/okhttp/internal/spdy/Header;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/android/okhttp/internal/spdy/Header;->hpackSize:I

    sub-int/2addr p1, v2

    .line 163
    iget v2, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTableByteCount:I

    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTable:[Lcom/android/okhttp/internal/spdy/Header;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/android/okhttp/internal/spdy/Header;->hpackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTableByteCount:I

    .line 164
    iget v2, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerCount:I

    .line 165
    add-int/lit8 v0, v0, 0x1

    .line 161
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->referencedHeaders:Lcom/android/okhttp/internal/BitArray;

    invoke-interface {v2, v0}, Lcom/android/okhttp/internal/BitArray;->shiftLeft(I)V

    .line 168
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->emittedReferencedHeaders:Lcom/android/okhttp/internal/BitArray;

    invoke-interface {v2, v0}, Lcom/android/okhttp/internal/BitArray;->shiftLeft(I)V

    .line 169
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTable:[Lcom/android/okhttp/internal/spdy/Header;

    iget v3, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->nextHeaderIndex:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTable:[Lcom/android/okhttp/internal/spdy/Header;

    iget v5, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->nextHeaderIndex:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v0

    iget v6, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerCount:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    iget v2, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->nextHeaderIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->nextHeaderIndex:I

    .line 173
    .end local v1    # "j":I
    :cond_1
    return v0
.end method

.method private getName(I)Lcom/android/okio/ByteString;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->isStaticHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    # getter for: Lcom/android/okhttp/internal/spdy/HpackDraft05;->STATIC_HEADER_TABLE:[Lcom/android/okhttp/internal/spdy/Header;
    invoke-static {}, Lcom/android/okhttp/internal/spdy/HpackDraft05;->access$000()[Lcom/android/okhttp/internal/spdy/Header;

    move-result-object v0

    iget v1, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerCount:I

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/okhttp/internal/spdy/Header;->name:Lcom/android/okio/ByteString;

    .line 283
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTable:[Lcom/android/okhttp/internal/spdy/Header;

    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTableIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/okhttp/internal/spdy/Header;->name:Lcom/android/okio/ByteString;

    goto :goto_0
.end method

.method private headerTableIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 251
    iget v0, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->nextHeaderIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private insertIntoHeaderTable(ILcom/android/okhttp/internal/spdy/Header;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "entry"    # Lcom/android/okhttp/internal/spdy/Header;

    .prologue
    const/4 v6, -0x1

    .line 293
    iget v1, p2, Lcom/android/okhttp/internal/spdy/Header;->hpackSize:I

    .line 294
    .local v1, "delta":I
    if-eq p1, v6, :cond_0

    .line 295
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTable:[Lcom/android/okhttp/internal/spdy/Header;

    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTableIndex(I)I

    move-result v5

    aget-object v4, v4, v5

    iget v4, v4, Lcom/android/okhttp/internal/spdy/Header;->hpackSize:I

    sub-int/2addr v1, v4

    .line 299
    :cond_0
    iget v4, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->maxHeaderTableByteCount:I

    if-le v1, v4, :cond_1

    .line 300
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->clearHeaderTable()V

    .line 302
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->emittedHeaders:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    :goto_0
    return-void

    .line 307
    :cond_1
    iget v4, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTableByteCount:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->maxHeaderTableByteCount:I

    sub-int v0, v4, v5

    .line 308
    .local v0, "bytesToRecover":I
    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->evictToRecoverBytes(I)I

    move-result v3

    .line 310
    .local v3, "entriesEvicted":I
    if-ne p1, v6, :cond_4

    .line 311
    iget v4, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerCount:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTable:[Lcom/android/okhttp/internal/spdy/Header;

    array-length v5, v5

    if-le v4, v5, :cond_3

    .line 312
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTable:[Lcom/android/okhttp/internal/spdy/Header;

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    new-array v2, v4, [Lcom/android/okhttp/internal/spdy/Header;

    .line 313
    .local v2, "doubled":[Lcom/android/okhttp/internal/spdy/Header;
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTable:[Lcom/android/okhttp/internal/spdy/Header;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTable:[Lcom/android/okhttp/internal/spdy/Header;

    array-length v6, v6

    iget-object v7, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTable:[Lcom/android/okhttp/internal/spdy/Header;

    array-length v7, v7

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    array-length v4, v2

    const/16 v5, 0x40

    if-ne v4, v5, :cond_2

    .line 315
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->referencedHeaders:Lcom/android/okhttp/internal/BitArray;

    check-cast v4, Lcom/android/okhttp/internal/BitArray$FixedCapacity;

    invoke-virtual {v4}, Lcom/android/okhttp/internal/BitArray$FixedCapacity;->toVariableCapacity()Lcom/android/okhttp/internal/BitArray;

    move-result-object v4

    iput-object v4, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->referencedHeaders:Lcom/android/okhttp/internal/BitArray;

    .line 316
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->emittedReferencedHeaders:Lcom/android/okhttp/internal/BitArray;

    check-cast v4, Lcom/android/okhttp/internal/BitArray$FixedCapacity;

    invoke-virtual {v4}, Lcom/android/okhttp/internal/BitArray$FixedCapacity;->toVariableCapacity()Lcom/android/okhttp/internal/BitArray;

    move-result-object v4

    iput-object v4, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->emittedReferencedHeaders:Lcom/android/okhttp/internal/BitArray;

    .line 319
    :cond_2
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->referencedHeaders:Lcom/android/okhttp/internal/BitArray;

    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTable:[Lcom/android/okhttp/internal/spdy/Header;

    array-length v5, v5

    invoke-interface {v4, v5}, Lcom/android/okhttp/internal/BitArray;->shiftLeft(I)V

    .line 320
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->emittedReferencedHeaders:Lcom/android/okhttp/internal/BitArray;

    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTable:[Lcom/android/okhttp/internal/spdy/Header;

    array-length v5, v5

    invoke-interface {v4, v5}, Lcom/android/okhttp/internal/BitArray;->shiftLeft(I)V

    .line 321
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTable:[Lcom/android/okhttp/internal/spdy/Header;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->nextHeaderIndex:I

    .line 322
    iput-object v2, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTable:[Lcom/android/okhttp/internal/spdy/Header;

    .line 324
    .end local v2    # "doubled":[Lcom/android/okhttp/internal/spdy/Header;
    :cond_3
    iget p1, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->nextHeaderIndex:I

    .end local p1    # "index":I
    add-int/lit8 v4, p1, -0x1

    iput v4, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->nextHeaderIndex:I

    .line 325
    .restart local p1    # "index":I
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->referencedHeaders:Lcom/android/okhttp/internal/BitArray;

    invoke-interface {v4, p1}, Lcom/android/okhttp/internal/BitArray;->set(I)V

    .line 326
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTable:[Lcom/android/okhttp/internal/spdy/Header;

    aput-object p2, v4, p1

    .line 327
    iget v4, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerCount:I

    .line 333
    :goto_1
    iget v4, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTableByteCount:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTableByteCount:I

    goto :goto_0

    .line 329
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTableIndex(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr p1, v4

    .line 330
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->referencedHeaders:Lcom/android/okhttp/internal/BitArray;

    invoke-interface {v4, p1}, Lcom/android/okhttp/internal/BitArray;->set(I)V

    .line 331
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTable:[Lcom/android/okhttp/internal/spdy/Header;

    aput-object p2, v4, p1

    goto :goto_1
.end method

.method private isStaticHeader(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 288
    iget v0, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerCount:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private readIndexedHeader(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->isStaticHeader(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    # getter for: Lcom/android/okhttp/internal/spdy/HpackDraft05;->STATIC_HEADER_TABLE:[Lcom/android/okhttp/internal/spdy/Header;
    invoke-static {}, Lcom/android/okhttp/internal/spdy/HpackDraft05;->access$000()[Lcom/android/okhttp/internal/spdy/Header;

    move-result-object v2

    iget v3, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerCount:I

    sub-int v3, p1, v3

    aget-object v1, v2, v3

    .line 234
    .local v1, "staticEntry":Lcom/android/okhttp/internal/spdy/Header;
    iget v2, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->maxHeaderTableByteCount:I

    if-nez v2, :cond_0

    .line 235
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->emittedHeaders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    .end local v1    # "staticEntry":Lcom/android/okhttp/internal/spdy/Header;
    :goto_0
    return-void

    .line 237
    .restart local v1    # "staticEntry":Lcom/android/okhttp/internal/spdy/Header;
    :cond_0
    const/4 v2, -0x1

    invoke-direct {p0, v2, v1}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->insertIntoHeaderTable(ILcom/android/okhttp/internal/spdy/Header;)V

    goto :goto_0

    .line 240
    .end local v1    # "staticEntry":Lcom/android/okhttp/internal/spdy/Header;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTableIndex(I)I

    move-result v0

    .line 241
    .local v0, "headerTableIndex":I
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->referencedHeaders:Lcom/android/okhttp/internal/BitArray;

    invoke-interface {v2, v0}, Lcom/android/okhttp/internal/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 242
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->emittedHeaders:Ljava/util/List;

    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTable:[Lcom/android/okhttp/internal/spdy/Header;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->emittedReferencedHeaders:Lcom/android/okhttp/internal/BitArray;

    invoke-interface {v2, v0}, Lcom/android/okhttp/internal/BitArray;->set(I)V

    .line 245
    :cond_2
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->referencedHeaders:Lcom/android/okhttp/internal/BitArray;

    invoke-interface {v2, v0}, Lcom/android/okhttp/internal/BitArray;->toggle(I)V

    goto :goto_0
.end method

.method private readLiteralHeaderWithIncrementalIndexingIndexedName(I)V
    .locals 4
    .param p1, "nameIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->getName(I)Lcom/android/okio/ByteString;

    move-result-object v0

    .line 269
    .local v0, "name":Lcom/android/okio/ByteString;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->readByteString(Z)Lcom/android/okio/ByteString;

    move-result-object v1

    .line 270
    .local v1, "value":Lcom/android/okio/ByteString;
    const/4 v2, -0x1

    new-instance v3, Lcom/android/okhttp/internal/spdy/Header;

    invoke-direct {v3, v0, v1}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okio/ByteString;Lcom/android/okio/ByteString;)V

    invoke-direct {p0, v2, v3}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->insertIntoHeaderTable(ILcom/android/okhttp/internal/spdy/Header;)V

    .line 271
    return-void
.end method

.method private readLiteralHeaderWithIncrementalIndexingNewName()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->readByteString(Z)Lcom/android/okio/ByteString;

    move-result-object v0

    .line 275
    .local v0, "name":Lcom/android/okio/ByteString;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->readByteString(Z)Lcom/android/okio/ByteString;

    move-result-object v1

    .line 276
    .local v1, "value":Lcom/android/okio/ByteString;
    const/4 v2, -0x1

    new-instance v3, Lcom/android/okhttp/internal/spdy/Header;

    invoke-direct {v3, v0, v1}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okio/ByteString;Lcom/android/okio/ByteString;)V

    invoke-direct {p0, v2, v3}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->insertIntoHeaderTable(ILcom/android/okhttp/internal/spdy/Header;)V

    .line 277
    return-void
.end method

.method private readLiteralHeaderWithoutIndexingIndexedName(I)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->getName(I)Lcom/android/okio/ByteString;

    move-result-object v0

    .line 256
    .local v0, "name":Lcom/android/okio/ByteString;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->readByteString(Z)Lcom/android/okio/ByteString;

    move-result-object v1

    .line 257
    .local v1, "value":Lcom/android/okio/ByteString;
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->emittedHeaders:Ljava/util/List;

    new-instance v3, Lcom/android/okhttp/internal/spdy/Header;

    invoke-direct {v3, v0, v1}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okio/ByteString;Lcom/android/okio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    return-void
.end method

.method private readLiteralHeaderWithoutIndexingNewName()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->readByteString(Z)Lcom/android/okio/ByteString;

    move-result-object v0

    .line 262
    .local v0, "name":Lcom/android/okio/ByteString;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->readByteString(Z)Lcom/android/okio/ByteString;

    move-result-object v1

    .line 263
    .local v1, "value":Lcom/android/okio/ByteString;
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->emittedHeaders:Ljava/util/List;

    new-instance v3, Lcom/android/okhttp/internal/spdy/Header;

    invoke-direct {v3, v0, v1}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okio/ByteString;Lcom/android/okio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    return-void
.end method


# virtual methods
.method emitReferenceSet()V
    .locals 3

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTable:[Lcom/android/okhttp/internal/spdy/Header;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->nextHeaderIndex:I

    if-eq v0, v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->referencedHeaders:Lcom/android/okhttp/internal/BitArray;

    invoke-interface {v1, v0}, Lcom/android/okhttp/internal/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->emittedReferencedHeaders:Lcom/android/okhttp/internal/BitArray;

    invoke-interface {v1, v0}, Lcom/android/okhttp/internal/BitArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->emittedHeaders:Ljava/util/List;

    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTable:[Lcom/android/okhttp/internal/spdy/Header;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 218
    :cond_1
    return-void
.end method

.method getAndReset()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->emittedHeaders:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 226
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->emittedHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 227
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->emittedReferencedHeaders:Lcom/android/okhttp/internal/BitArray;

    invoke-interface {v1}, Lcom/android/okhttp/internal/BitArray;->clear()V

    .line 228
    return-object v0
.end method

.method maxHeaderTableByteCount()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->maxHeaderTableByteCount:I

    return v0
.end method

.method maxHeaderTableByteCount(I)V
    .locals 2
    .param p1, "newMaxHeaderTableByteCount"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->maxHeaderTableByteCount:I

    .line 139
    iget v0, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->maxHeaderTableByteCount:I

    iget v1, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTableByteCount:I

    if-ge v0, v1, :cond_0

    .line 140
    iget v0, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->maxHeaderTableByteCount:I

    if-nez v0, :cond_1

    .line 141
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->clearHeaderTable()V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget v0, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->headerTableByteCount:I

    iget v1, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->maxHeaderTableByteCount:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->evictToRecoverBytes(I)I

    goto :goto_0
.end method

.method readByteString(Z)Lcom/android/okio/ByteString;
    .locals 8
    .param p1, "asciiLowercase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->readByte()I

    move-result v1

    .line 368
    .local v1, "firstByte":I
    and-int/lit16 v4, v1, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_2

    const/4 v2, 0x1

    .line 369
    .local v2, "huffmanDecode":Z
    :goto_0
    const/16 v4, 0x7f

    invoke-virtual {p0, v1, v4}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->readInt(II)I

    move-result v3

    .line 371
    .local v3, "length":I
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->source:Lcom/android/okio/BufferedSource;

    int-to-long v6, v3

    invoke-interface {v4, v6, v7}, Lcom/android/okio/BufferedSource;->readByteString(J)Lcom/android/okio/ByteString;

    move-result-object v0

    .line 373
    .local v0, "byteString":Lcom/android/okio/ByteString;
    if-eqz v2, :cond_0

    .line 374
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->huffmanCodec:Lcom/android/okhttp/internal/spdy/Huffman$Codec;

    invoke-virtual {v4, v0}, Lcom/android/okhttp/internal/spdy/Huffman$Codec;->decode(Lcom/android/okio/ByteString;)Lcom/android/okio/ByteString;

    move-result-object v0

    .line 377
    :cond_0
    if-eqz p1, :cond_1

    .line 378
    invoke-virtual {v0}, Lcom/android/okio/ByteString;->toAsciiLowercase()Lcom/android/okio/ByteString;

    move-result-object v0

    .line 381
    :cond_1
    return-object v0

    .line 368
    .end local v0    # "byteString":Lcom/android/okio/ByteString;
    .end local v2    # "huffmanDecode":Z
    .end local v3    # "length":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method readHeaders()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x80

    const/16 v4, 0x40

    const/16 v3, 0x3f

    .line 181
    :goto_0
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v2}, Lcom/android/okio/BufferedSource;->exhausted()Z

    move-result v2

    if-nez v2, :cond_6

    .line 182
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v2}, Lcom/android/okio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 183
    .local v0, "b":I
    if-ne v0, v5, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->clearReferenceSet()V

    goto :goto_0

    .line 185
    :cond_0
    and-int/lit16 v2, v0, 0x80

    if-ne v2, v5, :cond_1

    .line 186
    const/16 v2, 0x7f

    invoke-virtual {p0, v0, v2}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->readInt(II)I

    move-result v1

    .line 187
    .local v1, "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->readIndexedHeader(I)V

    goto :goto_0

    .line 189
    .end local v1    # "index":I
    :cond_1
    if-ne v0, v4, :cond_2

    .line 190
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->readLiteralHeaderWithoutIndexingNewName()V

    goto :goto_0

    .line 191
    :cond_2
    and-int/lit8 v2, v0, 0x40

    if-ne v2, v4, :cond_3

    .line 192
    invoke-virtual {p0, v0, v3}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->readInt(II)I

    move-result v1

    .line 193
    .restart local v1    # "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->readLiteralHeaderWithoutIndexingIndexedName(I)V

    goto :goto_0

    .line 194
    .end local v1    # "index":I
    :cond_3
    if-nez v0, :cond_4

    .line 195
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->readLiteralHeaderWithIncrementalIndexingNewName()V

    goto :goto_0

    .line 196
    :cond_4
    and-int/lit16 v2, v0, 0xc0

    if-nez v2, :cond_5

    .line 197
    invoke-virtual {p0, v0, v3}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->readInt(II)I

    move-result v1

    .line 198
    .restart local v1    # "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->readLiteralHeaderWithIncrementalIndexingIndexedName(I)V

    goto :goto_0

    .line 201
    .end local v1    # "index":I
    :cond_5
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unhandled byte: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 205
    .end local v0    # "b":I
    :cond_6
    return-void
.end method

.method readInt(II)I
    .locals 5
    .param p1, "firstByte"    # I
    .param p2, "prefixMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    and-int v1, p1, p2

    .line 342
    .local v1, "prefix":I
    if-ge v1, p2, :cond_0

    .line 359
    .end local v1    # "prefix":I
    :goto_0
    return v1

    .line 347
    .restart local v1    # "prefix":I
    :cond_0
    move v2, p2

    .line 348
    .local v2, "result":I
    const/4 v3, 0x0

    .line 350
    .local v3, "shift":I
    :goto_1
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->readByte()I

    move-result v0

    .line 351
    .local v0, "b":I
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_1

    .line 352
    and-int/lit8 v4, v0, 0x7f

    shl-int/2addr v4, v3

    add-int/2addr v2, v4

    .line 353
    add-int/lit8 v3, v3, 0x7

    goto :goto_1

    .line 355
    :cond_1
    shl-int v4, v0, v3

    add-int/2addr v2, v4

    move v1, v2

    .line 359
    goto :goto_0
.end method
