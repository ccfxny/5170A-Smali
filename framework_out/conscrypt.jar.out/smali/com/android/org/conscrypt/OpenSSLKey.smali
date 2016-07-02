.class public Lcom/android/org/conscrypt/OpenSSLKey;
.super Ljava/lang/Object;
.source "OpenSSLKey.java"


# instance fields
.field private final alias:Ljava/lang/String;

.field private final ctx:J

.field private final engine:Lcom/android/org/conscrypt/OpenSSLEngine;

.field private final wrapped:Z


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "ctx"    # J

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(JZ)V

    .line 42
    return-void
.end method

.method public constructor <init>(JLcom/android/org/conscrypt/OpenSSLEngine;Ljava/lang/String;)V
    .locals 1
    .param p1, "ctx"    # J
    .param p3, "engine"    # Lcom/android/org/conscrypt/OpenSSLEngine;
    .param p4, "alias"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:J

    .line 53
    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLKey;->engine:Lcom/android/org/conscrypt/OpenSSLEngine;

    .line 54
    iput-object p4, p0, Lcom/android/org/conscrypt/OpenSSLKey;->alias:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->wrapped:Z

    .line 56
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 1
    .param p1, "ctx"    # J
    .param p3, "wrapped"    # Z

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:J

    .line 46
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->engine:Lcom/android/org/conscrypt/OpenSSLEngine;

    .line 47
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->alias:Ljava/lang/String;

    .line 48
    iput-boolean p3, p0, Lcom/android/org/conscrypt/OpenSSLKey;->wrapped:Z

    .line 49
    return-void
.end method

