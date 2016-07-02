.class public Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;
.super Ljava/lang/Object;
.source "V1TBSCertificateGenerator.java"


# instance fields
.field endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field version:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->version:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    .line 38
    return-void
.end method


# virtual methods
.method public generateTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    .locals 4

    .prologue
    .line 114
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-nez v2, :cond_1

    .line 118
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "not all mandatory fields set in V1 TBScertificate generator"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :cond_1
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 124
    .local v0, "seq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 125
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 126
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 131
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 133
    .local v1, "validity":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 134
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 136
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 138
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 140
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 142
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v2

    return-object v2
.end method

.method public setEndDate(Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;)V
    .locals 1
    .param p1, "endDate"    # Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    .prologue
    .line 88
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 89
    return-void
.end method

.method public setEndDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V
    .locals 0
    .param p1, "endDate"    # Lcom/android/org/bouncycastle/asn1/x509/Time;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 83
    return-void
.end method

.method public setIssuer(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .locals 0
    .param p1, "issuer"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 65
    return-void
.end method

.method public setIssuer(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .locals 1
    .param p1, "issuer"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 59
    return-void
.end method

.method public setSerialNumber(Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V
    .locals 0
    .param p1, "serialNumber"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 44
    return-void
.end method

.method public setSignature(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0
    .param p1, "signature"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 50
    return-void
.end method

.method public setStartDate(Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;)V
    .locals 1
    .param p1, "startDate"    # Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    .prologue
    .line 76
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 77
    return-void
.end method

.method public setStartDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V
    .locals 0
    .param p1, "startDate"    # Lcom/android/org/bouncycastle/asn1/x509/Time;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 71
    return-void
.end method

.method public setSubject(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .locals 0
    .param p1, "subject"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 104
    return-void
.end method

.method public setSubject(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .locals 1
    .param p1, "subject"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 98
    return-void
.end method

.method public setSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 0
    .param p1, "pubKeyInfo"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 110
    return-void
.end method
