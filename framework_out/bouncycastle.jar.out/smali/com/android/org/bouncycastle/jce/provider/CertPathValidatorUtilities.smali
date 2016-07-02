.class public Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;
.super Ljava/lang/Object;
.source "CertPathValidatorUtilities.java"


# static fields
.field protected static final ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"

.field protected static final AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

.field protected static final BASIC_CONSTRAINTS:Ljava/lang/String;

.field protected static final CERTIFICATE_POLICIES:Ljava/lang/String;

.field protected static final CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

.field protected static final CRL_NUMBER:Ljava/lang/String;

.field protected static final CRL_SIGN:I = 0x6

.field protected static final CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

.field protected static final DELTA_CRL_INDICATOR:Ljava/lang/String;

.field protected static final FRESHEST_CRL:Ljava/lang/String;

.field protected static final INHIBIT_ANY_POLICY:Ljava/lang/String;

.field protected static final ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

.field protected static final KEY_CERT_SIGN:I = 0x5

.field protected static final KEY_USAGE:Ljava/lang/String;

.field protected static final NAME_CONSTRAINTS:Ljava/lang/String;

.field protected static final POLICY_CONSTRAINTS:Ljava/lang/String;

.field protected static final POLICY_MAPPINGS:Ljava/lang/String;

.field protected static final SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

