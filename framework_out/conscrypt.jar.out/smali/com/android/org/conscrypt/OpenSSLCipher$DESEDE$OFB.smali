.class public Lcom/android/org/conscrypt/OpenSSLCipher$DESEDE$OFB;
.super Lcom/android/org/conscrypt/OpenSSLCipher$DESEDE;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher$DESEDE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OFB"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 698
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->OFB:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/OpenSSLCipher$DESEDE;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 699
    return-void
.end method
