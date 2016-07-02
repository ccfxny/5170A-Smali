.class public Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;
.super Ljava/security/cert/X509CRLEntry;
.source "OpenSSLX509CRLEntry.java"


# instance fields
.field private final mContext:J


# direct methods
.method constructor <init>(J)V
    .locals 1
    .param p1, "ctx"    # J

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    .line 35
    return-void
.end method


# virtual methods
.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    const/4 v1, 0x1

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "critOids":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    .line 51
    const/4 v1, 0x0

    .line 54
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_X509_REVOKED(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 2
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v0, v1, p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_get_ext_oid(JLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "critOids":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    const/4 v1, 0x1

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    .line 76
    const/4 v1, 0x0

    .line 79
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getRevocationDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 109
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 110
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 111
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_revocationDate(J)J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V

    .line 113
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 4

    .prologue
    .line 104
    new-instance v0, Ljava/math/BigInteger;

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_get_serialNumber(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public hasExtensions()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 118
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v2, v3, v0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    .line 84
    iget-wide v8, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v8, v9, v7}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "criticalOids":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v0, v4

    .line 88
    .local v6, "oid":Ljava/lang/String;
    iget-wide v8, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v8, v9, v6}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_get_ext(JLjava/lang/String;)J

    move-result-wide v2

    .line 89
    .local v2, "extensionRef":J
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_supported_extension(J)I

    move-result v8

    if-eq v8, v7, :cond_0

    .line 94
    .end local v2    # "extensionRef":J
    .end local v6    # "oid":Ljava/lang/String;
    :goto_1
    return v7

    .line 87
    .restart local v2    # "extensionRef":J
    .restart local v6    # "oid":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 94
    .end local v2    # "extensionRef":J
    .end local v6    # "oid":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 126
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 127
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    move-result-wide v0

    .line 129
    .local v0, "bioCtx":J
    :try_start_0
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v0, v1, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_print(JJ)V

    .line 130
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 132
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    throw v3
.end method
