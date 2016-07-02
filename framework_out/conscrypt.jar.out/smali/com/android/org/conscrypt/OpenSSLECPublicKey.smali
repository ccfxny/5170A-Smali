.class public final Lcom/android/org/conscrypt/OpenSSLECPublicKey;
.super Ljava/lang/Object;
.source "OpenSSLECPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;
.implements Lcom/android/org/conscrypt/OpenSSLKeyHolder;


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "EC"

.field private static final serialVersionUID:J = 0x2ca0f81a89dc7224L


# instance fields
.field protected transient group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

.field protected transient key:Lcom/android/org/conscrypt/OpenSSLKey;


# direct methods
.method public constructor <init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Lcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 0
    .param p1, "group"    # Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .param p2, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 42
    iput-object p2, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 6
    .param p1, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_get0_group(J)J

    move-result-wide v0

    .line 47
    .local v0, "origGroup":J
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_dup(J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;-><init>(J)V

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 48
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECPublicKeySpec;)V
    .locals 8
    .param p1, "ecKeySpec"    # Ljava/security/spec/ECPublicKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    :try_start_0
    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 54
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_EC_GROUP_type(J)I

    move-result v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/org/conscrypt/OpenSSLECPointContext;->getInstance(ILcom/android/org/conscrypt/OpenSSLECGroupContext;Ljava/security/spec/ECPoint;)Lcom/android/org/conscrypt/OpenSSLECPointContext;

    move-result-object v1

    .line 56
    .local v1, "pubKey":Lcom/android/org/conscrypt/OpenSSLECPointContext;
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLKey;

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getContext()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLECPointContext;->getContext()J

    move-result-wide v6

    const/4 v3, 0x0

    invoke-static {v4, v5, v6, v7, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_EC_KEY(JJ[B)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-void

    .line 58
    .end local v1    # "pubKey":Lcom/android/org/conscrypt/OpenSSLECPointContext;
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getInstance(Ljava/security/interfaces/ECPublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 9
    .param p0, "ecPublicKey"    # Ljava/security/interfaces/ECPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 65
    :try_start_0
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v1

    .line 67
    .local v1, "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getContext()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->get_EC_GROUP_type(J)I

    move-result v3

    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/android/org/conscrypt/OpenSSLECPointContext;->getInstance(ILcom/android/org/conscrypt/OpenSSLECGroupContext;Ljava/security/spec/ECPoint;)Lcom/android/org/conscrypt/OpenSSLECPointContext;

    move-result-object v2

    .line 69
    .local v2, "pubKey":Lcom/android/org/conscrypt/OpenSSLECPointContext;
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getContext()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLECPointContext;->getContext()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_EC_KEY(JJ[B)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 71
    .end local v1    # "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .end local v2    # "pubKey":Lcom/android/org/conscrypt/OpenSSLECPointContext;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getPublicKey()Ljava/security/spec/ECPoint;
    .locals 4

    .prologue
    .line 97
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLECPointContext;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_get_public_key(J)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLECPointContext;-><init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;J)V

    .line 100
    .local v0, "pubKey":Lcom/android/org/conscrypt/OpenSSLECPointContext;
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLECPointContext;->getECPoint()Ljava/security/spec/ECPoint;

    move-result-object v1

    return-object v1
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
    .line 153
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 155
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 157
    .local v0, "encoded":[B
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PUBKEY([B)J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 159
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_get0_group(J)J

    move-result-wide v2

    .line 160
    .local v2, "origGroup":J
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_dup(J)J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;-><init>(J)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 161
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
    .line 164
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "engine-based keys can not be serialized"

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 169
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 170
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 115
    if-ne p1, p0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v3

    .line 119
    :cond_1
    instance-of v5, p1, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;

    if-eqz v5, :cond_2

    move-object v0, p1

    .line 120
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;

    .line 121
    .local v0, "other":Lcom/android/org/conscrypt/OpenSSLECPrivateKey;
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    iget-object v4, v0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v3, v4}, Lcom/android/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 124
    .end local v0    # "other":Lcom/android/org/conscrypt/OpenSSLECPrivateKey;
    :cond_2
    instance-of v5, p1, Ljava/security/interfaces/ECPublicKey;

    if-nez v5, :cond_3

    move v3, v4

    .line 125
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 128
    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    .line 129
    .local v0, "other":Ljava/security/interfaces/ECPublicKey;
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->getPublicKey()Ljava/security/spec/ECPoint;

    move-result-object v5

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v3, v4

    .line 130
    goto :goto_0

    .line 133
    :cond_4
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    .line 134
    .local v2, "spec":Ljava/security/spec/ECParameterSpec;
    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    .line 136
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
    .line 78
    const-string v0, "EC"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_PUBKEY(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "X.509"

    return-object v0
.end method

.method public getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    return-object v0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->getPublicKey()Ljava/security/spec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_PUBKEY(J)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_print_public(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
