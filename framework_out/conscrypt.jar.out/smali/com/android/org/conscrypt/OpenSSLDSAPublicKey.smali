.class public Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;
.super Ljava/lang/Object;
.source "OpenSSLDSAPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/DSAPublicKey;
.implements Lcom/android/org/conscrypt/OpenSSLKeyHolder;


# static fields
.field private static final serialVersionUID:J = 0x48b34795d19308e8L


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
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 39
    return-void
.end method

.method constructor <init>(Ljava/security/spec/DSAPublicKeySpec;)V
    .locals 7
    .param p1, "dsaKeySpec"    # Ljava/security/spec/DSAPublicKeySpec;
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

    invoke-virtual {p1}, Ljava/security/spec/DSAPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/spec/DSAPublicKeySpec;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/security/spec/DSAPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p1}, Ljava/security/spec/DSAPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_DSA([B[B[B[B[B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;
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
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/android/org/conscrypt/OpenSSLDSAParams;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLDSAParams;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLDSAParams;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/android/org/conscrypt/OpenSSLDSAParams;

    .line 63
    :cond_0
    return-void
.end method

.method static getInstance(Ljava/security/interfaces/DSAPublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 8
    .param p0, "dsaPublicKey"    # Ljava/security/interfaces/DSAPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 67
    :try_start_0
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    .line 68
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

    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_DSA([B[B[B[B[B)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 74
    .end local v0    # "dsaParams":Ljava/security/interfaces/DSAParams;
    :catch_0
    move-exception v1

    .line 75
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
    .line 166
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 168
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 169
    .local v0, "g":Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    .line 170
    .local v1, "p":Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    .line 171
    .local v2, "q":Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/math/BigInteger;

    .line 173
    .local v3, "y":Ljava/math/BigInteger;
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_DSA([B[B[B[B[B)J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v4, p0, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 179
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
    .line 182
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "engine-based keys can not be serialized"

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 187
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->ensureReadParams()V

    .line 188
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/android/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLDSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/android/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLDSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/android/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLDSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/android/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLDSAParams;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 192
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 117
    if-ne p1, p0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v1

    .line 121
    :cond_1
    instance-of v3, p1, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 122
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;

    .line 128
    .local v0, "other":Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    .end local v0    # "other":Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;
    :cond_2
    instance-of v3, p1, Ljava/security/interfaces/DSAPublicKey;

    if-nez v3, :cond_3

    move v1, v2

    .line 134
    goto :goto_0

    .line 137
    :cond_3
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->ensureReadParams()V

    move-object v0, p1

    .line 139
    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    .line 140
    .local v0, "other":Ljava/security/interfaces/DSAPublicKey;
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/android/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLDSAParams;->getY()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/android/org/conscrypt/OpenSSLDSAParams;

    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/org/conscrypt/OpenSSLDSAParams;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "DSA"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_PUBKEY(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "X.509"

    return-object v0
.end method

.method public getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    return-object v0
.end method

.method public getParams()Ljava/security/interfaces/DSAParams;
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->ensureReadParams()V

    .line 87
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/android/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLDSAParams;->hasParams()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/android/org/conscrypt/OpenSSLDSAParams;

    goto :goto_0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->ensureReadParams()V

    .line 112
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/android/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLDSAParams;->getY()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->ensureReadParams()V

    .line 147
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/android/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLDSAParams;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/android/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLDSAParams;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->ensureReadParams()V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OpenSSLDSAPublicKey{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/android/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLDSAParams;->getY()Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, "params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/android/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLDSAParams;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
