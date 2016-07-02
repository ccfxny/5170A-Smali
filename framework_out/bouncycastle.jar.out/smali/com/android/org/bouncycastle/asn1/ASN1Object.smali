.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1Object;
.super Ljava/lang/Object;
.source "ASN1Object.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static hasEncodedTagValue(Ljava/lang/Object;I)Z
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "tagValue"    # I

    .prologue
    const/4 v0, 0x0

    .line 93
    instance-of v1, p0, [B

    if-eqz v1, :cond_0

    check-cast p0, [B

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [B

    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 67
    if-ne p0, p1, :cond_0

    .line 69
    const/4 v1, 0x1

    .line 79
    :goto_0
    return v1

    .line 72
    :cond_0
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    if-nez v1, :cond_1

    .line 74
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 77
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 79
    .local v0, "other":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 19
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 21
    .local v0, "aOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 23
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .locals 3
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    const-string v2, "DER"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 40
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 42
    .local v1, "dOut":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 44
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 56
    .end local v0    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dOut":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    :goto_0
    return-object v2

    .line 46
    :cond_0
    const-string v2, "DL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 49
    .restart local v0    # "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DLOutputStream;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DLOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 51
    .local v1, "dOut":Lcom/android/org/bouncycastle/asn1/DLOutputStream;
    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/asn1/DLOutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 53
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    goto :goto_0

    .line 56
    .end local v0    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dOut":Lcom/android/org/bouncycastle/asn1/DLOutputStream;
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v0

    return v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public abstract toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.end method
