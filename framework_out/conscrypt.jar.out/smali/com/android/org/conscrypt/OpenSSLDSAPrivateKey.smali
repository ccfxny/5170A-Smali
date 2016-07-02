.class public Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;
.super Ljava/lang/Object;
.source "OpenSSLDSAPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/DSAPrivateKey;
.implements Lcom/android/org/conscrypt/OpenSSLKeyHolder;


# static fields
.field private static final serialVersionUID:J = 0x5a8c83870b5c3f74L


# instance fields
.field private transient key:Lcom/android/org/conscrypt/OpenSSLKey;

.field private transient params:Lcom/android/org/conscrypt/OpenSSLDSAParams;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 0
    .param p1, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 39
    return-void
.end method

.method constructor <init>(Ljava/security/spec/DSAPrivateKeySpec;)V
    .locals 7
    .param p1, "dsaKeySpec"    # Ljava/security/spec/DSAPrivateKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    :try_start_0
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {p1}, Ljava/security/spec/DSAPrivateKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/spec/DSAPrivateKeySpec;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/security/spec/DSAPrivateKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/security/spec/DSAPrivateKeySpec;->getX()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_DSA([B[B[B[B[B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private ensureReadParams()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->params:Lcom/android/org/conscrypt/OpenSSLDSAParams;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLDSAParams;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLDSAParams;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->params:Lcom/android/org/conscrypt/OpenSSLDSAParams;

    .line 63
    :cond_0
    return-void
.end method

.method static getInstance(Ljava/security/interfaces/DSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 8
    .param p0, "dsaPrivateKey"    # Ljava/security/interfaces/DSAPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-interface {p0}, Ljava/security/interfaces/DSAPrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 71
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/DSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    .line 76
    :goto_0
    return-object v2

    .line 75
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    .line 76
    .local v0, "dsaParams":Ljava/security/interfaces/DSAParams;
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {p0}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_DSA([B[B[B[B[B)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v0    # "dsaParams":Ljava/security/interfaces/DSAParams;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

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
    .line 218
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 220
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 221
    .local v0, "g":Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    .line 222
    .local v1, "p":Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    .line 223
    .local v2, "q":Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/math/BigInteger;

    .line 225
    .local v3, "x":Ljava/math/BigInteger;
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v9

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_DSA([B[B[B[B[B)J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v4, p0, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 231
    return-void
.end method

.method public static wrapPlatformKey(Ljava/security/interfaces/DSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 4
    .param p0, "dsaPrivateKey"    # Ljava/security/interfaces/DSAPrivateKey;

    .prologue
    .line 88
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-static {p0}, Lcom/android/org/conscrypt/NativeCrypto;->getDSAPrivateKeyWrapper(Ljava/security/interfaces/DSAPrivateKey;)J

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
    .line 234
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "engine-based keys can not be serialized"

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 240
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->ensureReadParams()V

    .line 241
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->params:Lcom/android/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLDSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->params:Lcom/android/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLDSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->params:Lcom/android/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLDSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->params:Lcom/android/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLDSAParams;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 245
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 142
    if-ne p1, p0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v2

    .line 146
    :cond_1
    instance-of v4, p1, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;

    if-eqz v4, :cond_2

    move-object v0, p1

    .line 147
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;

    .line 153
    .local v0, "other":Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 158
    .end local v0    # "other":Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;
    :cond_2
    instance-of v4, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-nez v4, :cond_3

    move v2, v3

    .line 159
    goto :goto_0

    .line 162
    :cond_3
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->ensureReadParams()V

    .line 164
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->params:Lcom/android/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLDSAParams;->getX()Ljava/math/BigInteger;

    move-result-object v1

    .line 165
    .local v1, "x":Ljava/math/BigInteger;
    if-nez v1, :cond_4

    move v2, v3

    .line 172
    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 175
    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    .line 176
    .local v0, "other":Ljava/security/interfaces/DSAPrivateKey;
    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->params:Lcom/android/org/conscrypt/OpenSSLDSAParams;

    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/org/conscrypt/OpenSSLDSAParams;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_5
    move v2, v3

    goto :goto_0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, "DSA"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_PKCS8_PRIV_KEY_INFO(J)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "PKCS#8"

    goto :goto_0
.end method

.method public getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    return-object v0
.end method

.method public getParams()Ljava/security/interfaces/DSAParams;
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->ensureReadParams()V

    .line 94
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->params:Lcom/android/org/conscrypt/OpenSSLDSAParams;

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "private key value X cannot be extracted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->ensureReadParams()V

    .line 137
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->params:Lcom/android/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLDSAParams;->getX()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->ensureReadParams()V

    .line 183
    const/4 v0, 0x1

    .line 185
    .local v0, "hash":I
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v1

    .line 186
    .local v1, "x":Ljava/math/BigInteger;
    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v2

    add-int/lit8 v0, v2, 0x3

    .line 190
    :cond_0
    mul-int/lit8 v2, v0, 0x7

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->params:Lcom/android/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLDSAParams;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 192
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x7d

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OpenSSLDSAPrivateKey{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    const-string v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    :goto_0
    return-object v1

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->ensureReadParams()V

    .line 207
    const-string v1, "X="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->params:Lcom/android/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLDSAParams;->getX()Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    const-string v1, "params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->params:Lcom/android/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLDSAParams;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
