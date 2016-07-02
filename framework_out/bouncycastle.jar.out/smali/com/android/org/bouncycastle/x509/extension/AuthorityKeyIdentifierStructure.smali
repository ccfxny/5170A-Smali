.class public Lcom/android/org/bouncycastle/x509/extension/AuthorityKeyIdentifierStructure;
.super Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
.source "AuthorityKeyIdentifierStructure.java"


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/Extension;)V
    .locals 1
    .param p1, "extension"    # Lcom/android/org/bouncycastle/asn1/x509/Extension;

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/X509Extension;)V
    .locals 1
    .param p1, "extension"    # Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getParsedValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "pubKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/extension/AuthorityKeyIdentifierStructure;->fromKey(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/extension/AuthorityKeyIdentifierStructure;->fromCertificate(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 137
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "encodedValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 39
    return-void
.end method

.method private static fromCertificate(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .locals 9
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 72
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/PrincipalUtil;->getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/jce/X509Principal;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    .line 73
    .local v2, "genName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v3, v5}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 76
    .local v3, "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v6, v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v5, v3, v6, v7}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->toASN1Object()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 97
    .end local v3    # "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :goto_0
    return-object v5

    .line 81
    .end local v2    # "genName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :cond_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/PrincipalUtil;->getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/jce/X509Principal;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    .line 83
    .restart local v2    # "genName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->SubjectKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 85
    .local v1, "ext":[B
    if-eqz v1, :cond_1

    .line 87
    invoke-static {v1}, Lcom/android/org/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 89
    .local v4, "str":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    new-instance v7, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v7, v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>([BLcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->toASN1Object()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    goto :goto_0

    .line 94
    .end local v4    # "str":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :cond_1
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v3, v5}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 97
    .restart local v3    # "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v6, v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v5, v3, v6, v7}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->toASN1Object()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    .end local v1    # "ext":[B
    .end local v2    # "genName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v3    # "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception extracting certificate details: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static fromKey(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .locals 5
    .param p0, "pubKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 114
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 117
    .local v1, "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->toASN1Object()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 119
    .end local v1    # "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t process key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
