.class public Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA1;
.super Lcom/android/org/conscrypt/OpenSSLMac;
.source "OpenSSLMac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HmacSHA1"
.end annotation


# static fields
.field private static final EVP_MD:J

.field private static final SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 140
    const-string v0, "sha1"

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_get_digestbyname(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA1;->EVP_MD:J

    .line 141
    sget-wide v0, Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA1;->EVP_MD:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_size(J)I

    move-result v0

    sput v0, Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA1;->SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 144
    sget-wide v2, Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA1;->EVP_MD:J

    sget v4, Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA1;->SIZE:I

    const/16 v5, 0x357

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/org/conscrypt/OpenSSLMac;-><init>(JIILcom/android/org/conscrypt/OpenSSLMac$1;)V

    .line 145
    return-void
.end method
