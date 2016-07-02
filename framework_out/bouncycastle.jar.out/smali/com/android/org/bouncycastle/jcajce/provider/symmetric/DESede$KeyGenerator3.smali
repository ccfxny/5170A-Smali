.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator3;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;
.source "DESede.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGenerator3"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 210
    const-string v0, "DESede3"

    const/16 v1, 0xc0

    new-instance v2, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILcom/android/org/bouncycastle/crypto/CipherKeyGenerator;)V

    .line 211
    return-void
.end method
