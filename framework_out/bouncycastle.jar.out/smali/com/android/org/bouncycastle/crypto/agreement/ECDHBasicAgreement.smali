.class public Lcom/android/org/bouncycastle/crypto/agreement/ECDHBasicAgreement;
.super Ljava/lang/Object;
.source "ECDHBasicAgreement.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/BasicAgreement;


# instance fields
.field private key:Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateAgreement(Lcom/android/org/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;
    .locals 4
    .param p1, "pubKey"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .prologue
    .line 44
    move-object v1, p1

    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 45
    .local v1, "pub":Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/agreement/ECDHBasicAgreement;->key:Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 47
    .local v0, "P":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Infinity is not a valid agreement value for ECDH"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_0
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    return-object v2
.end method

.method public getFieldSize()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/agreement/ECDHBasicAgreement;->key:Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 0
    .param p1, "key"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .prologue
    .line 33
    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .end local p1    # "key":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/agreement/ECDHBasicAgreement;->key:Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 34
    return-void
.end method
