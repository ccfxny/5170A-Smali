.class public Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;
.super Ljava/lang/Object;
.source "OpenSSLDHPrivateKey.java"

# interfaces
.implements Ljavax/crypto/interfaces/DHPrivateKey;
.implements Lcom/android/org/conscrypt/OpenSSLKeyHolder;


# static fields
.field private static final serialVersionUID:J = -0x65997fa9e5f3b56eL


# instance fields
.field private transient g:[B

.field private transient key:Lcom/android/org/conscrypt/OpenSSLKey;

.field private transient mParamsLock:Ljava/lang/Object;

.field private transient p:[B

.field private transient readParams:Z

.field private transient x:[B


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 1
    .param p1, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->mParamsLock:Ljava/lang/Object;

    .line 49
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 50
    return-void
.end method

.method constructor <init>(Ljavax/crypto/spec/DHPrivateKeySpec;)V
    .locals 6
    .param p1, "dhKeySpec"    # Ljavax/crypto/spec/DHPrivateKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->mParamsLock:Ljava/lang/Object;

    .line 59
    :try_start_0
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getX()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_DH([B[B[B[B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private ensureReadParams()V
    .locals 6

    .prologue
    .line 70
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->mParamsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 71
    :try_start_0
    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->readParams:Z

    if-eqz v1, :cond_0

    .line 72
    monitor-exit v2

    .line 83
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->get_DH_params(J)[[B

    move-result-object v0

    .line 77
    .local v0, "params":[[B
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->p:[B

    .line 78
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->g:[B

    .line 79
    const/4 v1, 0x3

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->x:[B

    .line 81
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->readParams:Z

    .line 82
    monitor-exit v2

    goto :goto_0

    .end local v0    # "params":[[B
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getInstance(Ljavax/crypto/interfaces/DHPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 7
    .param p0, "dhPrivateKey"    # Ljavax/crypto/interfaces/DHPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    invoke-interface {p0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    .line 88
    .local v0, "dhParams":Ljavax/crypto/spec/DHParameterSpec;
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {p0}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_DH([B[B[B[B)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 93
    .end local v0    # "dhParams":Ljavax/crypto/spec/DHParameterSpec;
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
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

    .line 224
    .local v2, "x":Ljava/math/BigInteger;
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_DH([B[B[B[B)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v3, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 229
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->mParamsLock:Ljava/lang/Object;

    .line 230
    return-void
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
    .line 233
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "engine-based keys can not be serialized"

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 239
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->ensureReadParams()V

    .line 240
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->g:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 241
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->p:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 242
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->x:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 243
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 149
    if-ne p1, p0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v2

    .line 153
    :cond_1
    instance-of v4, p1, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;

    if-eqz v4, :cond_2

    move-object v0, p1

    .line 154
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;

    .line 160
    .local v0, "other":Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 165
    .end local v0    # "other":Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;
    :cond_2
    instance-of v4, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-nez v4, :cond_3

    move v2, v3

    .line 166
    goto :goto_0

    .line 169
    :cond_3
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->ensureReadParams()V

    move-object v0, p1

    .line 171
    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    .line 172
    .local v0, "other":Ljavax/crypto/interfaces/DHPrivateKey;
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->x:[B

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v2, v3

    .line 173
    goto :goto_0

    .line 176
    :cond_4
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    .line 177
    .local v1, "spec":Ljavax/crypto/spec/DHParameterSpec;
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->g:[B

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->p:[B

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_5
    move v2, v3

    goto :goto_0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "DH"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_PKCS8_PRIV_KEY_INFO(J)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "PKCS#8"

    goto :goto_0
.end method

.method public getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    return-object v0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .locals 4

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->ensureReadParams()V

    .line 134
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->p:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v2, Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->g:[B

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "private key value X cannot be extracted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->ensureReadParams()V

    .line 144
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->x:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->ensureReadParams()V

    .line 183
    const/4 v0, 0x1

    .line 184
    .local v0, "hash":I
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->x:[B

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit8 v0, v1, 0x3

    .line 187
    :cond_0
    mul-int/lit8 v1, v0, 0x7

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->p:[B

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 188
    mul-int/lit8 v1, v0, 0xd

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->g:[B

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 189
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x7d

    const/16 v4, 0x2c

    const/16 v3, 0x10

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OpenSSLDHPrivateKey{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    const-string v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    :goto_0
    return-object v1

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->ensureReadParams()V

    .line 204
    const-string v1, "X="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->x:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    const-string v1, "P="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->p:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    const-string v1, "G="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;->g:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
