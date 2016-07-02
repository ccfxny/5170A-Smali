.class public Lcom/android/org/conscrypt/OpenSSLCipher$AES$CBC;
.super Lcom/android/org/conscrypt/OpenSSLCipher$AES;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher$AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CBC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipher$AES$CBC$PKCS5Padding;,
        Lcom/android/org/conscrypt/OpenSSLCipher$AES$CBC$NoPadding;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .locals 1
    .param p1, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .prologue
    .line 539
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->CBC:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-direct {p0, v0, p1}, Lcom/android/org/conscrypt/OpenSSLCipher$AES;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 540
    return-void
.end method
