.class public Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
.super Ljava/lang/Object;
.source "OpenSSLRSAPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPublicKey;
.implements Lcom/android/org/conscrypt/OpenSSLKeyHolder;


# static fields
.field private static final serialVersionUID:J = 0x1b56d8a5b2600a4L


# instance fields
.field private transient fetchedParams:Z

.field private transient key:Lcom/android/org/conscrypt/OpenSSLKey;

.field private modulus:Ljava/math/BigInteger;

.field private publicExponent:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 0
    .param p1, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 41
    return-void
.end method

.method constructor <init>(Ljava/security/spec/RSAPublicKeySpec;)V
    .locals 10
    .param p1, "spec"    # Ljava/security/spec/RSAPublicKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    :try_start_0
    new-instance v9, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {p1}, Ljava/security/spec/RSAPublicKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/RSAPublicKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v0

    invoke-direct {v9, v0, v1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v9, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return-void

    .line 59
    :catch_0
    move-exception v8

    .line 60
    .local v8, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v0, v8}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private ensureReadParams()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 96
    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->fetchedParams:Z

    if-eqz v1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_RSA_public_params(J)[[B

    move-result-object v0

    .line 101
    .local v0, "params":[[B
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    .line 102
    new-instance v1, Ljava/math/BigInteger;

    aget-object v2, v0, v4

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    .line 104
    iput-boolean v4, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->fetchedParams:Z

    goto :goto_0
.end method

.method static getInstance(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 10
    .param p0, "rsaPublicKey"    # Ljava/security/interfaces/RSAPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 66
    :try_start_0
    new-instance v9, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v0

    invoke-direct {v9, v0, v1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    .line 75
    :catch_0
    move-exception v8

    .line 76
    .local v8, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

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
    const/4 v2, 0x0

    .line 171
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 173
    new-instance v8, Lcom/android/org/conscrypt/OpenSSLKey;

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v8, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->fetchedParams:Z

    .line 183
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    .line 187
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 188
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 121
    if-ne p1, p0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v1

    .line 125
    :cond_1
    instance-of v3, p1, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 126
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    .line 132
    .local v0, "other":Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 137
    .end local v0    # "other":Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
    :cond_2
    instance-of v3, p1, Ljava/security/interfaces/RSAPublicKey;

    if-nez v3, :cond_3

    move v1, v2

    .line 138
    goto :goto_0

    .line 141
    :cond_3
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    move-object v0, p1

    .line 143
    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 144
    .local v0, "other":Ljava/security/interfaces/RSAPublicKey;
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "RSA"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_PUBKEY(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, "X.509"

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    .line 110
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    .line 116
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    .line 152
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 157
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OpenSSLRSAPublicKey{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "modulus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, "publicExponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
