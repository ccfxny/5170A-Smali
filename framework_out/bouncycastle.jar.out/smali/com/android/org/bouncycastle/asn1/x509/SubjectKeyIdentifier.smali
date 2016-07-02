.class public Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "SubjectKeyIdentifier.java"


# instance fields
.field private keyidentifier:[B


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V
    .locals 1
    .param p1, "keyid"    # Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 1
    .param p1, "spki"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 84
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getDigest(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    .line 85
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "keyid"    # [B

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    .line 55
    return-void
.end method

.method public static createSHA1KeyIdentifier(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 1
    .param p0, "keyInfo"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .prologue
    .line 100
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    return-object v0
.end method

.method public static createTruncatedSHA1KeyIdentifier(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 5
    .param p0, "keyInfo"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .prologue
    const/4 v4, 0x0

    .line 116
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getDigest(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object v0

    .line 117
    .local v0, "dig":[B
    const/16 v2, 0x8

    new-array v1, v2, [B

    .line 119
    .local v1, "id":[B
    array-length v2, v0

    add-int/lit8 v2, v2, -0x8

    array-length v3, v1

    invoke-static {v0, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 121
    aget-byte v2, v1, v4

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 122
    aget-byte v2, v1, v4

    or-int/lit8 v2, v2, 0x40

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 124
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>([B)V

    return-object v2
.end method

.method public static fromExtensions(Lcom/android/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 1
    .param p0, "extensions"    # Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    .prologue
    .line 48
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method private static getDigest(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    .locals 5
    .param p0, "spki"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .prologue
    const/4 v4, 0x0

    .line 130
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    .line 132
    .local v1, "digest":Lcom/android/org/bouncycastle/crypto/Digest;
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v2, v3, [B

    .line 134
    .local v2, "resBuf":[B
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    .line 135
    .local v0, "bytes":[B
    array-length v3, v0

    invoke-interface {v1, v0, v4, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 136
    invoke-interface {v1, v2, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 137
    return-object v2
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 28
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 34
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    if-eqz v0, :cond_0

    .line 36
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    .line 43
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 38
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 40
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    move-object p0, v0

    goto :goto_0

    .line 43
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getKeyIdentifier()[B
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method
