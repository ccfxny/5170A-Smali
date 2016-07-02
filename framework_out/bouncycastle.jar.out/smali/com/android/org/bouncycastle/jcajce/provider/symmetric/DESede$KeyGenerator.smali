.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;
.source "DESede.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGenerator"
.end annotation


# instance fields
.field private keySizeSet:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 164
    const-string v0, "DESede"

    const/16 v1, 0xc0

    new-instance v2, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILcom/android/org/bouncycastle/crypto/CipherKeyGenerator;)V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->keySizeSet:Z

    .line 165
    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 177
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->uninitialised:Z

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    iget v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->defaultKeySize:I

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 180
    iput-boolean v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->uninitialised:Z

    .line 187
    :cond_0
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->keySizeSet:Z

    if-nez v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->generateKey()[B

    move-result-object v0

    .line 191
    .local v0, "k":[B
    const/16 v1, 0x10

    const/16 v2, 0x8

    invoke-static {v0, v5, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 193
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->algName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 197
    .end local v0    # "k":[B
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->generateKey()[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->algName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 1
    .param p1, "keySize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 171
    invoke-super {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->engineInit(ILjava/security/SecureRandom;)V

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->keySizeSet:Z

    .line 173
    return-void
.end method
