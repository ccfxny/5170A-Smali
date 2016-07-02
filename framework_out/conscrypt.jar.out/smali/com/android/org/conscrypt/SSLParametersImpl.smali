.class public Lcom/android/org/conscrypt/SSLParametersImpl;
.super Ljava/lang/Object;
.source "SSLParametersImpl.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;,
        Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;
    }
.end annotation


# static fields
.field private static final KEY_TYPE_DH_DSA:Ljava/lang/String; = "DH_DSA"

.field private static final KEY_TYPE_DH_RSA:Ljava/lang/String; = "DH_RSA"

.field private static final KEY_TYPE_DSA:Ljava/lang/String; = "DSA"

.field private static final KEY_TYPE_EC:Ljava/lang/String; = "EC"

.field private static final KEY_TYPE_EC_EC:Ljava/lang/String; = "EC_EC"

.field private static final KEY_TYPE_EC_RSA:Ljava/lang/String; = "EC_RSA"

.field private static final KEY_TYPE_RSA:Ljava/lang/String; = "RSA"

.field private static volatile defaultParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private static volatile defaultSecureRandom:Ljava/security/SecureRandom;

.field private static volatile defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

.field private static volatile defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;


# instance fields
.field alpnProtocols:[B

.field channelIdEnabled:Z

.field private final clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

.field private client_mode:Z

.field private enable_session_creation:Z

.field private enabledCipherSuites:[Ljava/lang/String;

.field private enabledProtocols:[Ljava/lang/String;

.field private endpointIdentificationAlgorithm:Ljava/lang/String;

.field private need_client_auth:Z

.field npnProtocols:[B

.field private final pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

.field private secureRandom:Ljava/security/SecureRandom;

.field private final serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

.field useSessionTickets:Z

.field private useSni:Ljava/lang/Boolean;

.field private want_client_auth:Z

.field private final x509KeyManager:Ljavax/net/ssl/X509KeyManager;

.field private final x509TrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method protected constructor <init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lcom/android/org/conscrypt/ClientSessionContext;Lcom/android/org/conscrypt/ServerSessionContext;)V
    .locals 5
    .param p1, "kms"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "tms"    # [Ljavax/net/ssl/TrustManager;
    .param p3, "sr"    # Ljava/security/SecureRandom;
    .param p4, "clientSessionContext"    # Lcom/android/org/conscrypt/ClientSessionContext;
    .param p5, "serverSessionContext"    # Lcom/android/org/conscrypt/ServerSessionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    .line 90
    iput-boolean v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    .line 92
    iput-boolean v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    .line 94
    iput-boolean v3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    .line 120
    iput-object p5, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    .line 121
    iput-object p4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    .line 124
    if-nez p1, :cond_1

    .line 125
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 127
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    .line 134
    :goto_0
    if-nez p2, :cond_2

    .line 135
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 145
    :goto_1
    iput-object p3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    .line 148
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultProtocols()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    .line 149
    iget-object v4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    if-eqz v4, :cond_3

    :cond_0
    move v1, v3

    .line 150
    .local v1, "x509CipherSuitesNeeded":Z
    :goto_2
    iget-object v4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    if-eqz v4, :cond_4

    move v0, v3

    .line 151
    .local v0, "pskCipherSuitesNeeded":Z
    :goto_3
    invoke-static {v1, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultCipherSuites(ZZ)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 153
    return-void

    .line 129
    .end local v0    # "pskCipherSuitesNeeded":Z
    .end local v1    # "x509CipherSuitesNeeded":Z
    :cond_1
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 130
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstPSKKeyManager([Ljavax/net/ssl/KeyManager;)Lcom/android/org/conscrypt/PSKKeyManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    goto :goto_0

    .line 137
    :cond_2
    invoke-static {p2}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    goto :goto_1

    :cond_3
    move v1, v2

    .line 149
    goto :goto_2

    .restart local v1    # "x509CipherSuitesNeeded":Z
    :cond_4
    move v0, v2

    .line 150
    goto :goto_3
.end method

.method private static varargs concat([[Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "arrays"    # [[Ljava/lang/String;

    .prologue
    .line 1046
    const/4 v5, 0x0

    .line 1047
    .local v5, "resultLength":I
    move-object v0, p0

    .local v0, "arr$":[[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1048
    .local v1, "array":[Ljava/lang/String;
    array-length v7, v1

    add-int/2addr v5, v7

    .line 1047
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1050
    .end local v1    # "array":[Ljava/lang/String;
    :cond_0
    new-array v4, v5, [Ljava/lang/String;

    .line 1051
    .local v4, "result":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1052
    .local v6, "resultOffset":I
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1053
    .restart local v1    # "array":[Ljava/lang/String;
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v4, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1054
    array-length v7, v1

    add-int/2addr v6, v7

    .line 1052
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1056
    .end local v1    # "array":[Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method private static createCertChain([J)[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .locals 6
    .param p0, "certificateRefs"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    if-nez p0, :cond_1

    .line 360
    const/4 v0, 0x0

    .line 366
    :cond_0
    return-object v0

    .line 362
    :cond_1
    array-length v2, p0

    new-array v0, v2, [Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .line 363
    .local v0, "certificates":[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 364
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    aget-wide v4, p0, v1

    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    aput-object v2, v0, v1

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static createDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 808
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, "algorithm":Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    .line 810
    .local v2, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 811
    invoke-virtual {v2}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v3

    .line 812
    .local v3, "kms":[Ljavax/net/ssl/KeyManager;
    invoke-static {v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v4

    .line 813
    .local v4, "result":Ljavax/net/ssl/X509KeyManager;
    if-nez v4, :cond_0

    .line 814
    new-instance v5, Ljava/security/KeyManagementException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No X509KeyManager among default KeyManagers: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_2

    .line 818
    .end local v2    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local v3    # "kms":[Ljavax/net/ssl/KeyManager;
    .end local v4    # "result":Ljavax/net/ssl/X509KeyManager;
    :catch_0
    move-exception v1

    .line 819
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/security/KeyManagementException;

    invoke-direct {v5, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 820
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 821
    .local v1, "e":Ljava/security/KeyStoreException;
    new-instance v5, Ljava/security/KeyManagementException;

    invoke-direct {v5, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 822
    .end local v1    # "e":Ljava/security/KeyStoreException;
    :catch_2
    move-exception v1

    .line 823
    .local v1, "e":Ljava/security/UnrecoverableKeyException;
    new-instance v5, Ljava/security/KeyManagementException;

    invoke-direct {v5, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 817
    .end local v1    # "e":Ljava/security/UnrecoverableKeyException;
    .restart local v2    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v3    # "kms":[Ljavax/net/ssl/KeyManager;
    .restart local v4    # "result":Ljavax/net/ssl/X509KeyManager;
    :cond_0
    return-object v4
.end method

.method private static createDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 873
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 874
    .local v0, "algorithm":Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 875
    .local v2, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v5, 0x0

    check-cast v5, Ljava/security/KeyStore;

    invoke-virtual {v2, v5}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 876
    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    .line 877
    .local v3, "tms":[Ljavax/net/ssl/TrustManager;
    invoke-static {v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v4

    .line 878
    .local v4, "trustManager":Ljavax/net/ssl/X509TrustManager;
    if-nez v4, :cond_0

    .line 879
    new-instance v5, Ljava/security/KeyManagementException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No X509TrustManager in among default TrustManagers: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    .line 884
    .end local v2    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v3    # "tms":[Ljavax/net/ssl/TrustManager;
    .end local v4    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :catch_0
    move-exception v1

    .line 885
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/security/KeyManagementException;

    invoke-direct {v5, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 886
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 887
    .local v1, "e":Ljava/security/KeyStoreException;
    new-instance v5, Ljava/security/KeyManagementException;

    invoke-direct {v5, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 883
    .end local v1    # "e":Ljava/security/KeyStoreException;
    .restart local v2    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v3    # "tms":[Ljavax/net/ssl/TrustManager;
    .restart local v4    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :cond_0
    return-object v4
.end method

.method static encodeIssuerX509Principals([Ljava/security/cert/X509Certificate;)[[B
    .locals 3
    .param p0, "certificates"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 346
    array-length v2, p0

    new-array v1, v2, [[B

    .line 347
    .local v1, "principalBytes":[[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 348
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    aput-object v2, v1, v0

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    :cond_0
    return-object v1
.end method

.method private static findFirstPSKKeyManager([Ljavax/net/ssl/KeyManager;)Lcom/android/org/conscrypt/PSKKeyManager;
    .locals 5
    .param p0, "kms"    # [Ljavax/net/ssl/KeyManager;

    .prologue
    .line 847
    move-object v0, p0

    .local v0, "arr$":[Ljavax/net/ssl/KeyManager;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 848
    .local v2, "km":Ljavax/net/ssl/KeyManager;
    instance-of v4, v2, Lcom/android/org/conscrypt/PSKKeyManager;

    if-eqz v4, :cond_0

    .line 849
    check-cast v2, Lcom/android/org/conscrypt/PSKKeyManager;

    .line 852
    .end local v2    # "km":Ljavax/net/ssl/KeyManager;
    :goto_1
    return-object v2

    .line 847
    .restart local v2    # "km":Ljavax/net/ssl/KeyManager;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 852
    .end local v2    # "km":Ljavax/net/ssl/KeyManager;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;
    .locals 5
    .param p0, "kms"    # [Ljavax/net/ssl/KeyManager;

    .prologue
    .line 833
    move-object v0, p0

    .local v0, "arr$":[Ljavax/net/ssl/KeyManager;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 834
    .local v2, "km":Ljavax/net/ssl/KeyManager;
    instance-of v4, v2, Ljavax/net/ssl/X509KeyManager;

    if-eqz v4, :cond_0

    .line 835
    check-cast v2, Ljavax/net/ssl/X509KeyManager;

    .line 838
    .end local v2    # "km":Ljavax/net/ssl/KeyManager;
    :goto_1
    return-object v2

    .line 833
    .restart local v2    # "km":Ljavax/net/ssl/KeyManager;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 838
    .end local v2    # "km":Ljavax/net/ssl/KeyManager;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 5
    .param p0, "tms"    # [Ljavax/net/ssl/TrustManager;

    .prologue
    .line 897
    move-object v0, p0

    .local v0, "arr$":[Ljavax/net/ssl/TrustManager;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 898
    .local v3, "tm":Ljavax/net/ssl/TrustManager;
    instance-of v4, v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v4, :cond_0

    .line 899
    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    .line 902
    .end local v3    # "tm":Ljavax/net/ssl/TrustManager;
    :goto_1
    return-object v3

    .line 897
    .restart local v3    # "tm":Ljavax/net/ssl/TrustManager;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 902
    .end local v3    # "tm":Ljavax/net/ssl/TrustManager;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getClientKeyType(B)Ljava/lang/String;
    .locals 1
    .param p0, "keyType"    # B

    .prologue
    .line 988
    sparse-switch p0, :sswitch_data_0

    .line 1004
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 990
    :sswitch_0
    const-string v0, "RSA"

    goto :goto_0

    .line 992
    :sswitch_1
    const-string v0, "DSA"

    goto :goto_0

    .line 994
    :sswitch_2
    const-string v0, "DH_RSA"

    goto :goto_0

    .line 996
    :sswitch_3
    const-string v0, "DH_DSA"

    goto :goto_0

    .line 998
    :sswitch_4
    const-string v0, "EC"

    goto :goto_0

    .line 1000
    :sswitch_5
    const-string v0, "EC_RSA"

    goto :goto_0

    .line 1002
    :sswitch_6
    const-string v0, "EC_EC"

    goto :goto_0

    .line 988
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x40 -> :sswitch_4
        0x41 -> :sswitch_5
        0x42 -> :sswitch_6
    .end sparse-switch
.end method

.method protected static getDefault()Lcom/android/org/conscrypt/SSLParametersImpl;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 156
    sget-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 157
    .local v0, "result":Lcom/android/org/conscrypt/SSLParametersImpl;
    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    .end local v0    # "result":Lcom/android/org/conscrypt/SSLParametersImpl;
    new-instance v4, Lcom/android/org/conscrypt/ClientSessionContext;

    invoke-direct {v4}, Lcom/android/org/conscrypt/ClientSessionContext;-><init>()V

    new-instance v5, Lcom/android/org/conscrypt/ServerSessionContext;

    invoke-direct {v5}, Lcom/android/org/conscrypt/ServerSessionContext;-><init>()V

    move-object v2, v1

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lcom/android/org/conscrypt/ClientSessionContext;Lcom/android/org/conscrypt/ServerSessionContext;)V

    .restart local v0    # "result":Lcom/android/org/conscrypt/SSLParametersImpl;
    sput-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 165
    :cond_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/SSLParametersImpl;

    return-object v1
.end method

.method private static getDefaultCipherSuites(ZZ)[Ljava/lang/String;
    .locals 6
    .param p0, "x509CipherSuitesNeeded"    # Z
    .param p1, "pskCipherSuitesNeeded"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1011
    if-eqz p0, :cond_1

    .line 1013
    if-eqz p1, :cond_0

    .line 1020
    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/String;

    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

    aput-object v1, v0, v4

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v2, v1, v3

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1037
    :goto_0
    return-object v0

    .line 1026
    :cond_0
    new-array v0, v5, [[Ljava/lang/String;

    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

    aput-object v1, v0, v3

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v2, v1, v3

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1030
    :cond_1
    if-eqz p1, :cond_2

    .line 1032
    new-array v0, v5, [[Ljava/lang/String;

    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

    aput-object v1, v0, v3

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v2, v1, v3

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1037
    :cond_2
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method private static getDefaultProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1042
    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_PROTOCOLS:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static getDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 799
    sget-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 800
    .local v0, "result":Ljavax/net/ssl/X509KeyManager;
    if-nez v0, :cond_0

    .line 802
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->createDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 804
    :cond_0
    return-object v0
.end method

.method public static getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 862
    sget-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 863
    .local v0, "result":Ljavax/net/ssl/X509TrustManager;
    if-nez v0, :cond_0

    .line 865
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->createDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 867
    :cond_0
    return-object v0
.end method

.method private static getServerX509KeyType(J)Ljava/lang/String;
    .locals 8
    .param p0, "sslCipherNative"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const-wide v6, 0xffffffffL

    const/4 v2, 0x0

    .line 940
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/NativeCrypto;->get_SSL_CIPHER_algorithm_mkey(J)I

    move-result v1

    .line 941
    .local v1, "algorithm_mkey":I
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/NativeCrypto;->get_SSL_CIPHER_algorithm_auth(J)I

    move-result v0

    .line 942
    .local v0, "algorithm_auth":I
    sparse-switch v1, :sswitch_data_0

    .line 975
    :goto_0
    new-instance v2, Ljavax/net/ssl/SSLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported key exchange. mkey: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-long v4, v1

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", auth: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-long v4, v0

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 944
    :sswitch_0
    const-string v2, "RSA"

    .line 972
    :goto_1
    :pswitch_0
    :sswitch_1
    return-object v2

    .line 946
    :sswitch_2
    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 950
    :pswitch_2
    const-string v2, "RSA"

    goto :goto_1

    .line 948
    :pswitch_3
    const-string v2, "DSA"

    goto :goto_1

    .line 956
    :sswitch_3
    const-string v2, "EC_RSA"

    goto :goto_1

    .line 958
    :sswitch_4
    const-string v2, "EC_EC"

    goto :goto_1

    .line 960
    :sswitch_5
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 964
    :sswitch_6
    const-string v2, "RSA"

    goto :goto_1

    .line 962
    :sswitch_7
    const-string v2, "EC_EC"

    goto :goto_1

    .line 942
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_5
        0x100 -> :sswitch_1
    .end sparse-switch

    .line 946
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 960
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_6
        0x4 -> :sswitch_1
        0x40 -> :sswitch_7
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method private isSniEnabledByDefault()Z
    .locals 3

    .prologue
    .line 556
    const-string v2, "jsse.enableSNIExtension"

    invoke-static {}, Lcom/android/org/conscrypt/Platform;->isSniEnabledByDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "true"

    :goto_0
    invoke-static {v2, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "enableSNI":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 559
    const/4 v1, 0x1

    .line 561
    :goto_1
    return v1

    .line 556
    .end local v0    # "enableSNI":Ljava/lang/String;
    :cond_0
    const-string v1, "false"

    goto :goto_0

    .line 560
    .restart local v0    # "enableSNI":Ljava/lang/String;
    :cond_1
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 561
    const/4 v1, 0x0

    goto :goto_1

    .line 563
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can only set \"jsse.enableSNIExtension\" to \"true\" or \"false\""

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static isValidSniHostname(Ljava/lang/String;)Z
    .locals 3
    .param p0, "sniHostname"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 535
    if-nez p0, :cond_1

    .line 548
    :cond_0
    :goto_0
    return v0

    .line 540
    :cond_1
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 544
    invoke-static {p0}, Lcom/android/org/conscrypt/Platform;->isLiteralIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 548
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method chooseClientCertificate([B[[BJLcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;)V
    .locals 7
    .param p1, "keyTypeBytes"    # [B
    .param p2, "asn1DerEncodedPrincipals"    # [[B
    .param p3, "sslNativePointer"    # J
    .param p5, "chooser"    # Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 636
    array-length v5, p1

    new-array v4, v5, [Ljava/lang/String;

    .line 637
    .local v4, "keyTypes":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_0

    .line 638
    aget-byte v5, p1, v1

    invoke-static {v5}, Lcom/android/org/conscrypt/SSLParametersImpl;->getClientKeyType(B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 637
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 642
    :cond_0
    if-nez p2, :cond_2

    .line 643
    const/4 v2, 0x0

    .line 650
    .local v2, "issuers":[Ljavax/security/auth/x500/X500Principal;
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v3

    .line 651
    .local v3, "keyManager":Ljavax/net/ssl/X509KeyManager;
    if-eqz v3, :cond_3

    invoke-interface {p5, v3, v2, v4}, Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;->chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, "alias":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, p3, p4, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->setCertificate(JLjava/lang/String;)V

    .line 654
    return-void

    .line 645
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "issuers":[Ljavax/security/auth/x500/X500Principal;
    .end local v3    # "keyManager":Ljavax/net/ssl/X509KeyManager;
    :cond_2
    array-length v5, p2

    new-array v2, v5, [Ljavax/security/auth/x500/X500Principal;

    .line 646
    .restart local v2    # "issuers":[Ljavax/security/auth/x500/X500Principal;
    const/4 v1, 0x0

    :goto_2
    array-length v5, p2

    if-ge v1, v5, :cond_1

    .line 647
    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    aget-object v6, p2, v1

    invoke-direct {v5, v6}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    aput-object v5, v2, v1

    .line 646
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 651
    .restart local v3    # "keyManager":Ljavax/net/ssl/X509KeyManager;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method clientPSKKeyRequested(Ljava/lang/String;[B[BLcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)I
    .locals 9
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identityBytesOut"    # [B
    .param p3, "key"    # [B
    .param p4, "pskCallbacks"    # Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;

    .prologue
    const/4 v6, 0x0

    .line 661
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lcom/android/org/conscrypt/PSKKeyManager;

    move-result-object v3

    .line 662
    .local v3, "pskKeyManager":Lcom/android/org/conscrypt/PSKKeyManager;
    if-nez v3, :cond_1

    .line 699
    :cond_0
    :goto_0
    return v6

    .line 666
    :cond_1
    invoke-interface {p4, v3, p1}, Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;->chooseClientPSKIdentity(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 669
    .local v1, "identity":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 670
    const-string v1, ""

    .line 671
    sget-object v2, Lcom/android/org/conscrypt/util/EmptyArray;->BYTE:[B

    .line 681
    .local v2, "identityBytes":[B
    :goto_1
    array-length v7, v2

    add-int/lit8 v7, v7, 0x1

    array-length v8, p2

    if-gt v7, v8, :cond_0

    .line 685
    array-length v7, v2

    if-lez v7, :cond_2

    .line 686
    array-length v7, v2

    invoke-static {v2, v6, p2, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 688
    :cond_2
    array-length v7, v2

    aput-byte v6, p2, v7

    .line 690
    invoke-interface {p4, v3, p1, v1}, Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;->getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 691
    .local v4, "secretKey":Ljavax/crypto/SecretKey;
    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    .line 692
    .local v5, "secretKeyBytes":[B
    if-eqz v5, :cond_0

    .line 694
    array-length v7, v5

    array-length v8, p3

    if-gt v7, v8, :cond_0

    .line 698
    array-length v7, v5

    invoke-static {v5, v6, p3, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 699
    array-length v6, v5

    goto :goto_0

    .line 672
    .end local v2    # "identityBytes":[B
    .end local v4    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v5    # "secretKeyBytes":[B
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 673
    sget-object v2, Lcom/android/org/conscrypt/util/EmptyArray;->BYTE:[B

    .restart local v2    # "identityBytes":[B
    goto :goto_1

    .line 676
    .end local v2    # "identityBytes":[B
    :cond_4
    :try_start_0
    const-string v7, "UTF-8"

    invoke-virtual {v1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .restart local v2    # "identityBytes":[B
    goto :goto_1

    .line 677
    .end local v2    # "identityBytes":[B
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "UTF-8 encoding not supported"

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method protected clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 792
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 793
    :catch_0
    move-exception v0

    .line 794
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method getCachedClientSession(Lcom/android/org/conscrypt/ClientSessionContext;Ljava/lang/String;I)Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    .locals 12
    .param p1, "sessionContext"    # Lcom/android/org/conscrypt/ClientSessionContext;
    .param p2, "hostName"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    const/4 v10, 0x0

    .line 727
    if-nez p2, :cond_1

    move-object v9, v10

    .line 759
    :cond_0
    :goto_0
    return-object v9

    .line 730
    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/android/org/conscrypt/ClientSessionContext;->getSession(Ljava/lang/String;I)Ljavax/net/ssl/SSLSession;

    move-result-object v9

    check-cast v9, Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    .line 731
    .local v9, "session":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    if-nez v9, :cond_2

    move-object v9, v10

    .line 732
    goto :goto_0

    .line 735
    :cond_2
    invoke-virtual {v9}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getProtocol()Ljava/lang/String;

    move-result-object v7

    .line 736
    .local v7, "protocol":Ljava/lang/String;
    const/4 v8, 0x0

    .line 737
    .local v8, "protocolFound":Z
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v4, v0, v5

    .line 738
    .local v4, "enabledProtocol":Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 739
    const/4 v8, 0x1

    .line 743
    .end local v4    # "enabledProtocol":Ljava/lang/String;
    :cond_3
    if-nez v8, :cond_5

    move-object v9, v10

    .line 744
    goto :goto_0

    .line 737
    .restart local v4    # "enabledProtocol":Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 747
    .end local v4    # "enabledProtocol":Ljava/lang/String;
    :cond_5
    invoke-virtual {v9}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    .line 748
    .local v1, "cipherSuite":Ljava/lang/String;
    const/4 v2, 0x0

    .line 749
    .local v2, "cipherSuiteFound":Z
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    array-length v6, v0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_6

    aget-object v3, v0, v5

    .line 750
    .local v3, "enabledCipherSuite":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 751
    const/4 v2, 0x1

    .line 755
    .end local v3    # "enabledCipherSuite":Ljava/lang/String;
    :cond_6
    if-nez v2, :cond_0

    move-object v9, v10

    .line 756
    goto :goto_0

    .line 749
    .restart local v3    # "enabledCipherSuite":Ljava/lang/String;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method protected getClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    return-object v0
.end method

.method protected getEnableSessionCreation()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    return v0
.end method

.method protected getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getEndpointIdentificationAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->endpointIdentificationAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method protected getNeedClientAuth()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    return v0
.end method

.method protected getPSKKeyManager()Lcom/android/org/conscrypt/PSKKeyManager;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    return-object v0
.end method

.method protected getSecureRandom()Ljava/security/SecureRandom;
    .locals 2

    .prologue
    .line 214
    iget-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    .line 223
    :goto_0
    return-object v1

    .line 217
    :cond_0
    sget-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultSecureRandom:Ljava/security/SecureRandom;

    .line 218
    .local v0, "result":Ljava/security/SecureRandom;
    if-nez v0, :cond_1

    .line 220
    new-instance v0, Ljava/security/SecureRandom;

    .end local v0    # "result":Ljava/security/SecureRandom;
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .restart local v0    # "result":Ljava/security/SecureRandom;
    sput-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultSecureRandom:Ljava/security/SecureRandom;

    .line 222
    :cond_1
    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    .line 223
    iget-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    goto :goto_0
.end method

.method protected getSecureRandomMember()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method

.method protected getServerSessionContext()Lcom/android/org/conscrypt/ServerSessionContext;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    return-object v0
.end method

.method public getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    goto :goto_0
.end method

.method getSessionToReuse(JLjava/lang/String;I)Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    .locals 5
    .param p1, "sslNativePointer"    # J
    .param p3, "hostname"    # Ljava/lang/String;
    .param p4, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 372
    iget-boolean v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    if-eqz v1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    invoke-virtual {p0, v1, p3, p4}, Lcom/android/org/conscrypt/SSLParametersImpl;->getCachedClientSession(Lcom/android/org/conscrypt/ClientSessionContext;Ljava/lang/String;I)Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    move-result-object v0

    .line 375
    .local v0, "sessionToReuse":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    if-eqz v0, :cond_0

    .line 376
    iget-wide v2, v0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    invoke-static {p1, p2, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_session(JJ)V

    .line 382
    :cond_0
    :goto_0
    return-object v0

    .line 380
    .end local v0    # "sessionToReuse":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "sessionToReuse":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    goto :goto_0
.end method

.method protected getUseClientMode()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    return v0
.end method

.method protected getUseSni()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->isSniEnabledByDefault()Z

    move-result v0

    goto :goto_0
.end method

.method protected getWantClientAuth()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    return v0
.end method

.method protected getX509KeyManager()Ljavax/net/ssl/X509KeyManager;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    return-object v0
.end method

.method protected getX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[BLcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)I
    .locals 6
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "key"    # [B
    .param p4, "pskCallbacks"    # Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;

    .prologue
    const/4 v3, 0x0

    .line 707
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lcom/android/org/conscrypt/PSKKeyManager;

    move-result-object v0

    .line 708
    .local v0, "pskKeyManager":Lcom/android/org/conscrypt/PSKKeyManager;
    if-nez v0, :cond_1

    .line 719
    :cond_0
    :goto_0
    return v3

    .line 711
    :cond_1
    invoke-interface {p4, v0, p1, p2}, Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;->getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 712
    .local v1, "secretKey":Ljavax/crypto/SecretKey;
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    .line 713
    .local v2, "secretKeyBytes":[B
    if-eqz v2, :cond_0

    .line 715
    array-length v4, v2

    array-length v5, p3

    if-gt v4, v5, :cond_0

    .line 718
    array-length v4, v2

    invoke-static {v2, v3, p3, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 719
    array-length v3, v2

    goto :goto_0
.end method

.method setCertificate(JLjava/lang/String;)V
    .locals 15
    .param p1, "sslNativePointer"    # J
    .param p3, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 405
    if-nez p3, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v6

    .line 409
    .local v6, "keyManager":Ljavax/net/ssl/X509KeyManager;
    if-eqz v6, :cond_0

    .line 412
    move-object/from16 v0, p3

    invoke-interface {v6, v0}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v9

    .line 413
    .local v9, "privateKey":Ljava/security/PrivateKey;
    if-eqz v9, :cond_0

    .line 416
    move-object/from16 v0, p3

    invoke-interface {v6, v0}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 417
    .local v2, "certificates":[Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_0

    .line 427
    array-length v11, v2

    new-array v8, v11, [Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .line 428
    .local v8, "openSslCerts":[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    array-length v11, v2

    new-array v10, v11, [J

    .line 429
    .local v10, "x509refs":[J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v11, v2

    if-ge v4, v11, :cond_2

    .line 430
    aget-object v11, v2, v4

    invoke-static {v11}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromCertificate(Ljava/security/cert/Certificate;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v7

    .line 432
    .local v7, "openSslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    aput-object v7, v8, v4

    .line 433
    invoke-virtual {v7}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v12

    aput-wide v12, v10, v4

    .line 429
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 438
    .end local v7    # "openSslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :cond_2
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v10}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_use_certificate(J[J)V

    .line 442
    :try_start_0
    invoke-static {v9}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v5

    .line 443
    .local v5, "key":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v12

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v12, v13}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_use_PrivateKey(JJ)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLKey;->isWrapped()Z

    move-result v11

    if-nez v11, :cond_0

    .line 453
    invoke-static/range {p1 .. p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_check_private_key(J)V

    goto :goto_0

    .line 444
    .end local v5    # "key":Lcom/android/org/conscrypt/OpenSSLKey;
    :catch_0
    move-exception v3

    .line 445
    .local v3, "e":Ljava/security/InvalidKeyException;
    new-instance v11, Ljavax/net/ssl/SSLException;

    invoke-direct {v11, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v11
.end method

.method setCertificateValidation(J)V
    .locals 7
    .param p1, "sslNativePointer"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    iget-boolean v5, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    if-nez v5, :cond_0

    .line 573
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 574
    const/4 v5, 0x3

    invoke-static {p1, p2, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_verify(JI)V

    .line 577
    const/4 v0, 0x1

    .line 588
    .local v0, "certRequested":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v4

    .line 590
    .local v4, "trustManager":Ljavax/net/ssl/X509TrustManager;
    invoke-interface {v4}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 591
    .local v2, "issuers":[Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-eqz v5, :cond_0

    .line 594
    :try_start_0
    invoke-static {v2}, Lcom/android/org/conscrypt/SSLParametersImpl;->encodeIssuerX509Principals([Ljava/security/cert/X509Certificate;)[[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 598
    .local v3, "issuersBytes":[[B
    invoke-static {p1, p2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_client_CA_list(J[[B)V

    .line 602
    .end local v0    # "certRequested":Z
    .end local v2    # "issuers":[Ljava/security/cert/X509Certificate;
    .end local v3    # "issuersBytes":[[B
    .end local v4    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :cond_0
    return-void

    .line 579
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 580
    const/4 v5, 0x1

    invoke-static {p1, p2, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_verify(JI)V

    .line 581
    const/4 v0, 0x1

    .restart local v0    # "certRequested":Z
    goto :goto_0

    .line 584
    .end local v0    # "certRequested":Z
    :cond_2
    const/4 v5, 0x0

    invoke-static {p1, p2, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_verify(JI)V

    .line 585
    const/4 v0, 0x0

    .restart local v0    # "certRequested":Z
    goto :goto_0

    .line 595
    .restart local v2    # "issuers":[Ljava/security/cert/X509Certificate;
    .restart local v4    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :catch_0
    move-exception v1

    .line 596
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Problem encoding principals"

    invoke-direct {v5, v6, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected setEnableSessionCreation(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 317
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    .line 318
    return-void
.end method

.method protected setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    .prologue
    .line 244
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 245
    return-void
.end method

.method protected setEnabledProtocols([Ljava/lang/String;)V
    .locals 1
    .param p1, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 259
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setEndpointIdentificationAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1, "endpointIdentificationAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 910
    iput-object p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->endpointIdentificationAlgorithm:Ljava/lang/String;

    .line 911
    return-void
.end method

.method protected setNeedClientAuth(Z)V
    .locals 1
    .param p1, "need"    # Z

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    .line 285
    return-void
.end method

.method setSSLParameters(JJLcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;Ljava/lang/String;)V
    .locals 21
    .param p1, "sslCtxNativePointer"    # J
    .param p3, "sslNativePointer"    # J
    .param p5, "chooser"    # Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;
    .param p6, "pskCallbacks"    # Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;
    .param p7, "sniHostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->npnProtocols:[B

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 460
    invoke-static/range {p1 .. p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CTX_enable_npn(J)V

    .line 463
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->alpnProtocols:[B

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->alpnProtocols:[B

    move-object/from16 v18, v0

    move-wide/from16 v0, p3

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_alpn_protos(J[B)I

    .line 467
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-wide/from16 v0, p3

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->setEnabledProtocols(J[Ljava/lang/String;)V

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-wide/from16 v0, p3

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->setEnabledCipherSuites(J[Ljava/lang/String;)V

    .line 472
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 473
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 474
    .local v12, "keyTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static/range {p3 .. p4}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_ciphers(J)[J

    move-result-object v4

    .local v4, "arr$":[J
    array-length v13, v4

    .local v13, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v13, :cond_3

    aget-wide v16, v4, v8

    .line 475
    .local v16, "sslCipherNativePointer":J
    invoke-static/range {v16 .. v17}, Lcom/android/org/conscrypt/SSLParametersImpl;->getServerX509KeyType(J)Ljava/lang/String;

    move-result-object v11

    .line 476
    .local v11, "keyType":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 477
    invoke-interface {v12, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 474
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 480
    .end local v11    # "keyType":Ljava/lang/String;
    .end local v16    # "sslCipherNativePointer":J
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v10

    .line 481
    .local v10, "keyManager":Ljavax/net/ssl/X509KeyManager;
    if-eqz v10, :cond_4

    .line 482
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 484
    .restart local v11    # "keyType":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v11}, Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;->chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->setCertificate(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 486
    :catch_0
    move-exception v5

    .line 487
    .local v5, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v18, Ljava/io/IOException;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 494
    .end local v4    # "arr$":[J
    .end local v5    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "keyManager":Ljavax/net/ssl/X509KeyManager;
    .end local v11    # "keyType":Ljava/lang/String;
    .end local v12    # "keyTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "len$":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lcom/android/org/conscrypt/PSKKeyManager;

    move-result-object v15

    .line 495
    .local v15, "pskKeyManager":Lcom/android/org/conscrypt/PSKKeyManager;
    if-eqz v15, :cond_6

    .line 496
    const/4 v14, 0x0

    .line 497
    .local v14, "pskEnabled":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v13, v4

    .restart local v13    # "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_2
    if-ge v8, v13, :cond_5

    aget-object v7, v4, v8

    .line 498
    .local v7, "enabledCipherSuite":Ljava/lang/String;
    if-eqz v7, :cond_a

    const-string v18, "PSK"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 499
    const/4 v14, 0x1

    .line 503
    .end local v7    # "enabledCipherSuite":Ljava/lang/String;
    :cond_5
    if-eqz v14, :cond_6

    .line 504
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 505
    const/16 v18, 0x1

    move-wide/from16 v0, p3

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->set_SSL_psk_client_callback_enabled(JZ)V

    .line 514
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "pskEnabled":Z
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSessionTickets:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 515
    const-wide/16 v18, 0x4000

    move-wide/from16 v0, p3

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_clear_options(JJ)J

    .line 517
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseSni()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-static/range {p7 .. p7}, Lcom/android/org/conscrypt/AddressUtils;->isValidSniHostname(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 518
    move-wide/from16 v0, p3

    move-object/from16 v2, p7

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_tlsext_host_name(JLjava/lang/String;)V

    .line 523
    :cond_8
    const-wide/16 v18, 0x100

    move-wide/from16 v0, p3

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_mode(JJ)J

    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v6

    .line 526
    .local v6, "enableSessionCreation":Z
    if-nez v6, :cond_9

    .line 527
    move-wide/from16 v0, p3

    invoke-static {v0, v1, v6}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_session_creation_enabled(JZ)V

    .line 529
    :cond_9
    return-void

    .line 497
    .end local v6    # "enableSessionCreation":Z
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v7    # "enabledCipherSuite":Ljava/lang/String;
    .restart local v8    # "i$":I
    .restart local v13    # "len$":I
    .restart local v14    # "pskEnabled":Z
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 507
    .end local v7    # "enabledCipherSuite":Ljava/lang/String;
    :cond_b
    const/16 v18, 0x1

    move-wide/from16 v0, p3

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->set_SSL_psk_server_callback_enabled(JZ)V

    .line 508
    move-object/from16 v0, p6

    invoke-interface {v0, v15}, Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;->chooseServerPSKIdentityHint(Lcom/android/org/conscrypt/PSKKeyManager;)Ljava/lang/String;

    move-result-object v9

    .line 509
    .local v9, "identityHint":Ljava/lang/String;
    move-wide/from16 v0, p3

    invoke-static {v0, v1, v9}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_use_psk_identity_hint(JLjava/lang/String;)V

    goto :goto_3
.end method

.method setTlsChannelId(JLcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 3
    .param p1, "sslNativePointer"    # J
    .param p3, "channelIdPrivateKey"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLHandshakeException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    if-eqz v0, :cond_1

    .line 389
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    if-eqz v0, :cond_2

    .line 391
    if-nez p3, :cond_0

    .line 392
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "Invalid TLS channel ID key specified"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_0
    invoke-virtual {p3}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set1_tls_channel_id(JJ)V

    .line 401
    :cond_1
    :goto_0
    return-void

    .line 398
    :cond_2
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_enable_tls_channel_id(J)V

    goto :goto_0
.end method

.method protected setUseClientMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    .line 268
    return-void
.end method

.method protected setUseSni(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 333
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    .line 334
    return-void
.end method

.method protected setWantClientAuth(Z)V
    .locals 1
    .param p1, "want"    # Z

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    .line 302
    return-void
.end method

.method setupSession(JJLcom/android/org/conscrypt/OpenSSLSessionImpl;Ljava/lang/String;IZ)Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    .locals 9
    .param p1, "sslSessionNativePointer"    # J
    .param p3, "sslNativePointer"    # J
    .param p5, "sessionToReuse"    # Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    .param p6, "hostname"    # Ljava/lang/String;
    .param p7, "port"    # I
    .param p8, "handshakeCompleted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 607
    const/4 v1, 0x0

    .line 608
    .local v1, "sslSession":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_session_id(J)[B

    move-result-object v0

    .line 609
    .local v0, "sessionId":[B
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getId()[B

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 610
    move-object v1, p5

    .line 611
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->lastAccessedTime:J

    .line 612
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_free(J)V

    .line 630
    :cond_0
    :goto_0
    return-object v1

    .line 614
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v2

    if-nez v2, :cond_2

    .line 617
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "SSL Session may not be created"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 619
    :cond_2
    invoke-static {p3, p4}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_certificate(J)[J

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/SSLParametersImpl;->createCertChain([J)[Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v4

    .line 621
    .local v4, "localCertificates":[Ljava/security/cert/X509Certificate;
    invoke-static {p3, p4}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_peer_cert_chain(J)[J

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/SSLParametersImpl;->createCertChain([J)[Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v5

    .line 623
    .local v5, "peerCertificates":[Ljava/security/cert/X509Certificate;
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    .end local v1    # "sslSession":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v8

    move-wide v2, p1

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;-><init>(J[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILcom/android/org/conscrypt/AbstractSessionContext;)V

    .line 626
    .restart local v1    # "sslSession":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    if-eqz p8, :cond_0

    .line 627
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    goto :goto_0
.end method
