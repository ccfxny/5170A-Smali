.class public Lcom/android/org/conscrypt/OpenSSLCipher$AES$ECB$NoPadding;
.super Lcom/android/org/conscrypt/OpenSSLCipher$AES$ECB;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher$AES$ECB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoPadding"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 574
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLCipher$AES$ECB;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 575
    return-void
.end method
