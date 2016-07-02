.class public Lcom/android/org/conscrypt/OpenSSLCipher$DESEDE$CBC;
.super Lcom/android/org/conscrypt/OpenSSLCipher$DESEDE;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher$DESEDE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CBC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipher$DESEDE$CBC$PKCS5Padding;,
        Lcom/android/org/conscrypt/OpenSSLCipher$DESEDE$CBC$NoPadding;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .locals 1
    .param p1, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .prologue
    .line 656
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->CBC:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-direct {p0, v0, p1}, Lcom/android/org/conscrypt/OpenSSLCipher$DESEDE;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 657
    return-void
.end method
