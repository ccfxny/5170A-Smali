.class public final Lcom/android/org/conscrypt/ChainStrengthAnalyzer;
.super Ljava/lang/Object;
.source "ChainStrengthAnalyzer.java"


# static fields
.field private static final MIN_MODULUS:I = 0x400

.field private static final OID_BLACKLIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1.2.840.113549.1.1.4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->OID_BLACKLIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final check([Ljava/security/cert/X509Certificate;)V
    .locals 4
    .param p0, "chain"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "arr$":[Ljava/security/cert/X509Certificate;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 30
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v1}, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->checkCert(Ljava/security/cert/X509Certificate;)V

    .line 29
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    :cond_0
    return-void
.end method

.method private static final checkCert(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p0}, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->checkModulusLength(Ljava/security/cert/X509Certificate;)V

    .line 36
    invoke-static {p0}, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->checkNotMD5(Ljava/security/cert/X509Certificate;)V

    .line 37
    return-void
.end method

.method private static final checkModulusLength(Ljava/security/cert/X509Certificate;)V
    .locals 4
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 41
    .local v1, "pubkey":Ljava/security/PublicKey;
    instance-of v2, v1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v2, :cond_0

    .line 42
    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    .end local v1    # "pubkey":Ljava/security/PublicKey;
    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 43
    .local v0, "modulusLength":I
    const/16 v2, 0x400

    if-ge v0, v2, :cond_0

    .line 44
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "Modulus is < 1024 bits"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    .end local v0    # "modulusLength":I
    :cond_0
    return-void
.end method

.method private static final checkNotMD5(Ljava/security/cert/X509Certificate;)V
    .locals 7
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "oid":Ljava/lang/String;
    sget-object v0, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->OID_BLACKLIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 52
    .local v1, "blacklisted":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    new-instance v5, Ljava/security/cert/CertificateException;

    const-string v6, "Signature uses an insecure hash function"

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 51
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "blacklisted":Ljava/lang/String;
    :cond_1
    return-void
.end method
