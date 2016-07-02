.class public Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "TBSCertificateStructure.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field extensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

.field issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field issuerUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field subjectUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 9
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 75
    const/4 v3, 0x0

    .line 77
    .local v3, "seqStart":I
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 82
    invoke-virtual {p1, v8}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    instance-of v4, v4, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    if-eqz v4, :cond_0

    .line 84
    invoke-virtual {p1, v8}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 92
    :goto_0
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 94
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 95
    add-int/lit8 v4, v3, 0x3

    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 100
    add-int/lit8 v4, v3, 0x4

    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 102
    .local v0, "dates":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 103
    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 105
    add-int/lit8 v4, v3, 0x5

    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 110
    add-int/lit8 v4, v3, 0x6

    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 112
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    add-int/lit8 v5, v3, 0x6

    sub-int/2addr v4, v5

    add-int/lit8 v2, v4, -0x1

    .local v2, "extras":I
    :goto_1
    if-lez v2, :cond_1

    .line 114
    add-int/lit8 v4, v3, 0x6

    add-int/2addr v4, v2

    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    .line 116
    .local v1, "extra":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 112
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 88
    .end local v0    # "dates":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v1    # "extra":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    .end local v2    # "extras":I
    :cond_0
    const/4 v3, -0x1

    .line 89
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v6, 0x0

    invoke-direct {v4, v6, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    goto :goto_0

    .line 119
    .restart local v0    # "dates":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v1    # "extra":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    .restart local v2    # "extras":I
    :pswitch_0
    invoke-static {v1, v8}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->issuerUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

    goto :goto_2

    .line 122
    :pswitch_1
    invoke-static {v1, v8}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subjectUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

    goto :goto_2

    .line 125
    :pswitch_2
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->extensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    goto :goto_2

    .line 128
    .end local v1    # "extra":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    :cond_1
    return-void

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 60
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    if-eqz v0, :cond_0

    .line 62
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    .line 69
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 64
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 66
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 69
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getEndDate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getExtensions()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->extensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    return-object v0
.end method

.method public getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getIssuerUniqueId()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->issuerUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getSignature()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public getSubjectUniqueId()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subjectUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getVersionNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
