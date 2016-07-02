.class public Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "EncryptionScheme.java"


# instance fields
.field private algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "objectId"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "parameters"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 19
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 20
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 26
    return-void
.end method

.method public static final getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 30
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    if-eqz v0, :cond_0

    .line 32
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    .line 39
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 34
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 36
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 39
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method