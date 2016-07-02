.class public Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "IssuerAndSerialNumber.java"


# instance fields
.field private name:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field private serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 94
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/Certificate;)V
    .locals 1
    .param p1, "certificate"    # Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 76
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;)V
    .locals 1
    .param p1, "certificate"    # Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 86
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V
    .locals 1
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .param p2, "serialNumber"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 115
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 116
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 104
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 105
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 106
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 50
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    if-eqz v0, :cond_0

    .line 52
    check-cast p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    .line 59
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 54
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 56
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 59
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getName()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 133
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 134
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 136
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
