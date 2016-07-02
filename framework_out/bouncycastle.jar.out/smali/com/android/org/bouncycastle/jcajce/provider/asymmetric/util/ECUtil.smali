.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;
.super Ljava/lang/Object;
.source "ECUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertMidTerms([I)[I
    .locals 6
    .param p0, "k"    # [I

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 46
    new-array v0, v2, [I

    .line 48
    .local v0, "res":[I
    array-length v1, p0

    if-ne v1, v3, :cond_0

    .line 50
    aget v1, p0, v5

    aput v1, v0, v5

    .line 103
    :goto_0
    return-object v0

    .line 54
    :cond_0
    array-length v1, p0

    if-eq v1, v2, :cond_1

    .line 56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only Trinomials and pentanomials supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_1
    aget v1, p0, v5

    aget v2, p0, v3

    if-ge v1, v2, :cond_3

    aget v1, p0, v5

    aget v2, p0, v4

    if-ge v1, v2, :cond_3

    .line 61
    aget v1, p0, v5

    aput v1, v0, v5

    .line 62
    aget v1, p0, v3

    aget v2, p0, v4

    if-ge v1, v2, :cond_2

    .line 64
    aget v1, p0, v3

    aput v1, v0, v3

    .line 65
    aget v1, p0, v4

    aput v1, v0, v4

    goto :goto_0

    .line 69
    :cond_2
    aget v1, p0, v4

    aput v1, v0, v3

    .line 70
    aget v1, p0, v3

    aput v1, v0, v4

    goto :goto_0

    .line 73
    :cond_3
    aget v1, p0, v3

    aget v2, p0, v4

    if-ge v1, v2, :cond_5

    .line 75
    aget v1, p0, v3

    aput v1, v0, v5

    .line 76
    aget v1, p0, v5

    aget v2, p0, v4

    if-ge v1, v2, :cond_4

    .line 78
    aget v1, p0, v5

    aput v1, v0, v3

    .line 79
    aget v1, p0, v4

    aput v1, v0, v4

    goto :goto_0

    .line 83
    :cond_4
    aget v1, p0, v4

    aput v1, v0, v3

    .line 84
    aget v1, p0, v5

    aput v1, v0, v4

    goto :goto_0

    .line 89
    :cond_5
    aget v1, p0, v4

    aput v1, v0, v5

    .line 90
    aget v1, p0, v5

    aget v2, p0, v3

    if-ge v1, v2, :cond_6

    .line 92
    aget v1, p0, v5

    aput v1, v0, v3

    .line 93
    aget v1, p0, v3

    aput v1, v0, v4

    goto :goto_0

    .line 97
    :cond_6
    aget v1, p0, v3

    aput v1, v0, v3

    .line 98
    aget v1, p0, v5

    aput v1, v0, v4

    goto :goto_0
.end method

.method public static generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 14
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 170
    instance-of v0, p0, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;

    if-eqz v0, :cond_1

    move-object v8, p0

    .line 172
    check-cast v8, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;

    .line 173
    .local v8, "k":Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;
    invoke-interface {v8}, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;->getParameters()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v11

    .line 175
    .local v11, "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    if-nez v11, :cond_0

    .line 177
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v11

    .line 180
    :cond_0
    new-instance v12, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-interface {v8}, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v13

    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v12, v13, v0}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    move-object v0, v12

    .line 208
    .end local v8    # "k":Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;
    .end local v11    # "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :goto_0
    return-object v0

    .line 184
    :cond_1
    instance-of v0, p0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_2

    move-object v9, p0

    .line 186
    check-cast v9, Ljava/security/interfaces/ECPrivateKey;

    .line 187
    .local v9, "privKey":Ljava/security/interfaces/ECPrivateKey;
    invoke-interface {v9}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v11

    .line 188
    .restart local v11    # "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v12, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-interface {v9}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v13

    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v12, v13, v0}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    move-object v0, v12

    goto :goto_0

    .line 197
    .end local v9    # "privKey":Ljava/security/interfaces/ECPrivateKey;
    .end local v11    # "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_2
    :try_start_0
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v6

    .line 199
    .local v6, "bytes":[B
    if-nez v6, :cond_3

    .line 201
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "no encoding for EC private key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v6    # "bytes":[B
    :catch_0
    move-exception v7

    .line 213
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot identify EC private key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "bytes":[B
    :cond_3
    :try_start_1
    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v10

    .line 206
    .local v10, "privateKey":Ljava/security/PrivateKey;
    instance-of v0, v10, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_4

    .line 208
    invoke-static {v10}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 217
    :cond_4
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "can\'t identify EC private key."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 14
    .param p0, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 110
    instance-of v0, p0, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;

    if-eqz v0, :cond_1

    move-object v8, p0

    .line 112
    check-cast v8, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;

    .line 113
    .local v8, "k":Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;
    invoke-interface {v8}, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;->getParameters()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v11

    .line 115
    .local v11, "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    if-nez v11, :cond_0

    .line 117
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v11

    .line 119
    new-instance v12, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    check-cast v8, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    .end local v8    # "k":Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->engineGetQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v12, v13, v0}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    move-object v0, v12

    .line 154
    .end local v11    # "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :goto_0
    return-object v0

    .line 125
    .restart local v8    # "k":Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;
    .restart local v11    # "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_0
    new-instance v12, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-interface {v8}, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v12, v13, v0}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    move-object v0, v12

    goto :goto_0

    .line 130
    .end local v8    # "k":Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;
    .end local v11    # "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_1
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_2

    move-object v9, p0

    .line 132
    check-cast v9, Ljava/security/interfaces/ECPublicKey;

    .line 133
    .local v9, "pubKey":Ljava/security/interfaces/ECPublicKey;
    invoke-interface {v9}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v11

    .line 134
    .restart local v11    # "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v12, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-interface {v9}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-interface {v9}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v12, v13, v0}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    move-object v0, v12

    goto :goto_0

    .line 143
    .end local v9    # "pubKey":Ljava/security/interfaces/ECPublicKey;
    .end local v11    # "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_2
    :try_start_0
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v6

    .line 145
    .local v6, "bytes":[B
    if-nez v6, :cond_3

    .line 147
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "no encoding for EC public key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v6    # "bytes":[B
    :catch_0
    move-exception v7

    .line 159
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot identify EC public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "bytes":[B
    :cond_3
    :try_start_1
    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPublicKey(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object v10

    .line 152
    .local v10, "publicKey":Ljava/security/PublicKey;
    instance-of v0, v10, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_4

    .line 154
    invoke-static {v10}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 163
    :cond_4
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "cannot identify EC public key."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCurveName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1
    .param p0, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 273
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 277
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 278
    if-nez v0, :cond_0

    .line 280
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 294
    :cond_0
    return-object v0
.end method

.method public static getNamedCurveByOid(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 1
    .param p0, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 250
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 252
    .local v0, "params":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v0, :cond_0

    .line 254
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 255
    if-nez v0, :cond_0

    .line 257
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 267
    :cond_0
    return-object v0
.end method

.method public static getNamedCurveOid(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 225
    .local v0, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_0

    .line 227
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 228
    if-nez v0, :cond_0

    .line 230
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 244
    :cond_0
    return-object v0
.end method
