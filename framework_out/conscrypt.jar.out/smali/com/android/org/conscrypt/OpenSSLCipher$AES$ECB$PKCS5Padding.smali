.class public Lcom/android/org/conscrypt/OpenSSLCipher$AES$ECB$PKCS5Padding;
.super Lcom/android/org/conscrypt/OpenSSLCipher$AES$ECB;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher$AES$ECB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PKCS5Padding"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 580
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLCipher$AES$ECB;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 581
    return-void
.end method
