.class public Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
.super Ljava/lang/Object;
.source "OpenSSLRSAPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPrivateKey;
.implements Lcom/android/org/conscrypt/OpenSSLKeyHolder;


# static fields
.field private static final serialVersionUID:J = 0x439d6d0855187c6fL


# instance fields
.field protected transient fetchedParams:Z

.field protected transient key:Lcom/android/org/conscrypt/OpenSSLKey;

.field protected modulus:Ljava/math/BigInteger;

.field protected privateExponent:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 0
    .param p1, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 42
    return-void
.end method

.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLKey;[[B)V
    .locals 1
    .param p1, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .param p2, "params"    # [[B

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->readParams([[B)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->fetchedParams:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/security/spec/RSAPrivateKeySpec;)V
    .locals 1
    .param p1, "rsaKeySpec"    # Ljava/security/spec/RSAPrivateKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->init(Ljava/security/spec/RSAPrivateKeySpec;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 57
    return-void
.end method

.method static getInstance(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 12
    .param p0, "rsaPrivateKey"    # Ljava/security/interfaces/RSAPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 108
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    .line 111
    :cond_0
    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v9

    .line 112
    .local v9, "modulus":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v10

    .line 114
    .local v10, "privateExponent":Ljava/math/BigInteger;
    if-nez v9, :cond_1

    .line 115
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "modulus == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    if-nez v10, :cond_2

    .line 117
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "privateExponent == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_2
    :try_start_0
    new-instance v11, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v9}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v0

    invoke-direct {v11, v0, v1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v11

    goto :goto_0

    .line 130
    :catch_0
    move-exception v8

    .line 131
    .local v8, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static getInstance(Lcom/android/org/conscrypt/OpenSSLKey;)Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    .locals 4
    .param p0, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_RSA_private_params(J)[[B

    move-result-object v0

    .line 86
    .local v0, "params":[[B
    const/4 v1, 0x1

    aget-object v1, v0, v1

    if-eqz v1, :cond_0

    .line 87
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;

    invoke-direct {v1, p0, v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;[[B)V

    .line 89
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    invoke-direct {v1, p0, v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;[[B)V

    goto :goto_0
.end method

.method private static init(Ljava/security/spec/RSAPrivateKeySpec;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 12
    .param p0, "rsaKeySpec"    # Ljava/security/spec/RSAPrivateKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0}, Ljava/security/spec/RSAPrivateKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v9

    .line 61
    .local v9, "modulus":Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/security/spec/RSAPrivateKeySpec;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v10

    .line 63
    .local v10, "privateExponent":Ljava/math/BigInteger;
    if-nez v9, :cond_0

    .line 64
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "modulus == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    if-nez v10, :cond_1

    .line 66
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "privateExponent == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    :try_start_0
    new-instance v11, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v9}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v0

    invoke-direct {v11, v0, v1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    .line 79
    :catch_0
    move-exception v8

    .line 80
    .local v8, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v0, v8}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 9
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 268
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 270
    new-instance v8, Lcom/android/org/conscrypt/OpenSSLKey;

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v8, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->fetchedParams:Z

    .line 280
    return-void
.end method

.method protected static wrapPlatformKey(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 4
    .param p0, "rsaPrivateKey"    # Ljava/security/interfaces/RSAPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {p0}, Lcom/android/org/conscrypt/Platform;->wrapRsaKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 95
    .local v0, "wrapper":Lcom/android/org/conscrypt/OpenSSLKey;
    if-eqz v0, :cond_0

    .line 98
    .end local v0    # "wrapper":Lcom/android/org/conscrypt/OpenSSLKey;
    :goto_0
    return-object v0

    .restart local v0    # "wrapper":Lcom/android/org/conscrypt/OpenSSLKey;
    :cond_0
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    .end local v0    # "wrapper":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->getRSAPrivateKeyWrapper(Ljava/security/interfaces/RSAPrivateKey;[B)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(JZ)V

    goto :goto_0
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
    .line 283
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "engine-based keys can not be serialized"

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->ensureReadParams()V

    .line 288
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 289
    return-void
.end method


# virtual methods
.method final declared-synchronized ensureReadParams()V
    .locals 2

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->fetchedParams:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 141
    :goto_0
    monitor-exit p0

    return-void

    .line 139
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_RSA_private_params(J)[[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->readParams([[B)V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->fetchedParams:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 209
    if-ne p1, p0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v1

    .line 213
    :cond_1
    instance-of v3, p1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 214
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    .line 215
    .local v0, "other":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 218
    .end local v0    # "other":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    :cond_2
    instance-of v3, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v3, :cond_4

    .line 219
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->ensureReadParams()V

    move-object v0, p1

    .line 220
    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    .line 222
    .local v0, "other":Ljava/security/interfaces/RSAPrivateKey;
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Ljava/security/interfaces/RSAPrivateKey;
    :cond_4
    move v1, v2

    .line 226
    goto :goto_0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    const-string v0, "RSA"

    return-object v0
.end method

.method public final getEncoded()[B
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_PKCS8_PRIV_KEY_INFO(J)[B

    move-result-object v0

    goto :goto_0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "PKCS#8"

    goto :goto_0
.end method

.method public final getModulus()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->ensureReadParams()V

    .line 171
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    return-object v0
.end method

.method public final getPrivateExponent()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "private exponent cannot be extracted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->ensureReadParams()V

    .line 165
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->ensureReadParams()V

    .line 232
    const/4 v0, 0x1

    .line 234
    .local v0, "hash":I
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/lit8 v0, v1, 0x3

    .line 235
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    .line 236
    mul-int/lit8 v1, v0, 0x7

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 239
    :cond_0
    return v0
.end method

.method readParams([[B)V
    .locals 3
    .param p1, "params"    # [[B

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 144
    aget-object v0, p1, v1

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "modulus == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    aget-object v0, p1, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "privateExponent == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    .line 153
    aget-object v0, p1, v2

    if-eqz v0, :cond_2

    .line 154
    new-instance v0, Ljava/math/BigInteger;

    aget-object v1, p1, v2

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    .line 156
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2c

    const/16 v3, 0x10

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OpenSSLRSAPrivateKey{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    .line 247
    .local v0, "engineBased":Z
    if-eqz v0, :cond_0

    .line 248
    const-string v2, "key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->ensureReadParams()V

    .line 254
    const-string v2, "modulus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    if-nez v0, :cond_1

    .line 259
    const-string v2, "privateExponent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
