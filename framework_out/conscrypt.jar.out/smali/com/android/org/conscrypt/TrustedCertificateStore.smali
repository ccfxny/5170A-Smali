.class public final Lcom/android/org/conscrypt/TrustedCertificateStore;
.super Ljava/lang/Object;
.source "TrustedCertificateStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;
    }
.end annotation


# static fields
.field private static final CERT_FACTORY:Ljava/security/cert/CertificateFactory;

.field private static final PREFIX_SYSTEM:Ljava/lang/String; = "system:"

.field private static final PREFIX_USER:Ljava/lang/String; = "user:"

.field private static defaultCaCertsAddedDir:Ljava/io/File;

.field private static defaultCaCertsDeletedDir:Ljava/io/File;

.field private static defaultCaCertsSystemDir:Ljava/io/File;


# instance fields
.field private final addedDir:Ljava/io/File;

.field private final deletedDir:Ljava/io/File;

.field private final systemDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 99
    const-string v3, "ANDROID_ROOT"

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "ANDROID_ROOT":Ljava/lang/String;
    const-string v3, "ANDROID_DATA"

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "ANDROID_DATA":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/etc/security/cacerts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/android/org/conscrypt/TrustedCertificateStore;->defaultCaCertsSystemDir:Ljava/io/File;

    .line 102
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/misc/keychain"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->setDefaultUserDirectory(Ljava/io/File;)V

    .line 105
    :try_start_0
    const-string v3, "X509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    sput-object v3, Lcom/android/org/conscrypt/TrustedCertificateStore;->CERT_FACTORY:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-void

    .line 106
    :catch_0
    move-exception v2

    .line 107
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 121
    sget-object v0, Lcom/android/org/conscrypt/TrustedCertificateStore;->defaultCaCertsSystemDir:Ljava/io/File;

    sget-object v1, Lcom/android/org/conscrypt/TrustedCertificateStore;->defaultCaCertsAddedDir:Ljava/io/File;

    sget-object v2, Lcom/android/org/conscrypt/TrustedCertificateStore;->defaultCaCertsDeletedDir:Ljava/io/File;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "addedDir"    # Ljava/io/File;
    .param p3, "deletedDir"    # Ljava/io/File;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    .line 126
    iput-object p2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    .line 127
    iput-object p3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->deletedDir:Ljava/io/File;

    .line 128
    return-void
.end method

