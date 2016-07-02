.class public Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;
.super Ljava/lang/Object;
.source "ECDSASigner.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/ECConstants;
.implements Lcom/android/org/bouncycastle/crypto/DSA;


# instance fields
.field private final kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

.field private key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/android/org/bouncycastle/crypto/signers/RandomDSAKCalculator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/signers/RandomDSAKCalculator;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;)V
    .locals 0
    .param p1, "kCalculator"    # Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    .line 43
    return-void
.end method

.method private calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .locals 4
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "message"    # [B

    .prologue
    .line 176
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 177
    .local v1, "log2n":I
    array-length v3, p2

    mul-int/lit8 v2, v3, 0x8

    .line 179
    .local v2, "messageBitLength":I
    new-instance v0, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v0, v3, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 180
    .local v0, "e":Ljava/math/BigInteger;
    if-ge v1, v2, :cond_0

    .line 182
    sub-int v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 184
    :cond_0
    return-object v0
.end method


# virtual methods
.method public generateSignature([B)[Ljava/math/BigInteger;
    .locals 11
    .param p1, "message"    # [B

    .prologue
    .line 81
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    .line 82
    .local v3, "n":Ljava/math/BigInteger;
    invoke-direct {p0, v3, p1}, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v1

    .line 83
    .local v1, "e":Ljava/math/BigInteger;
    const/4 v5, 0x0

    .line 84
    .local v5, "r":Ljava/math/BigInteger;
    const/4 v7, 0x0

    .line 86
    .local v7, "s":Ljava/math/BigInteger;
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v9}, Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;->isDeterministic()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 88
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v9, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v9

    invoke-interface {v10, v3, v9, p1}, Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 98
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 102
    .local v2, "k":Ljava/math/BigInteger;
    :cond_1
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v9}, Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;->nextK()Ljava/math/BigInteger;

    move-result-object v2

    .line 104
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    .line 107
    .local v4, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v8

    .line 109
    .local v8, "x":Ljava/math/BigInteger;
    invoke-virtual {v8, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 111
    sget-object v9, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 113
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v9, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    .line 115
    .local v0, "d":Ljava/math/BigInteger;
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 117
    sget-object v9, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 119
    const/4 v9, 0x2

    new-array v6, v9, [Ljava/math/BigInteger;

    .line 121
    .local v6, "res":[Ljava/math/BigInteger;
    const/4 v9, 0x0

    aput-object v5, v6, v9

    .line 122
    const/4 v9, 0x1

    aput-object v7, v6, v9

    .line 124
    return-object v6

    .line 92
    .end local v0    # "d":Ljava/math/BigInteger;
    .end local v2    # "k":Ljava/math/BigInteger;
    .end local v4    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v6    # "res":[Ljava/math/BigInteger;
    .end local v8    # "x":Ljava/math/BigInteger;
    :cond_2
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->random:Ljava/security/SecureRandom;

    invoke-interface {v9, v3, v10}, Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    goto :goto_0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .prologue
    .line 49
    if-eqz p1, :cond_1

    .line 51
    instance-of v1, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 53
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 55
    .local v0, "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->random:Ljava/security/SecureRandom;

    .line 56
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    .line 68
    .end local v0    # "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    .end local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_0
    return-void

    .line 60
    .restart local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->random:Ljava/security/SecureRandom;

    .line 61
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .end local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    goto :goto_0

    .line 66
    .restart local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_1
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    .end local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    goto :goto_0
.end method

.method public verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 11
    .param p1, "message"    # [B
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "s"    # Ljava/math/BigInteger;

    .prologue
    const/4 v10, 0x0

    .line 138
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 139
    .local v4, "n":Ljava/math/BigInteger;
    invoke-direct {p0, v4, p1}, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v3

    .line 142
    .local v3, "e":Ljava/math/BigInteger;
    sget-object v9, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    if-ltz v9, :cond_0

    invoke-virtual {p2, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    if-ltz v9, :cond_1

    :cond_0
    move v9, v10

    .line 171
    :goto_0
    return v9

    .line 148
    :cond_1
    sget-object v9, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p3, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    if-ltz v9, :cond_2

    invoke-virtual {p3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    if-ltz v9, :cond_3

    :cond_2
    move v9, v10

    .line 150
    goto :goto_0

    .line 153
    :cond_3
    invoke-virtual {p3, v4}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 155
    .local v2, "c":Ljava/math/BigInteger;
    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 156
    .local v6, "u1":Ljava/math/BigInteger;
    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 158
    .local v7, "u2":Ljava/math/BigInteger;
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 159
    .local v0, "G":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v9, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 161
    .local v1, "Q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-static {v0, v6, v1, v7}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 164
    .local v5, "point":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v9

    if-eqz v9, :cond_4

    move v9, v10

    .line 166
    goto :goto_0

    .line 169
    :cond_4
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 171
    .local v8, "v":Ljava/math/BigInteger;
    invoke-virtual {v8, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_0
.end method
