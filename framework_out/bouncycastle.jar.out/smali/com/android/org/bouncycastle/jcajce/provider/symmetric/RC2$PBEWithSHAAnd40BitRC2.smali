.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2$PBEWithSHAAnd40BitRC2;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "RC2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHAAnd40BitRC2"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 186
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    .line 187
    return-void
.end method
