.class Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$1;
.super Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;
.source "OpenSSLX509CertificateFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser",
        "<",
        "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;)V
    .locals 1

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$1;->this$0:Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;-><init>(Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$1;)V

    return-void
.end method


# virtual methods
.method public fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public fromX509DerInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509DerInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fromX509DerInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$1;->fromX509DerInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public fromX509PemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509PemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fromX509PemInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$1;->fromX509PemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v0

    return-object v0
.end method
