.class public Lcom/android/org/bouncycastle/asn1/x509/V2Form;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "V2Form.java"


# instance fields
.field baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

.field issuerName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

.field objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v5, 0x0

    .line 75
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    .line 78
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad sequence size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 81
    :cond_0
    const/4 v1, 0x0

    .line 83
    .local v1, "index":I
    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v3, v3, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-nez v3, :cond_1

    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 86
    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->issuerName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 89
    :cond_1
    move v0, v1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-eq v0, v3, :cond_4

    .line 91
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    .line 92
    .local v2, "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    if-nez v3, :cond_2

    .line 94
    invoke-static {v2, v5}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    .line 89
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 98
    invoke-static {v2, v5}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    goto :goto_1

    .line 102
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad tag number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 106
    .end local v2    # "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_4
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V
    .locals 1
    .param p1, "issuerName"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0, v0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;)V
    .locals 1
    .param p1, "issuerName"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .param p2, "baseCertificateID"    # Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;)V
    .locals 0
    .param p1, "issuerName"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .param p2, "baseCertificateID"    # Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;
    .param p3, "objectDigestInfo"    # Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->issuerName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 66
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    .line 67
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;)V
    .locals 1
    .param p1, "issuerName"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .param p2, "objectDigestInfo"    # Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;)V

    .line 58
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/V2Form;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 22
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/V2Form;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 28
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    if-eqz v0, :cond_0

    .line 30
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    .line 37
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 32
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 34
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 37
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    return-object v0
.end method

.method public getIssuerName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->issuerName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 138
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 140
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->issuerName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->issuerName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    if-eqz v1, :cond_1

    .line 147
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    if-eqz v1, :cond_2

    .line 152
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    invoke-direct {v1, v4, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 155
    :cond_2
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
