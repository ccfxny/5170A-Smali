.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DES64with7816d4;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;
.source "DES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DES64with7816d4"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 107
    new-instance v0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;-><init>()V

    const/16 v2, 0x40

    new-instance v3, Lcom/android/org/bouncycastle/crypto/paddings/ISO7816d4Padding;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/paddings/ISO7816d4Padding;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;ILcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lcom/android/org/bouncycastle/crypto/Mac;)V

    .line 108
    return-void
.end method
