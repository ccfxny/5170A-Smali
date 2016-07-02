.class public Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "CertificationRequestInfo.java"


# instance fields
.field attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 107
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 36
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 39
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 108
    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 110
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 111
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 117
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v5, :cond_0

    .line 119
    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    .line 120
    .local v0, "tagobj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    invoke-static {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 123
    .end local v0    # "tagobj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-nez v1, :cond_2

    .line 125
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not all mandatory fields set in CertificationRequestInfo generator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .locals 4
    .param p1, "subject"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .param p2, "pkInfo"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p3, "attributes"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 36
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 74
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 75
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 76
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 78
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-nez v0, :cond_1

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not all mandatory fields set in CertificationRequestInfo generator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .locals 4
    .param p1, "subject"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .param p2, "pkInfo"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p3, "attributes"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 36
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 92
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 93
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 94
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 96
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-nez v0, :cond_1

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not all mandatory fields set in CertificationRequestInfo generator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 44
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    if-eqz v0, :cond_0

    .line 46
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    .line 53
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 48
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 50
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 53
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public getVersion()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 151
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 153
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 154
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 155
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 157
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    .line 159
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v3, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 162
    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
