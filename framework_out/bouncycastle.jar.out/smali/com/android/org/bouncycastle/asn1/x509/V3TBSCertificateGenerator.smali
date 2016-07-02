.class public Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;
.super Ljava/lang/Object;
.source "V3TBSCertificateGenerator.java"


# instance fields
.field private altNamePresentAndCritical:Z

.field endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

.field issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field private issuerUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field private subjectUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field version:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v4, 0x2

    invoke-direct {v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->version:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    .line 47
    return-void
.end method


# virtual methods
.method public generateTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 160
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->altNamePresentAndCritical:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-nez v2, :cond_2

    .line 164
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "not all mandatory fields set in V3 TBScertificate generator"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_2
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 169
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->version:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 170
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 171
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 172
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 177
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 179
    .local v1, "validity":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 180
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 182
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 184
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v2, :cond_6

    .line 186
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 193
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 195
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuerUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    if-eqz v2, :cond_3

    .line 197
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuerUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v2, v5, v6, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 200
    :cond_3
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    if-eqz v2, :cond_4

    .line 202
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v2, v5, v3, v4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 205
    :cond_4
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v2, :cond_5

    .line 207
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    invoke-direct {v2, v6, v3, v4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 210
    :cond_5
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v2

    return-object v2

    .line 190
    :cond_6
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0
.end method

.method public setEndDate(Lcom/android/org/bouncycastle/asn1/DERUTCTime;)V
    .locals 1
    .param p1, "endDate"    # Lcom/android/org/bouncycastle/asn1/DERUTCTime;

    .prologue
    .line 91
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 92
    return-void
.end method

.method public setEndDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V
    .locals 0
    .param p1, "endDate"    # Lcom/android/org/bouncycastle/asn1/x509/Time;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 98
    return-void
.end method

.method public setExtensions(Lcom/android/org/bouncycastle/asn1/x509/Extensions;)V
    .locals 2
    .param p1, "extensions"    # Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->extensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    .line 147
    if-eqz p1, :cond_0

    .line 149
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    .line 151
    .local v0, "altName":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->altNamePresentAndCritical:Z

    .line 156
    .end local v0    # "altName":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    :cond_0
    return-void
.end method

.method public setExtensions(Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;)V
    .locals 1
    .param p1, "extensions"    # Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    .prologue
    .line 140
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setExtensions(Lcom/android/org/bouncycastle/asn1/x509/Extensions;)V

    .line 141
    return-void
.end method

.method public setIssuer(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .locals 0
    .param p1, "issuer"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 74
    return-void
.end method

.method public setIssuer(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .locals 1
    .param p1, "issuer"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    .prologue
    .line 67
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 68
    return-void
.end method

.method public setIssuerUniqueID(Lcom/android/org/bouncycastle/asn1/DERBitString;)V
    .locals 0
    .param p1, "uniqueID"    # Lcom/android/org/bouncycastle/asn1/DERBitString;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuerUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 119
    return-void
.end method

.method public setSerialNumber(Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V
    .locals 0
    .param p1, "serialNumber"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 53
    return-void
.end method

.method public setSignature(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0
    .param p1, "signature"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 59
    return-void
.end method

.method public setStartDate(Lcom/android/org/bouncycastle/asn1/DERUTCTime;)V
    .locals 1
    .param p1, "startDate"    # Lcom/android/org/bouncycastle/asn1/DERUTCTime;

    .prologue
    .line 79
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 80
    return-void
.end method

.method public setStartDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V
    .locals 0
    .param p1, "startDate"    # Lcom/android/org/bouncycastle/asn1/x509/Time;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 86
    return-void
.end method

.method public setSubject(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .locals 0
    .param p1, "subject"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 113
    return-void
.end method

.method public setSubject(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .locals 1
    .param p1, "subject"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    .prologue
    .line 106
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 107
    return-void
.end method

.method public setSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 0
    .param p1, "pubKeyInfo"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 131
    return-void
.end method

.method public setSubjectUniqueID(Lcom/android/org/bouncycastle/asn1/DERBitString;)V
    .locals 0
    .param p1, "uniqueID"    # Lcom/android/org/bouncycastle/asn1/DERBitString;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectUniqueID:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 125
    return-void
.end method
