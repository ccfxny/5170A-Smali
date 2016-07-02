.class public Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;
.super Ljava/lang/Object;
.source "PKCS1Encoding.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final HEADER_LENGTH:I = 0xa

.field public static final STRICT_LENGTH_ENABLED_PROPERTY:Ljava/lang/String; = "com.android.org.bouncycastle.pkcs1.strict"


# instance fields
.field private engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private forEncryption:Z

.field private forPrivateKey:Z

.field private random:Ljava/security/SecureRandom;

.field private useStrictLength:Z


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 46
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    .line 47
    return-void
.end method

.method private decodeBlock([BII)[B
    .locals 10
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 196
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v5, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 198
    .local v0, "block":[B
    array-length v5, v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->getOutputBlockSize()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 200
    new-instance v5, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v6, "block truncated"

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 203
    :cond_0
    aget-byte v4, v0, v8

    .line 205
    .local v4, "type":B
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v5, :cond_1

    .line 207
    if-eq v4, v9, :cond_2

    .line 209
    new-instance v5, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v6, "unknown block type"

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 214
    :cond_1
    if-eq v4, v7, :cond_2

    .line 216
    new-instance v5, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v6, "unknown block type"

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 220
    :cond_2
    if-ne v4, v7, :cond_3

    iget-boolean v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-nez v5, :cond_4

    :cond_3
    if-ne v4, v9, :cond_5

    iget-boolean v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-nez v5, :cond_5

    .line 222
    :cond_4
    new-instance v5, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid block type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 226
    :cond_5
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    if-eqz v5, :cond_6

    array-length v5, v0

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v6}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v6

    if-eq v5, v6, :cond_6

    .line 228
    new-instance v5, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v6, "block incorrect size"

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 236
    :cond_6
    const/4 v3, 0x1

    .local v3, "start":I
    :goto_0
    array-length v5, v0

    if-eq v3, v5, :cond_7

    .line 238
    aget-byte v1, v0, v3

    .line 240
    .local v1, "pad":B
    if-nez v1, :cond_9

    .line 250
    .end local v1    # "pad":B
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 252
    array-length v5, v0

    if-gt v3, v5, :cond_8

    const/16 v5, 0xa

    if-ge v3, v5, :cond_b

    .line 254
    :cond_8
    new-instance v5, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v6, "no data in block"

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 244
    .restart local v1    # "pad":B
    :cond_9
    if-ne v4, v7, :cond_a

    const/4 v5, -0x1

    if-eq v1, v5, :cond_a

    .line 246
    new-instance v5, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v6, "block padding incorrect"

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 236
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 257
    .end local v1    # "pad":B
    :cond_b
    array-length v5, v0

    sub-int/2addr v5, v3

    new-array v2, v5, [B

    .line 259
    .local v2, "result":[B
    array-length v5, v2

    invoke-static {v0, v3, v2, v8, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 261
    return-object v2
.end method

.method private encodeBlock([BII)[B
    .locals 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->getInputBlockSize()I

    move-result v2

    if-le p3, v2, :cond_0

    .line 148
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "input data too large"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v2

    new-array v0, v2, [B

    .line 153
    .local v0, "block":[B
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v2, :cond_1

    .line 155
    const/4 v2, 0x1

    aput-byte v2, v0, v4

    .line 157
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    sub-int/2addr v2, p3

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_3

    .line 159
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 166
    const/4 v2, 0x2

    aput-byte v2, v0, v4

    .line 172
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_1
    array-length v2, v0

    sub-int/2addr v2, p3

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_3

    .line 174
    :goto_2
    aget-byte v2, v0, v1

    if-nez v2, :cond_2

    .line 176
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_2

    .line 172
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 181
    :cond_3
    array-length v2, v0

    sub-int/2addr v2, p3

    add-int/lit8 v2, v2, -0x1

    aput-byte v4, v0, v2

    .line 182
    array-length v2, v0

    sub-int/2addr v2, p3

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 184
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v3, v0

    invoke-interface {v2, v0, v4, v3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v2

    return-object v2
.end method

.method private useStrict()Z
    .locals 2

    .prologue
    .line 55
    new-instance v1, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding$1;

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding$1;-><init>(Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    .local v0, "strict":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getInputBlockSize()I
    .locals 2

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 100
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 102
    add-int/lit8 v0, v0, -0xa

    .line 106
    .end local v0    # "baseBlockSize":I
    :cond_0
    return v0
.end method

.method public getOutputBlockSize()I
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 114
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 120
    .end local v0    # "baseBlockSize":I
    :goto_0
    return v0

    .restart local v0    # "baseBlockSize":I
    :cond_0
    add-int/lit8 v0, v0, -0xa

    goto :goto_0
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .prologue
    .line 77
    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 79
    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 81
    .local v1, "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    .line 82
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 90
    .end local v1    # "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    .local v0, "kParam":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2, p1, p2}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 92
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    .line 93
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    .line 94
    return-void

    .line 86
    .end local v0    # "kParam":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_0
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    move-object v0, p2

    .line 87
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .restart local v0    # "kParam":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_0
.end method

.method public processBlock([BII)[B
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->encodeBlock([BII)[B

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->decodeBlock([BII)[B

    move-result-object v0

    goto :goto_0
.end method
