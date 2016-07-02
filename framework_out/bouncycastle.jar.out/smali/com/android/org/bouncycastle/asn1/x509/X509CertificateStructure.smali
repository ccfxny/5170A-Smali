.class public Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "X509CertificateStructure.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 62
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 67
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 73
    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sequence wrong size for a certificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 42
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    if-eqz v0, :cond_0

    .line 44
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    .line 51
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 46
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 48
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 51
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getEndDate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getEndDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getVersion()I

    move-result v0

    return v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
