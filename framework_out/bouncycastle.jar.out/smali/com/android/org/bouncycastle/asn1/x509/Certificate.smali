.class public Lcom/android/org/bouncycastle/asn1/x509/Certificate;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "Certificate.java"


# instance fields
.field seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 59
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 64
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 70
    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sequence wrong size for a certificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/Certificate;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Certificate;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 39
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    if-eqz v0, :cond_0

    .line 41
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    .line 48
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 43
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 45
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 48
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getEndDate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getEndDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    return-object v0
.end method

.method public getVersion()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getVersion()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    return-object v0
.end method

.method public getVersionNumber()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getVersionNumber()I

    move-result v0

    return v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
