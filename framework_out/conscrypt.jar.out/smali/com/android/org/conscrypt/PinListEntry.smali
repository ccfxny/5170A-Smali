.class public Lcom/android/org/conscrypt/PinListEntry;
.super Ljava/lang/Object;
.source "PinListEntry.java"


# instance fields
.field private final certStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field private final cn:Ljava/lang/String;

.field private final enforcing:Z

.field private final pinnedFingerprints:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/org/conscrypt/TrustedCertificateStore;)V
    .locals 3
    .param p1, "entry"    # Ljava/lang/String;
    .param p2, "store"    # Lcom/android/org/conscrypt/TrustedCertificateStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/PinEntryException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/org/conscrypt/PinListEntry;->pinnedFingerprints:Ljava/util/Set;

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "entry == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_0
    iput-object p2, p0, Lcom/android/org/conscrypt/PinListEntry;->certStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    .line 65
    const-string v1, "[=,|]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "values":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 68
    new-instance v1, Lcom/android/org/conscrypt/PinEntryException;

    const-string v2, "Received malformed pin entry"

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/PinEntryException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/org/conscrypt/PinListEntry;->cn:Ljava/lang/String;

    .line 72
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/android/org/conscrypt/PinListEntry;->enforcementValueFromString(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/org/conscrypt/PinListEntry;->enforcing:Z

    .line 74
    const/4 v1, 0x2

    array-length v2, v0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/PinListEntry;->addPins([Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private addPins([Ljava/lang/String;)V
    .locals 5
    .param p1, "pins"    # [Ljava/lang/String;

    .prologue
    .line 122
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 123
    .local v3, "pin":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/org/conscrypt/PinListEntry;->validatePin(Ljava/lang/String;)V

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v3    # "pin":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/org/conscrypt/PinListEntry;->pinnedFingerprints:Ljava/util/Set;

    invoke-static {v4, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method private chainContainsUserCert(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v2, 0x0

    .line 142
    iget-object v3, p0, Lcom/android/org/conscrypt/PinListEntry;->certStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    if-nez v3, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v2

    .line 145
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 146
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    iget-object v3, p0, Lcom/android/org/conscrypt/PinListEntry;->certStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v3, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isUserAddedCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 147
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static enforcementValueFromString(Ljava/lang/String;)Z
    .locals 2
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/PinEntryException;
        }
    .end annotation

    .prologue
    .line 78
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    .line 80
    :cond_0
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :cond_1
    new-instance v0, Lcom/android/org/conscrypt/PinEntryException;

    const-string v1, "Enforcement status is not a valid value"

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/PinEntryException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getFingerprint(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 5
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 112
    :try_start_0
    const-string v4, "SHA512"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 113
    .local v0, "dgst":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    .line 114
    .local v2, "encoded":[B
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 115
    .local v3, "fingerprint":[B
    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/IntegralToString;->bytesToHexString([BZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 116
    .end local v0    # "dgst":Ljava/security/MessageDigest;
    .end local v2    # "encoded":[B
    .end local v3    # "fingerprint":[B
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method private logPinFailure(Ljava/util/List;Z)V
    .locals 2
    .param p2, "containsUserCert"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    iget-object v0, p0, Lcom/android/org/conscrypt/PinListEntry;->cn:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/org/conscrypt/PinListEntry;->enforcing:Z

    invoke-static {v0, p2, v1, p1}, Lcom/android/org/conscrypt/PinFailureLogger;->log(Ljava/lang/String;ZZLjava/util/List;)V

    .line 155
    return-void
.end method

.method private static validatePin(Ljava/lang/String;)V
    .locals 3
    .param p0, "pin"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x80

    if-eq v1, v2, :cond_0

    .line 131
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Pin is not a valid length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_0
    :try_start_0
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Pin is not a valid hex string"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getCommonName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/org/conscrypt/PinListEntry;->cn:Ljava/lang/String;

    return-object v0
.end method

.method public getEnforcing()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/org/conscrypt/PinListEntry;->enforcing:Z

    return v0
.end method

.method public isChainValid(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v4, 0x1

    .line 97
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/PinListEntry;->chainContainsUserCert(Ljava/util/List;)Z

    move-result v1

    .line 98
    .local v1, "containsUserCert":Z
    if-nez v1, :cond_2

    .line 99
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 100
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lcom/android/org/conscrypt/PinListEntry;->getFingerprint(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "fingerprint":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/org/conscrypt/PinListEntry;->pinnedFingerprints:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 107
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "fingerprint":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    return v4

    .line 106
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/android/org/conscrypt/PinListEntry;->logPinFailure(Ljava/util/List;Z)V

    .line 107
    iget-boolean v5, p0, Lcom/android/org/conscrypt/PinListEntry;->enforcing:Z

    if-eqz v5, :cond_1

    if-nez v1, :cond_1

    const/4 v4, 0x0

    goto :goto_0
.end method