.method private addAliases(Ljava/util/Set;Ljava/lang/String;Ljava/io/File;)V
    .locals 7
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "files":[Ljava/lang/String;
    if-nez v3, :cond_1

    .line 253
    :cond_0
    return-void

    .line 247
    :cond_1
    move-object v1, v3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v1, v4

    .line 248
    .local v2, "filename":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->containsAlias(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 250
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private containsAlias(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "includeDeletedSystem"    # Z

    .prologue
    .line 275
    invoke-virtual {p0, p1, p2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static convertToOpenSSLIfNeeded(Ljava/security/cert/X509Certificate;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .locals 2
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 401
    if-nez p0, :cond_0

    .line 402
    const/4 p0, 0x0

    .line 410
    .end local p0    # "cert":Ljava/security/cert/X509Certificate;
    :goto_0
    return-object p0

    .line 405
    .restart local p0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_0
    instance-of v1, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    if-eqz v1, :cond_1

    .line 406
    check-cast p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    goto :goto_0

    .line 410
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private file(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;
    .locals 3
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "hash"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 500
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private fileForAlias(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 151
    if-nez p1, :cond_0

    .line 152
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "alias == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_0
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isSystem(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 156
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    const-string v3, "system:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 162
    .local v0, "file":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isTombstone(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object v0, v1

    .line 166
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    :goto_1
    return-object v0

    .line 157
    :cond_3
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isUser(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 158
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    const-string v3, "user:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v0    # "file":Ljava/io/File;
    goto :goto_0

    .end local v0    # "file":Ljava/io/File;
    :cond_4
    move-object v0, v1

    .line 160
    goto :goto_1
.end method

.method private findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "subject"    # Ljavax/security/auth/x500/X500Principal;
    .param p3, "selector"    # Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Ljavax/security/auth/x500/X500Principal;",
            "Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 455
    .local p4, "desiredReturnType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->hash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v2

    .line 456
    .local v2, "hash":Ljava/lang/String;
    const/4 v3, 0x0

    .line 457
    .local v3, "index":I
    :goto_0
    invoke-direct {p0, p1, v2, v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->file(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 458
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_2

    .line 460
    const-class v4, Ljava/lang/Boolean;

    if-ne p4, v4, :cond_1

    .line 461
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 487
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_1
    return-object v1

    .line 463
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    const-class v4, Ljava/io/File;

    if-eq p4, v4, :cond_0

    .line 469
    const/4 v1, 0x0

    goto :goto_1

    .line 471
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isTombstone(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 456
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 474
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->readCertificate(Ljava/io/File;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 475
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_3

    .line 479
    invoke-interface {p3, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;->match(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 480
    const-class v4, Ljava/security/cert/X509Certificate;

    if-ne p4, v4, :cond_5

    move-object v1, v0

    .line 481
    goto :goto_1

    .line 483
    :cond_5
    const-class v4, Ljava/lang/Boolean;

    if-ne p4, v4, :cond_6

    .line 484
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 486
    :cond_6
    const-class v4, Ljava/io/File;

    if-eq p4, v4, :cond_0

    .line 489
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method

.method private getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;
    .locals 3
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "x"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 317
    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateStore$1;

    invoke-direct {v0, p0, p2}, Lcom/android/org/conscrypt/TrustedCertificateStore$1;-><init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)V

    .line 323
    .local v0, "selector":Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    const-class v2, Ljava/io/File;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    return-object v1
.end method

.method private hash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 495
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_NAME_hash_old(Ljavax/security/auth/x500/X500Principal;)I

    move-result v0

    .line 496
    .local v0, "hash":I
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Ljava/lang/IntegralToString;->intToHexString(IZI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isDeletedSystemCertificate(Ljava/security/cert/X509Certificate;)Z
    .locals 1
    .param p1, "x"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->deletedDir:Ljava/io/File;

    invoke-direct {p0, v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private static isSelfIssuedCertificate(Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Z
    .locals 3
    .param p0, "cert"    # Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v0

    .line 392
    .local v0, "ctx":J
    invoke-static {v0, v1, v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_check_issued(JJ)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final isSystem(Ljava/lang/String;)Z
    .locals 1
    .param p0, "alias"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string v0, "system:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isTombstone(Ljava/io/File;)Z
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 170
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isUser(Ljava/lang/String;)Z
    .locals 1
    .param p0, "alias"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string v0, "user:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertificate(Ljava/io/File;)Ljava/security/cert/X509Certificate;
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 174
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v4

    .line 188
    :goto_0
    return-object v3

    .line 177
    :cond_0
    const/4 v1, 0x0

    .line 179
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    sget-object v3, Lcom/android/org/conscrypt/TrustedCertificateStore;->CERT_FACTORY:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v3, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 188
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 181
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v3, v4

    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 188
    .local v0, "e":Ljava/security/cert/CertificateException;
    :goto_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v3, v4

    goto :goto_0

    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catchall_0
    move-exception v3

    :goto_3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 183
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 181
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private removeUnnecessaryTombstones(Ljava/lang/String;)V
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isUser(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 579
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 581
    :cond_0
    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 582
    .local v0, "dotIndex":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 583
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 586
    :cond_1
    const-string v4, "user:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 587
    .local v2, "hash":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 589
    .local v3, "lastTombstoneIndex":I
    iget-object v4, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    add-int/lit8 v5, v3, 0x1

    invoke-direct {p0, v4, v2, v5}, Lcom/android/org/conscrypt/TrustedCertificateStore;->file(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 602
    :cond_2
    return-void

    .line 600
    .local v1, "file":Ljava/io/File;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    .line 592
    .end local v1    # "file":Ljava/io/File;
    :cond_4
    if-ltz v3, :cond_2

    .line 593
    iget-object v4, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    invoke-direct {p0, v4, v2, v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->file(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 594
    .restart local v1    # "file":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isTombstone(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 597
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_3

    .line 598
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static setDefaultUserDirectory(Ljava/io/File;)V
    .locals 2
    .param p0, "root"    # Ljava/io/File;

    .prologue
    .line 112
    new-instance v0, Ljava/io/File;

    const-string v1, "cacerts-added"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/conscrypt/TrustedCertificateStore;->defaultCaCertsAddedDir:Ljava/io/File;

    .line 113
    new-instance v0, Ljava/io/File;

    const-string v1, "cacerts-removed"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/conscrypt/TrustedCertificateStore;->defaultCaCertsDeletedDir:Ljava/io/File;

    .line 114
    return-void
.end method

.method private writeCertificate(Ljava/io/File;Ljava/security/cert/X509Certificate;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 194
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 195
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 196
    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 197
    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 198
    const/4 v1, 0x0

    .line 200
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    .end local v1    # "os":Ljava/io/OutputStream;
    .local v2, "os":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 203
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 205
    invoke-virtual {p1, v5, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 206
    return-void

    .line 203
    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception v3

    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    goto :goto_0
.end method


# virtual methods
.method public aliases()Ljava/util/Set;
    .locals 3
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
    .line 230
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 231
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "user:"

    iget-object v2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->addAliases(Ljava/util/Set;Ljava/lang/String;Ljava/io/File;)V

    .line 232
    const-string v1, "system:"

    iget-object v2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->addAliases(Ljava/util/Set;Ljava/lang/String;Ljava/io/File;)V

    .line 233
    return-object v0
.end method

.method public allSystemAliases()Ljava/util/Set;
    .locals 9
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
    .line 256
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 257
    .local v6, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "files":[Ljava/lang/String;
    if-nez v3, :cond_1

    .line 267
    :cond_0
    return-object v6

    .line 261
    :cond_1
    move-object v1, v3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v1, v4

    .line 262
    .local v2, "filename":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "system:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "alias":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-direct {p0, v0, v7}, Lcom/android/org/conscrypt/TrustedCertificateStore;->containsAlias(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 264
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public containsAlias(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->containsAlias(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public deleteCertificateEntry(Ljava/lang/String;)V
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 545
    if-nez p1, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->fileForAlias(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 549
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 552
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isSystem(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 553
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->readCertificate(Ljava/io/File;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 554
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_0

    .line 558
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->deletedDir:Ljava/io/File;

    invoke-direct {p0, v3, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v1

    .line 559
    .local v1, "deleted":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 564
    invoke-direct {p0, v1, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->writeCertificate(Ljava/io/File;Ljava/security/cert/X509Certificate;)V

    goto :goto_0

    .line 567
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "deleted":Ljava/io/File;
    :cond_2
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isUser(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 570
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 571
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->removeUnnecessaryTombstones(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 6
    .param p1, "c"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 367
    new-instance v1, Lcom/android/org/conscrypt/TrustedCertificateStore$3;

    invoke-direct {v1, p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore$3;-><init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)V

    .line 378
    .local v1, "selector":Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 379
    .local v0, "issuer":Ljavax/security/auth/x500/X500Principal;
    iget-object v4, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    const-class v5, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v4, v0, v1, v5}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 380
    .local v3, "user":Ljava/security/cert/X509Certificate;
    if-eqz v3, :cond_0

    .line 387
    .end local v3    # "user":Ljava/security/cert/X509Certificate;
    :goto_0
    return-object v3

    .line 383
    .restart local v3    # "user":Ljava/security/cert/X509Certificate;
    :cond_0
    iget-object v4, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    const-class v5, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v4, v0, v1, v5}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 384
    .local v2, "system":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isDeletedSystemCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v3, v2

    .line 385
    goto :goto_0

    .line 387
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "includeDeletedSystem"    # Z

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->fileForAlias(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 137
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isUser(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isTombstone(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move-object v0, v2

    .line 147
    :cond_1
    :goto_0
    return-object v0

    .line 140
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->readCertificate(Ljava/io/File;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 141
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isSystem(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isDeletedSystemCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    move-object v0, v2

    .line 145
    goto :goto_0
.end method

.method public getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 1
    .param p1, "c"    # Ljava/security/cert/Certificate;

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateAlias(Ljava/security/cert/Certificate;Z)Ljava/lang/String;
    .locals 5
    .param p1, "c"    # Ljava/security/cert/Certificate;
    .param p2, "includeDeletedSystem"    # Z

    .prologue
    const/4 v3, 0x0

    .line 283
    if-eqz p1, :cond_0

    instance-of v4, p1, Ljava/security/cert/X509Certificate;

    if-nez v4, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-object v3

    :cond_1
    move-object v2, p1

    .line 286
    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 287
    .local v2, "x":Ljava/security/cert/X509Certificate;
    iget-object v4, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    invoke-direct {p0, v4, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v1

    .line 288
    .local v1, "user":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 291
    :cond_2
    if-nez p2, :cond_3

    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isDeletedSystemCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 294
    :cond_3
    iget-object v4, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    invoke-direct {p0, v4, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v0

    .line 295
    .local v0, "system":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "system:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getCertificateChain(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .locals 3
    .param p1, "leaf"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
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
    .line 428
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 430
    .local v1, "chain":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/android/org/conscrypt/OpenSSLX509Certificate;>;"
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->convertToOpenSSLIfNeeded(Ljava/security/cert/X509Certificate;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v0

    .line 431
    .local v0, "cert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 434
    :goto_0
    invoke-static {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isSelfIssuedCertificate(Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 444
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2

    .line 437
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->convertToOpenSSLIfNeeded(Ljava/security/cert/X509Certificate;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v0

    .line 438
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 441
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->containsAlias(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-object v1

    .line 218
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->fileForAlias(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 219
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 223
    .local v2, "time":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 226
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public getTrustAnchor(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 6
    .param p1, "c"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 337
    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateStore$2;

    invoke-direct {v0, p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore$2;-><init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)V

    .line 343
    .local v0, "selector":Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    const-class v5, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v3, v4, v0, v5}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 347
    .local v2, "user":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_0

    .line 357
    .end local v2    # "user":Ljava/security/cert/X509Certificate;
    :goto_0
    return-object v2

    .line 350
    .restart local v2    # "user":Ljava/security/cert/X509Certificate;
    :cond_0
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    const-class v5, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v3, v4, v0, v5}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 354
    .local v1, "system":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isDeletedSystemCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v2, v1

    .line 355
    goto :goto_0

    .line 357
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public installCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 6
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 510
    if-nez p1, :cond_0

    .line 511
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "cert == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 513
    :cond_0
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    invoke-direct {p0, v3, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v1

    .line 514
    .local v1, "system":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 515
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->deletedDir:Ljava/io/File;

    invoke-direct {p0, v3, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v0

    .line 516
    .local v0, "deleted":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 519
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 520
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not remove "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 528
    .end local v0    # "deleted":Ljava/io/File;
    :cond_1
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    invoke-direct {p0, v3, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v2

    .line 529
    .local v2, "user":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 535
    .end local v2    # "user":Ljava/io/File;
    :cond_2
    :goto_0
    return-void

    .line 534
    .restart local v2    # "user":Ljava/io/File;
    :cond_3
    invoke-direct {p0, v2, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->writeCertificate(Ljava/io/File;Ljava/security/cert/X509Certificate;)V

    goto :goto_0
.end method

.method public isUserAddedCertificate(Ljava/security/cert/X509Certificate;)Z
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    invoke-direct {p0, v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public userAliases()Ljava/util/Set;
    .locals 3
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
    .line 237
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 238
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "user:"

    iget-object v2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->addAliases(Ljava/util/Set;Ljava/lang/String;Ljava/io/File;)V

    .line 239
    return-object v0
.end method
