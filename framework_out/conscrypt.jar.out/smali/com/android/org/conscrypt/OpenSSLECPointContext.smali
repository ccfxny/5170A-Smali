.class final Lcom/android/org/conscrypt/OpenSSLECPointContext;
.super Ljava/lang/Object;
.source "OpenSSLECPointContext.java"


# instance fields
.field private final group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

.field private final pointCtx:J


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;J)V
    .locals 0
    .param p1, "group"    # Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .param p2, "pointCtx"    # J

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 28
    iput-wide p2, p0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->pointCtx:J

    .line 29
    return-void
.end method

.method public static getInstance(ILcom/android/org/conscrypt/OpenSSLECGroupContext;Ljava/security/spec/ECPoint;)Lcom/android/org/conscrypt/OpenSSLECPointContext;
    .locals 7
    .param p0, "curveType"    # I
    .param p1, "group"    # Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .param p2, "javaPoint"    # Ljava/security/spec/ECPoint;

    .prologue
    .line 76
    new-instance v6, Lcom/android/org/conscrypt/OpenSSLECPointContext;

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EC_POINT_new(J)J

    move-result-wide v0

    invoke-direct {v6, p1, v0, v1}, Lcom/android/org/conscrypt/OpenSSLECPointContext;-><init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;J)V

    .line 78
    .local v6, "point":Lcom/android/org/conscrypt/OpenSSLECPointContext;
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getContext()J

    move-result-wide v0

    invoke-virtual {v6}, Lcom/android/org/conscrypt/OpenSSLECPointContext;->getContext()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p2}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/NativeCrypto;->EC_POINT_set_affine_coordinates(JJ[B[B)V

    .line 81
    return-object v6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 44
    instance-of v1, p1, Lcom/android/org/conscrypt/OpenSSLECPointContext;

    if-nez v1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    :cond_1
    move-object v6, p1

    .line 48
    check-cast v6, Lcom/android/org/conscrypt/OpenSSLECPointContext;

    .line 49
    .local v6, "other":Lcom/android/org/conscrypt/OpenSSLECPointContext;
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getContext()J

    move-result-wide v2

    iget-object v1, v6, Lcom/android/org/conscrypt/OpenSSLECPointContext;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getContext()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_cmp(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getContext()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->pointCtx:J

    iget-wide v4, v6, Lcom/android/org/conscrypt/OpenSSLECPointContext;->pointCtx:J

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/NativeCrypto;->EC_POINT_cmp(JJJ)Z

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 34
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->pointCtx:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 35
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->pointCtx:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EC_POINT_clear_free(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 40
    return-void

    .line 38
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getContext()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->pointCtx:J

    return-wide v0
.end method

.method public getECPoint()Ljava/security/spec/ECPoint;
    .locals 8

    .prologue
    .line 57
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getContext()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->pointCtx:J

    invoke-static {v4, v5, v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->EC_POINT_get_affine_coordinates(JJ)[[B

    move-result-object v0

    .line 59
    .local v0, "generatorCoords":[[B
    new-instance v1, Ljava/math/BigInteger;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-direct {v1, v3}, Ljava/math/BigInteger;-><init>([B)V

    .line 60
    .local v1, "x":Ljava/math/BigInteger;
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    .line 61
    .local v2, "y":Ljava/math/BigInteger;
    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-direct {v3, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v3
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
