.class public Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;
.super Ljava/security/cert/CertificateFactorySpi;
.source "OpenSSLX509CertificateFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;,
        Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    }
.end annotation


# static fields
.field private static final PKCS7_MARKER:[B

.field private static final PUSHBACK_SIZE:I = 0x40


# instance fields
.field private certificateParser:Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser",
            "<",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private crlParser:Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser",
            "<",
            "Lcom/android/org/conscrypt/OpenSSLX509CRL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->PKCS7_MARKER:[B

    return-void

    :array_0
    .array-data 1
        0x2dt
        0x2dt
        0x2dt
        0x2dt
        0x2dt
        0x42t
        0x45t
        0x47t
        0x49t
        0x4et
        0x20t
        0x50t
        0x4bt
        0x43t
        0x53t
        0x37t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/security/cert/CertificateFactorySpi;-><init>()V

    .line 215
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$1;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$1;-><init>(Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->certificateParser:Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;

    .line 242
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$2;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$2;-><init>(Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->crlParser:Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;

    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->PKCS7_MARKER:[B

    return-object v0
.end method


# virtual methods
.method public engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 2
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->crlParser:Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;

    invoke-virtual {v1, p1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItem(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/CRL;
    :try_end_0
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-direct {v1, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 2
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 299
    if-nez p1, :cond_0

    .line 300
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 304
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->crlParser:Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;

    invoke-virtual {v1, p1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItems(Ljava/io/InputStream;)Ljava/util/Collection;
    :try_end_0
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-direct {v1, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 1
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->fromEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .locals 1
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->fromEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Ljava/security/cert/CertPath;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 329
    .local p1, "certificates":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 330
    .local v1, "filtered":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 331
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 333
    .local v0, "c":Ljava/security/cert/Certificate;
    instance-of v3, v0, Ljava/security/cert/X509Certificate;

    if-nez v3, :cond_0

    .line 334
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate not X.509 type at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 337
    :cond_0
    check-cast v0, Ljava/security/cert/X509Certificate;

    .end local v0    # "c":Ljava/security/cert/Certificate;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 340
    :cond_1
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLX509CertPath;

    invoke-direct {v3, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    return-object v3
.end method

.method public engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 2
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->certificateParser:Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;

    invoke-virtual {v1, p1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItem(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;
    :try_end_0
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 2
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 282
    :try_start_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->certificateParser:Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;

    invoke-virtual {v1, p1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItems(Ljava/io/InputStream;)Ljava/util/Collection;
    :try_end_0
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public engineGetCertPathEncodings()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->getEncodingsIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
