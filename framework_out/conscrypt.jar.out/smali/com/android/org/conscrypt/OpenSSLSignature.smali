.class public Lcom/android/org/conscrypt/OpenSSLSignature;
.super Ljava/security/SignatureSpi;
.source "OpenSSLSignature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLSignature$1;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA512ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA384ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA256ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA224ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA1ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA1DSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA512RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA384RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA256RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA224RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA1RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$MD5RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;
    }
.end annotation


# instance fields
.field private ctx:Lcom/android/org/conscrypt/OpenSSLDigestContext;

.field private final engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

.field private final evpAlgorithm:J

.field private key:Lcom/android/org/conscrypt/OpenSSLKey;

.field private signing:Z

.field private final singleByte:[B


# direct methods
.method private constructor <init>(JLcom/android/org/conscrypt/OpenSSLSignature$EngineType;)V
    .locals 1
    .param p1, "algorithm"    # J
    .param p3, "engineType"    # Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->singleByte:[B

    .line 70
    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    .line 71
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpAlgorithm:J

    .line 72
    return-void
.end method

.method synthetic constructor <init>(JLcom/android/org/conscrypt/OpenSSLSignature$EngineType;Lcom/android/org/conscrypt/OpenSSLSignature$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;
    .param p4, "x2"    # Lcom/android/org/conscrypt/OpenSSLSignature$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLSignature;-><init>(JLcom/android/org/conscrypt/OpenSSLSignature$EngineType;)V

    return-void
.end method

.method private checkEngineType(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 4
    .param p1, "pkey"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(J)I

    move-result v0

    .line 110
    .local v0, "pkeyType":I
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLSignature$1;->$SwitchMap$org$conscrypt$OpenSSLSignature$EngineType:[I

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 130
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key must be of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :pswitch_0
    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 113
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signature initialized as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (not RSA)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :pswitch_1
    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    .line 119
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signature initialized as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (not DSA)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :pswitch_2
    const/16 v1, 0x198

    if-eq v0, v1, :cond_0

    .line 125
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signature initialized as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (not EC)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_0
    return-void

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private enableDSASignatureNonceHardeningIfApplicable()V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 156
    .local v0, "key":Lcom/android/org/conscrypt/OpenSSLKey;
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLSignature$1;->$SwitchMap$org$conscrypt$OpenSSLSignature$EngineType:[I

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 166
    :goto_0
    return-void

    .line 158
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->set_DSA_flag_nonce_from_hash(J)V

    goto :goto_0

    .line 161
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_set_nonce_from_hash(JZ)V

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initInternal(Lcom/android/org/conscrypt/OpenSSLKey;Z)V
    .locals 0
    .param p1, "newKey"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .param p2, "signing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSignature;->checkEngineType(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 136
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 138
    iput-boolean p2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->signing:Z

    .line 139
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V

    .line 140
    return-void
.end method

.method private final resetContext()V
    .locals 4

    .prologue
    .line 75
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLDigestContext;

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_create()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLDigestContext;-><init>(J)V

    .line 76
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/OpenSSLDigestContext;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_init(Lcom/android/org/conscrypt/OpenSSLDigestContext;)V

    .line 77
    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->signing:Z

    if-eqz v1, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->enableDSASignatureNonceHardeningIfApplicable()V

    .line 79
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpAlgorithm:J

    invoke-static {v0, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_SignInit(Lcom/android/org/conscrypt/OpenSSLDigestContext;J)I

    .line 83
    :goto_0
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->ctx:Lcom/android/org/conscrypt/OpenSSLDigestContext;

    .line 84
    return-void

    .line 81
    :cond_0
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpAlgorithm:J

    invoke-static {v0, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_VerifyInit(Lcom/android/org/conscrypt/OpenSSLDigestContext;J)I

    goto :goto_0
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 2
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/OpenSSLSignature;->initInternal(Lcom/android/org/conscrypt/OpenSSLKey;Z)V

    .line 145
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 2
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPublicKey(Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/OpenSSLSignature;->initInternal(Lcom/android/org/conscrypt/OpenSSLKey;Z)V

    .line 171
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 175
    return-void
.end method

.method protected engineSign()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    if-nez v5, :cond_0

    .line 181
    new-instance v5, Ljava/security/SignatureException;

    const-string v6, "Need DSA or RSA or EC private key"

    invoke-direct {v5, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->ctx:Lcom/android/org/conscrypt/OpenSSLDigestContext;

    .line 186
    .local v2, "ctxLocal":Lcom/android/org/conscrypt/OpenSSLDigestContext;
    :try_start_0
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_size(J)I

    move-result v5

    new-array v0, v5, [B

    .line 187
    .local v0, "buffer":[B
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v6}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v6

    invoke-static {v2, v0, v5, v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_SignFinal(Lcom/android/org/conscrypt/OpenSSLDigestContext;[BIJ)I

    move-result v1

    .line 190
    .local v1, "bytesWritten":I
    new-array v4, v1, [B

    .line 191
    .local v4, "signature":[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v5, v4, v6, v1}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V

    return-object v4

    .line 194
    .end local v0    # "buffer":[B
    .end local v1    # "bytesWritten":I
    .end local v4    # "signature":[B
    :catch_0
    move-exception v3

    .line 195
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/security/SignatureException;

    invoke-direct {v5, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V

    throw v5
.end method

.method protected engineUpdate(B)V
    .locals 3
    .param p1, "input"    # B

    .prologue
    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->singleByte:[B

    aput-byte p1, v0, v2

    .line 89
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/org/conscrypt/OpenSSLSignature;->engineUpdate([BII)V

    .line 90
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 2
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->ctx:Lcom/android/org/conscrypt/OpenSSLDigestContext;

    .line 95
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/OpenSSLDigestContext;
    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->signing:Z

    if-eqz v1, :cond_0

    .line 96
    invoke-static {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_SignUpdate(Lcom/android/org/conscrypt/OpenSSLDigestContext;[BII)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-static {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_VerifyUpdate(Lcom/android/org/conscrypt/OpenSSLDigestContext;[BII)V

    goto :goto_0
.end method

.method protected engineVerify([B)Z
    .locals 10
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 207
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Need DSA or RSA public key"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->ctx:Lcom/android/org/conscrypt/OpenSSLDigestContext;

    const/4 v2, 0x0

    array-length v3, p1

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v4

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_VerifyFinal(Lcom/android/org/conscrypt/OpenSSLDigestContext;[BIIJ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 215
    .local v7, "result":I
    if-ne v7, v8, :cond_1

    move v0, v8

    .line 223
    :goto_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V

    .end local v7    # "result":I
    :goto_1
    return v0

    .restart local v7    # "result":I
    :cond_1
    move v0, v9

    .line 215
    goto :goto_0

    .line 216
    .end local v7    # "result":I
    :catch_0
    move-exception v6

    .line 223
    .local v6, "ex":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V

    move v0, v9

    goto :goto_1

    .end local v6    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V

    throw v0
.end method
