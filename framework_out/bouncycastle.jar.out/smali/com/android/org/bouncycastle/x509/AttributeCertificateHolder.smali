.class public Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;
.super Ljava/lang/Object;
.source "AttributeCertificateHolder.java"

# interfaces
.implements Ljava/security/cert/CertSelector;
.implements Lcom/android/org/bouncycastle/util/Selector;


# instance fields
.field final holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 5
    .param p1, "digestedObjectType"    # I
    .param p2, "digestAlgorithm"    # Ljava/lang/String;
    .param p3, "otherObjectTypeID"    # Ljava/lang/String;
    .param p4, "objectDigest"    # [B

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Holder;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, p3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v3, p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    .line 131
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Holder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/jce/X509Principal;)V
    .locals 2
    .param p1, "principal"    # Lcom/android/org/bouncycastle/jce/X509Principal;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->generateGeneralNames(Lcom/android/org/bouncycastle/jce/X509Principal;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/jce/X509Principal;Ljava/math/BigInteger;)V
    .locals 4
    .param p1, "issuerName"    # Lcom/android/org/bouncycastle/jce/X509Principal;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Holder;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v3, p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v3, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 7
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    :try_start_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/PrincipalUtil;->getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/jce/X509Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 88
    .local v1, "name":Lcom/android/org/bouncycastle/jce/X509Principal;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/Holder;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->generateGeneralNames(Lcom/android/org/bouncycastle/jce/X509Principal;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    .line 90
    return-void

    .line 83
    .end local v1    # "name":Lcom/android/org/bouncycastle/jce/X509Principal;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1
    .param p1, "principal"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 99
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/X509Util;->convertPrincipal(Ljavax/security/auth/x500/X500Principal;)Lcom/android/org/bouncycastle/jce/X509Principal;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lcom/android/org/bouncycastle/jce/X509Principal;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "issuerName"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;

    .prologue
    .line 71
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/X509Util;->convertPrincipal(Ljavax/security/auth/x500/X500Principal;)Lcom/android/org/bouncycastle/jce/X509Principal;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lcom/android/org/bouncycastle/jce/X509Principal;Ljava/math/BigInteger;)V

    .line 72
    return-void
.end method

.method private generateGeneralNames(Lcom/android/org/bouncycastle/jce/X509Principal;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .locals 2
    .param p1, "principal"    # Lcom/android/org/bouncycastle/jce/X509Principal;

    .prologue
    .line 204
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    return-object v0
.end method

.method private getNames([Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)[Ljava/lang/Object;
    .locals 5
    .param p1, "names"    # [Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    .prologue
    .line 236
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 238
    .local v2, "l":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-eq v1, v3, :cond_1

    .line 240
    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 244
    :try_start_0
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    aget-object v4, p1, v1

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "badly formed Name object"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 254
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method private getPrincipals(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;
    .locals 4
    .param p1, "names"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .prologue
    .line 259
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->getNames([Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)[Ljava/lang/Object;

    move-result-object v2

    .line 260
    .local v2, "p":[Ljava/lang/Object;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v1, "l":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-eq v0, v3, :cond_1

    .line 264
    aget-object v3, v2, v0

    instance-of v3, v3, Ljava/security/Principal;

    if-eqz v3, :cond_0

    .line 266
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/security/Principal;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/security/Principal;

    check-cast v3, [Ljava/security/Principal;

    return-object v3
.end method

.method private matchesDN(Lcom/android/org/bouncycastle/jce/X509Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z
    .locals 5
    .param p1, "subject"    # Lcom/android/org/bouncycastle/jce/X509Principal;
    .param p2, "targets"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .prologue
    .line 209
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 211
    .local v2, "names":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-eq v1, v3, :cond_1

    .line 213
    aget-object v0, v2, v1

    .line 215
    .local v0, "gn":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 219
    :try_start_0
    new-instance v3, Lcom/android/org/bouncycastle/jce/X509Principal;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-virtual {v3, p1}, Lcom/android/org/bouncycastle/jce/X509Principal;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    const/4 v3, 0x1

    .line 231
    .end local v0    # "gn":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :goto_1
    return v3

    .line 225
    .restart local v0    # "gn":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :catch_0
    move-exception v3

    .line 211
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    .end local v0    # "gn":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 324
    new-instance v1, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->toASN1Object()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 391
    if-ne p1, p0, :cond_0

    .line 393
    const/4 v1, 0x1

    .line 403
    :goto_0
    return v1

    .line 396
    :cond_0
    instance-of v1, p1, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;

    if-nez v1, :cond_1

    .line 398
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 401
    check-cast v0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;

    .line 403
    .local v0, "other":Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    iget-object v2, v0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getDigestAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getDigestAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDigestedObjectType()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getDigestedObjectType()Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 154
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getEntityNames()[Ljava/security/Principal;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getEntityName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getEntityName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->getPrincipals(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIssuer()[Ljava/security/Principal;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->getPrincipals(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getObjectDigest()[B
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getObjectDigest()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOtherObjectTypeID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getOtherObjectTypeID()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 199
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    .line 319
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->hashCode()I

    move-result v0

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 413
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 415
    const/4 v0, 0x0

    .line 418
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    check-cast p1, Ljava/security/cert/Certificate;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    goto :goto_0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 7
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 330
    instance-of v5, p1, Ljava/security/cert/X509Certificate;

    if-nez v5, :cond_1

    .line 386
    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v2, p1

    .line 335
    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 339
    .local v2, "x509Cert":Ljava/security/cert/X509Certificate;
    :try_start_0
    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 341
    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v2}, Lcom/android/org/bouncycastle/jce/PrincipalUtil;->getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/jce/X509Principal;

    move-result-object v5

    iget-object v6, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->matchesDN(Lcom/android/org/bouncycastle/jce/X509Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    .line 345
    :cond_3
    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getEntityName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 347
    invoke-static {v2}, Lcom/android/org/bouncycastle/jce/PrincipalUtil;->getSubjectX509Principal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/jce/X509Principal;

    move-result-object v5

    iget-object v6, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getEntityName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->matchesDN(Lcom/android/org/bouncycastle/jce/X509Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v4, v3

    .line 350
    goto :goto_0

    .line 353
    :cond_4
    iget-object v3, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    if-eqz v3, :cond_0

    .line 355
    const/4 v1, 0x0

    .line 358
    .local v1, "md":Ljava/security/MessageDigest;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    const-string v5, "BC"

    invoke-static {v3, v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 365
    :try_start_2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->getDigestedObjectType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 375
    :goto_2
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->getObjectDigest()[B

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 369
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_2

    .line 381
    .end local v1    # "md":Ljava/security/MessageDigest;
    :catch_1
    move-exception v0

    .line 383
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    goto/16 :goto_0

    .line 372
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v1    # "md":Ljava/security/MessageDigest;
    :pswitch_1
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
