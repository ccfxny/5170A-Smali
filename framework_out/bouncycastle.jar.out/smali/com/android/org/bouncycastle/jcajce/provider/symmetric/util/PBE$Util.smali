.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;
.super Ljava/lang/Object;
.source "PBE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B
    .locals 2
    .param p0, "type"    # I
    .param p1, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;

    .prologue
    .line 343
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 345
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v0

    .line 355
    .local v0, "key":[B
    :goto_0
    return-object v0

    .line 347
    .end local v0    # "key":[B
    :cond_0
    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    .line 349
    :cond_1
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToUTF8Bytes([C)[B

    move-result-object v0

    .restart local v0    # "key":[B
    goto :goto_0

    .line 353
    .end local v0    # "key":[B
    :cond_2
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v0

    .restart local v0    # "key":[B
    goto :goto_0
.end method

.method private static makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    .locals 3
    .param p0, "type"    # I
    .param p1, "hash"    # I

    .prologue
    .line 65
    if-eqz p0, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    .line 67
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 85
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PKCS5 scheme 1 only supports MD2, MD5 and SHA1."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :pswitch_0
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 175
    .local v0, "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :goto_0
    return-object v0

    .line 81
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_1
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 83
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 88
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_1
    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x5

    if-ne p0, v1, :cond_3

    .line 90
    :cond_2
    packed-switch p1, :pswitch_data_1

    .line 126
    :pswitch_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unknown digest scheme for PBE PKCS5S2 encryption."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :pswitch_3
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 101
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 104
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_4
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 106
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 117
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_5
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA256()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 119
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 129
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_3
    const/4 v1, 0x2

    if-ne p0, v1, :cond_4

    .line 131
    packed-switch p1, :pswitch_data_2

    .line 167
    :pswitch_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unknown digest scheme for PBE encryption."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :pswitch_7
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 142
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 145
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_8
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 147
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 158
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_9
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA256()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 160
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 172
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_4
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;-><init>()V

    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 90
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 131
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method public static makePBEMacParameters(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 7
    .param p0, "pbeKey"    # Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .prologue
    .line 246
    if-eqz p1, :cond_0

    instance-of v5, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v5, :cond_1

    .line 248
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    move-object v4, p1

    .line 251
    check-cast v4, Ljavax/crypto/spec/PBEParameterSpec;

    .line 252
    .local v4, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 253
    .local v0, "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v2

    .line 256
    .local v2, "key":[B
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->shouldTryWrongPKCS12()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 258
    const/4 v5, 0x2

    new-array v2, v5, [B

    .line 261
    :cond_2
    invoke-virtual {v4}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v5

    invoke-virtual {v4}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v6

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 263
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 265
    .local v3, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-eq v1, v5, :cond_3

    .line 267
    const/4 v5, 0x0

    aput-byte v5, v2, v1

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    :cond_3
    return-object v3
.end method

.method public static makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 6
    .param p0, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;
    .param p1, "type"    # I
    .param p2, "hash"    # I
    .param p3, "keySize"    # I

    .prologue
    .line 321
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 325
    .local v0, "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object v2

    .line 327
    .local v2, "key":[B
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v4

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v5

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 329
    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 331
    .local v3, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-eq v1, v4, :cond_0

    .line 333
    const/4 v4, 0x0

    aput-byte v4, v2, v1

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_0
    return-object v3
.end method

.method public static makePBEParameters(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 8
    .param p0, "pbeKey"    # Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "targetAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 187
    if-eqz p1, :cond_0

    instance-of v6, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v6, :cond_1

    .line 189
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    move-object v5, p1

    .line 192
    check-cast v5, Ljavax/crypto/spec/PBEParameterSpec;

    .line 193
    .local v5, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 194
    .local v0, "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v3

    .line 197
    .local v3, "key":[B
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->shouldTryWrongPKCS12()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 199
    const/4 v6, 0x2

    new-array v3, v6, [B

    .line 202
    :cond_2
    invoke-virtual {v5}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v6

    invoke-virtual {v5}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v7

    invoke-virtual {v0, v3, v6, v7}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 204
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result v6

    if-eqz v6, :cond_4

    .line 206
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    .line 213
    .local v4, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_0
    const-string v6, "DES"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 215
    instance-of v6, v4, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v6, :cond_5

    move-object v6, v4

    .line 217
    check-cast v6, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 219
    .local v2, "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 229
    .end local v2    # "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v6, v3

    if-eq v1, v6, :cond_6

    .line 231
    const/4 v6, 0x0

    aput-byte v6, v3, v1

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 210
    .end local v1    # "i":I
    .end local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_4
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    .restart local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    :cond_5
    move-object v2, v4

    .line 223
    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 225
    .restart local v2    # "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    goto :goto_1

    .line 234
    .end local v2    # "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    .restart local v1    # "i":I
    :cond_6
    return-object v4
.end method

.method public static makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 6
    .param p0, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;
    .param p1, "type"    # I
    .param p2, "hash"    # I
    .param p3, "keySize"    # I
    .param p4, "ivSize"    # I

    .prologue
    .line 284
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 288
    .local v0, "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object v2

    .line 290
    .local v2, "key":[B
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v4

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v5

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 292
    if-eqz p4, :cond_0

    .line 294
    invoke-virtual {v0, p3, p4}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 301
    .local v3, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v2

    if-eq v1, v4, :cond_1

    .line 303
    const/4 v4, 0x0

    aput-byte v4, v2, v1

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 298
    .end local v1    # "i":I
    .end local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .restart local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    .line 306
    .restart local v1    # "i":I
    :cond_1
    return-object v3
.end method