.method public static fromPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 6
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 84
    instance-of v2, p0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v2, :cond_0

    .line 85
    check-cast p0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    .end local p0    # "key":Ljava/security/PrivateKey;
    invoke-interface {p0}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    .line 100
    .local v1, "keyFormat":Ljava/lang/String;
    .restart local p0    # "key":Ljava/security/PrivateKey;
    :goto_0
    return-object v2

    .line 88
    .end local v1    # "keyFormat":Ljava/lang/String;
    :cond_0
    invoke-interface {p0}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 89
    .restart local v1    # "keyFormat":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 90
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLKey;->wrapPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    goto :goto_0

    .line 91
    :cond_1
    const-string v2, "PKCS#8"

    invoke-interface {p0}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 92
    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown key format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_2
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    .line 96
    .local v0, "encoded":[B
    if-nez v0, :cond_3

    .line 97
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Key encoding is null"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :cond_3
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PKCS8_PRIV_KEY_INFO([B)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    goto :goto_0
.end method

.method public static fromPublicKey(Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 4
    .param p0, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 116
    instance-of v1, p0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v1, :cond_0

    .line 117
    check-cast p0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    .end local p0    # "key":Ljava/security/PublicKey;
    invoke-interface {p0}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    .line 129
    .local v0, "encoded":[B
    .restart local p0    # "key":Ljava/security/PublicKey;
    :goto_0
    return-object v1

    .line 120
    .end local v0    # "encoded":[B
    :cond_0
    const-string v1, "X.509"

    invoke-interface {p0}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown key format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_1
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 125
    .restart local v0    # "encoded":[B
    if-nez v0, :cond_2

    .line 126
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Key encoding is null"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_2
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PUBKEY([B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    goto :goto_0
.end method

.method static getPrivateKey(Ljava/security/spec/PKCS8EncodedKeySpec;I)Ljava/security/PrivateKey;
    .locals 6
    .param p0, "keySpec"    # Ljava/security/spec/PKCS8EncodedKeySpec;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 186
    move-object v2, p0

    .line 190
    .local v2, "pkcs8KeySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    :try_start_0
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v2}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PKCS8_PRIV_KEY_INFO([B)J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .local v1, "key":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(J)I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 196
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "Unexpected key type"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 191
    .end local v1    # "key":Lcom/android/org/conscrypt/OpenSSLKey;
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v3, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 200
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "key":Lcom/android/org/conscrypt/OpenSSLKey;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getPrivateKey()Ljava/security/PrivateKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    return-object v3

    .line 201
    :catch_1
    move-exception v0

    .line 202
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v3, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method static getPublicKey(Ljava/security/spec/X509EncodedKeySpec;I)Ljava/security/PublicKey;
    .locals 6
    .param p0, "keySpec"    # Ljava/security/spec/X509EncodedKeySpec;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 149
    move-object v2, p0

    .line 153
    .local v2, "x509KeySpec":Ljava/security/spec/X509EncodedKeySpec;
    :try_start_0
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v2}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PUBKEY([B)J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .local v1, "key":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(J)I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 159
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "Unexpected key type"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 154
    .end local v1    # "key":Lcom/android/org/conscrypt/OpenSSLKey;
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v3, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "key":Lcom/android/org/conscrypt/OpenSSLKey;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getPublicKey()Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    return-object v3

    .line 164
    :catch_1
    move-exception v0

    .line 165
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v3, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static wrapPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 3
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 104
    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_0

    .line 105
    check-cast p0, Ljava/security/interfaces/RSAPrivateKey;

    .end local p0    # "key":Ljava/security/PrivateKey;
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 106
    .restart local p0    # "key":Ljava/security/PrivateKey;
    :cond_0
    instance-of v0, p0, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v0, :cond_1

    .line 107
    check-cast p0, Ljava/security/interfaces/DSAPrivateKey;

    .end local p0    # "key":Ljava/security/PrivateKey;
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/DSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    goto :goto_0

    .line 108
    .restart local p0    # "key":Ljava/security/PrivateKey;
    :cond_1
    instance-of v0, p0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_2

    .line 109
    check-cast p0, Ljava/security/interfaces/ECPrivateKey;

    .end local p0    # "key":Ljava/security/PrivateKey;
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/ECPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    goto :goto_0

    .line 111
    .restart local p0    # "key":Ljava/security/PrivateKey;
    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 229
    if-ne p1, p0, :cond_1

    move v2, v1

    .line 259
    :cond_0
    :goto_0
    return v2

    .line 233
    :cond_1
    instance-of v3, p1, Lcom/android/org/conscrypt/OpenSSLKey;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 237
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLKey;

    .line 238
    .local v0, "other":Lcom/android/org/conscrypt/OpenSSLKey;
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:J

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    move v2, v1

    .line 239
    goto :goto_0

    .line 245
    :cond_2
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLKey;->engine:Lcom/android/org/conscrypt/OpenSSLEngine;

    if-nez v3, :cond_4

    .line 246
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getEngine()Lcom/android/org/conscrypt/OpenSSLEngine;

    move-result-object v3

    if-nez v3, :cond_0

    .line 259
    :cond_3
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:J

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_cmp(JJ)I

    move-result v3

    if-ne v3, v1, :cond_6

    :goto_1
    move v2, v1

    goto :goto_0

    .line 249
    :cond_4
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLKey;->engine:Lcom/android/org/conscrypt/OpenSSLEngine;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getEngine()Lcom/android/org/conscrypt/OpenSSLEngine;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/org/conscrypt/OpenSSLEngine;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLKey;->alias:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 253
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLKey;->alias:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 254
    :cond_5
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getAlias()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_6
    move v1, v2

    .line 259
    goto :goto_1
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 219
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 220
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_free(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 225
    return-void

    .line 223
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->alias:Ljava/lang/String;

    return-object v0
.end method

.method getEngine()Lcom/android/org/conscrypt/OpenSSLEngine;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->engine:Lcom/android/org/conscrypt/OpenSSLEngine;

    return-object v0
.end method

.method public getPkeyContext()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:J

    return-wide v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(J)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 180
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "unknown PKEY type"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :sswitch_0
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 178
    :goto_0
    return-object v0

    .line 174
    :sswitch_1
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    goto :goto_0

    .line 176
    :sswitch_2
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    goto :goto_0

    .line 178
    :sswitch_3
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    goto :goto_0

    .line 170
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x1c -> :sswitch_1
        0x74 -> :sswitch_2
        0x198 -> :sswitch_3
    .end sparse-switch
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(J)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 143
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "unknown PKEY type"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :sswitch_0
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 141
    :goto_0
    return-object v0

    .line 137
    :sswitch_1
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLDHPublicKey;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLDHPublicKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    goto :goto_0

    .line 139
    :sswitch_2
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    goto :goto_0

    .line 141
    :sswitch_3
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLECPublicKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    goto :goto_0

    .line 133
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x1c -> :sswitch_1
        0x74 -> :sswitch_2
        0x198 -> :sswitch_3
    .end sparse-switch
.end method

.method public getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(J)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 212
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "unknown PKEY type"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :sswitch_0
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLSecretKey;

    invoke-direct {v0, p1, p0}, Lcom/android/org/conscrypt/OpenSSLSecretKey;-><init>(Ljava/lang/String;Lcom/android/org/conscrypt/OpenSSLKey;)V

    return-object v0

    .line 207
    nop

    :sswitch_data_0
    .sparse-switch
        0x357 -> :sswitch_0
        0x37e -> :sswitch_0
    .end sparse-switch
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 264
    const/4 v0, 0x1

    .line 265
    .local v0, "hash":I
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:J

    long-to-int v1, v2

    add-int/lit8 v0, v1, 0x11

    .line 266
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLKey;->engine:Lcom/android/org/conscrypt/OpenSSLEngine;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    long-to-int v2, v2

    add-int v0, v1, v2

    .line 267
    return v0

    .line 266
    :cond_0
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLKey;->engine:Lcom/android/org/conscrypt/OpenSSLEngine;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLEngine;->getEngineContext()J

    move-result-wide v2

    goto :goto_0
.end method

.method isEngineBased()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->engine:Lcom/android/org/conscrypt/OpenSSLEngine;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWrapped()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->wrapped:Z

    return v0
.end method
