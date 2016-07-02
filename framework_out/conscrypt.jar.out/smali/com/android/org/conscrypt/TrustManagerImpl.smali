.class public final Lcom/android/org/conscrypt/TrustManagerImpl;
.super Ljava/lang/Object;
.source "TrustManagerImpl.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/TrustManagerImpl$1;,
        Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;
    }
.end annotation


# instance fields
.field private final acceptedIssuers:[Ljava/security/cert/X509Certificate;

.field private final err:Ljava/lang/Exception;

.field private final factory:Ljava/security/cert/CertificateFactory;

.field private pinManager:Lcom/android/org/conscrypt/CertPinManager;

.field private final rootKeyStore:Ljava/security/KeyStore;

.field private final trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

.field private final trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field private final validator:Ljava/security/cert/CertPathValidator;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 1
    .param p1, "keyStore"    # Ljava/security/KeyStore;

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;)V
    .locals 1
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "manager"    # Lcom/android/org/conscrypt/CertPinManager;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/TrustedCertificateStore;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/TrustedCertificateStore;)V
    .locals 11
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "manager"    # Lcom/android/org/conscrypt/CertPinManager;
    .param p3, "certStore"    # Lcom/android/org/conscrypt/TrustedCertificateStore;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v8, 0x0

    .line 119
    .local v8, "validatorLocal":Ljava/security/cert/CertPathValidator;
    const/4 v3, 0x0

    .line 120
    .local v3, "factoryLocal":Ljava/security/cert/CertificateFactory;
    const/4 v4, 0x0

    .line 121
    .local v4, "rootKeyStoreLocal":Ljava/security/KeyStore;
    const/4 v7, 0x0

    .line 122
    .local v7, "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    const/4 v5, 0x0

    .line 123
    .local v5, "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    const/4 v0, 0x0

    .line 124
    .local v0, "acceptedIssuersLocal":[Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 126
    .local v2, "errLocal":Ljava/lang/Exception;
    :try_start_0
    const-string v9, "PKIX"

    invoke-static {v9}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v8

    .line 127
    const-string v9, "X509"

    invoke-static {v9}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 130
    const-string v9, "AndroidCAStore"

    invoke-virtual {p1}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 131
    move-object v4, p1

    .line 132
    if-eqz p3, :cond_0

    move-object v7, p3

    .line 134
    .end local p3    # "certStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :goto_0
    const/4 v0, 0x0

    .line 135
    new-instance v6, Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-direct {v6}, Lcom/android/org/conscrypt/TrustedCertificateIndex;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    .local v6, "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    move-object v5, v6

    .line 148
    .end local v6    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    .restart local v5    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    :goto_1
    if-eqz p2, :cond_2

    .line 149
    iput-object p2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->pinManager:Lcom/android/org/conscrypt/CertPinManager;

    .line 158
    :goto_2
    iput-object v4, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->rootKeyStore:Ljava/security/KeyStore;

    .line 159
    iput-object v7, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    .line 160
    iput-object v8, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    .line 161
    iput-object v3, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    .line 162
    iput-object v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    .line 163
    iput-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    .line 164
    iput-object v2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    .line 165
    return-void

    .line 132
    .restart local p3    # "certStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :cond_0
    :try_start_1
    new-instance p3, Lcom/android/org/conscrypt/TrustedCertificateStore;

    .end local p3    # "certStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-direct {p3}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    move-object v7, p3

    goto :goto_0

    .line 137
    .restart local p3    # "certStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :cond_1
    const/4 v4, 0x0

    .line 138
    move-object v7, p3

    .line 139
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 140
    new-instance v6, Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-static {v0}, Lcom/android/org/conscrypt/TrustManagerImpl;->trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/android/org/conscrypt/TrustedCertificateIndex;-><init>(Ljava/util/Set;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v5    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    .restart local v6    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    move-object v5, v6

    .end local v6    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    .restart local v5    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    goto :goto_1

    .line 144
    .end local p3    # "certStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v1

    goto :goto_1

    .line 152
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    new-instance v9, Lcom/android/org/conscrypt/CertPinManager;

    invoke-direct {v9, v7}, Lcom/android/org/conscrypt/CertPinManager;-><init>(Lcom/android/org/conscrypt/TrustedCertificateStore;)V

    iput-object v9, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->pinManager:Lcom/android/org/conscrypt/CertPinManager;
    :try_end_2
    .catch Lcom/android/org/conscrypt/PinManagerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 153
    :catch_1
    move-exception v1

    .line 154
    .local v1, "e":Lcom/android/org/conscrypt/PinManagerException;
    new-instance v9, Ljava/lang/SecurityException;

    const-string v10, "Could not initialize CertPinManager"

    invoke-direct {v9, v10, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method private static acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;
    .locals 6
    .param p0, "ks"    # Ljava/security/KeyStore;

    .prologue
    .line 178
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v4, "trusted":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 180
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 182
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_0

    .line 183
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4    # "trusted":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_0
    move-exception v2

    .line 188
    .local v2, "e":Ljava/security/KeyStoreException;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    .end local v2    # "e":Ljava/security/KeyStoreException;
    :goto_1
    return-object v5

    .line 186
    .restart local v3    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v4    # "trusted":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 22
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "clientAuth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 252
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    if-eqz v17, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_1

    .line 253
    :cond_0
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "null or zero-length parameter"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 255
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 256
    new-instance v17, Ljava/security/cert/CertificateException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 260
    :cond_2
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 261
    .local v15, "trustAnchor":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/org/conscrypt/TrustManagerImpl;->cleanupCertChainAndFindTrustAnchors([Ljava/security/cert/X509Certificate;Ljava/util/Set;)[Ljava/security/cert/X509Certificate;

    move-result-object v11

    .line 264
    .local v11, "newChain":[Ljava/security/cert/X509Certificate;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v16, "wholeChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 267
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/security/cert/TrustAnchor;

    .line 268
    .local v14, "trust":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v14}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 274
    .end local v14    # "trust":Ljava/security/cert/TrustAnchor;
    :cond_3
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    .line 276
    .local v10, "last":Ljava/security/cert/X509Certificate;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v4

    .line 279
    .local v4, "cachedTrust":Ljava/security/cert/TrustAnchor;
    if-nez v4, :cond_5

    .line 297
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    move-object/from16 v17, v0

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v5

    .line 299
    .local v5, "certPath":Ljava/security/cert/CertPath;
    if-eqz p3, :cond_6

    .line 300
    const/4 v9, 0x0

    .line 302
    .local v9, "isChainValid":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->pinManager:Lcom/android/org/conscrypt/CertPinManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/org/conscrypt/CertPinManager;->isChainValid(Ljava/lang/String;Ljava/util/List;)Z
    :try_end_0
    .catch Lcom/android/org/conscrypt/PinManagerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 306
    if-nez v9, :cond_6

    .line 307
    new-instance v17, Ljava/security/cert/CertificateException;

    new-instance v18, Ljava/security/cert/CertPathValidatorException;

    const-string v19, "Certificate path is not properly pinned."

    const/16 v20, 0x0

    const/16 v21, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v5, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    invoke-direct/range {v17 .. v18}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 286
    .end local v5    # "certPath":Ljava/security/cert/CertPath;
    .end local v9    # "isChainValid":Z
    :cond_5
    invoke-virtual {v4}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v12

    .line 287
    .local v12, "next":Ljava/security/cert/X509Certificate;
    if-eq v12, v10, :cond_4

    .line 288
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    move-object v10, v12

    .line 294
    goto :goto_1

    .line 303
    .end local v12    # "next":Ljava/security/cert/X509Certificate;
    .restart local v5    # "certPath":Ljava/security/cert/CertPath;
    .restart local v9    # "isChainValid":Z
    :catch_0
    move-exception v6

    .line 304
    .local v6, "e":Lcom/android/org/conscrypt/PinManagerException;
    new-instance v17, Ljava/security/cert/CertificateException;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 312
    .end local v6    # "e":Lcom/android/org/conscrypt/PinManagerException;
    .end local v9    # "isChainValid":Z
    :cond_6
    array-length v0, v11

    move/from16 v17, v0

    if-nez v17, :cond_8

    .line 347
    :cond_7
    return-object v16

    .line 317
    :cond_8
    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 318
    new-instance v17, Ljava/security/cert/CertificateException;

    new-instance v18, Ljava/security/cert/CertPathValidatorException;

    const-string v19, "Trust anchor for certification path not found."

    const/16 v20, 0x0

    const/16 v21, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v5, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    invoke-direct/range {v17 .. v18}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 324
    :cond_9
    invoke-static {v11}, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->check([Ljava/security/cert/X509Certificate;)V

    .line 327
    :try_start_1
    new-instance v13, Ljava/security/cert/PKIXParameters;

    invoke-direct {v13, v15}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 328
    .local v13, "params":Ljava/security/cert/PKIXParameters;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 329
    new-instance v17, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;

    const/16 v18, 0x0

    aget-object v18, v11, v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, p4

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;-><init>(ZLjava/security/cert/X509Certificate;Lcom/android/org/conscrypt/TrustManagerImpl$1;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/security/cert/PKIXParameters;->addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v13}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    .line 338
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_2
    array-length v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_7

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    move-object/from16 v17, v0

    aget-object v18, v11, v7

    invoke-virtual/range {v17 .. v18}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_2

    .line 338
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 341
    .end local v7    # "i":I
    .end local v13    # "params":Ljava/security/cert/PKIXParameters;
    :catch_1
    move-exception v6

    .line 342
    .local v6, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v17, Ljava/security/cert/CertificateException;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 343
    .end local v6    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_2
    move-exception v6

    .line 344
    .local v6, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v17, Ljava/security/cert/CertificateException;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v17
.end method

.method private cleanupCertChainAndFindTrustAnchors([Ljava/security/cert/X509Certificate;Ljava/util/Set;)[Ljava/security/cert/X509Certificate;
    .locals 11
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .prologue
    .line 362
    .local p2, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    move-object v6, p1

    .line 368
    .local v6, "original":[Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .local v2, "currIndex":I
    :goto_0
    array-length v9, p1

    if-ge v2, v9, :cond_2

    .line 374
    const/4 v3, 0x0

    .line 375
    .local v3, "foundNext":Z
    add-int/lit8 v5, v2, 0x1

    .local v5, "nextIndex":I
    :goto_1
    array-length v9, p1

    if-ge v5, v9, :cond_1

    .line 376
    aget-object v9, p1, v2

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v9

    aget-object v10, p1, v5

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 377
    const/4 v3, 0x1

    .line 379
    add-int/lit8 v9, v2, 0x1

    if-eq v5, v9, :cond_1

    .line 381
    if-ne p1, v6, :cond_0

    .line 382
    invoke-virtual {v6}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "chain":[Ljava/security/cert/X509Certificate;
    check-cast p1, [Ljava/security/cert/X509Certificate;

    .line 384
    .restart local p1    # "chain":[Ljava/security/cert/X509Certificate;
    :cond_0
    aget-object v7, p1, v5

    .line 385
    .local v7, "tempCertificate":Ljava/security/cert/X509Certificate;
    add-int/lit8 v9, v2, 0x1

    aget-object v9, p1, v9

    aput-object v9, p1, v5

    .line 386
    add-int/lit8 v9, v2, 0x1

    aput-object v7, p1, v9

    .line 395
    .end local v7    # "tempCertificate":Ljava/security/cert/X509Certificate;
    :cond_1
    if-nez v3, :cond_6

    .line 402
    .end local v3    # "foundNext":Z
    .end local v5    # "nextIndex":I
    :cond_2
    const/4 v0, 0x0

    .local v0, "anchorIndex":I
    :goto_2
    if-gt v0, v2, :cond_3

    .line 405
    aget-object v9, p1, v0

    invoke-direct {p0, v9}, Lcom/android/org/conscrypt/TrustManagerImpl;->findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v8

    .line 406
    .local v8, "trustAnchor":Ljava/security/cert/TrustAnchor;
    if-eqz v8, :cond_7

    .line 407
    invoke-interface {p2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 413
    .end local v8    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    :cond_3
    move v1, v0

    .line 414
    .local v1, "chainLength":I
    array-length v9, p1

    if-ne v1, v9, :cond_8

    move-object v4, p1

    .line 419
    .local v4, "newChain":[Ljava/security/cert/X509Certificate;
    :goto_3
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 420
    add-int/lit8 v9, v0, -0x1

    aget-object v9, v4, v9

    invoke-direct {p0, v9}, Lcom/android/org/conscrypt/TrustManagerImpl;->findTrustAnchorByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v8

    .line 421
    .restart local v8    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    if-eqz v8, :cond_4

    .line 422
    invoke-interface {p2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 425
    .end local v8    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    :cond_4
    return-object v4

    .line 375
    .end local v0    # "anchorIndex":I
    .end local v1    # "chainLength":I
    .end local v4    # "newChain":[Ljava/security/cert/X509Certificate;
    .restart local v3    # "foundNext":Z
    .restart local v5    # "nextIndex":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 368
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 402
    .end local v3    # "foundNext":Z
    .end local v5    # "nextIndex":I
    .restart local v0    # "anchorIndex":I
    .restart local v8    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 414
    .end local v8    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    .restart local v1    # "chainLength":I
    :cond_8
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/security/cert/X509Certificate;

    move-object v4, v9

    goto :goto_3
.end method

.method private findTrustAnchorByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 4
    .param p1, "lastCert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v2, 0x0

    .line 531
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v3, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v1

    .line 532
    .local v1, "trustAnchor":Ljava/security/cert/TrustAnchor;
    if-eqz v1, :cond_0

    .line 545
    .end local v1    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    :goto_0
    return-object v1

    .line 535
    .restart local v1    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    :cond_0
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    if-nez v3, :cond_1

    move-object v1, v2

    .line 536
    goto :goto_0

    .line 541
    :cond_1
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v3, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 542
    .local v0, "issuer":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_2

    .line 543
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v2, v0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 545
    goto :goto_0
.end method

.method private findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v2, 0x0

    .line 554
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v3, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v1

    .line 555
    .local v1, "trustAnchor":Ljava/security/cert/TrustAnchor;
    if-eqz v1, :cond_0

    .line 571
    .end local v1    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    :goto_0
    return-object v1

    .line 558
    .restart local v1    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    :cond_0
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    if-nez v3, :cond_1

    move-object v1, v2

    .line 560
    goto :goto_0

    .line 565
    :cond_1
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v3, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getTrustAnchor(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 566
    .local v0, "systemCert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_2

    .line 569
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v2, v0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 571
    goto :goto_0
.end method

.method private static trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 7
    .param p0, "certs"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v4, Ljava/util/HashSet;

    array-length v5, p0

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 194
    .local v4, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    move-object v0, p0

    .local v0, "arr$":[Ljava/security/cert/X509Certificate;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 195
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    new-instance v5, Ljava/security/cert/TrustAnchor;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    :cond_0
    return-object v4
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    .line 204
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Ljava/util/List;
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "session"    # Ljavax/net/ssl/SSLSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLSession;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-interface {p3}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 209
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    .line 210
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->rootKeyStore:Ljava/security/KeyStore;

    invoke-static {v0}, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    goto :goto_0
.end method

.method public handleTrustStorageUpdate()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->reset()V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    iget-object v1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    invoke-static {v1}, Lcom/android/org/conscrypt/TrustManagerImpl;->trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->reset(Ljava/util/Set;)V

    goto :goto_0
.end method

.method public isUserAddedCertificate(Ljava/security/cert/X509Certificate;)Z
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    if-nez v0, :cond_0

    .line 224
    const/4 v0, 0x0

    .line 226
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isUserAddedCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    goto :goto_0
.end method
