.class public Lcom/android/org/conscrypt/OpenSSLCipher$AES$ECB;
.super Lcom/android/org/conscrypt/OpenSSLCipher$AES;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher$AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECB"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipher$AES$ECB$PKCS5Padding;,
        Lcom/android/org/conscrypt/OpenSSLCipher$AES$ECB$NoPadding;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .locals 1
    .param p1, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .prologue
    .line 569
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-direct {p0, v0, p1}, Lcom/android/org/conscrypt/OpenSSLCipher$AES;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 570
    return-void
.end method
