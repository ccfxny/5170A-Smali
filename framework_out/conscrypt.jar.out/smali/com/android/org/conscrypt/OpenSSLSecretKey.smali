.class public Lcom/android/org/conscrypt/OpenSSLSecretKey;
.super Ljava/lang/Object;
.source "OpenSSLSecretKey.java"

# interfaces
.implements Ljavax/crypto/SecretKey;
.implements Lcom/android/org/conscrypt/OpenSSLKeyHolder;


# static fields
.field private static final serialVersionUID:J = 0x1969350f33bb57ddL


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final encoded:[B

.field private transient key:Lcom/android/org/conscrypt/OpenSSLKey;

.field private final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->algorithm:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 49
    invoke-virtual {p2}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(J)I

    move-result v0

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->type:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->encoded:[B

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "encoded"    # [B

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->algorithm:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->encoded:[B

    .line 41
    const/16 v0, 0x357

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->type:I

    .line 42
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->type:I

    invoke-static {v1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_mac_key(I[B)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 43
    return-void
.end method

.method public static getInstance(Ljavax/crypto/SecretKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 4
    .param p0, "key"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 55
    :try_start_0
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    const/16 v2, 0x357

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_mac_key(I[B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 127
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->type:I

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->encoded:[B

    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_mac_key(I[B)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 128
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSecretKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "engine-based keys can not be serialized"

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 136
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 92
    if-ne p1, p0, :cond_1

    .line 93
    const/4 v2, 0x1

    .line 116
    :cond_0
    :goto_0
    return v2

    .line 96
    :cond_1
    instance-of v3, p1, Ljavax/crypto/SecretKey;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 100
    check-cast v0, Ljavax/crypto/SecretKey;

    .line 101
    .local v0, "other":Ljavax/crypto/SecretKey;
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->algorithm:Ljava/lang/String;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    instance-of v3, p1, Lcom/android/org/conscrypt/OpenSSLSecretKey;

    if-eqz v3, :cond_2

    move-object v1, p1

    .line 106
    check-cast v1, Lcom/android/org/conscrypt/OpenSSLSecretKey;

    .line 107
    .local v1, "otherOpenSSL":Lcom/android/org/conscrypt/OpenSSLSecretKey;
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLSecretKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 108
    .end local v1    # "otherOpenSSL":Lcom/android/org/conscrypt/OpenSSLSecretKey;
    :cond_2
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v3

    if-nez v3, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSecretKey;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->encoded:[B

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    goto :goto_0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->encoded:[B

    goto :goto_0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "RAW"

    goto :goto_0
.end method

.method public getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->hashCode()I

    move-result v0

    return v0
.end method
