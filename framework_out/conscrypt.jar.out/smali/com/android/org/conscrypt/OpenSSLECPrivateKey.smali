.class public final Lcom/android/org/conscrypt/OpenSSLECPrivateKey;
.super Ljava/lang/Object;
.source "OpenSSLECPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;
.implements Lcom/android/org/conscrypt/OpenSSLKeyHolder;


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "EC"

.field private static final serialVersionUID:J = -0x380500de1e729812L


# instance fields
.field protected transient group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

.field protected transient key:Lcom/android/org/conscrypt/OpenSSLKey;


# direct methods
.method public constructor <init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Lcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 0
    .param p1, "group"    # Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .param p2, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 43
    iput-object p2, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 6
    .param p1, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_get0_group(J)J

    move-result-wide v0

    .line 48
    .local v0, "origGroup":J
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_dup(J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;-><init>(J)V

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 49
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECPrivateKeySpec;)V
    .locals 8
    .param p1, "ecKeySpec"    # Ljava/security/spec/ECPrivateKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    :try_start_0
    invoke-virtual {p1}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 55
    invoke-virtual {p1}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object v1

    .line 56
    .local v1, "privKey":Ljava/math/BigInteger;
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLKey;

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getContext()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-static {v4, v5, v6, v7, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_EC_KEY(JJ[B)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-void

    .line 58
    .end local v1    # "privKey":Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getInstance(Ljava/security/interfaces/ECPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 9
    .param p0, "ecPrivateKey"    # Ljava/security/interfaces/ECPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 81
    :try_start_0
    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v1

    .line 88
    .local v1, "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 89
    invoke-static {p0, v1}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/ECPrivateKey;Lcom/android/org/conscrypt/OpenSSLECGroupContext;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v3

    .line 93
    :goto_0
    return-object v3

    .line 92
    :cond_0
    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v2

    .line 93
    .local v2, "privKey":Ljava/math/BigInteger;
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getContext()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_EC_KEY(JJ[B)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v1    # "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .end local v2    # "privKey":Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getPrivateKey()Ljava/math/BigInteger;
    .locals 4

    .prologue
    .line 148
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_get_private_key(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 198
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 200
    .local v0, "encoded":[B
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PKCS8_PRIV_KEY_INFO([B)J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 202
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_get0_group(J)J

    move-result-wide v2

    .line 203
    .local v2, "origGroup":J
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_dup(J)J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;-><init>(J)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 204
    return-void
.end method

.method public static wrapPlatformKey(Ljava/security/interfaces/ECPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 4
    .param p0, "ecPrivateKey"    # Ljava/security/interfaces/ECPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 66
    :try_start_0
    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 70
    .local v1, "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    invoke-static {p0, v1}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/ECPrivateKey;Lcom/android/org/conscrypt/OpenSSLECGroupContext;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    return-object v2

    .line 67
    .end local v1    # "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Unknown group parameters"

    invoke-direct {v2, v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static wrapPlatformKey(Ljava/security/interfaces/ECPrivateKey;Lcom/android/org/conscrypt/OpenSSLECGroupContext;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 4
    .param p0, "ecPrivateKey"    # Ljava/security/interfaces/ECPrivateKey;
    .param p1, "group"    # Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getContext()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->getECPrivateKeyWrapper(Ljava/security/interfaces/ECPrivateKey;J)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(JZ)V

    return-object v0
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
    .line 207
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "engine-based keys can not be serialized"

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 212
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 213
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 158
    if-ne p1, p0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v3

    .line 162
    :cond_1
    instance-of v5, p1, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;

    if-eqz v5, :cond_2

    move-object v0, p1

    .line 163
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;

    .line 164
    .local v0, "other":Lcom/android/org/conscrypt/OpenSSLECPrivateKey;
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    iget-object v4, v0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v3, v4}, Lcom/android/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 167
    .end local v0    # "other":Lcom/android/org/conscrypt/OpenSSLECPrivateKey;
    :cond_2
    instance-of v5, p1, Ljava/security/interfaces/ECPrivateKey;

    if-nez v5, :cond_3

    move v3, v4

    .line 168
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 171
    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    .line 172
    .local v0, "other":Ljava/security/interfaces/ECPrivateKey;
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->getPrivateKey()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v3, v4

    .line 173
    goto :goto_0

    .line 176
    :cond_4
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    .line 177
    .local v2, "spec":Ljava/security/spec/ECParameterSpec;
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    .line 179
    .local v1, "otherSpec":Ljava/security/spec/ECParameterSpec;
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/spec/EllipticCurve;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v5

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v5

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v6

    if-eq v5, v6, :cond_0

    :cond_5
    move v3, v4

    goto :goto_0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, "EC"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_PKCS8_PRIV_KEY_INFO(J)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "PKCS#8"

    goto :goto_0
.end method

.method public getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    return-object v0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "private key value S cannot be extracted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->getPrivateKey()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_PKCS8_PRIV_KEY_INFO(J)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_print_private(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
