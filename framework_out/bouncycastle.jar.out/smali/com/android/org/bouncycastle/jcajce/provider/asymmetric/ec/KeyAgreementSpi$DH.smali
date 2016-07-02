.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DH;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;
.source "KeyAgreementSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DH"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 302
    const-string v0, "ECDH"

    new-instance v1, Lcom/android/org/bouncycastle/crypto/agreement/ECDHBasicAgreement;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/agreement/ECDHBasicAgreement;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/BasicAgreement;Lcom/android/org/bouncycastle/crypto/DerivationFunction;)V

    .line 303
    return-void
.end method
