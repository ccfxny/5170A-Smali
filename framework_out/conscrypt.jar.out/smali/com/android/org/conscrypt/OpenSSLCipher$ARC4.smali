.class public Lcom/android/org/conscrypt/OpenSSLCipher$ARC4;
.super Lcom/android/org/conscrypt/OpenSSLCipher;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ARC4"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 763
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipher;-><init>()V

    .line 764
    return-void
.end method


# virtual methods
.method protected checkSupportedKeySize(I)V
    .locals 0
    .param p1, "keySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 778
    return-void
.end method

.method protected checkSupportedMode(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .locals 2
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 782
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "ARC4 does not support modes"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkSupportedPadding(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .locals 2
    .param p1, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 787
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    const-string v1, "ARC4 does not support padding"

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getBaseCipherName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 768
    const-string v0, "ARCFOUR"

    return-object v0
.end method

.method protected getCipherBlockSize()I
    .locals 1

    .prologue
    .line 792
    const/4 v0, 0x0

    return v0
.end method

.method protected getCipherName(ILcom/android/org/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;
    .locals 1
    .param p1, "keySize"    # I
    .param p2, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .prologue
    .line 773
    const-string v0, "rc4"

    return-object v0
.end method

.method protected supportsVariableSizeKey()Z
    .locals 1

    .prologue
    .line 797
    const/4 v0, 0x1

    return v0
.end method
