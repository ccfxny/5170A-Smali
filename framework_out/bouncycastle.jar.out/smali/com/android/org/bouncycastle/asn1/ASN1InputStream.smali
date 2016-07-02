.class public Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
.super Ljava/io/FilterInputStream;
.source "ASN1InputStream.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/BERTags;


# instance fields
.field private final lazyEvaluate:Z

.field private final limit:I

.field private final tmpBuffers:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 29
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "limit"    # I

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "limit"    # I
    .param p3, "lazyEvaluate"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 99
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    .line 100
    iput-boolean p3, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    .line 101
    const/16 v0, 0xb

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "lazyEvaluate"    # Z

    .prologue
    .line 82
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 83
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "input"    # [B

    .prologue
    .line 41
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 42
    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 2
    .param p1, "input"    # [B
    .param p2, "lazyEvaluate"    # Z

    .prologue
    .line 55
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 56
    return-void
.end method

.method static createPrimitiveDERObject(ILcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 3
    .param p0, "tagNo"    # I
    .param p1, "defIn"    # Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .param p2, "tmpBuffers"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    packed-switch p0, :pswitch_data_0

    .line 463
    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " encountered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->fromInputStream(ILjava/io/InputStream;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    .line 461
    :goto_0
    return-object v0

    .line 429
    :pswitch_2
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->getBMPCharBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>([C)V

    goto :goto_0

    .line 431
    :pswitch_3
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    goto :goto_0

    .line 433
    :pswitch_4
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v0

    goto :goto_0

    .line 435
    :pswitch_5
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>([B)V

    goto :goto_0

    .line 437
    :pswitch_6
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERGeneralString;-><init>([B)V

    goto :goto_0

    .line 439
    :pswitch_7
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>([B)V

    goto :goto_0

    .line 441
    :pswitch_8
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>([B)V

    goto :goto_0

    .line 443
    :pswitch_9
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    goto :goto_0

    .line 445
    :pswitch_a
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERNumericString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERNumericString;-><init>([B)V

    goto :goto_0

    .line 447
    :pswitch_b
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    goto :goto_0

    .line 449
    :pswitch_c
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    goto :goto_0

    .line 451
    :pswitch_d
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>([B)V

    goto :goto_0

    .line 453
    :pswitch_e
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERT61String;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERT61String;-><init>([B)V

    goto :goto_0

    .line 455
    :pswitch_f
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERUniversalString;-><init>([B)V

    goto/16 :goto_0

    .line 457
    :pswitch_10
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;-><init>([B)V

    goto/16 :goto_0

    .line 459
    :pswitch_11
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERUTF8String;-><init>([B)V

    goto/16 :goto_0

    .line 461
    :pswitch_12
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERVisibleString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERVisibleString;-><init>([B)V

    goto/16 :goto_0

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_8
        :pswitch_1
        :pswitch_c
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_7
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_12
        :pswitch_6
        :pswitch_f
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getBMPCharBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)[C
    .locals 8
    .param p0, "defIn"    # Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v6

    div-int/lit8 v3, v6, 0x2

    .line 398
    .local v3, "len":I
    new-array v0, v3, [C

    .line 399
    .local v0, "buf":[C
    const/4 v4, 0x0

    .local v4, "totalRead":I
    move v5, v4

    .line 400
    .end local v4    # "totalRead":I
    .local v5, "totalRead":I
    :goto_0
    if-ge v5, v3, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->read()I

    move-result v1

    .line 403
    .local v1, "ch1":I
    if-gez v1, :cond_1

    .line 415
    .end local v1    # "ch1":I
    :cond_0
    return-object v0

    .line 407
    .restart local v1    # "ch1":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->read()I

    move-result v2

    .line 408
    .local v2, "ch2":I
    if-ltz v2, :cond_0

    .line 412
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "totalRead":I
    .restart local v4    # "totalRead":I
    shl-int/lit8 v6, v1, 0x8

    and-int/lit16 v7, v2, 0xff

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v0, v5

    move v5, v4

    .line 413
    .end local v4    # "totalRead":I
    .restart local v5    # "totalRead":I
    goto :goto_0
.end method

.method private static getBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B
    .locals 4
    .param p0, "defIn"    # Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .param p1, "tmpBuffers"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v1

    .line 375
    .local v1, "len":I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v2

    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 377
    aget-object v0, p1, v1

    .line 379
    .local v0, "buf":[B
    if-nez v0, :cond_0

    .line 381
    new-array v0, v1, [B

    .end local v0    # "buf":[B
    aput-object v0, p1, v1

    .line 384
    .restart local v0    # "buf":[B
    :cond_0
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    .line 390
    .end local v0    # "buf":[B
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method

.method static readLength(Ljava/io/InputStream;I)I
    .locals 7
    .param p0, "s"    # Ljava/io/InputStream;
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 324
    .local v1, "length":I
    if-gez v1, :cond_0

    .line 326
    new-instance v4, Ljava/io/EOFException;

    const-string v5, "EOF found when length expected"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 329
    :cond_0
    const/16 v4, 0x80

    if-ne v1, v4, :cond_1

    .line 331
    const/4 v4, -0x1

    .line 368
    :goto_0
    return v4

    .line 334
    :cond_1
    const/16 v4, 0x7f

    if-le v1, v4, :cond_6

    .line 336
    and-int/lit8 v3, v1, 0x7f

    .line 339
    .local v3, "size":I
    const/4 v4, 0x4

    if-le v3, v4, :cond_2

    .line 341
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DER length more than 4 bytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 344
    :cond_2
    const/4 v1, 0x0

    .line 345
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_4

    .line 347
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 349
    .local v2, "next":I
    if-gez v2, :cond_3

    .line 351
    new-instance v4, Ljava/io/EOFException;

    const-string v5, "EOF found reading length"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 354
    :cond_3
    shl-int/lit8 v4, v1, 0x8

    add-int v1, v4, v2

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 357
    .end local v2    # "next":I
    :cond_4
    if-gez v1, :cond_5

    .line 359
    new-instance v4, Ljava/io/IOException;

    const-string v5, "corrupted stream - negative length found"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 362
    :cond_5
    if-lt v1, p1, :cond_6

    .line 364
    new-instance v4, Ljava/io/IOException;

    const-string v5, "corrupted stream - out of bounds length found"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v0    # "i":I
    .end local v3    # "size":I
    :cond_6
    move v4, v1

    .line 368
    goto :goto_0
.end method

.method static readTagNumber(Ljava/io/InputStream;I)I
    .locals 4
    .param p0, "s"    # Ljava/io/InputStream;
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    and-int/lit8 v1, p1, 0x1f

    .line 289
    .local v1, "tagNo":I
    const/16 v2, 0x1f

    if-ne v1, v2, :cond_3

    .line 291
    const/4 v1, 0x0

    .line 293
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 297
    .local v0, "b":I
    and-int/lit8 v2, v0, 0x7f

    if-nez v2, :cond_0

    .line 299
    new-instance v2, Ljava/io/IOException;

    const-string v3, "corrupted stream - invalid high tag number found"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 302
    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1

    .line 304
    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    .line 305
    shl-int/lit8 v1, v1, 0x7

    .line 306
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    .line 309
    :cond_1
    if-gez v0, :cond_2

    .line 311
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "EOF found inside tag value."

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 314
    :cond_2
    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    .line 317
    .end local v0    # "b":I
    :cond_3
    return v1
.end method


# virtual methods
.method buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .locals 1
    .param p1, "dIn"    # Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildEncodableVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    return-object v0
.end method

.method buildEncodableVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 193
    .local v1, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 198
    :cond_0
    return-object v1
.end method

.method protected buildObject(III)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 8
    .param p1, "tag"    # I
    .param p2, "tagNo"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    and-int/lit8 v5, p1, 0x20

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 136
    .local v2, "isConstructed":Z
    :goto_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-direct {v0, p0, p3}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 138
    .local v0, "defIn":Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    and-int/lit8 v5, p1, 0x40

    if-eqz v5, :cond_1

    .line 140
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v2, p2, v6}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZI[B)V

    .line 184
    :goto_1
    return-object v5

    .line 134
    .end local v0    # "defIn":Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .end local v2    # "isConstructed":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 143
    .restart local v0    # "defIn":Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .restart local v2    # "isConstructed":Z
    :cond_1
    and-int/lit16 v5, p1, 0x80

    if-eqz v5, :cond_2

    .line 145
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v5, v2, p2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readTaggedObject(ZI)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    goto :goto_1

    .line 148
    :cond_2
    if-eqz v2, :cond_5

    .line 151
    sparse-switch p2, :sswitch_data_0

    .line 180
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " encountered"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 157
    :sswitch_0
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v4

    .line 158
    .local v4, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v5

    new-array v3, v5, [Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 160
    .local v3, "strings":[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v5, v3

    if-eq v1, v5, :cond_3

    .line 162
    invoke-virtual {v4, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    aput-object v5, v3, v1

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 165
    :cond_3
    new-instance v5, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    invoke-direct {v5, v3}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    goto :goto_1

    .line 167
    .end local v1    # "i":I
    .end local v3    # "strings":[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v4    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :sswitch_1
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    if-eqz v5, :cond_4

    .line 169
    new-instance v5, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;-><init>([B)V

    goto :goto_1

    .line 173
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/DERFactory;->createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v5

    goto :goto_1

    .line 176
    :sswitch_2
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/DERFactory;->createSet(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    goto :goto_1

    .line 178
    :sswitch_3
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERExternal;

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/DERExternal;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    goto :goto_1

    .line 184
    :cond_5
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    invoke-static {p2, v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(ILcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    goto/16 :goto_1

    .line 151
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method getLimit()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    return v0
.end method

.method protected readFully([B)V
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 121
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF encountered in middle of object"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    return-void
.end method

.method protected readLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 210
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->read()I

    move-result v5

    .line 211
    .local v5, "tag":I
    if-gtz v5, :cond_1

    .line 213
    if-nez v5, :cond_0

    .line 215
    new-instance v7, Ljava/io/IOException;

    const-string v8, "unexpected end-of-contents marker"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 218
    :cond_0
    const/4 v7, 0x0

    .line 272
    :goto_0
    return-object v7

    .line 224
    :cond_1
    invoke-static {p0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v6

    .line 226
    .local v6, "tagNo":I
    and-int/lit8 v8, v5, 0x20

    if-eqz v8, :cond_2

    move v2, v7

    .line 231
    .local v2, "isConstructed":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readLength()I

    move-result v3

    .line 233
    .local v3, "length":I
    if-gez v3, :cond_6

    .line 235
    if-nez v2, :cond_3

    .line 237
    new-instance v7, Ljava/io/IOException;

    const-string v8, "indefinite length primitive encoding encountered"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 226
    .end local v2    # "isConstructed":Z
    .end local v3    # "length":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 240
    .restart local v2    # "isConstructed":Z
    .restart local v3    # "length":I
    :cond_3
    new-instance v1, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    iget v8, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v1, p0, v8}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 241
    .local v1, "indIn":Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iget v8, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v4, v1, v8}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 243
    .local v4, "sp":Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
    and-int/lit8 v8, v5, 0x40

    if-eqz v8, :cond_4

    .line 245
    new-instance v7, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {v7, v6, v4}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    goto :goto_0

    .line 248
    :cond_4
    and-int/lit16 v8, v5, 0x80

    if-eqz v8, :cond_5

    .line 250
    new-instance v8, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v8, v7, v6, v4}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    goto :goto_0

    .line 254
    :cond_5
    sparse-switch v6, :sswitch_data_0

    .line 265
    new-instance v7, Ljava/io/IOException;

    const-string v8, "unknown BER object encountered"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 257
    :sswitch_0
    new-instance v7, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    goto :goto_0

    .line 259
    :sswitch_1
    new-instance v7, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;

    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    goto :goto_0

    .line 261
    :sswitch_2
    new-instance v7, Lcom/android/org/bouncycastle/asn1/BERSetParser;

    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/asn1/BERSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/BERSetParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    goto :goto_0

    .line 263
    :sswitch_3
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERExternalParser;

    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    goto :goto_0

    .line 272
    .end local v1    # "indIn":Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    .end local v4    # "sp":Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
    :cond_6
    :try_start_0
    invoke-virtual {p0, v5, v6, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildObject(III)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    const-string v8, "corrupted stream detected"

    invoke-direct {v7, v8, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 254
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method
