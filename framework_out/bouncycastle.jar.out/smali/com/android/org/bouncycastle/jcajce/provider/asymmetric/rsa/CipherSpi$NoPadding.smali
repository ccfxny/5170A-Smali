.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi$NoPadding;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;
.source "CipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoPadding"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 542
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V

    .line 543
    return-void
.end method
