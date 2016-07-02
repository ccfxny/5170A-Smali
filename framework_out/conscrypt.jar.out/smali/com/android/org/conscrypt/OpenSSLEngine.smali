.class public Lcom/android/org/conscrypt/OpenSSLEngine;
.super Ljava/lang/Object;
.source "OpenSSLEngine.java"


# static fields
.field private static final mLoadingLock:Ljava/lang/Object;


# instance fields
.field private final ctx:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_load_dynamic()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngine;->mLoadingLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "engineCtx"    # J

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLEngine;->ctx:J

    .line 55
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_init(J)I

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_free(J)I

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not initialize engine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLEngine;
    .locals 6
    .param p0, "engine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 36
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "engine == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 40
    :cond_0
    sget-object v3, Lcom/android/org/conscrypt/OpenSSLEngine;->mLoadingLock:Ljava/lang/Object;

    monitor-enter v3

    .line 41
    :try_start_0
    invoke-static {p0}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_by_id(Ljava/lang/String;)J

    move-result-wide v0

    .line 42
    .local v0, "engineCtx":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 43
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown ENGINE id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    .end local v0    # "engineCtx":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 46
    .restart local v0    # "engineCtx":J
    :cond_1
    :try_start_1
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_add(J)I

    .line 47
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLEngine;

    invoke-direct {v2, v0, v1}, Lcom/android/org/conscrypt/OpenSSLEngine;-><init>(J)V

    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 113
    if-ne p1, p0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v2

    .line 117
    :cond_1
    instance-of v4, p1, Lcom/android/org/conscrypt/OpenSSLEngine;

    if-nez v4, :cond_2

    move v2, v3

    .line 118
    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 121
    check-cast v1, Lcom/android/org/conscrypt/OpenSSLEngine;

    .line 123
    .local v1, "other":Lcom/android/org/conscrypt/OpenSSLEngine;
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLEngine;->getEngineContext()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLEngine;->ctx:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 127
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLEngine;->ctx:J

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_get_id(J)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_3

    move v2, v3

    .line 129
    goto :goto_0

    .line 132
    :cond_3
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLEngine;->getEngineContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_get_id(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 104
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLEngine;->ctx:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_finish(J)I

    .line 105
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLEngine;->ctx:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_free(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 109
    return-void

    .line 107
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getEngineContext()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLEngine;->ctx:J

    return-wide v0
.end method

.method public getPrivateKeyById(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "id == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 66
    :cond_0
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLEngine;->ctx:J

    invoke-static {v4, v5, p1}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_load_private_key(JLjava/lang/String;)J

    move-result-wide v2

    .line 67
    .local v2, "keyRef":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 68
    const/4 v4, 0x0

    .line 73
    :goto_0
    return-object v4

    .line 71
    :cond_1
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-direct {v1, v2, v3, p0, p1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(JLcom/android/org/conscrypt/OpenSSLEngine;Ljava/lang/String;)V

    .line 73
    .local v1, "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getPrivateKey()Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-direct {v4, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getSecretKeyById(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "id == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 84
    :cond_0
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLEngine;->ctx:J

    invoke-static {v4, v5, p1}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_load_private_key(JLjava/lang/String;)J

    move-result-wide v2

    .line 85
    .local v2, "keyRef":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 86
    const/4 v4, 0x0

    .line 91
    :goto_0
    return-object v4

    .line 89
    :cond_1
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-direct {v1, v2, v3, p0, p1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(JLcom/android/org/conscrypt/OpenSSLEngine;Ljava/lang/String;)V

    .line 91
    .local v1, "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    :try_start_0
    invoke-virtual {v1, p2}, Lcom/android/org/conscrypt/OpenSSLKey;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-direct {v4, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLEngine;->ctx:J

    long-to-int v0, v0

    return v0
.end method
