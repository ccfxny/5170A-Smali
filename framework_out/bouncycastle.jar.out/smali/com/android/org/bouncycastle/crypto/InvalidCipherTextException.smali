.class public Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
.super Lcom/android/org/bouncycastle/crypto/CryptoException;
.source "InvalidCipherTextException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/CryptoException;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    return-void
.end method
