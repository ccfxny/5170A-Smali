.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$GCM;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GCM"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/engines/AESFastEngine;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;)V

    .line 111
    return-void
.end method
