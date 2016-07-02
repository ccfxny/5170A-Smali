.class public Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;
.super Ljava/lang/Object;
.source "X509V3CertificateGenerator.java"


# instance fields
.field private extGenerator:Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

.field private sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private sigOID:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field private signatureAlgorithm:Ljava/lang/String;

.field private tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    .line 56
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    .line 57
    return-void
.end method

.method private booleanToBitString([Z)Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 7
    .param p1, "id"    # [Z

    .prologue
    .line 204
    array-length v3, p1

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    new-array v0, v3, [B

    .line 206
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-eq v1, v3, :cond_1

    .line 208
    div-int/lit8 v4, v1, 0x8

    aget-byte v5, v0, v4

    aget-boolean v3, p1, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    rem-int/lit8 v6, v1, 0x8

    rsub-int/lit8 v6, v6, 0x7

    shl-int/2addr v3, v6

    :goto_1
    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 211
    :cond_1
    array-length v3, p1

    rem-int/lit8 v2, v3, 0x8

    .line 213
    .local v2, "pad":I
    if-nez v2, :cond_2

    .line 215
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v3, v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    .line 219
    :goto_2
    return-object v3

    :cond_2
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERBitString;

    rsub-int/lit8 v4, v2, 0x8

    invoke-direct {v3, v0, v4}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    goto :goto_2
.end method

.method private generateJcaObject(Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;[B)Ljava/security/cert/X509Certificate;
    .locals 3
    .param p1, "tbsCert"    # Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    .param p2, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 509
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 511
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 512
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 513
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v1, p2}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 515
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/Certificate;)V

    return-object v1
.end method

.method private generateTbsCert()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->generate()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setExtensions(Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;)V

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->generateTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;ZLcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 3
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .param p2, "critical"    # Z
    .param p3, "value"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->addExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 243
    return-void
.end method

.method public addExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Z[B)V
    .locals 3
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .param p2, "critical"    # Z
    .param p3, "value"    # [B

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->addExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    .line 267
    return-void
.end method

.method public addExtension(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "oid"    # Ljava/lang/String;
    .param p2, "critical"    # Z
    .param p3, "value"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    .line 231
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;ZLcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 232
    return-void
.end method

.method public addExtension(Ljava/lang/String;Z[B)V
    .locals 1
    .param p1, "oid"    # Ljava/lang/String;
    .param p2, "critical"    # Z
    .param p3, "value"    # [B

    .prologue
    .line 255
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Z[B)V

    .line 256
    return-void
.end method

.method public copyAndAddExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;ZLjava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .param p2, "critical"    # Z
    .param p3, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->copyAndAddExtension(Ljava/lang/String;ZLjava/security/cert/X509Certificate;)V

    .line 311
    return-void
.end method

.method public copyAndAddExtension(Ljava/lang/String;ZLjava/security/cert/X509Certificate;)V
    .locals 6
    .param p1, "oid"    # Ljava/lang/String;
    .param p2, "critical"    # Z
    .param p3, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p3, p1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 282
    .local v1, "extValue":[B
    if-nez v1, :cond_0

    .line 284
    new-instance v3, Ljava/security/cert/CertificateParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extension "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not present"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 289
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/android/org/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 291
    .local v2, "value":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    return-void

    .line 293
    .end local v2    # "value":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;
    .locals 1
    .param p1, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 412
    const/4 v0, 0x0

    check-cast v0, Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, v0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public generate(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 1
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 460
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .locals 8
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generateTbsCert()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v5

    .line 479
    .local v5, "tbsCert":Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->sigOID:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/x509/X509Util;->calculateSignature(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 488
    .local v7, "signature":[B
    :try_start_1
    invoke-direct {p0, v5, v7}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generateJcaObject(Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;[B)Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    .line 481
    .end local v7    # "signature":[B
    :catch_0
    move-exception v6

    .line 483
    .local v6, "e":Ljava/io/IOException;
    new-instance v0, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;

    const-string v1, "exception encoding TBS cert"

    invoke-direct {v0, v1, v6}, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 490
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v7    # "signature":[B
    :catch_1
    move-exception v6

    .line 492
    .local v6, "e":Ljava/security/cert/CertificateParsingException;
    new-instance v0, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;

    const-string v1, "exception producing certificate object"

    invoke-direct {v0, v1, v6}, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public generate(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .locals 5
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generateTbsCert()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v2

    .line 434
    .local v2, "tbsCert":Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    :try_start_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->sigOID:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v4, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    invoke-static {v3, v4, p1, p2, v2}, Lcom/android/org/bouncycastle/x509/X509Util;->calculateSignature(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 443
    .local v1, "signature":[B
    :try_start_1
    invoke-direct {p0, v2, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generateJcaObject(Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;[B)Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    return-object v3

    .line 436
    .end local v1    # "signature":[B
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;

    const-string v4, "exception encoding TBS cert"

    invoke-direct {v3, v4, v0}, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 445
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "signature":[B
    :catch_1
    move-exception v0

    .line 447
    .local v0, "e":Ljava/security/cert/CertificateParsingException;
    new-instance v3, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;

    const-string v4, "exception producing certificate object"

    invoke-direct {v3, v4, v0}, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public generateX509Certificate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;
    .locals 3
    .param p1, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 324
    :try_start_0
    const-string v1, "BC"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 326
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "BC provider not installed!"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 1
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .locals 4
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 380
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    return-object v1

    .line 382
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/security/NoSuchProviderException;
    throw v0

    .line 386
    .end local v0    # "e":Ljava/security/NoSuchProviderException;
    :catch_1
    move-exception v0

    .line 388
    .local v0, "e":Ljava/security/SignatureException;
    throw v0

    .line 390
    .end local v0    # "e":Ljava/security/SignatureException;
    :catch_2
    move-exception v0

    .line 392
    .local v0, "e":Ljava/security/InvalidKeyException;
    throw v0

    .line 394
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v0

    .line 396
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public generateX509Certificate(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .locals 3
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 345
    :try_start_0
    const-string v1, "BC"

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 347
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "BC provider not installed!"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSignatureAlgNames()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 525
    invoke-static {}, Lcom/android/org/bouncycastle/x509/X509Util;->getAlgNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    .line 65
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->reset()V

    .line 66
    return-void
.end method

.method public setIssuerDN(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .locals 1
    .param p1, "issuer"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuer(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    .line 107
    return-void
.end method

.method public setIssuerDN(Ljavax/security/auth/x500/X500Principal;)V
    .locals 4
    .param p1, "issuer"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v2, Lcom/android/org/bouncycastle/jce/X509Principal;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuer(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t process principal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setIssuerUniqueID([Z)V
    .locals 2
    .param p1, "uniqueID"    # [Z

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->booleanToBitString([Z)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuerUniqueID(Lcom/android/org/bouncycastle/asn1/DERBitString;)V

    .line 200
    return-void
.end method

.method public setNotAfter(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setEndDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V

    .line 119
    return-void
.end method

.method public setNotBefore(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setStartDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V

    .line 113
    return-void
.end method

.method public setPublicKey(Ljava/security/PublicKey;)V
    .locals 4
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to process key - "

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
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "serialNumber"    # Ljava/math/BigInteger;

    .prologue
    .line 74
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serial number must be a positive integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSerialNumber(Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V

    .line 80
    return-void
.end method

.method public setSignatureAlgorithm(Ljava/lang/String;)V
    .locals 4
    .param p1, "signatureAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    .line 174
    :try_start_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/X509Util;->getAlgorithmOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->sigOID:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->sigOID:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-static {v1, p1}, Lcom/android/org/bouncycastle/x509/X509Util;->getSigAlgID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 183
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    iget-object v2, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSignature(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 184
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown signature type requested: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSubjectDN(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .locals 1
    .param p1, "subject"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubject(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    .line 144
    return-void
.end method

.method public setSubjectDN(Ljavax/security/auth/x500/X500Principal;)V
    .locals 4
    .param p1, "subject"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v2, Lcom/android/org/bouncycastle/jce/X509Principal;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubject(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t process principal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSubjectUniqueID([Z)V
    .locals 2
    .param p1, "uniqueID"    # [Z

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->booleanToBitString([Z)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubjectUniqueID(Lcom/android/org/bouncycastle/asn1/DERBitString;)V

    .line 192
    return-void
.end method
