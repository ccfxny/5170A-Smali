.class public Lcom/android/org/conscrypt/OpenSSLCipher$AES$CBC$NoPadding;
.super Lcom/android/org/conscrypt/OpenSSLCipher$AES$CBC;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher$AES$CBC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoPadding"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 544
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLCipher$AES$CBC;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 545
    return-void
.end method
