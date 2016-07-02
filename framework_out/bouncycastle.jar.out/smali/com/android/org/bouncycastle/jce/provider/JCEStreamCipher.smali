.class public Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;
.super Ljavax/crypto/CipherSpi;
.source "JCEStreamCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE;


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field private cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

.field private engineParams:Ljava/security/AlgorithmParameters;

.field private ivLength:I

.field private ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

.field private pbeAlgorithm:Ljava/lang/String;

.field private pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V
    .locals 5
    .param p1, "engine"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .param p2, "ivLength"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 93
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->availableSpecs:[Ljava/lang/Class;

    .line 75
    iput v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivLength:I

    .line 77
    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 78
    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 94
    iput p2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivLength:I

    .line 96
    new-instance v0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    .line 97
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/StreamCipher;I)V
    .locals 5
    .param p1, "engine"    # Lcom/android/org/bouncycastle/crypto/StreamCipher;
    .param p2, "ivLength"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 85
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->availableSpecs:[Ljava/lang/Class;

    .line 75
    iput v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivLength:I

    .line 77
    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 78
    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    .line 87
    iput p2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivLength:I

    .line 88
    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 386
    if-eqz p3, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->reset()V

    .line 393
    return p3
.end method

.method protected engineDoFinal([BII)[B
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .prologue
    .line 364
    if-eqz p3, :cond_0

    .line 366
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->engineUpdate([BII)[B

    move-result-object v0

    .line 368
    .local v0, "out":[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->reset()V

    .line 375
    .end local v0    # "out":[B
    :goto_0
    return-object v0

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->reset()V

    .line 375
    const/4 v1, 0x0

    new-array v0, v1, [B

    goto :goto_0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 1
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    .line 112
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 0
    .param p1, "inputLen"    # I

    .prologue
    .line 118
    return p1
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 4

    .prologue
    .line 123
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v2, :cond_0

    .line 129
    :try_start_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    const-string v3, "BC"

    invoke-static {v2, v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    .line 130
    .local v1, "engineParams":Ljava/security/AlgorithmParameters;
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v1    # "engineParams":Ljava/security/AlgorithmParameters;
    :goto_0
    return-object v1

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->engineParams:Ljava/security/AlgorithmParameters;

    goto :goto_0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 6
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 283
    const/4 v2, 0x0

    .line 285
    .local v2, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_1

    .line 287
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->availableSpecs:[Ljava/lang/Class;

    array-length v3, v3

    if-eq v1, v3, :cond_0

    .line 291
    :try_start_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->availableSpecs:[Ljava/lang/Class;

    aget-object v3, v3, v1

    invoke-virtual {p3, v3}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 300
    :cond_0
    if-nez v2, :cond_1

    .line 302
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t handle parameter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 294
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0, p1, p2, v2, p4}, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 307
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 308
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 318
    const/4 v1, 0x0

    :try_start_0
    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 9
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 178
    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 179
    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 181
    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 186
    instance-of v5, p2, Ljavax/crypto/SecretKey;

    if-nez v5, :cond_0

    .line 188
    new-instance v5, Ljava/security/InvalidKeyException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Key for algorithm "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not suitable for symmetric enryption."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 191
    :cond_0
    instance-of v5, p2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v5, :cond_8

    move-object v2, p2

    .line 193
    check-cast v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    .line 195
    .local v2, "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getOID()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 197
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getOID()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 204
    :goto_0
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 206
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 207
    .local v3, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    new-instance v5, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getSalt()[B

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIterationCount()I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 219
    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :goto_1
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    .line 221
    check-cast v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 238
    .end local v2    # "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_1
    :goto_2
    iget v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivLength:I

    if-eqz v5, :cond_4

    instance-of v5, v3, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v5, :cond_4

    .line 240
    move-object v1, p4

    .line 242
    .local v1, "ivRandom":Ljava/security/SecureRandom;
    if-nez v1, :cond_2

    .line 244
    new-instance v1, Ljava/security/SecureRandom;

    .end local v1    # "ivRandom":Ljava/security/SecureRandom;
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 247
    .restart local v1    # "ivRandom":Ljava/security/SecureRandom;
    :cond_2
    if-eq p1, v8, :cond_3

    const/4 v5, 0x3

    if-ne p1, v5, :cond_b

    .line 249
    :cond_3
    iget v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivLength:I

    new-array v0, v5, [B

    .line 251
    .local v0, "iv":[B
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 252
    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v4, v3, v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    .end local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .local v4, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object v5, v4

    .line 253
    check-cast v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    move-object v3, v4

    .line 261
    .end local v0    # "iv":[B
    .end local v1    # "ivRandom":Ljava/security/SecureRandom;
    .end local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_4
    packed-switch p1, :pswitch_data_0

    .line 272
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "eeek!"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 274
    :goto_3
    return-void

    .line 201
    .end local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v2    # "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .restart local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_5
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    goto :goto_0

    .line 209
    :cond_6
    instance-of v5, p3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v5, :cond_7

    .line 211
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, p3, v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 212
    .restart local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    check-cast p3, Ljavax/crypto/spec/PBEParameterSpec;

    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    goto :goto_1

    .line 216
    .end local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_7
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    const-string v6, "PBE requires PBE parameters to be set."

    invoke-direct {v5, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 224
    .end local v2    # "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_8
    if-nez p3, :cond_9

    .line 226
    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_2

    .line 228
    .end local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_9
    instance-of v5, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v5, :cond_a

    .line 230
    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v5, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    check-cast p3, Ljavax/crypto/spec/IvParameterSpec;

    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    .restart local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object v5, v3

    .line 231
    check-cast v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    goto :goto_2

    .line 235
    .end local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_a
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "unknown parameter type."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 257
    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v1    # "ivRandom":Ljava/security/SecureRandom;
    .restart local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_b
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    const-string v6, "no IV set when one expected"

    invoke-direct {v5, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 265
    .end local v1    # "ivRandom":Ljava/security/SecureRandom;
    :pswitch_0
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    invoke-interface {v5, v8, v3}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_3

    .line 269
    :pswitch_1
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v3}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_3

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 3
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 150
    const-string v0, "ECB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    return-void
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 3
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 163
    const-string v0, "NoPadding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Padding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unknown."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    return-void
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 9
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 425
    const/4 v6, 0x0

    :try_start_0
    array-length v7, p1

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->engineDoFinal([BII)[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 436
    .local v2, "encoded":[B
    const/4 v6, 0x3

    if-ne p3, v6, :cond_1

    .line 438
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v5, v2, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 478
    :cond_0
    :goto_0
    return-object v5

    .line 427
    .end local v2    # "encoded":[B
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v6, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 431
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :catch_1
    move-exception v1

    .line 433
    .local v1, "e2":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v6, Ljava/security/InvalidKeyException;

    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 440
    .end local v1    # "e2":Ljavax/crypto/IllegalBlockSizeException;
    .restart local v2    # "encoded":[B
    :cond_1
    const-string v6, ""

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-ne p3, v8, :cond_2

    .line 448
    :try_start_1
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v3

    .line 450
    .local v3, "in":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v5

    .line 452
    .local v5, "privKey":Ljava/security/PrivateKey;
    if-nez v5, :cond_0

    .line 458
    new-instance v6, Ljava/security/InvalidKeyException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "algorithm "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not supported"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 461
    .end local v3    # "in":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v5    # "privKey":Ljava/security/PrivateKey;
    :catch_2
    move-exception v0

    .line 463
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "Invalid key encoding."

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 470
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    const-string v6, "BC"

    invoke-static {p2, v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 472
    .local v4, "kf":Ljava/security/KeyFactory;
    const/4 v6, 0x1

    if-ne p3, v6, :cond_3

    .line 474
    new-instance v6, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v6, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    goto :goto_0

    .line 476
    :cond_3
    if-ne p3, v8, :cond_4

    .line 478
    new-instance v6, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v6, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v6}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v5

    goto :goto_0

    .line 481
    .end local v4    # "kf":Ljava/security/KeyFactory;
    :catch_3
    move-exception v0

    .line 483
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v6, Ljava/security/InvalidKeyException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown key type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 485
    .end local v0    # "e":Ljava/security/NoSuchProviderException;
    :catch_4
    move-exception v0

    .line 487
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/security/InvalidKeyException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown key type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 489
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_5
    move-exception v1

    .line 491
    .local v1, "e2":Ljava/security/spec/InvalidKeySpecException;
    new-instance v6, Ljava/security/InvalidKeyException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown key type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 494
    .end local v1    # "e2":Ljava/security/spec/InvalidKeySpecException;
    .restart local v4    # "kf":Ljava/security/KeyFactory;
    :cond_4
    new-instance v6, Ljava/security/InvalidKeyException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown key type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected engineUpdate([BII[BI)I
    .locals 7
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)V
    :try_end_0
    .catch Lcom/android/org/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    return p3

    .line 352
    :catch_0
    move-exception v6

    .line 354
    .local v6, "e":Lcom/android/org/bouncycastle/crypto/DataLengthException;
    new-instance v0, Ljavax/crypto/ShortBufferException;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII)[B
    .locals 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    .line 331
    new-array v4, p3, [B

    .line 333
    .local v4, "out":[B
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)V

    .line 335
    return-object v4
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .locals 4
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 400
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 401
    .local v1, "encoded":[B
    if-nez v1, :cond_0

    .line 403
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Cannot wrap key, null encoding."

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 408
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->engineDoFinal([BII)[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 410
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
