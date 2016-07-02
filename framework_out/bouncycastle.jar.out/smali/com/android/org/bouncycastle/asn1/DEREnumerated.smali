.class public Lcom/android/org/bouncycastle/asn1/DEREnumerated;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "DEREnumerated.java"


# static fields
.field private static cache:[Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;


# instance fields
.field bytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->cache:[Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 80
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 89
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    .line 90
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    .line 99
    return-void
.end method

.method static fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    .locals 4
    .param p0, "enc"    # [B

    .prologue
    .line 145
    array-length v2, p0

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 147
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;-><init>([B)V

    .line 168
    :cond_0
    :goto_0
    return-object v0

    .line 150
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 152
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ENUMERATED has zero length"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :cond_2
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v1, v2, 0xff

    .line 156
    .local v1, "value":I
    sget-object v2, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->cache:[Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 158
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;-><init>([B)V

    goto :goto_0

    .line 161
    :cond_3
    sget-object v2, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->cache:[Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    aget-object v0, v2, v1

    .line 163
    .local v0, "possibleMatch":Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    if-nez v0, :cond_0

    .line 165
    sget-object v2, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->cache:[Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    .end local v0    # "possibleMatch":Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;-><init>([B)V

    aput-object v0, v2, v1

    .restart local v0    # "possibleMatch":Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    goto :goto_0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    .locals 2
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 64
    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_0

    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    if-eqz v1, :cond_1

    .line 66
    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v1

    .line 70
    .end local v0    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :goto_0
    return-object v1

    .restart local v0    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .end local v0    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 24
    if-eqz p0, :cond_0

    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    if-eqz v1, :cond_1

    .line 26
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    .end local p0    # "obj":Ljava/lang/Object;
    move-object v1, p0

    .line 38
    :goto_0
    return-object v1

    .line 29
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    if-eqz v1, :cond_2

    .line 31
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 34
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v1, p0, [B

    if-eqz v1, :cond_3

    .line 38
    :try_start_0
    check-cast p0, [B

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoding error in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal object in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 3
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .prologue
    .line 126
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    if-nez v1, :cond_0

    .line 128
    const/4 v1, 0x0

    .line 133
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 131
    check-cast v0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    .line 133
    .local v0, "other":Lcom/android/org/bouncycastle/asn1/DEREnumerated;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 2
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    invoke-virtual {p1, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    .line 121
    return-void
.end method

.method encodedLength()I
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    array-length v0, v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method isConstructed()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method