.field protected static final crlReasons:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 85
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    .line 87
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->certificatePolicies:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 88
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->basicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->policyMappings:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->nameConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->KEY_USAGE:Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->policyConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->freshestCRL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->FRESHEST_CRL:Ljava/lang/String;

    .line 98
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 99
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    .line 103
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->cRLNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_NUMBER:Ljava/lang/String;

    .line 111
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "unspecified"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "keyCompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cACompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "affiliationChanged"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "superseded"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cessationOfOperation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "certificateHold"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "removeFromCRL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "privilegeWithdrawn"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "aACompromise"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static addAdditionalStoreFromLocation(Ljava/lang/String;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    .locals 1
    .param p0, "location"    # Ljava/lang/String;
    .param p1, "pkixParams"    # Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    .prologue
    .line 661
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isAdditionalLocationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    :cond_0
    return-void
.end method

.method protected static addAdditionalStoresFromAltNames(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    .locals 5
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "pkixParams"    # Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerAlternativeNames()Ljava/util/Collection;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 252
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerAlternativeNames()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 253
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 257
    .local v1, "list":Ljava/util/List;
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v4}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 261
    .local v2, "temp":Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoreFromLocation(Ljava/lang/String;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V

    goto :goto_0

    .line 265
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;
    .end local v2    # "temp":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected static addAdditionalStoresFromCRLDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    .locals 9
    .param p0, "crldp"    # Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .param p1, "pkixParams"    # Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 799
    if-eqz p0, :cond_2

    .line 801
    const/4 v1, 0x0

    .line 804
    .local v1, "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 811
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, v1

    if-ge v4, v7, :cond_2

    .line 813
    aget-object v7, v1, v4

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    .line 815
    .local v0, "dpn":Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    if-eqz v0, :cond_1

    .line 817
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v7

    if-nez v7, :cond_1

    .line 819
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    .line 822
    .local v3, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v7, v3

    if-ge v5, v7, :cond_1

    .line 824
    aget-object v7, v3, v5

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_0

    .line 826
    aget-object v7, v3, v5

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERIA5String;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v6

    .line 828
    .local v6, "location":Ljava/lang/String;
    invoke-static {v6, p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoreFromLocation(Ljava/lang/String;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V

    .line 822
    .end local v6    # "location":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 806
    .end local v0    # "dpn":Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .end local v3    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v4    # "i":I
    .end local v5    # "j":I
    :catch_0
    move-exception v2

    .line 808
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Distribution points could not be read."

    invoke-direct {v7, v8, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 811
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "dpn":Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .restart local v4    # "i":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 837
    .end local v0    # "dpn":Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .end local v1    # "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v4    # "i":I
    :cond_2
    return-void
.end method

.method protected static findCertificates(Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;
    .locals 7
    .param p0, "certSelect"    # Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .param p1, "certStores"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 724
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 725
    .local v1, "certs":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 727
    .local v3, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 729
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "obj":Ljava/lang/Object;
    move-object v0, v4

    .line 748
    check-cast v0, Ljava/security/cert/CertStore;

    .line 752
    .local v0, "certStore":Ljava/security/cert/CertStore;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/security/cert/CertStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 754
    :catch_0
    move-exception v2

    .line 756
    .local v2, "e":Ljava/security/cert/CertStoreException;
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Problem while picking certificates from certificate store."

    invoke-direct {v5, v6, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 762
    .end local v0    # "certStore":Ljava/security/cert/CertStore;
    .end local v2    # "e":Ljava/security/cert/CertStoreException;
    .end local v4    # "obj":Ljava/lang/Object;
    :cond_0
    return-object v1
.end method

.method protected static findIssuerCerts(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;)Ljava/util/Collection;
    .locals 9
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "pkixParams"    # Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1385
    new-instance v0, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    .line 1386
    .local v0, "certSelect":Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1389
    .local v1, "certs":Ljava/util/Set;
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1401
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1403
    .local v6, "matches":Ljava/util/List;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getCertStores()Ljava/util/List;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1404
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getStores()Ljava/util/List;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1405
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getAdditionalStores()Ljava/util/List;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1407
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 1414
    .local v5, "iter":Ljava/util/Iterator;
    const/4 v4, 0x0

    .line 1415
    .local v4, "issuer":Ljava/security/cert/X509Certificate;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1417
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "issuer":Ljava/security/cert/X509Certificate;
    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 1420
    .restart local v4    # "issuer":Ljava/security/cert/X509Certificate;
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1391
    .end local v4    # "issuer":Ljava/security/cert/X509Certificate;
    .end local v5    # "iter":Ljava/util/Iterator;
    .end local v6    # "matches":Ljava/util/List;
    :catch_0
    move-exception v3

    .line 1393
    .local v3, "ex":Ljava/io/IOException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Subject criteria for certificate selector to find issuer certificate could not be set."

    invoke-direct {v7, v8, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1409
    .end local v3    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 1411
    .local v2, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Issuer certificate cannot be searched."

    invoke-direct {v7, v8, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1422
    .end local v2    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v4    # "issuer":Ljava/security/cert/X509Certificate;
    .restart local v5    # "iter":Ljava/util/Iterator;
    .restart local v6    # "matches":Ljava/util/List;
    :cond_0
    return-object v1
.end method

.method protected static findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/security/cert/TrustAnchor;
    .locals 1
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "trustAnchors"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    return-object v0
.end method

.method protected static findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    .locals 10
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "trustAnchors"    # Ljava/util/Set;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 164
    const/4 v6, 0x0

    .line 165
    .local v6, "trust":Ljava/security/cert/TrustAnchor;
    const/4 v7, 0x0

    .line 166
    .local v7, "trustPublicKey":Ljava/security/PublicKey;
    const/4 v4, 0x0

    .line 168
    .local v4, "invalidKeyEx":Ljava/lang/Exception;
    new-instance v2, Ljava/security/cert/X509CertSelector;

    invoke-direct {v2}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 169
    .local v2, "certSelectX509":Ljava/security/cert/X509CertSelector;
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 173
    .local v1, "certIssuer":Ljavax/security/auth/x500/X500Principal;
    :try_start_0
    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 180
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 181
    .local v5, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v6, :cond_5

    .line 183
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "trust":Ljava/security/cert/TrustAnchor;
    check-cast v6, Ljava/security/cert/TrustAnchor;

    .line 184
    .restart local v6    # "trust":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 186
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 188
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v8

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    .line 220
    :goto_1
    if-eqz v7, :cond_0

    .line 224
    :try_start_1
    invoke-static {p0, v7, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v3

    .line 228
    .local v3, "ex":Ljava/lang/Exception;
    move-object v4, v3

    .line 229
    const/4 v6, 0x0

    .line 230
    const/4 v7, 0x0

    .line 231
    goto :goto_0

    .line 175
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v5    # "iter":Ljava/util/Iterator;
    :catch_1
    move-exception v3

    .line 177
    .local v3, "ex":Ljava/io/IOException;
    new-instance v8, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v9, "Cannot set subject search criteria for trust anchor."

    invoke-direct {v8, v9, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 192
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v5    # "iter":Ljava/util/Iterator;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 195
    :cond_2
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 200
    :try_start_2
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "caName":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v1, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 203
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    goto :goto_1

    .line 207
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 210
    .end local v0    # "caName":Ljavax/security/auth/x500/X500Principal;
    :catch_2
    move-exception v3

    .line 212
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v6, 0x0

    .line 213
    goto :goto_1

    .line 217
    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 235
    :cond_5
    if-nez v6, :cond_6

    if-eqz v4, :cond_6

    .line 237
    new-instance v8, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v9, "TrustAnchor found but certificate validation failed."

    invoke-direct {v8, v9, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 240
    :cond_6
    return-object v6
.end method

.method protected static getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 5
    .param p0, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 360
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 362
    .local v0, "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    .line 364
    .local v2, "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 366
    .end local v0    # "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v2    # "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Subject public key cannot be decoded."

    invoke-direct {v3, v4, v1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static getCRLIssuersFromDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/util/Collection;Ljava/security/cert/X509CRLSelector;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    .locals 8
    .param p0, "dp"    # Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .param p1, "issuerPrincipals"    # Ljava/util/Collection;
    .param p2, "selector"    # Ljava/security/cert/X509CRLSelector;
    .param p3, "pkixParams"    # Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 865
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 867
    .local v3, "issuers":Ljava/util/List;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 869
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 871
    .local v2, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_3

    .line 873
    aget-object v6, v2, v5

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 877
    :try_start_0
    new-instance v6, Ljavax/security/auth/x500/X500Principal;

    aget-object v7, v2, v5

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 880
    :catch_0
    move-exception v0

    .line 882
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "CRL issuer information from distribution point cannot be decoded."

    invoke-direct {v6, v7, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 895
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v5    # "j":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v6

    if-nez v6, :cond_2

    .line 897
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "CRL issuer is omitted from distribution point but no distributionPoint field present."

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 901
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 903
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/security/auth/x500/X500Principal;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 950
    .end local v4    # "it":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 951
    .restart local v4    # "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 955
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 957
    :catch_1
    move-exception v1

    .line 959
    .local v1, "ex":Ljava/io/IOException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Cannot decode CRL issuer information."

    invoke-direct {v6, v7, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 963
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_4
    return-void
.end method

.method protected static getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V
    .locals 10
    .param p0, "validDate"    # Ljava/util/Date;
    .param p1, "crl"    # Ljava/security/cert/X509CRL;
    .param p2, "cert"    # Ljava/lang/Object;
    .param p3, "certStatus"    # Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 985
    const/4 v1, 0x0

    .line 990
    .local v1, "crl_entry":Ljava/security/cert/X509CRLEntry;
    :try_start_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->isIndirectCRL(Ljava/security/cert/X509CRL;)Z
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 997
    .local v4, "isIndirect":Z
    if-eqz v4, :cond_6

    .line 999
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v1

    .line 1001
    if-nez v1, :cond_1

    .line 1072
    :cond_0
    :goto_0
    return-void

    .line 992
    .end local v4    # "isIndirect":Z
    :catch_0
    move-exception v3

    .line 994
    .local v3, "exception":Ljava/security/cert/CRLException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Failed check for indirect CRL."

    invoke-direct {v6, v7, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1006
    .end local v3    # "exception":Ljava/security/cert/CRLException;
    .restart local v4    # "isIndirect":Z
    :cond_1
    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 1008
    .local v0, "certIssuer":Ljavax/security/auth/x500/X500Principal;
    if-nez v0, :cond_2

    .line 1010
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 1013
    :cond_2
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1032
    .end local v0    # "certIssuer":Ljavax/security/auth/x500/X500Principal;
    :cond_3
    const/4 v5, 0x0

    .line 1033
    .local v5, "reasonCode":Lcom/android/org/bouncycastle/asn1/DEREnumerated;
    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->hasExtensions()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1037
    :try_start_1
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->reasonCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 1052
    :cond_4
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    .line 1061
    :cond_5
    if-eqz v5, :cond_7

    .line 1063
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    invoke-virtual {p3, v6}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 1070
    :goto_1
    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {p3, v6}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setRevocationDate(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 1018
    .end local v5    # "reasonCode":Lcom/android/org/bouncycastle/asn1/DEREnumerated;
    :cond_6
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1024
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v1

    .line 1026
    if-nez v1, :cond_3

    goto/16 :goto_0

    .line 1042
    .restart local v5    # "reasonCode":Lcom/android/org/bouncycastle/asn1/DEREnumerated;
    :catch_1
    move-exception v2

    .line 1044
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Reason code CRL entry extension could not be decoded."

    invoke-direct {v6, v7, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1068
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    const/4 v6, 0x0

    invoke-virtual {p3, v6}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    goto :goto_1
.end method

.method protected static getCompleteCRLs(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)Ljava/util/Set;
    .locals 11
    .param p0, "dp"    # Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "currentDate"    # Ljava/util/Date;
    .param p3, "paramsPKIX"    # Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1190
    new-instance v3, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 1193
    .local v3, "crlselect":Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;
    :try_start_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1194
    .local v5, "issuers":Ljava/util/Set;
    instance-of v7, p1, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    if-eqz v7, :cond_1

    .line 1196
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    move-object v7, v0

    invoke-interface {v7}, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1203
    :goto_0
    invoke-static {p0, v5, v3, p3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCRLIssuersFromDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/util/Collection;Ljava/security/cert/X509CRLSelector;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    instance-of v7, p1, Ljava/security/cert/X509Certificate;

    if-eqz v7, :cond_2

    move-object v7, p1

    .line 1212
    check-cast v7, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3, v7}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 1220
    :cond_0
    :goto_1
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setCompleteCRLEnabled(Z)V

    .line 1222
    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    invoke-virtual {v7, v3, p3, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/Date;)Ljava/util/Set;

    move-result-object v2

    .line 1224
    .local v2, "crls":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1226
    instance-of v7, p1, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    if-eqz v7, :cond_3

    move-object v1, p1

    .line 1228
    check-cast v1, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    .line 1230
    .local v1, "aCert":Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No CRLs found for issuer \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v9

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1201
    .end local v1    # "aCert":Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;
    .end local v2    # "crls":Ljava/util/Set;
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1205
    .end local v5    # "issuers":Ljava/util/Set;
    :catch_0
    move-exception v4

    .line 1207
    .local v4, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Could not get issuer information from distribution point."

    invoke-direct {v7, v8, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1214
    .end local v4    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v5    # "issuers":Ljava/util/Set;
    :cond_2
    instance-of v7, p1, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    if-eqz v7, :cond_0

    move-object v7, p1

    .line 1216
    check-cast v7, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    invoke-virtual {v3, v7}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setAttrCertificateChecking(Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;)V

    goto :goto_1

    .restart local v2    # "crls":Ljava/util/Set;
    :cond_3
    move-object v6, p1

    .line 1234
    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 1236
    .local v6, "xCert":Ljava/security/cert/X509Certificate;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No CRLs found for issuer \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1239
    .end local v6    # "xCert":Ljava/security/cert/X509Certificate;
    :cond_4
    return-object v2
.end method

.method protected static getDeltaCRLs(Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509CRL;)Ljava/util/Set;
    .locals 12
    .param p0, "currentDate"    # Ljava/util/Date;
    .param p1, "paramsPKIX"    # Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .param p2, "completeCRL"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1089
    new-instance v2, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 1094
    .local v2, "deltaSelect":Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;
    :try_start_0
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->addIssuerName([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1102
    const/4 v0, 0x0

    .line 1105
    .local v0, "completeCRLNumber":Ljava/math/BigInteger;
    :try_start_1
    sget-object v9, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_NUMBER:Ljava/lang/String;

    invoke-static {p2, v9}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 1107
    .local v3, "derObject":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-eqz v3, :cond_0

    .line 1109
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1119
    :cond_0
    const/4 v5, 0x0

    .line 1122
    .local v5, "idp":[B
    :try_start_2
    sget-object v9, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 1133
    if-nez v0, :cond_2

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    .line 1136
    invoke-virtual {v2, v5}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setIssuingDistributionPoint([B)V

    .line 1137
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setIssuingDistributionPointEnabled(Z)V

    .line 1140
    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setMaxBaseCRLNumber(Ljava/math/BigInteger;)V

    .line 1143
    sget-object v9, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    invoke-virtual {v9, v2, p1, p0}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/Date;)Ljava/util/Set;

    move-result-object v8

    .line 1145
    .local v8, "temp":Ljava/util/Set;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1147
    .local v7, "result":Ljava/util/Set;
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "it":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1149
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRL;

    .line 1151
    .local v1, "crl":Ljava/security/cert/X509CRL;
    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isDeltaCRL(Ljava/security/cert/X509CRL;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1153
    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1097
    .end local v0    # "completeCRLNumber":Ljava/math/BigInteger;
    .end local v1    # "crl":Ljava/security/cert/X509CRL;
    .end local v3    # "derObject":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v5    # "idp":[B
    .end local v6    # "it":Ljava/util/Iterator;
    .end local v7    # "result":Ljava/util/Set;
    .end local v8    # "temp":Ljava/util/Set;
    :catch_0
    move-exception v4

    .line 1099
    .local v4, "e":Ljava/io/IOException;
    new-instance v9, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v10, "Cannot extract issuer from CRL."

    invoke-direct {v9, v10, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 1112
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "completeCRLNumber":Ljava/math/BigInteger;
    :catch_1
    move-exception v4

    .line 1114
    .local v4, "e":Ljava/lang/Exception;
    new-instance v9, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v10, "CRL number extension could not be extracted from CRL."

    invoke-direct {v9, v10, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 1124
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "derObject":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .restart local v5    # "idp":[B
    :catch_2
    move-exception v4

    .line 1126
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v9, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v10, "Issuing distribution point extension value could not be read."

    invoke-direct {v9, v10, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 1133
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    goto :goto_0

    .line 1157
    .restart local v6    # "it":Ljava/util/Iterator;
    .restart local v7    # "result":Ljava/util/Set;
    .restart local v8    # "temp":Ljava/util/Set;
    :cond_3
    return-object v7
.end method

.method protected static getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;
    .locals 2
    .param p0, "cert"    # Ljava/lang/Object;

    .prologue
    .line 276
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    .line 278
    check-cast p0, Ljava/security/cert/X509Certificate;

    .end local p0    # "cert":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 282
    :goto_0
    return-object v0

    .restart local p0    # "cert":Ljava/lang/Object;
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    .end local p0    # "cert":Ljava/lang/Object;
    invoke-interface {p0}, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    goto :goto_0
.end method

.method protected static getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2
    .param p0, "ext"    # Ljava/security/cert/X509Extension;
    .param p1, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-interface {p0, p1}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 322
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    .line 324
    const/4 v1, 0x0

    .line 327
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getObject(Ljava/lang/String;[B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    goto :goto_0
.end method

.method protected static getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;
    .locals 1
    .param p0, "crl"    # Ljava/security/cert/X509CRL;

    .prologue
    .line 351
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method protected static getNextWorkingKey(Ljava/util/List;I)Ljava/security/PublicKey;
    .locals 14
    .param p0, "certs"    # Ljava/util/List;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1330
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 1331
    .local v0, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    .line 1332
    .local v9, "pubKey":Ljava/security/PublicKey;
    instance-of v10, v9, Ljava/security/interfaces/DSAPublicKey;

    if-nez v10, :cond_1

    move-object v2, v9

    .line 1361
    :cond_0
    :goto_0
    return-object v2

    :cond_1
    move-object v2, v9

    .line 1336
    check-cast v2, Ljava/security/interfaces/DSAPublicKey;

    .line 1337
    .local v2, "dsaPubKey":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v10

    if-nez v10, :cond_0

    .line 1341
    add-int/lit8 v5, p1, 0x1

    .local v5, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_4

    .line 1343
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 1344
    .local v7, "parentCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    .line 1345
    instance-of v10, v9, Ljava/security/interfaces/DSAPublicKey;

    if-nez v10, :cond_2

    .line 1347
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "DSA parameters cannot be inherited from previous certificate."

    invoke-direct {v10, v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_2
    move-object v8, v9

    .line 1350
    check-cast v8, Ljava/security/interfaces/DSAPublicKey;

    .line 1351
    .local v8, "prevDSAPubKey":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v8}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v10

    if-nez v10, :cond_3

    .line 1341
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1355
    :cond_3
    invoke-interface {v8}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    .line 1356
    .local v1, "dsaParams":Ljava/security/interfaces/DSAParams;
    new-instance v3, Ljava/security/spec/DSAPublicKeySpec;

    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v10

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v11

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v12

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v13

    invoke-direct {v3, v10, v11, v12, v13}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1360
    .local v3, "dsaPubKeySpec":Ljava/security/spec/DSAPublicKeySpec;
    :try_start_0
    const-string v10, "DSA"

    const-string v11, "BC"

    invoke-static {v10, v11}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    .line 1361
    .local v6, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v6, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1363
    .end local v6    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v4

    .line 1365
    .local v4, "exception":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1368
    .end local v1    # "dsaParams":Ljava/security/interfaces/DSAParams;
    .end local v3    # "dsaPubKeySpec":Ljava/security/spec/DSAPublicKeySpec;
    .end local v4    # "exception":Ljava/lang/Exception;
    .end local v7    # "parentCert":Ljava/security/cert/X509Certificate;
    .end local v8    # "prevDSAPubKey":Ljava/security/interfaces/DSAPublicKey;
    :cond_4
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "DSA parameters cannot be inherited from previous certificate."

    invoke-direct {v10, v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private static getObject(Ljava/lang/String;[B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 6
    .param p0, "oid"    # Ljava/lang/String;
    .param p1, "ext"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 337
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 338
    .local v0, "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 340
    .local v2, "octs":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    .end local v0    # "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 341
    .restart local v0    # "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 343
    .end local v0    # "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v2    # "octs":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :catch_0
    move-exception v1

    .line 345
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception processing extension "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static final getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    .locals 7
    .param p0, "qualifiers"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 382
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 384
    .local v4, "pq":Ljava/util/Set;
    if-nez p0, :cond_1

    .line 410
    :cond_0
    return-object v4

    .line 389
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 390
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 392
    .local v0, "aOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .line 394
    .local v2, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 398
    :try_start_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 400
    new-instance v5, Ljava/security/cert/PolicyQualifierInfo;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/PolicyQualifierInfo;-><init>([B)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_0

    .line 402
    :catch_0
    move-exception v3

    .line 404
    .local v3, "ex":Ljava/io/IOException;
    new-instance v5, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v6, "Policy qualifier info cannot be decoded."

    invoke-direct {v5, v6, v3}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private static getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "cert"    # Ljava/lang/Object;

    .prologue
    .line 968
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    .line 970
    check-cast p0, Ljava/security/cert/X509Certificate;

    .end local p0    # "cert":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    .line 974
    :goto_0
    return-object v0

    .restart local p0    # "cert":Ljava/lang/Object;
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    .end local p0    # "cert":Ljava/lang/Object;
    invoke-interface {p0}, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method

.method protected static getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    .locals 1
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 300
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method protected static getValidCertDateFromValidityModel(Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;
    .locals 5
    .param p0, "paramsPKIX"    # Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1246
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getValidityModel()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 1249
    if-gtz p2, :cond_0

    .line 1251
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidDate(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;

    move-result-object v3

    .line 1302
    :goto_0
    return-object v3

    .line 1256
    :cond_0
    add-int/lit8 v3, p2, -0x1

    if-nez v3, :cond_3

    .line 1258
    const/4 v0, 0x0

    .line 1261
    .local v0, "dateOfCertgen":Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    sget-object v4, Lcom/android/org/bouncycastle/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_dateOfCertGen:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    .line 1262
    .local v2, "extBytes":[B
    if-eqz v2, :cond_1

    .line 1264
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1277
    :cond_1
    if-eqz v0, :cond_2

    .line 1281
    :try_start_1
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    goto :goto_0

    .line 1267
    .end local v2    # "extBytes":[B
    :catch_0
    move-exception v1

    .line 1269
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Date of cert gen extension could not be read."

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1272
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1274
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Date of cert gen extension could not be read."

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1283
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "extBytes":[B
    :catch_2
    move-exception v1

    .line 1285
    .local v1, "e":Ljava/text/ParseException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Date from date of cert gen extension could not be parsed."

    invoke-direct {v3, v4, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1290
    .end local v1    # "e":Ljava/text/ParseException;
    :cond_2
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v3

    goto :goto_0

    .line 1295
    .end local v0    # "dateOfCertgen":Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;
    .end local v2    # "extBytes":[B
    :cond_3
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v3

    goto :goto_0

    .line 1302
    :cond_4
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidDate(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;

    move-result-object v3

    goto :goto_0
.end method

.method protected static getValidDate(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;
    .locals 1
    .param p0, "paramsPKIX"    # Ljava/security/cert/PKIXParameters;

    .prologue
    .line 288
    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 290
    .local v0, "validDate":Ljava/util/Date;
    if-nez v0, :cond_0

    .line 292
    new-instance v0, Ljava/util/Date;

    .end local v0    # "validDate":Ljava/util/Date;
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 295
    .restart local v0    # "validDate":Ljava/util/Date;
    :cond_0
    return-object v0
.end method

.method protected static isAnyPolicy(Ljava/util/Set;)Z
    .locals 1
    .param p0, "policySet"    # Ljava/util/Set;

    .prologue
    .line 655
    if-eqz p0, :cond_0

    const-string v0, "2.5.29.32.0"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDeltaCRL(Ljava/security/cert/X509CRL;)Z
    .locals 2
    .param p0, "crl"    # Ljava/security/cert/X509CRL;

    .prologue
    .line 1162
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 1164
    .local v0, "critical":Ljava/util/Set;
    if-nez v0, :cond_0

    .line 1166
    const/4 v1, 0x0

    .line 1169
    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method protected static isSelfIssued(Ljava/security/cert/X509Certificate;)Z
    .locals 2
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 305
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected static prepareNextCertB1(I[Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/security/cert/X509Certificate;)V
    .locals 17
    .param p0, "i"    # I
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "id_p"    # Ljava/lang/String;
    .param p3, "m_idp"    # Ljava/util/Map;
    .param p4, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 536
    const/4 v12, 0x0

    .line 537
    .local v12, "idp_found":Z
    aget-object v3, p1, p0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 538
    .local v14, "nodes_i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 540
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 541
    .local v13, "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 543
    const/4 v12, 0x1

    .line 544
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    iput-object v3, v13, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    .line 549
    .end local v13    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_1
    if-nez v12, :cond_6

    .line 551
    aget-object v3, p1, p0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 552
    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 554
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 555
    .restart local v13    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v3, "2.5.29.32.0"

    invoke-virtual {v13}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 557
    const/4 v7, 0x0

    .line 558
    .local v7, "pq":Ljava/util/Set;
    const/16 v16, 0x0

    .line 561
    .local v16, "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 567
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v10

    .line 568
    .local v10, "e":Ljava/util/Enumeration;
    :cond_3
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 570
    const/4 v15, 0x0

    .line 574
    .local v15, "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :try_start_1
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v15

    .line 580
    const-string v3, "2.5.29.32.0"

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 584
    :try_start_2
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    .line 594
    .end local v15    # "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_4
    const/4 v9, 0x0

    .line 595
    .local v9, "ci":Z
    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 597
    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 600
    :cond_5
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 601
    .local v6, "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v3, "2.5.29.32.0"

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 603
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    move/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 607
    .local v2, "c_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v6, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 608
    aget-object v3, p1, p0

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    .end local v2    # "c_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v6    # "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v7    # "pq":Ljava/util/Set;
    .end local v9    # "ci":Z
    .end local v10    # "e":Ljava/util/Enumeration;
    .end local v13    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v16    # "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_6
    return-void

    .line 563
    .restart local v7    # "pq":Ljava/util/Set;
    .restart local v13    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v16    # "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v10

    .line 565
    .local v10, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Certificate policies cannot be decoded."

    invoke-direct {v3, v4, v10}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 576
    .local v10, "e":Ljava/util/Enumeration;
    .restart local v15    # "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :catch_1
    move-exception v11

    .line 578
    .local v11, "ex":Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Policy information cannot be decoded."

    invoke-direct {v3, v4, v11}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 586
    .end local v11    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v11

    .line 588
    .local v11, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Policy qualifier info set could not be built."

    invoke-direct {v3, v4, v11}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static prepareNextCertB2(I[Ljava/util/List;Ljava/lang/String;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 8
    .param p0, "i"    # I
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "id_p"    # Ljava/lang/String;
    .param p3, "validPolicyTree"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .prologue
    .line 622
    aget-object v7, p1, p0

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 623
    .local v5, "nodes_i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 625
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 626
    .local v2, "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 628
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 629
    .local v6, "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v6, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 630
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 631
    add-int/lit8 v0, p0, -0x1

    .local v0, "k":I
    :goto_0
    if-ltz v0, :cond_0

    .line 633
    aget-object v4, p1, v0

    .line 634
    .local v4, "nodes":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "l":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 636
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 637
    .local v3, "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v7

    if-nez v7, :cond_2

    .line 639
    invoke-static {p3, p1, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p3

    .line 640
    if-nez p3, :cond_2

    .line 631
    .end local v3    # "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 634
    .restart local v3    # "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 649
    .end local v0    # "k":I
    .end local v1    # "l":I
    .end local v2    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v3    # "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v4    # "nodes":Ljava/util/List;
    .end local v6    # "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_3
    return-object p3
.end method

.method protected static processCertD1i(I[Ljava/util/List;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/util/Set;)Z
    .locals 11
    .param p0, "index"    # I
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "pOid"    # Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .param p3, "pq"    # Ljava/util/Set;

    .prologue
    const/4 v7, 0x0

    .line 467
    add-int/lit8 v1, p0, -0x1

    aget-object v10, p1, v1

    .line 469
    .local v10, "policyNodeVec":Ljava/util/List;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 471
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 472
    .local v4, "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v8

    .line 474
    .local v8, "expectedPolicies":Ljava/util/Set;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 476
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 477
    .local v3, "childExpectedPolicies":Ljava/util/Set;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 479
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    move v2, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 486
    .local v0, "child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 487
    aget-object v1, p1, p0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    const/4 v7, 0x1

    .line 493
    .end local v0    # "child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v3    # "childExpectedPolicies":Ljava/util/Set;
    .end local v4    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "expectedPolicies":Ljava/util/Set;
    :cond_0
    return v7

    .line 469
    .restart local v4    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v8    # "expectedPolicies":Ljava/util/Set;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method protected static processCertD1ii(I[Ljava/util/List;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/util/Set;)V
    .locals 10
    .param p0, "index"    # I
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "_poid"    # Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .param p3, "_pq"    # Ljava/util/Set;

    .prologue
    .line 502
    add-int/lit8 v1, p0, -0x1

    aget-object v9, p1, v1

    .line 504
    .local v9, "policyNodeVec":Ljava/util/List;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_0

    .line 506
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 508
    .local v4, "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v1, "2.5.29.32.0"

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 510
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 511
    .local v3, "_childExpectedPolicies":Ljava/util/Set;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 513
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move v2, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 520
    .local v0, "_child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 521
    aget-object v1, p1, p0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    .end local v0    # "_child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v3    # "_childExpectedPolicies":Ljava/util/Set;
    .end local v4    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_0
    return-void

    .line 504
    .restart local v4    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method protected static removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 4
    .param p0, "validPolicyTree"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "_node"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .prologue
    const/4 v2, 0x0

    .line 418
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 420
    .local v0, "_parent":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    if-nez p0, :cond_0

    move-object p0, v2

    .line 439
    .end local p0    # "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_0
    return-object p0

    .line 425
    .restart local p0    # "validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_0
    if-nez v0, :cond_2

    .line 427
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 429
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, p1, v1

    .line 427
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object p0, v2

    .line 432
    goto :goto_0

    .line 436
    .end local v1    # "j":I
    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 437
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNodeRecurse([Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    goto :goto_0
.end method

.method private static removePolicyNodeRecurse([Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V
    .locals 3
    .param p0, "policyNodes"    # [Ljava/util/List;
    .param p1, "_node"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .prologue
    .line 447
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getDepth()I

    move-result v2

    aget-object v2, p0, v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 449
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v1

    .line 452
    .local v1, "_iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 454
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 455
    .local v0, "_child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNodeRecurse([Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    goto :goto_0

    .line 458
    .end local v0    # "_child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v1    # "_iter":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected static verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 0
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 1429
    if-nez p2, :cond_0

    .line 1431
    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 1437
    :goto_0
    return-void

    .line 1435
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    goto :goto_0
.end method
