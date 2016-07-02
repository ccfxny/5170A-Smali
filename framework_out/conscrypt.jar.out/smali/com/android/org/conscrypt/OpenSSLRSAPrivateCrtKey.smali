.class public Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;
.super Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
.source "OpenSSLRSAPrivateCrtKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPrivateCrtKey;


# static fields
.field private static final serialVersionUID:J = 0x34880ef7f10bfb7dL


# instance fields
.field private crtCoefficient:Ljava/math/BigInteger;

.field private primeExponentP:Ljava/math/BigInteger;

.field private primeExponentQ:Ljava/math/BigInteger;

.field private primeP:Ljava/math/BigInteger;

.field private primeQ:Ljava/math/BigInteger;

.field private publicExponent:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 0
    .param p1, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 47
    return-void
.end method

.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLKey;[[B)V
    .locals 0
    .param p1, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .param p2, "params"    # [[B

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;[[B)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/security/spec/RSAPrivateCrtKeySpec;)V
    .locals 1
    .param p1, "rsaKeySpec"    # Ljava/security/spec/RSAPrivateCrtKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->init(Ljava/security/spec/RSAPrivateCrtKeySpec;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 55
    return-void
.end method

.method static getInstance(Ljava/security/interfaces/RSAPrivateCrtKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 20
    .param p0, "rsaPrivateKey"    # Ljava/security/interfaces/RSAPrivateCrtKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 101
    invoke-static/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->wrapPlatformKey(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    .line 127
    :goto_0
    return-object v2

    .line 104
    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v12

    .line 105
    .local v12, "modulus":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v17

    .line 107
    .local v17, "privateExponent":Ljava/math/BigInteger;
    if-nez v12, :cond_1

    .line 108
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "modulus == null"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_1
    if-nez v17, :cond_2

    .line 110
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "privateExponent == null"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_2
    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v18

    .line 121
    .local v18, "publicExponent":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v15

    .line 122
    .local v15, "primeP":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v16

    .line 123
    .local v16, "primeQ":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v13

    .line 124
    .local v13, "primeExponentP":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v14

    .line 125
    .local v14, "primeExponentQ":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v10

    .line 127
    .local v10, "crtCoefficient":Ljava/math/BigInteger;
    new-instance v19, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    if-nez v18, :cond_3

    const/4 v3, 0x0

    :goto_1
    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    if-nez v15, :cond_4

    const/4 v5, 0x0

    :goto_2
    if-nez v16, :cond_5

    const/4 v6, 0x0

    :goto_3
    if-nez v13, :cond_6

    const/4 v7, 0x0

    :goto_4
    if-nez v14, :cond_7

    const/4 v8, 0x0

    :goto_5
    if-nez v10, :cond_8

    const/4 v9, 0x0

    :goto_6
    invoke-static/range {v2 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    move-object/from16 v2, v19

    goto :goto_0

    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    goto :goto_1

    :cond_4
    invoke-virtual {v15}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    goto :goto_2

    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    goto :goto_3

    :cond_6
    invoke-virtual {v13}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    goto :goto_4

    :cond_7
    invoke-virtual {v14}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    goto :goto_5

    :cond_8
    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_6

    .line 136
    .end local v10    # "crtCoefficient":Ljava/math/BigInteger;
    .end local v13    # "primeExponentP":Ljava/math/BigInteger;
    .end local v14    # "primeExponentQ":Ljava/math/BigInteger;
    .end local v15    # "primeP":Ljava/math/BigInteger;
    .end local v16    # "primeQ":Ljava/math/BigInteger;
    .end local v18    # "publicExponent":Ljava/math/BigInteger;
    :catch_0
    move-exception v11

    .line 137
    .local v11, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v11}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static init(Ljava/security/spec/RSAPrivateCrtKeySpec;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 20
    .param p0, "rsaKeySpec"    # Ljava/security/spec/RSAPrivateCrtKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v12

    .line 59
    .local v12, "modulus":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v17

    .line 61
    .local v17, "privateExponent":Ljava/math/BigInteger;
    if-nez v12, :cond_0

    .line 62
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string v3, "modulus == null"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_0
    if-nez v17, :cond_1

    .line 64
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string v3, "privateExponent == null"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v18

    .line 75
    .local v18, "publicExponent":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v15

    .line 76
    .local v15, "primeP":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v16

    .line 77
    .local v16, "primeQ":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v13

    .line 78
    .local v13, "primeExponentP":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v14

    .line 79
    .local v14, "primeExponentQ":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v10

    .line 81
    .local v10, "crtCoefficient":Ljava/math/BigInteger;
    new-instance v19, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    if-nez v18, :cond_2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    if-nez v15, :cond_3

    const/4 v5, 0x0

    :goto_1
    if-nez v16, :cond_4

    const/4 v6, 0x0

    :goto_2
    if-nez v13, :cond_5

    const/4 v7, 0x0

    :goto_3
    if-nez v14, :cond_6

    const/4 v8, 0x0

    :goto_4
    if-nez v10, :cond_7

    const/4 v9, 0x0

    :goto_5
    invoke-static/range {v2 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    return-object v19

    :cond_2
    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-virtual {v15}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    goto :goto_1

    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    goto :goto_2

    :cond_5
    invoke-virtual {v13}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    goto :goto_3

    :cond_6
    invoke-virtual {v14}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    goto :goto_4

    :cond_7
    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_5

    .line 90
    .end local v10    # "crtCoefficient":Ljava/math/BigInteger;
    .end local v13    # "primeExponentP":Ljava/math/BigInteger;
    .end local v14    # "primeExponentQ":Ljava/math/BigInteger;
    .end local v15    # "primeP":Ljava/math/BigInteger;
    .end local v16    # "primeQ":Ljava/math/BigInteger;
    .end local v18    # "publicExponent":Ljava/math/BigInteger;
    :catch_0
    move-exception v11

    .line 91
    .local v11, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v11}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 10
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 315
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 317
    new-instance v8, Lcom/android/org/conscrypt/OpenSSLKey;

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    if-nez v1, :cond_0

    move-object v1, v7

    :goto_0
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->privateExponent:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    if-nez v3, :cond_1

    move-object v3, v7

    :goto_1
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    if-nez v4, :cond_2

    move-object v4, v7

    :goto_2
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    if-nez v5, :cond_3

    move-object v5, v7

    :goto_3
    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    if-nez v6, :cond_4

    move-object v6, v7

    :goto_4
    iget-object v9, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    if-nez v9, :cond_5

    :goto_5
    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v8, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->fetchedParams:Z

    .line 327
    return-void

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    goto :goto_3

    :cond_4
    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    goto :goto_4

    :cond_5
    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    goto :goto_5
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "engine-based keys can not be serialized"

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 335
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 336
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 204
    if-ne p1, p0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v1

    .line 208
    :cond_1
    instance-of v3, p1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 209
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    .line 210
    .local v0, "other":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 213
    .end local v0    # "other":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    :cond_2
    instance-of v3, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v3, :cond_6

    .line 214
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    move-object v0, p1

    .line 215
    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 217
    .local v0, "other":Ljava/security/interfaces/RSAPrivateCrtKey;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 218
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 221
    :cond_4
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto/16 :goto_0

    .line 229
    .end local v0    # "other":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_6
    instance-of v3, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v3, :cond_9

    .line 230
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    move-object v0, p1

    .line 231
    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    .line 233
    .local v0, "other":Ljava/security/interfaces/RSAPrivateKey;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 234
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0

    .line 236
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_8
    move v1, v2

    goto/16 :goto_0

    .end local v0    # "other":Ljava/security/interfaces/RSAPrivateKey;
    :cond_9
    move v1, v2

    .line 241
    goto/16 :goto_0
.end method

.method public getCrtCoefficient()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 199
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeExponentP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 187
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeExponentQ()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 193
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 175
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeQ()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 181
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 169
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 246
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->hashCode()I

    move-result v0

    .line 247
    .local v0, "hashCode":I
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 250
    :cond_0
    return v0
.end method

.method declared-synchronized readParams([[B)V
    .locals 2
    .param p1, "params"    # [[B

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->readParams([[B)V

    .line 145
    const/4 v0, 0x1

    aget-object v0, p1, v0

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    .line 149
    :cond_0
    const/4 v0, 0x3

    aget-object v0, p1, v0

    if-eqz v0, :cond_1

    .line 150
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x3

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    .line 152
    :cond_1
    const/4 v0, 0x4

    aget-object v0, p1, v0

    if-eqz v0, :cond_2

    .line 153
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x4

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    .line 155
    :cond_2
    const/4 v0, 0x5

    aget-object v0, p1, v0

    if-eqz v0, :cond_3

    .line 156
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x5

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    .line 158
    :cond_3
    const/4 v0, 0x6

    aget-object v0, p1, v0

    if-eqz v0, :cond_4

    .line 159
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x6

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    .line 161
    :cond_4
    const/4 v0, 0x7

    aget-object v0, p1, v0

    if-eqz v0, :cond_5

    .line 162
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x7

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_5
    monitor-exit p0

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2c

    const/16 v3, 0x10

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OpenSSLRSAPrivateCrtKey{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    .line 258
    .local v0, "engineBased":Z
    if-eqz v0, :cond_0

    .line 259
    const-string v2, "key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 261
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 265
    const-string v2, "modulus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    if-eqz v2, :cond_1

    .line 270
    const-string v2, "publicExponent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    :cond_1
    if-nez v0, :cond_2

    .line 276
    const-string v2, "privateExponent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    :cond_2
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    if-eqz v2, :cond_3

    .line 282
    const-string v2, "primeP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 287
    :cond_3
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    if-eqz v2, :cond_4

    .line 288
    const-string v2, "primeQ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 293
    :cond_4
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    if-eqz v2, :cond_5

    .line 294
    const-string v2, "primeExponentP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 299
    :cond_5
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    if-eqz v2, :cond_6

    .line 300
    const-string v2, "primeExponentQ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    :cond_6
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    if-eqz v2, :cond_7

    .line 306
    const-string v2, "crtCoefficient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 311
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
