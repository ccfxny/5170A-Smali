.class public Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;
.super Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
.source "PBES2Algorithms.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

.field private objectId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private scheme:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 27
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 29
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->objectId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 33
    .local v2, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 37
    .local v1, "funcSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    sget-object v4, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->id_PBKDF2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    new-instance v3, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    sget-object v4, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->id_PBKDF2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    .line 46
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->scheme:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    .line 47
    return-void

    .line 43
    :cond_0
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    goto :goto_0
.end method


# virtual methods
.method public getASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .prologue
    .line 66
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 67
    .local v1, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 69
    .local v0, "subV":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->objectId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 71
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 72
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->scheme:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 73
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 75
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v2
.end method

.method public getEncryptionScheme()Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->scheme:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    return-object v0
.end method

.method public getKeyDerivationFunc()Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    return-object v0
.end method

.method public getObjectId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->objectId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
