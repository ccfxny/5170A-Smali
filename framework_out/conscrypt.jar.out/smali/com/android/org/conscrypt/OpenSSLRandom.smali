.class public Lcom/android/org/conscrypt/OpenSSLRandom;
.super Ljava/security/SecureRandomSpi;
.source "OpenSSLRandom.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x760c2179bb8f6dacL


# instance fields
.field private mSeeded:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/security/SecureRandomSpi;-><init>()V

    return-void
.end method

.method public static seedOpenSSLPRNGFromLinuxRNG()V
    .locals 6

    .prologue
    .line 72
    const/16 v1, 0x400

    .line 73
    .local v1, "seedLengthInBytes":I
    const-string v2, "/dev/urandom"

    int-to-long v4, v1

    invoke-static {v2, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_load_file(Ljava/lang/String;J)I

    move-result v0

    .line 74
    .local v0, "bytesRead":I
    if-eq v0, v1, :cond_0

    .line 75
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read sufficient bytes from /dev/urandom. Expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", actual: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_0
    return-void
.end method

.method private selfSeedIfNotSeeded()V
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLRandom;->mSeeded:Z

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLRandom;->seedOpenSSLPRNGFromLinuxRNG()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLRandom;->mSeeded:Z

    goto :goto_0
.end method


# virtual methods
.method protected engineGenerateSeed(I)[B
    .locals 1
    .param p1, "numBytes"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRandom;->selfSeedIfNotSeeded()V

    .line 44
    new-array v0, p1, [B

    .line 45
    .local v0, "output":[B
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_bytes([B)V

    .line 46
    return-object v0
.end method

.method protected engineNextBytes([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRandom;->selfSeedIfNotSeeded()V

    .line 38
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_bytes([B)V

    .line 39
    return-void
.end method

.method protected engineSetSeed([B)V
    .locals 0
    .param p1, "seed"    # [B

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRandom;->selfSeedIfNotSeeded()V

    .line 32
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_seed([B)V

    .line 33
    return-void
.end method
