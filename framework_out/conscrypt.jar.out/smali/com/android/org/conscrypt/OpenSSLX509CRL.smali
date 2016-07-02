.class public Lcom/android/org/conscrypt/OpenSSLX509CRL;
.super Ljava/security/cert/X509CRL;
.source "OpenSSLX509CRL.java"


# instance fields
.field private final mContext:J


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "ctx"    # J

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 51
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 52
    return-void
.end method

.method public static fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .locals 10
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/OpenSSLX509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;)V

    .line 76
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v6

    const/4 v5, 0x2

    invoke-static {v6, v7, v5}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PKCS7_bio(JI)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 80
    .local v1, "certRefs":[J
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    array-length v5, v1

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509CRL;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 85
    aget-wide v6, v1, v4

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 84
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "certRefs":[J
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509CRL;>;"
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 78
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v5, v3}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v5

    .line 88
    .restart local v1    # "certRefs":[J
    .restart local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509CRL;>;"
    .restart local v4    # "i":I
    :cond_0
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLX509CRL;

    aget-wide v6, v1, v4

    invoke-direct {v5, v6, v7}, Lcom/android/org/conscrypt/OpenSSLX509CRL;-><init>(J)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 90
    :cond_1
    return-object v2
.end method

.method public static fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .locals 10
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/OpenSSLX509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;)V

    .line 115
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v6

    const/4 v5, 0x2

    invoke-static {v6, v7, v5}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_PKCS7(JI)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 120
    .local v1, "certRefs":[J
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 123
    new-instance v2, Ljava/util/ArrayList;

    array-length v5, v1

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509CRL;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 125
    aget-wide v6, v1, v4

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 124
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "certRefs":[J
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509CRL;>;"
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 118
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v5, v3}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v5

    .line 128
    .restart local v1    # "certRefs":[J
    .restart local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509CRL;>;"
    .restart local v4    # "i":I
    :cond_0
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLX509CRL;

    aget-wide v6, v1, v4

    invoke-direct {v5, v6, v7}, Lcom/android/org/conscrypt/OpenSSLX509CRL;-><init>(J)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 130
    :cond_1
    return-object v2
.end method

.method public static fromX509DerInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509CRL;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;)V

    .line 58
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_X509_CRL_bio(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 59
    .local v2, "crlCtx":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 60
    const/4 v4, 0x0

    .line 66
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    :goto_0
    return-object v4

    .line 62
    :cond_0
    :try_start_1
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509CRL;

    invoke-direct {v4, v2, v3}, Lcom/android/org/conscrypt/OpenSSLX509CRL;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    goto :goto_0

    .line 63
    .end local v2    # "crlCtx":J
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v4, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v4
.end method

.method public static fromX509PemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509CRL;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;)V

    .line 97
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_X509_CRL(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 98
    .local v2, "crlCtx":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 99
    const/4 v4, 0x0

    .line 105
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    :goto_0
    return-object v4

    .line 101
    :cond_0
    :try_start_1
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509CRL;

    invoke-direct {v4, v2, v3}, Lcom/android/org/conscrypt/OpenSSLX509CRL;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    goto :goto_0

    .line 102
    .end local v2    # "crlCtx":J
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v4, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v4
.end method

.method private verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "sigAlg":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getSigAlgOID()Ljava/lang/String;

    move-result-object v1

    .line 210
    :cond_0
    if-nez p2, :cond_1

    .line 211
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 216
    .local v0, "sig":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 217
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getTBSCertList()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Signature;->update([B)V

    .line 218
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getSignature()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_2

    .line 219
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "signature did not verify"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 213
    .end local v0    # "sig":Ljava/security/Signature;
    :cond_1
    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .restart local v0    # "sig":Ljava/security/Signature;
    goto :goto_0

    .line 221
    :cond_2
    return-void
.end method

.method private verifyOpenSSL(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 4
    .param p1, "pkey"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_verify(JJ)V

    .line 199
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 383
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 384
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_free(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 389
    return-void

    .line 387
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

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
    .line 135
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    const/4 v1, 0x1

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "critOids":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JI)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    .line 146
    const/4 v1, 0x0

    .line 149
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
    .line 193
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_X509_CRL(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 2
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_ext_oid(JLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 4

    .prologue
    .line 254
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_issuer_name(J)[B

    move-result-object v0

    .line 255
    .local v0, "issuer":[B
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    return-object v1
.end method

.method public getNextUpdate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 269
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 270
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 271
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_nextUpdate(J)J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V

    .line 273
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
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
    .line 159
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "nonCritOids":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    const/4 v1, 0x1

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JI)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    .line 171
    const/4 v1, 0x0

    .line 174
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
    .locals 6
    .param p1, "serialNumber"    # Ljava/math/BigInteger;

    .prologue
    .line 278
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get0_by_serial(J[B)J

    move-result-wide v0

    .line 280
    .local v0, "revokedRef":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 281
    const/4 v2, 0x0

    .line 284
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_dup(J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;-><init>(J)V

    goto :goto_0
.end method

.method public getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;
    .locals 8
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 289
    instance-of v1, p1, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 290
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .line 291
    .local v0, "osslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get0_by_cert(JJ)J

    move-result-wide v2

    .line 294
    .local v2, "x509RevokedRef":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 295
    const/4 v1, 0x0

    .line 301
    .end local v0    # "osslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .end local v2    # "x509RevokedRef":J
    :goto_0
    return-object v1

    .line 298
    .restart local v0    # "osslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .restart local v2    # "x509RevokedRef":J
    :cond_0
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_dup(J)J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;-><init>(J)V

    goto :goto_0

    .line 301
    .end local v0    # "osslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .end local v2    # "x509RevokedRef":J
    :cond_1
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v1

    goto :goto_0
.end method

.method public getRevokedCertificates()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Ljava/security/cert/X509CRLEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    iget-wide v8, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v8, v9}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_REVOKED(J)[J

    move-result-object v4

    .line 307
    .local v4, "entryRefs":[J
    if-eqz v4, :cond_0

    array-length v7, v4

    if-nez v7, :cond_2

    .line 308
    :cond_0
    const/4 v1, 0x0

    .line 316
    :cond_1
    return-object v1

    .line 311
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 312
    .local v1, "crlSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;>;"
    move-object v0, v4

    .local v0, "arr$":[J
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-wide v2, v0, v5

    .line 313
    .local v2, "entryRef":J
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;

    invoke-direct {v7, v2, v3}, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;-><init>(J)V

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 312
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 336
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_sig_alg_oid(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()[B
    .locals 2

    .prologue
    .line 341
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_sig_alg_parameter(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .locals 2

    .prologue
    .line 326
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_signature(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getTBSCertList()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 321
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_crl_enc(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getThisUpdate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 260
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 261
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 262
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_lastUpdate(J)J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V

    .line 264
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public getVersion()I
    .locals 2

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_version(J)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    .line 179
    iget-wide v8, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v8, v9, v7}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JI)[Ljava/lang/String;

    move-result-object v1

    .line 181
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

    .line 182
    .local v6, "oid":Ljava/lang/String;
    iget-wide v8, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v8, v9, v6}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_ext(JLjava/lang/String;)J

    move-result-wide v2

    .line 183
    .local v2, "extensionRef":J
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_supported_extension(J)I

    move-result v8

    if-eq v8, v7, :cond_0

    .line 188
    .end local v2    # "extensionRef":J
    .end local v6    # "oid":Ljava/lang/String;
    :goto_1
    return v7

    .line 181
    .restart local v2    # "extensionRef":J
    .restart local v6    # "oid":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 188
    .end local v2    # "extensionRef":J
    .end local v6    # "oid":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public isRevoked(Ljava/security/cert/Certificate;)Z
    .locals 10
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    const/4 v4, 0x0

    .line 346
    instance-of v5, p1, Ljava/security/cert/X509Certificate;

    if-nez v5, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v4

    .line 351
    :cond_1
    instance-of v5, p1, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    if-eqz v5, :cond_2

    move-object v1, p1

    .line 352
    check-cast v1, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .line 362
    .local v1, "osslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :goto_1
    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get0_by_cert(JJ)J

    move-result-wide v2

    .line 365
    .local v2, "x509RevokedRef":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 355
    .end local v1    # "osslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .end local v2    # "x509RevokedRef":J
    :cond_2
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v5}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509DerInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1    # "osslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    goto :goto_1

    .line 357
    .end local v1    # "osslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "cannot convert certificate"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 370
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 371
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    move-result-wide v0

    .line 373
    .local v0, "bioCtx":J
    :try_start_0
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_print(JJ)V

    .line 374
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 376
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    throw v3
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 2
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 226
    instance-of v1, p1, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v1, :cond_0

    .line 227
    check-cast p1, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    .end local p1    # "key":Ljava/security/PublicKey;
    invoke-interface {p1}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 228
    .local v0, "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->verifyOpenSSL(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 233
    .end local v0    # "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    :goto_0
    return-void

    .line 232
    .restart local p1    # "key":Ljava/security/PublicKey;
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 240
    return-void
.end method
