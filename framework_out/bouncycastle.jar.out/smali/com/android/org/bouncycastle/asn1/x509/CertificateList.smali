.class public Lcom/android/org/bouncycastle/asn1/x509/CertificateList;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "CertificateList.java"


# instance fields
.field hashCodeValue:I

.field isHashCodeSet:Z

.field sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 34
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->isHashCodeSet:Z

    .line 66
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 68
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 70
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 76
    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sequence wrong size for CertificateList"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/CertificateList;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CertificateList;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 47
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    if-eqz v0, :cond_0

    .line 49
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    .line 56
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 51
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 53
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 56
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public getNextUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getNextUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public getRevokedCertificateEnumeration()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getRevokedCertificates()[Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getRevokedCertificates()[Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getTBSCertList()Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    return-object v0
.end method

.method public getThisUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getThisUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public getVersionNumber()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getVersionNumber()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->isHashCodeSet:Z

    if-nez v0, :cond_0

    .line 138
    invoke-super {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->hashCodeValue:I

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->isHashCodeSet:Z

    .line 142
    :cond_0
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->hashCodeValue:I

    return v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 127
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 128
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 129
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 131
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
