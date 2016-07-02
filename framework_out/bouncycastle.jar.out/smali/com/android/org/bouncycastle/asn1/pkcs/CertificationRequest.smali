.class public Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "CertificationRequest.java"


# instance fields
.field protected reqInfo:Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

.field protected sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected sigBits:Lcom/android/org/bouncycastle/asn1/DERBitString;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->reqInfo:Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    .line 25
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 26
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigBits:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->reqInfo:Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    .line 25
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 26
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigBits:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->reqInfo:Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 62
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigBits:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/DERBitString;)V
    .locals 1
    .param p1, "requestInfo"    # Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;
    .param p2, "algorithm"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "signature"    # Lcom/android/org/bouncycastle/asn1/DERBitString;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->reqInfo:Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    .line 25
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 26
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigBits:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 52
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->reqInfo:Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    .line 53
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 54
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigBits:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 55
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 30
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;

    if-eqz v0, :cond_0

    .line 32
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;

    .line 40
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 35
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 37
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 40
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCertificationRequestInfo()Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->reqInfo:Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    return-object v0
.end method

.method public getSignature()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigBits:Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 85
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->reqInfo:Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 86
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 87
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;->sigBits:Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 89
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
