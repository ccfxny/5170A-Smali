.class Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "TrustManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/TrustManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtendedKeyUsagePKIXCertPathChecker"
.end annotation


# static fields
.field private static final EKU_OID:Ljava/lang/String; = "2.5.29.37"

.field private static final EKU_anyExtendedKeyUsage:Ljava/lang/String; = "2.5.29.37.0"

.field private static final EKU_clientAuth:Ljava/lang/String; = "1.3.6.1.5.5.7.3.2"

.field private static final EKU_msSGC:Ljava/lang/String; = "1.3.6.1.4.1.311.10.3.3"

.field private static final EKU_nsSGC:Ljava/lang/String; = "2.16.840.1.113730.4.1"

.field private static final EKU_serverAuth:Ljava/lang/String; = "1.3.6.1.5.5.7.3.1"

.field private static final SUPPORTED_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clientAuth:Z

.field private final leaf:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 445
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "2.5.29.37"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->SUPPORTED_EXTENSIONS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(ZLjava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "clientAuth"    # Z
    .param p2, "leaf"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 451
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    .line 452
    iput-boolean p1, p0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->clientAuth:Z

    .line 453
    iput-object p2, p0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->leaf:Ljava/security/cert/X509Certificate;

    .line 454
    return-void
.end method

.method synthetic constructor <init>(ZLjava/security/cert/X509Certificate;Lcom/android/org/conscrypt/TrustManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Ljava/security/cert/X509Certificate;
    .param p3, "x2"    # Lcom/android/org/conscrypt/TrustManagerImpl$1;

    .prologue
    .line 435
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;-><init>(ZLjava/security/cert/X509Certificate;)V

    return-void
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .locals 7
    .param p1, "c"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 474
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->leaf:Ljava/security/cert/X509Certificate;

    if-eq p1, v5, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->leaf:Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 485
    .local v2, "ekuOids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 489
    const/4 v3, 0x0

    .line 490
    .local v3, "goodExtendedKeyUsage":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 492
    .local v1, "ekuOid":Ljava/lang/String;
    const-string v5, "2.5.29.37.0"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 493
    const/4 v3, 0x1

    .line 520
    .end local v1    # "ekuOid":Ljava/lang/String;
    :cond_3
    :goto_1
    if-eqz v3, :cond_8

    .line 522
    const-string v5, "2.5.29.37"

    invoke-interface {p2, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 480
    .end local v2    # "ekuOids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "goodExtendedKeyUsage":Z
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Ljava/security/cert/CertificateParsingException;
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v5, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 498
    .end local v0    # "e":Ljava/security/cert/CertificateParsingException;
    .restart local v1    # "ekuOid":Ljava/lang/String;
    .restart local v2    # "ekuOids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "goodExtendedKeyUsage":Z
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-boolean v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->clientAuth:Z

    if-eqz v5, :cond_5

    .line 499
    const-string v5, "1.3.6.1.5.5.7.3.2"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 500
    const/4 v3, 0x1

    .line 501
    goto :goto_1

    .line 507
    :cond_5
    const-string v5, "1.3.6.1.5.5.7.3.1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 508
    const/4 v3, 0x1

    .line 509
    goto :goto_1

    .line 511
    :cond_6
    const-string v5, "2.16.840.1.113730.4.1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 512
    const/4 v3, 0x1

    .line 513
    goto :goto_1

    .line 515
    :cond_7
    const-string v5, "1.3.6.1.4.1.311.10.3.3"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 516
    const/4 v3, 0x1

    .line 517
    goto :goto_1

    .line 524
    .end local v1    # "ekuOid":Ljava/lang/String;
    :cond_8
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    const-string v6, "End-entity certificate does not have a valid extendedKeyUsage."

    invoke-direct {v5, v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .locals 1
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
    .line 467
    sget-object v0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->SUPPORTED_EXTENSIONS:Ljava/util/Set;

    return-object v0
.end method

.method public init(Z)V
    .locals 0
    .param p1, "forward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 458
    return-void
.end method

.method public isForwardCheckingSupported()Z
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x1

    return v0
.end method
