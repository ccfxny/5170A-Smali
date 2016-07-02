.class public Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;
.super Ljava/lang/Object;
.source "ECKeyPairGenerator.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;
.implements Lcom/android/org/bouncycastle/math/ec/ECConstants;


# instance fields
.field params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

.field random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 8

    .prologue
    .line 42
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v2

    .line 43
    .local v2, "n":Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    .line 48
    .local v3, "nBitLength":I
    :cond_0
    new-instance v1, Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v1, v3, v4}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 50
    .local v1, "d":Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_0

    .line 52
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 54
    .local v0, "Q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    new-instance v4, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v5, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v5, v0, v6}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    new-instance v6, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v6, v1, v7}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    invoke-direct {v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v4
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 2
    .param p1, "param"    # Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    .prologue
    .line 25
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    .line 27
    .local v0, "ecP":Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 28
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;->getDomainParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 30
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->random:Ljava/security/SecureRandom;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 34
    :cond_0
    return-void
.end method
