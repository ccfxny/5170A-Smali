.class public Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "DERApplicationSpecific.java"


# instance fields
.field private final isConstructed:Z

.field private final octets:[B

.field private final tag:I


# direct methods
.method public constructor <init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "object"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 41
    return-void
.end method

.method public constructor <init>(ILcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 6
    .param p1, "tagNo"    # I
    .param p2, "vec"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 71
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    .line 72
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    .line 73
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 79
    :try_start_0
    invoke-virtual {p2, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Object;

    const-string v4, "DER"

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "malformed object: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 86
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    .line 87
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "octets"    # [B

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZI[B)V

    .line 33
    return-void
.end method

.method public constructor <init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 6
    .param p1, "explicit"    # Z
    .param p2, "tag"    # I
    .param p3, "object"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 48
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 49
    invoke-interface {p3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 51
    .local v2, "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    const-string v4, "DER"

    invoke-virtual {v2, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    .line 53
    .local v0, "data":[B
    if-nez p1, :cond_0

    instance-of v4, v2, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-nez v4, :cond_0

    instance-of v4, v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    .line 54
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    .line 56
    if-eqz p1, :cond_2

    .line 58
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    .line 67
    :goto_1
    return-void

    :cond_1
    move v4, v5

    .line 53
    goto :goto_0

    .line 62
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->getLengthOfHeader([B)I

    move-result v1

    .line 63
    .local v1, "lenBytes":I
    array-length v4, v0

    sub-int/2addr v4, v1

    new-array v3, v4, [B

    .line 64
    .local v3, "tmp":[B
    array-length v4, v3

    invoke-static {v0, v1, v3, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 65
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    goto :goto_1
.end method

.method constructor <init>(ZI[B)V
    .locals 0
    .param p1, "isConstructed"    # Z
    .param p2, "tag"    # I
    .param p3, "octets"    # [B

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 23
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    .line 24
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    .line 25
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    .line 26
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 91
    if-eqz p0, :cond_0

    instance-of v2, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;

    if-eqz v2, :cond_1

    .line 93
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;

    .end local p0    # "obj":Ljava/lang/Object;
    move-object v1, p0

    .line 112
    .restart local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 95
    :cond_1
    instance-of v2, p0, [B

    if-eqz v2, :cond_2

    .line 99
    :try_start_0
    check-cast p0, [B

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to construct object from byte[]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v2, :cond_3

    move-object v2, p0

    .line 108
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 110
    .local v1, "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v2, v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v2, :cond_3

    .line 112
    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;

    goto :goto_0

    .line 116
    .end local v1    # "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown object in getInstance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getLengthOfHeader([B)I
    .locals 5
    .param p1, "data"    # [B

    .prologue
    const/4 v2, 0x2

    .line 121
    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v0, v3, 0xff

    .line 123
    .local v0, "length":I
    const/16 v3, 0x80

    if-ne v0, v3, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v2

    .line 128
    :cond_1
    const/16 v3, 0x7f

    if-le v0, v3, :cond_0

    .line 130
    and-int/lit8 v1, v0, 0x7f

    .line 133
    .local v1, "size":I
    const/4 v2, 0x4

    if-le v1, v2, :cond_2

    .line 135
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DER length more than 4 bytes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    :cond_2
    add-int/lit8 v2, v1, 0x2

    goto :goto_0
.end method

.method private replaceTagNumber(I[B)[B
    .locals 8
    .param p1, "newTag"    # I
    .param p2, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 240
    aget-byte v5, p2, v7

    and-int/lit8 v3, v5, 0x1f

    .line 241
    .local v3, "tagNo":I
    const/4 v1, 0x1

    .line 245
    .local v1, "index":I
    const/16 v5, 0x1f

    if-ne v3, v5, :cond_2

    .line 247
    const/4 v3, 0x0

    .line 249
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aget-byte v5, p2, v1

    and-int/lit16 v0, v5, 0xff

    .line 253
    .local v0, "b":I
    and-int/lit8 v5, v0, 0x7f

    if-nez v5, :cond_0

    .line 255
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    const-string v6, "corrupted stream - invalid high tag number found"

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 258
    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_1

    .line 260
    and-int/lit8 v5, v0, 0x7f

    or-int/2addr v3, v5

    .line 261
    shl-int/lit8 v3, v3, 0x7

    .line 262
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v0, v5, 0xff

    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 265
    :cond_1
    and-int/lit8 v5, v0, 0x7f

    or-int/2addr v3, v5

    move v1, v2

    .line 268
    .end local v0    # "b":I
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_2
    array-length v5, p2

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x1

    new-array v4, v5, [B

    .line 270
    .local v4, "tmp":[B
    const/4 v5, 0x1

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    invoke-static {p2, v1, v4, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 272
    int-to-byte v5, p1

    aput-byte v5, v4, v7

    .line 274
    return-object v4
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 4
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .prologue
    const/4 v1, 0x0

    .line 220
    instance-of v2, p1, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;

    if-nez v2, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 225
    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;

    .line 227
    .local v0, "other":Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    iget-boolean v3, v0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    iget v3, v0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    iget-object v3, v0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 3
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    const/16 v0, 0x40

    .line 209
    .local v0, "classBits":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    if-eqz v1, :cond_0

    .line 211
    or-int/lit8 v0, v0, 0x20

    .line 214
    :cond_0
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(II[B)V

    .line 215
    return-void
.end method

.method encodedLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    array-length v1, v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getApplicationTag()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    return v0
.end method

.method public getContents()[B
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    return-object v0
.end method

.method public getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->getContents()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public getObject(I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4
    .param p1, "derTagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 181
    const/16 v2, 0x1f

    if-lt p1, v2, :cond_0

    .line 183
    new-instance v2, Ljava/io/IOException;

    const-string v3, "unsupported tag number"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->getEncoded()[B

    move-result-object v0

    .line 187
    .local v0, "orig":[B
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->replaceTagNumber(I[B)[B

    move-result-object v1

    .line 189
    .local v1, "tmp":[B
    aget-byte v2, v0, v3

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_1

    .line 191
    aget-byte v2, v1, v3

    or-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 194
    :cond_1
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    return-object v2
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConstructed()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    return v0
.end method
