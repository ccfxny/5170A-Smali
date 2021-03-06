.class public Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;
.super Ljava/security/cert/X509CRL;
.source "X509CRLObject.java"


# instance fields
.field private c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

.field private hashCodeValue:I

.field private isHashCodeSet:Z

.field private isIndirect:Z

.field private sigAlgName:Ljava/lang/String;

.field private sigAlgParams:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)V
    .locals 4
    .param p1, "c"    # Lcom/android/org/bouncycastle/asn1/x509/CertificateList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 62
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->isHashCodeSet:Z

    .line 85
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    .line 89
    :try_start_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/X509SignatureUtil;->getSignatureName(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->sigAlgName:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->sigAlgParams:[B

    .line 100
    :goto_0
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->isIndirectCRL(Ljava/security/cert/X509CRL;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->isIndirect:Z

    .line 106
    return-void

    .line 97
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->sigAlgParams:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CRLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CRL contents invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getExtensionOIDs(Z)Ljava/util/Set;
    .locals 7
    .param p1, "critical"    # Z

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getVersion()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 131
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v2

    .line 133
    .local v2, "extensions":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v2, :cond_1

    .line 135
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 136
    .local v4, "set":Ljava/util/Set;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    .line 138
    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 140
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 141
    .local v3, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    .line 143
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v5

    if-ne p1, v5, :cond_0

    .line 145
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v1    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .end local v2    # "extensions":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    .end local v3    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v4    # "set":Ljava/util/Set;
    :cond_1
    const/4 v4, 0x0

    :cond_2
    return-object v4
.end method

.method static isIndirectCRL(Ljava/security/cert/X509CRL;)Z
    .locals 4
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 71
    .local v1, "idp":[B
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->isIndirectCRL()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 74
    .end local v1    # "idp":[B
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/ExtCRLException;

    const-string v3, "Exception reading IssuingDistributionPoint"

    invoke-direct {v2, v3, v0}, Lcom/android/org/bouncycastle/jce/provider/ExtCRLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private loadCRLEntries()Ljava/util/Set;
    .locals 8

    .prologue
    .line 278
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 279
    .local v4, "entrySet":Ljava/util/Set;
    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    .line 281
    .local v0, "certs":Ljava/util/Enumeration;
    const/4 v5, 0x0

    .line 282
    .local v5, "previousCertificateIssuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 284
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 285
    .local v3, "entry":Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;

    iget-boolean v6, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->isIndirect:Z

    invoke-direct {v1, v3, v6, v5}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;ZLcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    .line 286
    .local v1, "crlEntry":Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 287
    iget-boolean v6, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->isIndirect:Z

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->hasExtensions()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 289
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v6

    sget-object v7, Lcom/android/org/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v2

    .line 291
    .local v2, "currentCaName":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    if-eqz v2, :cond_0

    .line 293
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    goto :goto_0

    .line 298
    .end local v1    # "crlEntry":Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;
    .end local v2    # "currentCaName":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .end local v3    # "entry":Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    :cond_1
    return-object v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 582
    if-ne p0, p1, :cond_1

    .line 584
    const/4 v2, 0x1

    .line 611
    :cond_0
    :goto_0
    return v2

    .line 587
    :cond_1
    instance-of v3, p1, Ljava/security/cert/X509CRL;

    if-eqz v3, :cond_0

    .line 592
    instance-of v3, p1, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 594
    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;

    .line 596
    .local v0, "crlObject":Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;
    iget-boolean v3, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->isHashCodeSet:Z

    if-eqz v3, :cond_2

    .line 598
    iget-boolean v1, v0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->isHashCodeSet:Z

    .line 599
    .local v1, "otherIsHashCodeSet":Z
    if-eqz v1, :cond_2

    .line 601
    iget v3, v0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->hashCodeValue:I

    iget v4, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->hashCodeValue:I

    if-ne v3, v4, :cond_0

    .line 608
    .end local v1    # "otherIsHashCodeSet":Z
    :cond_2
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 611
    .end local v0    # "crlObject":Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;
    :cond_3
    invoke-super {p0, p1}, Ljava/security/cert/X509CRL;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 197
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 6
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    .line 168
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v2

    .line 170
    .local v2, "exts":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v2, :cond_0

    .line 172
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    .line 174
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    if-eqz v1, :cond_0

    .line 178
    :try_start_0
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getEncoded()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 187
    .end local v1    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    :goto_0
    return-object v3

    .line 180
    .restart local v1    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 187
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 2

    .prologue
    .line 246
    new-instance v0, Lcom/android/org/bouncycastle/jce/X509Principal;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 3

    .prologue
    .line 253
    :try_start_0
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 255
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "can\'t encode issuer DN"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNextUpdate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getNextUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getNextUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 273
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
    .locals 6
    .param p1, "serialNumber"    # Ljava/math/BigInteger;

    .prologue
    .line 303
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    .line 305
    .local v0, "certs":Ljava/util/Enumeration;
    const/4 v3, 0x0

    .line 306
    .local v3, "previousCertificateIssuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 308
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 310
    .local v2, "entry":Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getUserCertificate()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 312
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;

    iget-boolean v5, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->isIndirect:Z

    invoke-direct {v4, v2, v5, v3}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;ZLcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    .line 326
    .end local v2    # "entry":Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    :goto_1
    return-object v4

    .line 315
    .restart local v2    # "entry":Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    :cond_1
    iget-boolean v4, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->isIndirect:Z

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->hasExtensions()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 317
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v4

    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    .line 319
    .local v1, "currentCaName":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    goto :goto_0

    .line 326
    .end local v1    # "currentCaName":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .end local v2    # "entry":Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getRevokedCertificates()Ljava/util/Set;
    .locals 2

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->loadCRLEntries()Ljava/util/Set;

    move-result-object v0

    .line 333
    .local v0, "entrySet":Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 338
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->sigAlgName:Ljava/lang/String;

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 371
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->sigAlgParams:[B

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->sigAlgParams:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 375
    .local v0, "tmp":[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->sigAlgParams:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 380
    .end local v0    # "tmp":[B
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSignature()[B
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getSignature()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getTBSCertList()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 348
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getThisUpdate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getThisUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getVersionNumber()I

    move-result v0

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 116
    .local v0, "extns":Ljava/util/Set;
    if-nez v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v1

    .line 121
    :cond_1
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 122
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 124
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->isHashCodeSet:Z

    if-nez v0, :cond_0

    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->isHashCodeSet:Z

    .line 619
    invoke-super {p0}, Ljava/security/cert/X509CRL;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->hashCodeValue:I

    .line 622
    :cond_0
    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->hashCodeValue:I

    return v0
.end method

.method public isRevoked(Ljava/security/cert/Certificate;)Z
    .locals 10
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    const/4 v8, 0x0

    .line 520
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v7

    const-string v9, "X.509"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 522
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "X.509 CRL used with non X.509 Cert"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 525
    :cond_0
    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    move-result-object v1

    .line 527
    .local v1, "certs":Ljava/util/Enumeration;
    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    .line 529
    .local v0, "caName":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    if-eqz v1, :cond_5

    move-object v7, p1

    .line 531
    check-cast v7, Ljava/security/cert/X509Certificate;

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    .line 533
    .local v6, "serial":Ljava/math/BigInteger;
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 535
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    move-result-object v4

    .line 537
    .local v4, "entry":Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    iget-boolean v7, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->isIndirect:Z

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->hasExtensions()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 539
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v7

    sget-object v9, Lcom/android/org/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v9}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v2

    .line 541
    .local v2, "currentCaName":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    if-eqz v2, :cond_2

    .line 543
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    .line 547
    .end local v2    # "currentCaName":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    :cond_2
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getUserCertificate()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 551
    instance-of v7, p1, Ljava/security/cert/X509Certificate;

    if-eqz v7, :cond_3

    .line 553
    check-cast p1, Ljava/security/cert/X509Certificate;

    .end local p1    # "cert":Ljava/security/cert/Certificate;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    .line 567
    .local v5, "issuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :goto_0
    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    move v7, v8

    .line 577
    .end local v4    # "entry":Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .end local v5    # "issuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .end local v6    # "serial":Ljava/math/BigInteger;
    :goto_1
    return v7

    .line 559
    .restart local v4    # "entry":Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .restart local v6    # "serial":Ljava/math/BigInteger;
    .restart local p1    # "cert":Ljava/security/cert/Certificate;
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .restart local v5    # "issuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    goto :goto_0

    .line 561
    .end local v5    # "issuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :catch_0
    move-exception v3

    .line 563
    .local v3, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Cannot process certificate"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 572
    .end local v3    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local p1    # "cert":Ljava/security/cert/Certificate;
    .restart local v5    # "issuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :cond_4
    const/4 v7, 0x1

    goto :goto_1

    .end local v4    # "entry":Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .end local v5    # "issuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .end local v6    # "serial":Ljava/math/BigInteger;
    .restart local p1    # "cert":Ljava/security/cert/Certificate;
    :cond_5
    move v7, v8

    .line 577
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 19

    .prologue
    .line 390
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 391
    .local v2, "buf":Ljava/lang/StringBuffer;
    const-string v15, "line.separator"

    invoke-static {v15}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 393
    .local v10, "nl":Ljava/lang/String;
    const-string v15, "              Version: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getVersion()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    const-string v15, "             IssuerDN: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getIssuerDN()Ljava/security/Principal;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    const-string v15, "          This update: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getThisUpdate()Ljava/util/Date;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    const-string v15, "          Next update: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getNextUpdate()Ljava/util/Date;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    const-string v15, "  Signature Algorithm: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getSignature()[B

    move-result-object v14

    .line 406
    .local v14, "sig":[B
    const-string v15, "            Signature: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    new-instance v16, Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x14

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v14, v0, v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    const/16 v8, 0x14

    .local v8, "i":I
    :goto_0
    array-length v15, v14

    if-ge v8, v15, :cond_1

    .line 410
    array-length v15, v14

    add-int/lit8 v15, v15, -0x14

    if-ge v8, v15, :cond_0

    .line 412
    const-string v15, "                       "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    new-instance v16, Ljava/lang/String;

    const/16 v17, 0x14

    move/from16 v0, v17

    invoke-static {v14, v8, v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    :goto_1
    add-int/lit8 v8, v8, 0x14

    goto :goto_0

    .line 417
    :cond_0
    const-string v15, "                       "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    new-instance v16, Ljava/lang/String;

    array-length v0, v14

    move/from16 v17, v0

    sub-int v17, v17, v8

    move/from16 v0, v17

    invoke-static {v14, v8, v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 422
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v7

    .line 424
    .local v7, "extensions":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v7, :cond_9

    .line 426
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v4

    .line 428
    .local v4, "e":Ljava/util/Enumeration;
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 430
    const-string v15, "           Extensions: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 435
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 436
    .local v12, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v7, v12}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v6

    .line 438
    .local v6, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v15

    if-eqz v15, :cond_8

    .line 440
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v11

    .line 441
    .local v11, "octs":[B
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v3, v11}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 442
    .local v3, "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    const-string v15, "                       critical("

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, ") "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    :try_start_0
    sget-object v15, Lcom/android/org/bouncycastle/asn1/x509/Extension;->cRLNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12, v15}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 448
    new-instance v15, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 486
    :catch_0
    move-exception v5

    .line 488
    .local v5, "ex":Ljava/lang/Exception;
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    const-string v15, " value = "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "*****"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 453
    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    sget-object v15, Lcom/android/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12, v15}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 455
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Base CRL: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    new-instance v16, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 461
    :cond_4
    sget-object v15, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12, v15}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 464
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v15

    invoke-static {v15}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 467
    :cond_5
    sget-object v15, Lcom/android/org/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12, v15}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 470
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v15

    invoke-static {v15}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 473
    :cond_6
    sget-object v15, Lcom/android/org/bouncycastle/asn1/x509/Extension;->freshestCRL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12, v15}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 475
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v15

    invoke-static {v15}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 480
    :cond_7
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 481
    const-string v15, " value = "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 494
    .end local v3    # "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v11    # "octs":[B
    :cond_8
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 498
    .end local v4    # "e":Ljava/util/Enumeration;
    .end local v6    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .end local v12    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getRevokedCertificates()Ljava/util/Set;

    move-result-object v13

    .line 499
    .local v13, "set":Ljava/util/Set;
    if-eqz v13, :cond_a

    .line 501
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 502
    .local v9, "it":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 504
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 505
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 508
    .end local v9    # "it":Ljava/util/Iterator;
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    return-object v15
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 207
    const-string v0, "BC"

    invoke-virtual {p0, p1, v0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 214
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getSignature()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    new-instance v1, Ljava/security/cert/CRLException;

    const-string v2, "Signature algorithm on CertificateList does not match TBSCertList."

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_0
    if-eqz p2, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 230
    .local v0, "sig":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getTBSCertList()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 233
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getSignature()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-nez v1, :cond_2

    .line 235
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "CRL does not verify with supplied public key."

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    .end local v0    # "sig":Ljava/security/Signature;
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .restart local v0    # "sig":Ljava/security/Signature;
    goto :goto_0

    .line 237
    :cond_2
    return-void
.end method
