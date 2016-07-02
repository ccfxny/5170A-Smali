.class public final Lcom/android/org/conscrypt/OpenSSLSignature$SHA384ECDSA;
.super Lcom/android/org/conscrypt/OpenSSLSignature;
.source "OpenSSLSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA384ECDSA"
.end annotation


# static fields
.field private static final EVP_MD:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 288
    const-string v0, "SHA384"

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_get_digestbyname(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/org/conscrypt/OpenSSLSignature$SHA384ECDSA;->EVP_MD:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 290
    sget-wide v0, Lcom/android/org/conscrypt/OpenSSLSignature$SHA384ECDSA;->EVP_MD:J

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->EC:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLSignature;-><init>(JLcom/android/org/conscrypt/OpenSSLSignature$EngineType;Lcom/android/org/conscrypt/OpenSSLSignature$1;)V

    .line 291
    return-void
.end method
