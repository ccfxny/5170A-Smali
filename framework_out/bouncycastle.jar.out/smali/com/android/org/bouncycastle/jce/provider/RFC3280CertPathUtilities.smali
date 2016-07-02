.class public Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;
.super Ljava/lang/Object;
.source "RFC3280CertPathUtilities.java"


# static fields
.field public static final ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"

.field public static final AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

.field public static final BASIC_CONSTRAINTS:Ljava/lang/String;

.field public static final CERTIFICATE_POLICIES:Ljava/lang/String;

.field public static final CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

.field public static final CRL_NUMBER:Ljava/lang/String;

.field protected static final CRL_SIGN:I = 0x6

.field private static final CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

.field public static final DELTA_CRL_INDICATOR:Ljava/lang/String;

.field public static final FRESHEST_CRL:Ljava/lang/String;

.field public static final INHIBIT_ANY_POLICY:Ljava/lang/String;

.field public static final ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

.field protected static final KEY_CERT_SIGN:I = 0x5

.field public static final KEY_USAGE:Ljava/lang/String;

.field public static final NAME_CONSTRAINTS:Ljava/lang/String;

.field public static final POLICY_CONSTRAINTS:Ljava/lang/String;

.field public static final POLICY_MAPPINGS:Ljava/lang/String;

.field public static final SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

.field protected static final crlReasons:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    .line 378
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CertificatePolicies:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 380
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->PolicyMappings:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    .line 382
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->InhibitAnyPolicy:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    .line 384
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 386
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->FreshestCRL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    .line 388
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    .line 390
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->PolicyConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    .line 392
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->BasicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 394
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 396
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->SubjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    .line 398
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->NameConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    .line 400
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    .line 402
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->KeyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    .line 404
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CRLNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_NUMBER:Ljava/lang/String;

    .line 2276
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

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCRL(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    .locals 23
    .param p0, "dp"    # Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .param p1, "paramsPKIX"    # Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "validDate"    # Ljava/util/Date;
    .param p4, "defaultCRLSignCert"    # Ljava/security/cert/X509Certificate;
    .param p5, "defaultCRLSignKey"    # Ljava/security/PublicKey;
    .param p6, "certStatus"    # Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .param p7, "reasonMask"    # Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .param p8, "certPathCerts"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1736
    new-instance v14, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v14, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 1737
    .local v14, "currentDate":Ljava/util/Date;
    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 1739
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Validation time is in future."

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1750
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-static {v0, v1, v14, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCompleteCRLs(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)Ljava/util/Set;

    move-result-object v13

    .line 1751
    .local v13, "crls":Ljava/util/Set;
    const/16 v22, 0x0

    .line 1752
    .local v22, "validCrlFound":Z
    const/16 v21, 0x0

    .line 1753
    .local v21, "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1755
    .local v12, "crl_iter":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual/range {p6 .. p6}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_9

    invoke-virtual/range {p7 .. p7}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v5

    if-nez v5, :cond_9

    .line 1759
    :try_start_0
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509CRL;

    .line 1762
    .local v4, "crl":Ljava/security/cert/X509CRL;
    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLD(Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v18

    .line 1770
    .local v18, "interimReasonsMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    move-object/from16 v0, v18

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->hasNewReasons(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p1

    move-object/from16 v9, p8

    .line 1776
    invoke-static/range {v4 .. v9}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/List;)Ljava/util/Set;

    move-result-object v20

    .line 1779
    .local v20, "keys":Ljava/util/Set;
    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;

    move-result-object v19

    .line 1781
    .local v19, "key":Ljava/security/PublicKey;
    const/4 v15, 0x0

    .line 1783
    .local v15, "deltaCRL":Ljava/security/cert/X509CRL;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1786
    move-object/from16 v0, p1

    invoke-static {v14, v0, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509CRL;)Ljava/util/Set;

    move-result-object v16

    .line 1789
    .local v16, "deltaCRLs":Ljava/util/Set;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;

    move-result-object v15

    .line 1805
    .end local v16    # "deltaCRLs":Ljava/util/Set;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getValidityModel()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    .line 1812
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gez v5, :cond_3

    .line 1814
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "No valid CRL for current time found."

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1871
    .end local v4    # "crl":Ljava/security/cert/X509CRL;
    .end local v15    # "deltaCRL":Ljava/security/cert/X509CRL;
    .end local v18    # "interimReasonsMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .end local v19    # "key":Ljava/security/PublicKey;
    .end local v20    # "keys":Ljava/util/Set;
    :catch_0
    move-exception v17

    .line 1873
    .local v17, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move-object/from16 v21, v17

    .line 1874
    goto :goto_0

    .line 1818
    .end local v17    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v4    # "crl":Ljava/security/cert/X509CRL;
    .restart local v15    # "deltaCRL":Ljava/security/cert/X509CRL;
    .restart local v18    # "interimReasonsMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .restart local v19    # "key":Ljava/security/PublicKey;
    .restart local v20    # "keys":Ljava/util/Set;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB1(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 1821
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB2(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 1824
    move-object/from16 v0, p1

    invoke-static {v15, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V

    .line 1827
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p1

    invoke-static {v0, v15, v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V

    .line 1830
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-static {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V

    .line 1833
    invoke-virtual/range {p6 .. p6}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_4

    .line 1835
    const/16 v5, 0xb

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 1839
    :cond_4
    move-object/from16 v0, p7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->addReasons(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)V

    .line 1841
    invoke-virtual {v4}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v10

    .line 1842
    .local v10, "criticalExtensions":Ljava/util/Set;
    if-eqz v10, :cond_6

    .line 1844
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1845
    .end local v10    # "criticalExtensions":Ljava/util/Set;
    .local v11, "criticalExtensions":Ljava/util/Set;
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1846
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1848
    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1850
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "CRL contains unsupported critical extensions."

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    move-object v10, v11

    .line 1854
    .end local v11    # "criticalExtensions":Ljava/util/Set;
    .restart local v10    # "criticalExtensions":Ljava/util/Set;
    :cond_6
    if-eqz v15, :cond_8

    .line 1856
    invoke-virtual {v15}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v10

    .line 1857
    if-eqz v10, :cond_8

    .line 1859
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1860
    .end local v10    # "criticalExtensions":Ljava/util/Set;
    .restart local v11    # "criticalExtensions":Ljava/util/Set;
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1861
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1862
    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1864
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Delta CRL contains unsupported critical extension."

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    move-object v10, v11

    .line 1869
    .end local v11    # "criticalExtensions":Ljava/util/Set;
    .restart local v10    # "criticalExtensions":Ljava/util/Set;
    :cond_8
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 1876
    .end local v4    # "crl":Ljava/security/cert/X509CRL;
    .end local v10    # "criticalExtensions":Ljava/util/Set;
    .end local v15    # "deltaCRL":Ljava/security/cert/X509CRL;
    .end local v18    # "interimReasonsMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .end local v19    # "key":Ljava/security/PublicKey;
    .end local v20    # "keys":Ljava/util/Set;
    :cond_9
    if-nez v22, :cond_a

    .line 1878
    throw v21

    .line 1880
    :cond_a
    return-void
.end method

.method protected static checkCRLs(Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;)V
    .locals 18
    .param p0, "paramsPKIX"    # Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "validDate"    # Ljava/util/Date;
    .param p3, "sign"    # Ljava/security/cert/X509Certificate;
    .param p4, "workingPublicKey"    # Ljava/security/PublicKey;
    .param p5, "certPathCerts"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1904
    const/4 v15, 0x0

    .line 1905
    .local v15, "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    const/4 v10, 0x0

    .line 1908
    .local v10, "crldp":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_start_0
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1917
    :try_start_1
    move-object/from16 v0, p0

    invoke-static {v10, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoresFromCRLDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    :try_end_1
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1924
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/CertStatus;

    invoke-direct {v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;-><init>()V

    .line 1925
    .local v7, "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    new-instance v8, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-direct {v8}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>()V

    .line 1927
    .local v8, "reasonsMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    const/16 v17, 0x0

    .line 1929
    .local v17, "validCrlFound":Z
    if-eqz v10, :cond_0

    .line 1931
    const/4 v11, 0x0

    .line 1934
    .local v11, "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    :try_start_2
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v11

    .line 1940
    if-eqz v11, :cond_0

    .line 1942
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    array-length v3, v11

    if-ge v13, v3, :cond_0

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1944
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    .line 1947
    .local v2, "paramsPKIXClone":Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    :try_start_3
    aget-object v1, v11, v13

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v9}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    :try_end_3
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1948
    const/16 v17, 0x1

    .line 1942
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1911
    .end local v2    # "paramsPKIXClone":Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .end local v7    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .end local v8    # "reasonsMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .end local v11    # "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v13    # "i":I
    .end local v17    # "validCrlFound":Z
    :catch_0
    move-exception v12

    .line 1913
    .local v12, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "CRL distribution point extension could not be read."

    invoke-direct {v3, v4, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1919
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v12

    .line 1921
    .local v12, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "No additional CRL locations could be decoded from CRL distribution point extension."

    invoke-direct {v3, v4, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1936
    .end local v12    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v7    # "certStatus":Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .restart local v8    # "reasonsMask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .restart local v11    # "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v17    # "validCrlFound":Z
    :catch_2
    move-exception v12

    .line 1938
    .local v12, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Distribution points could not be read."

    invoke-direct {v3, v4, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1950
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v2    # "paramsPKIXClone":Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .restart local v13    # "i":I
    :catch_3
    move-exception v12

    .line 1952
    .local v12, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move-object v15, v12

    goto :goto_1

    .line 1964
    .end local v2    # "paramsPKIXClone":Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .end local v11    # "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v12    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v13    # "i":I
    :cond_0
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_1

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1973
    const/4 v14, 0x0

    .line 1976
    .local v14, "issuer":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_start_4
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-static/range {p1 .. p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v14

    .line 1983
    :try_start_5
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    const/4 v9, 0x4

    invoke-direct {v6, v9, v14}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    invoke-direct {v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;-><init>(Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V

    .line 1985
    .local v1, "dp":Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    .restart local v2    # "paramsPKIXClone":Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    .line 1986
    invoke-static/range {v1 .. v9}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    :try_end_5
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1988
    const/16 v17, 0x1

    .line 1996
    .end local v1    # "dp":Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v2    # "paramsPKIXClone":Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .end local v14    # "issuer":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1
    :goto_2
    if-nez v17, :cond_3

    .line 1998
    instance-of v3, v15, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    if-eqz v3, :cond_2

    .line 2000
    throw v15

    .line 1979
    .restart local v14    # "issuer":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :catch_4
    move-exception v12

    .line 1981
    .local v12, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Issuer from certificate for CRL could not be reencoded."

    invoke-direct {v3, v4, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1990
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v12

    .line 1992
    .local v12, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move-object v15, v12

    goto :goto_2

    .line 2003
    .end local v12    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v14    # "issuer":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_2
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "No valid CRL found."

    invoke-direct {v3, v4, v15}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2005
    :cond_3
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_4

    .line 2007
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate revocation after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getRevocationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2008
    .local v16, "message":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2009
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2011
    .end local v16    # "message":Ljava/lang/String;
    :cond_4
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_5

    .line 2013
    const/16 v3, 0xc

    invoke-virtual {v7, v3}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 2015
    :cond_5
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_6

    .line 2017
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Certificate status could not be determined."

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2019
    :cond_6
    return-void
.end method

.method protected static prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 34
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "policyNodes"    # [Ljava/util/List;
    .param p3, "validPolicyTree"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p4, "policyMapping"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 866
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v12

    .line 867
    .local v12, "certs":Ljava/util/List;
    move/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    .line 868
    .local v11, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v23

    .line 870
    .local v23, "n":I
    sub-int v4, v23, p1

    .line 873
    .local v4, "i":I
    const/16 v29, 0x0

    .line 876
    .local v29, "pm":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v11, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v29

    .line 884
    move-object/from16 v10, p3

    .line 885
    .local v10, "_validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    if-eqz v29, :cond_d

    .line 887
    move-object/from16 v22, v29

    .line 888
    .local v22, "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 889
    .local v20, "m_idp":Ljava/util/Map;
    new-instance v31, Ljava/util/HashSet;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashSet;-><init>()V

    .line 891
    .local v31, "s_idp":Ljava/util/Set;
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_0
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_1

    .line 893
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v21

    check-cast v21, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 894
    .local v21, "mapping":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    .line 895
    .local v8, "id_p":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v32

    .line 898
    .local v32, "sd_p":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 900
    new-instance v33, Ljava/util/HashSet;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashSet;-><init>()V

    .line 901
    .local v33, "tmp":Ljava/util/Set;
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 902
    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 891
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 879
    .end local v8    # "id_p":Ljava/lang/String;
    .end local v10    # "_validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v17    # "j":I
    .end local v20    # "m_idp":Ljava/util/Map;
    .end local v21    # "mapping":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v22    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v31    # "s_idp":Ljava/util/Set;
    .end local v32    # "sd_p":Ljava/lang/String;
    .end local v33    # "tmp":Ljava/util/Set;
    :catch_0
    move-exception v14

    .line 881
    .local v14, "ex":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Policy mappings extension could not be decoded."

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v5, v14, v0, v1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 907
    .end local v14    # "ex":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v8    # "id_p":Ljava/lang/String;
    .restart local v10    # "_validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v17    # "j":I
    .restart local v20    # "m_idp":Ljava/util/Map;
    .restart local v21    # "mapping":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v22    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v31    # "s_idp":Ljava/util/Set;
    .restart local v32    # "sd_p":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/Set;

    .line 908
    .restart local v33    # "tmp":Ljava/util/Set;
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 912
    .end local v8    # "id_p":Ljava/lang/String;
    .end local v21    # "mapping":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v32    # "sd_p":Ljava/lang/String;
    .end local v33    # "tmp":Ljava/util/Set;
    :cond_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 913
    .local v16, "it_idp":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 915
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 920
    .restart local v8    # "id_p":Ljava/lang/String;
    if-lez p4, :cond_9

    .line 922
    const/4 v15, 0x0

    .line 923
    .local v15, "idp_found":Z
    aget-object v3, p2, v4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 924
    .local v27, "nodes_i":Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 926
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 927
    .local v24, "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 929
    const/4 v15, 0x1

    .line 930
    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    .line 935
    .end local v24    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_4
    if-nez v15, :cond_2

    .line 937
    aget-object v3, p2, v4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 938
    :cond_5
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 940
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 941
    .restart local v24    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v3, "2.5.29.32.0"

    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 943
    const/4 v7, 0x0

    .line 944
    .local v7, "pq":Ljava/util/Set;
    const/16 v30, 0x0

    .line 947
    .local v30, "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_1
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v11, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v30

    .end local v30    # "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    check-cast v30, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_1
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 955
    .restart local v30    # "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual/range {v30 .. v30}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v13

    .line 956
    .local v13, "e":Ljava/util/Enumeration;
    :cond_6
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 958
    const/16 v28, 0x0

    .line 961
    .local v28, "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :try_start_2
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v28

    .line 968
    const-string v3, "2.5.29.32.0"

    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 972
    :try_start_3
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v7

    .line 985
    .end local v28    # "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_7
    const/4 v9, 0x0

    .line 986
    .local v9, "ci":Z
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 988
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v3

    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 992
    :cond_8
    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 993
    .local v6, "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v3, "2.5.29.32.0"

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 995
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-direct/range {v2 .. v9}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 997
    .local v2, "c_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v6, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 998
    aget-object v3, p2, v4

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 950
    .end local v2    # "c_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v6    # "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v9    # "ci":Z
    .end local v13    # "e":Ljava/util/Enumeration;
    .end local v30    # "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_1
    move-exception v13

    .line 952
    .local v13, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Certificate policies extension could not be decoded."

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v5, v13, v0, v1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 963
    .local v13, "e":Ljava/util/Enumeration;
    .restart local v28    # "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .restart local v30    # "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_2
    move-exception v14

    .line 965
    .local v14, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Policy information could not be decoded."

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v5, v14, v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 975
    .end local v14    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v14

    .line 978
    .local v14, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Policy qualifier info set could not be decoded."

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v5, v14, v0, v1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 1009
    .end local v7    # "pq":Ljava/util/Set;
    .end local v13    # "e":Ljava/util/Enumeration;
    .end local v14    # "ex":Ljava/security/cert/CertPathValidatorException;
    .end local v15    # "idp_found":Z
    .end local v24    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v27    # "nodes_i":Ljava/util/Iterator;
    .end local v28    # "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .end local v30    # "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_9
    if-gtz p4, :cond_2

    .line 1011
    aget-object v3, p2, v4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 1012
    .restart local v27    # "nodes_i":Ljava/util/Iterator;
    :cond_a
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1014
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1015
    .restart local v24    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1017
    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1018
    .restart local v6    # "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 1019
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->remove()V

    .line 1020
    add-int/lit8 v18, v4, -0x1

    .local v18, "k":I
    :goto_3
    if-ltz v18, :cond_a

    .line 1022
    aget-object v26, p2, v18

    .line 1023
    .local v26, "nodes":Ljava/util/List;
    const/16 v19, 0x0

    .local v19, "l":I
    :goto_4
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_b

    .line 1025
    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1026
    .local v25, "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v25 .. v25}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v3

    if-nez v3, :cond_c

    .line 1028
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-static {v10, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v10

    .line 1030
    if-nez v10, :cond_c

    .line 1020
    .end local v25    # "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_b
    add-int/lit8 v18, v18, -0x1

    goto :goto_3

    .line 1023
    .restart local v25    # "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_c
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 1042
    .end local v6    # "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "id_p":Ljava/lang/String;
    .end local v16    # "it_idp":Ljava/util/Iterator;
    .end local v17    # "j":I
    .end local v18    # "k":I
    .end local v19    # "l":I
    .end local v20    # "m_idp":Ljava/util/Map;
    .end local v22    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v24    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v25    # "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v26    # "nodes":Ljava/util/List;
    .end local v27    # "nodes_i":Ljava/util/Iterator;
    .end local v31    # "s_idp":Ljava/util/Set;
    :cond_d
    return-object v10
.end method

.method protected static prepareNextCertA(Ljava/security/cert/CertPath;I)V
    .locals 13
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 1050
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 1051
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1056
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v8, 0x0

    .line 1059
    .local v8, "pm":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v10, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1067
    if-eqz v8, :cond_2

    .line 1069
    move-object v7, v8

    .line 1071
    .local v7, "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v10

    if-ge v5, v10, :cond_2

    .line 1073
    const/4 v4, 0x0

    .line 1074
    .local v4, "issuerDomainPolicy":Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    const/4 v9, 0x0

    .line 1077
    .local v9, "subjectDomainPolicy":Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :try_start_1
    invoke-virtual {v7, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v6

    .line 1079
    .local v6, "mapping":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    .line 1080
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 1088
    const-string v10, "2.5.29.32.0"

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1091
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "IssuerDomainPolicy is anyPolicy"

    invoke-direct {v10, v11, v12, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 1062
    .end local v4    # "issuerDomainPolicy":Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v5    # "j":I
    .end local v6    # "mapping":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v7    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v9    # "subjectDomainPolicy":Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :catch_0
    move-exception v3

    .line 1064
    .local v3, "ex":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v10, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Policy mappings extension could not be decoded."

    invoke-direct {v10, v11, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 1082
    .end local v3    # "ex":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v4    # "issuerDomainPolicy":Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .restart local v5    # "j":I
    .restart local v7    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v9    # "subjectDomainPolicy":Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :catch_1
    move-exception v2

    .line 1084
    .local v2, "e":Ljava/lang/Exception;
    new-instance v10, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Policy mappings extension contents could not be decoded."

    invoke-direct {v10, v11, v2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 1094
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "mapping":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_0
    const-string v10, "2.5.29.32.0"

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1097
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "SubjectDomainPolicy is anyPolicy,"

    invoke-direct {v10, v11, v12, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 1071
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1101
    .end local v4    # "issuerDomainPolicy":Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v5    # "j":I
    .end local v6    # "mapping":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v7    # "mappings":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v9    # "subjectDomainPolicy":Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :cond_2
    return-void
.end method

.method protected static prepareNextCertG(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V
    .locals 11
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "nameConstraintValidator"    # Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1646
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 1647
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1651
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v6, 0x0

    .line 1654
    .local v6, "nc":Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
    :try_start_0
    sget-object v9, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v7

    .line 1656
    .local v7, "ncSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v7, :cond_0

    .line 1658
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1666
    :cond_0
    if-eqz v6, :cond_2

    .line 1672
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->getPermittedSubtrees()[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v8

    .line 1673
    .local v8, "permitted":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    if-eqz v8, :cond_1

    .line 1677
    :try_start_1
    invoke-virtual {p2, v8}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->intersectPermittedSubtree([Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1689
    :cond_1
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->getExcludedSubtrees()[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v4

    .line 1690
    .local v4, "excluded":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    if-eqz v4, :cond_2

    .line 1692
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v9, v4

    if-eq v5, v9, :cond_2

    .line 1695
    :try_start_2
    aget-object v9, v4, v5

    invoke-virtual {p2, v9}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->addExcludedSubtree(Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1692
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1661
    .end local v4    # "excluded":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .end local v5    # "i":I
    .end local v7    # "ncSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v8    # "permitted":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    :catch_0
    move-exception v2

    .line 1663
    .local v2, "e":Ljava/lang/Exception;
    new-instance v9, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Name constraints extension could not be decoded."

    invoke-direct {v9, v10, v2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v9

    .line 1679
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v7    # "ncSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v8    # "permitted":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    :catch_1
    move-exception v3

    .line 1681
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v9, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Permitted subtrees cannot be build from name constraints extension."

    invoke-direct {v9, v10, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v9

    .line 1697
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v4    # "excluded":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .restart local v5    # "i":I
    :catch_2
    move-exception v3

    .line 1699
    .restart local v3    # "ex":Ljava/lang/Exception;
    new-instance v9, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Excluded subtrees cannot be build from name constraints extension."

    invoke-direct {v9, v10, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v9

    .line 1704
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v4    # "excluded":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .end local v5    # "i":I
    .end local v8    # "permitted":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    :cond_2
    return-void
.end method

.method protected static prepareNextCertH1(Ljava/security/cert/CertPath;II)I
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "explicitPolicy"    # I

    .prologue
    .line 2212
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2213
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2217
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2222
    if-eqz p2, :cond_0

    .line 2224
    add-int/lit8 p2, p2, -0x1

    .line 2227
    .end local p2    # "explicitPolicy":I
    :cond_0
    return p2
.end method

.method protected static prepareNextCertH2(Ljava/security/cert/CertPath;II)I
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "policyMapping"    # I

    .prologue
    .line 2235
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2236
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2240
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2245
    if-eqz p2, :cond_0

    .line 2247
    add-int/lit8 p2, p2, -0x1

    .line 2250
    .end local p2    # "policyMapping":I
    :cond_0
    return p2
.end method

.method protected static prepareNextCertH3(Ljava/security/cert/CertPath;II)I
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "inhibitAnyPolicy"    # I

    .prologue
    .line 2258
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2259
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2263
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2268
    if-eqz p2, :cond_0

    .line 2270
    add-int/lit8 p2, p2, -0x1

    .line 2273
    .end local p2    # "inhibitAnyPolicy":I
    :cond_0
    return p2
.end method

.method protected static prepareNextCertI1(Ljava/security/cert/CertPath;II)I
    .locals 9
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "explicitPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1537
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 1538
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1542
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 1545
    .local v4, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1556
    if-eqz v4, :cond_1

    .line 1558
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 1560
    .local v5, "policyConstraints":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1565
    :try_start_1
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    .line 1566
    .local v2, "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    if-nez v7, :cond_0

    .line 1568
    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 1569
    .local v6, "tmpInt":I
    if-ge v6, p2, :cond_1

    .line 1583
    .end local v2    # "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v5    # "policyConstraints":Ljava/util/Enumeration;
    .end local v6    # "tmpInt":I
    :goto_0
    return v6

    .line 1548
    :catch_0
    move-exception v3

    .line 1550
    .local v3, "e":Ljava/lang/Exception;
    new-instance v7, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints extension cannot be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 1576
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "policyConstraints":Ljava/util/Enumeration;
    :catch_1
    move-exception v3

    .line 1578
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "policyConstraints":Ljava/util/Enumeration;
    :cond_1
    move v6, p2

    .line 1583
    goto :goto_0
.end method

.method protected static prepareNextCertI2(Ljava/security/cert/CertPath;II)I
    .locals 9
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "policyMapping"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1592
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 1593
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1597
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 1600
    .local v4, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1611
    if-eqz v4, :cond_1

    .line 1613
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 1615
    .local v5, "policyConstraints":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1619
    :try_start_1
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    .line 1620
    .local v2, "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 1622
    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 1623
    .local v6, "tmpInt":I
    if-ge v6, p2, :cond_1

    .line 1637
    .end local v2    # "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v5    # "policyConstraints":Ljava/util/Enumeration;
    .end local v6    # "tmpInt":I
    :goto_0
    return v6

    .line 1603
    :catch_0
    move-exception v3

    .line 1605
    .local v3, "e":Ljava/lang/Exception;
    new-instance v7, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints extension cannot be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 1630
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "policyConstraints":Ljava/util/Enumeration;
    :catch_1
    move-exception v3

    .line 1632
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "policyConstraints":Ljava/util/Enumeration;
    :cond_1
    move v6, p2

    .line 1637
    goto :goto_0
.end method

.method protected static prepareNextCertJ(Ljava/security/cert/CertPath;II)I
    .locals 7
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "inhibitAnyPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2027
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 2028
    .local v2, "certs":Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2032
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 2035
    .local v4, "iap":Lcom/android/org/bouncycastle/asn1/DERInteger;
    :try_start_0
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2044
    if-eqz v4, :cond_0

    .line 2046
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 2048
    .local v0, "_inhibitAnyPolicy":I
    if-ge v0, p2, :cond_0

    .line 2053
    .end local v0    # "_inhibitAnyPolicy":I
    :goto_0
    return v0

    .line 2038
    :catch_0
    move-exception v3

    .line 2040
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v6, "Inhibit any-policy extension cannot be decoded."

    invoke-direct {v5, v6, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    move v0, p2

    .line 2053
    goto :goto_0
.end method

.method protected static prepareNextCertK(Ljava/security/cert/CertPath;I)V
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2061
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 2062
    .local v2, "certs":Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2066
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v0, 0x0

    .line 2069
    .local v0, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_0
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2077
    if-eqz v0, :cond_0

    .line 2079
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2081
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Not a CA certificate"

    invoke-direct {v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2072
    :catch_0
    move-exception v3

    .line 2074
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Basic constraints extension cannot be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2086
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Intermediate certificate lacks BasicConstraints"

    invoke-direct {v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2088
    :cond_1
    return-void
.end method

.method protected static prepareNextCertL(Ljava/security/cert/CertPath;II)I
    .locals 5
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "maxPathLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2096
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2097
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2101
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2103
    if-gtz p2, :cond_0

    .line 2105
    new-instance v2, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Max path length not greater than zero"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 2108
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 2110
    .end local p2    # "maxPathLength":I
    :cond_1
    return p2
.end method

.method protected static prepareNextCertM(Ljava/security/cert/CertPath;II)I
    .locals 8
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "maxPathLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2119
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v4

    .line 2120
    .local v4, "certs":Ljava/util/List;
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 2125
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 2128
    .local v2, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_0
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2136
    if-eqz v2, :cond_0

    .line 2138
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object v0

    .line 2140
    .local v0, "_pathLengthConstraint":Ljava/math/BigInteger;
    if-eqz v0, :cond_0

    .line 2142
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 2144
    .local v1, "_plc":I
    if-ge v1, p2, :cond_0

    .line 2150
    .end local v0    # "_pathLengthConstraint":Ljava/math/BigInteger;
    .end local v1    # "_plc":I
    :goto_0
    return v1

    .line 2131
    :catch_0
    move-exception v5

    .line 2133
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v7, "Basic constraints extension cannot be decoded."

    invoke-direct {v6, v7, v5, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .end local v5    # "e":Ljava/lang/Exception;
    :cond_0
    move v1, p2

    .line 2150
    goto :goto_0
.end method

.method protected static prepareNextCertN(Ljava/security/cert/CertPath;I)V
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2158
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 2159
    .local v2, "certs":Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2164
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    .line 2166
    .local v0, "_usage":[Z
    if-eqz v0, :cond_0

    const/4 v3, 0x5

    aget-boolean v3, v0, v3

    if-nez v3, :cond_0

    .line 2168
    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Issuer certificate keyusage extension is critical and does not permit key signing."

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 2172
    :cond_0
    return-void
.end method

.method protected static prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V
    .locals 7
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "criticalExtensions"    # Ljava/util/Set;
    .param p3, "pathCheckers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2181
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2182
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2188
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2189
    .local v3, "tmpIter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2193
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v4, v0, p2}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2195
    :catch_0
    move-exception v2

    .line 2197
    .local v2, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v2}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v5, v6, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2200
    .end local v2    # "e":Ljava/security/cert/CertPathValidatorException;
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2202
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Certificate has unsupported critical extension: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2205
    :cond_1
    return-void
.end method

.method protected static processCRLA1i(Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509CRL;)Ljava/util/Set;
    .locals 5
    .param p0, "currentDate"    # Ljava/util/Date;
    .param p1, "paramsPKIX"    # Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 624
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 625
    .local v2, "set":Ljava/util/Set;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 627
    const/4 v1, 0x0

    .line 630
    .local v1, "freshestCRL":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_start_0
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    invoke-static {p2, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 637
    if-nez v1, :cond_0

    .line 641
    :try_start_1
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    invoke-static {p3, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_end_1
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 649
    :cond_0
    if-eqz v1, :cond_1

    .line 653
    :try_start_2
    invoke-static {v1, p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoresFromCRLDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    :try_end_2
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 663
    :try_start_3
    invoke-static {p0, p1, p3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509CRL;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 671
    .end local v1    # "freshestCRL":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :cond_1
    return-object v2

    .line 633
    .restart local v1    # "freshestCRL":Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :catch_0
    move-exception v0

    .line 635
    .local v0, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Freshest CRL extension could not be decoded from certificate."

    invoke-direct {v3, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 644
    .end local v0    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_1
    move-exception v0

    .line 646
    .restart local v0    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Freshest CRL extension could not be decoded from CRL."

    invoke-direct {v3, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 655
    .end local v0    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_2
    move-exception v0

    .line 657
    .restart local v0    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "No new delta CRL locations could be added from Freshest CRL extension."

    invoke-direct {v3, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 665
    .end local v0    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_3
    move-exception v0

    .line 667
    .restart local v0    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Exception obtaining delta CRLs."

    invoke-direct {v3, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static processCRLA1ii(Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509CRL;)[Ljava/util/Set;
    .locals 7
    .param p0, "currentDate"    # Ljava/util/Date;
    .param p1, "paramsPKIX"    # Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 681
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 682
    .local v2, "deltaSet":Ljava/util/Set;
    new-instance v1, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 683
    .local v1, "crlselect":Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;
    invoke-virtual {v1, p2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 687
    :try_start_0
    invoke-virtual {p3}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->addIssuerName([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    invoke-virtual {v1, v6}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setCompleteCRLEnabled(Z)V

    .line 695
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    invoke-virtual {v4, v1, p1, p0}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/Date;)Ljava/util/Set;

    move-result-object v0

    .line 697
    .local v0, "completeSet":Ljava/util/Set;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 702
    :try_start_1
    invoke-static {p0, p1, p3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509CRL;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 709
    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/util/Set;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v2, v4, v6

    return-object v4

    .line 689
    .end local v0    # "completeSet":Ljava/util/Set;
    :catch_0
    move-exception v3

    .line 691
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot extract issuer from CRL."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 704
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "completeSet":Ljava/util/Set;
    :catch_1
    move-exception v3

    .line 706
    .local v3, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Exception obtaining delta CRLs."

    invoke-direct {v4, v5, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected static processCRLB1(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .locals 9
    .param p0, "dp"    # Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 288
    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p2, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 289
    .local v2, "idp":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    const/4 v3, 0x0

    .line 290
    .local v3, "isIndirect":Z
    if-eqz v2, :cond_0

    .line 292
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->isIndirectCRL()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 294
    const/4 v3, 0x1

    .line 297
    :cond_0
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v4

    .line 299
    .local v4, "issuerBytes":[B
    const/4 v6, 0x0

    .line 300
    .local v6, "matchIssuer":Z
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 302
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    .line 303
    .local v1, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    array-length v7, v1

    if-ge v5, v7, :cond_2

    .line 305
    aget-object v7, v1, v5

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    .line 309
    :try_start_0
    aget-object v7, v1, v5

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v7

    invoke-static {v7, v4}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 311
    const/4 v6, 0x1

    .line 303
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "CRL issuer information from distribution point cannot be decoded."

    invoke-direct {v7, v8, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 321
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    if-eqz v6, :cond_3

    if-nez v3, :cond_3

    .line 323
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Distribution point contains cRLIssuer field but CRL is not indirect."

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 325
    :cond_3
    if-nez v6, :cond_5

    .line 327
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "CRL issuer of CRL does not match CRL issuer of distribution point."

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 332
    .end local v1    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v5    # "j":I
    :cond_4
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 335
    const/4 v6, 0x1

    .line 338
    :cond_5
    if-nez v6, :cond_6

    .line 340
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Cannot find matching CRL issuer for certificate."

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 342
    :cond_6
    return-void
.end method

.method protected static processCRLB2(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .locals 14
    .param p0, "dp"    # Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 101
    const/4 v5, 0x0

    .line 104
    .local v5, "idp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_0
    sget-object v10, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 113
    if-eqz v5, :cond_11

    .line 115
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 118
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v2

    .line 119
    .local v2, "dpName":Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v8, "names":Ljava/util/List;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v10

    if-nez v10, :cond_0

    .line 123
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 124
    .local v4, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    array-length v10, v4

    if-ge v6, v10, :cond_0

    .line 126
    aget-object v10, v4, v6

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 107
    .end local v2    # "dpName":Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .end local v4    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v6    # "j":I
    .end local v8    # "names":Ljava/util/List;
    :catch_0
    move-exception v3

    .line 109
    .local v3, "e":Ljava/lang/Exception;
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "Issuing distribution point extension could not be decoded."

    invoke-direct {v10, v11, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 129
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "dpName":Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .restart local v8    # "names":Ljava/util/List;
    :cond_0
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v10

    if-ne v10, v12, :cond_2

    .line 131
    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 134
    .local v9, "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :try_start_1
    invoke-static/range {p2 .. p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 137
    .local v3, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 139
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 142
    .end local v3    # "e":Ljava/util/Enumeration;
    :catch_1
    move-exception v3

    .line 144
    .local v3, "e":Ljava/io/IOException;
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "Could not read CRL issuer."

    invoke-direct {v10, v11, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 146
    .local v3, "e":Ljava/util/Enumeration;
    :cond_1
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 147
    new-instance v10, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    new-instance v11, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v11, v9}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    .end local v3    # "e":Ljava/util/Enumeration;
    .end local v9    # "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_2
    const/4 v7, 0x0

    .line 152
    .local v7, "matches":Z
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 154
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v2

    .line 155
    const/4 v4, 0x0

    .line 156
    .restart local v4    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v10

    if-nez v10, :cond_3

    .line 158
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 160
    :cond_3
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v10

    if-ne v10, v12, :cond_6

    .line 162
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 164
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 180
    :goto_2
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_3
    array-length v10, v4

    if-ge v6, v10, :cond_6

    .line 182
    aget-object v10, v4, v6

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 183
    .restart local v3    # "e":Ljava/util/Enumeration;
    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 184
    .restart local v9    # "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_4
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 186
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_4

    .line 168
    .end local v3    # "e":Ljava/util/Enumeration;
    .end local v6    # "j":I
    .end local v9    # "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_4
    new-array v4, v12, [Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    .line 171
    const/4 v11, 0x0

    :try_start_2
    new-instance v12, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    new-instance v13, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    check-cast v10, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v13, v10}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v12, v13}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    aput-object v12, v4, v11
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 175
    :catch_2
    move-exception v3

    .line 177
    .local v3, "e":Ljava/io/IOException;
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "Could not read certificate issuer."

    invoke-direct {v10, v11, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 188
    .local v3, "e":Ljava/util/Enumeration;
    .restart local v6    # "j":I
    .restart local v9    # "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_5
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 189
    new-instance v10, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    new-instance v11, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    new-instance v12, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v12, v9}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    aput-object v10, v4, v6

    .line 180
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 192
    .end local v3    # "e":Ljava/util/Enumeration;
    .end local v6    # "j":I
    .end local v9    # "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_6
    if-eqz v4, :cond_7

    .line 194
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_5
    array-length v10, v4

    if-ge v6, v10, :cond_7

    .line 196
    aget-object v10, v4, v6

    invoke-interface {v8, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 198
    const/4 v7, 0x1

    .line 203
    .end local v6    # "j":I
    :cond_7
    if-nez v7, :cond_d

    .line 205
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 194
    .restart local v6    # "j":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 214
    .end local v4    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v6    # "j":I
    :cond_9
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v10

    if-nez v10, :cond_a

    .line 216
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint."

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 219
    :cond_a
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 220
    .restart local v4    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_6
    array-length v10, v4

    if-ge v6, v10, :cond_b

    .line 222
    aget-object v10, v4, v6

    invoke-interface {v8, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 224
    const/4 v7, 0x1

    .line 228
    :cond_b
    if-nez v7, :cond_d

    .line 230
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 220
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 235
    .end local v2    # "dpName":Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .end local v4    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v6    # "j":I
    .end local v7    # "matches":Z
    .end local v8    # "names":Ljava/util/List;
    :cond_d
    const/4 v1, 0x0

    .line 238
    .local v1, "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_3
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Extension;

    move-object v10, v0

    sget-object v11, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    .line 246
    instance-of v10, p1, Ljava/security/cert/X509Certificate;

    if-eqz v10, :cond_10

    .line 249
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts()Z

    move-result v10

    if-eqz v10, :cond_e

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 251
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "CA Cert CRL only contains user certificates."

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 241
    :catch_3
    move-exception v3

    .line 243
    .local v3, "e":Ljava/lang/Exception;
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "Basic constraints extension could not be decoded."

    invoke-direct {v10, v11, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 255
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_e
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts()Z

    move-result v10

    if-eqz v10, :cond_10

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v10

    if-nez v10, :cond_10

    .line 257
    :cond_f
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "End CRL only contains CA certificates."

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 262
    :cond_10
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 264
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "onlyContainsAttributeCerts boolean is asserted."

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 267
    .end local v1    # "bc":Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :cond_11
    return-void
.end method

.method protected static processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    .locals 8
    .param p0, "deltaCRL"    # Ljava/security/cert/X509CRL;
    .param p1, "completeCRL"    # Ljava/security/cert/X509CRL;
    .param p2, "pkixParams"    # Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 731
    if-nez p0, :cond_1

    .line 829
    :cond_0
    return-void

    .line 735
    :cond_1
    const/4 v1, 0x0

    .line 738
    .local v1, "completeidp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_0
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 746
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 749
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 751
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Complete CRL issuer does not match delta CRL issuer."

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 741
    :catch_0
    move-exception v4

    .line 743
    .local v4, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Issuing distribution point extension could not be decoded."

    invoke-direct {v6, v7, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 755
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    .line 758
    .local v3, "deltaidp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_1
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 767
    const/4 v5, 0x0

    .line 768
    .local v5, "match":Z
    if-nez v1, :cond_4

    .line 770
    if-nez v3, :cond_3

    .line 772
    const/4 v5, 0x1

    .line 782
    :cond_3
    :goto_0
    if-nez v5, :cond_5

    .line 784
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Issuing distribution point extension from delta CRL and complete CRL does not match."

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 761
    .end local v5    # "match":Z
    :catch_1
    move-exception v4

    .line 763
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Issuing distribution point extension from delta CRL could not be decoded."

    invoke-direct {v6, v7, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 777
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "match":Z
    :cond_4
    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 779
    const/4 v5, 0x1

    goto :goto_0

    .line 789
    :cond_5
    const/4 v0, 0x0

    .line 792
    .local v0, "completeKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_start_2
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_2
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 801
    const/4 v2, 0x0

    .line 804
    .local v2, "deltaKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_start_3
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_3
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    .line 813
    if-nez v0, :cond_6

    .line 815
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "CRL authority key identifier is null."

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 795
    .end local v2    # "deltaKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :catch_2
    move-exception v4

    .line 797
    .local v4, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Authority key identifier extension could not be extracted from complete CRL."

    invoke-direct {v6, v7, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 807
    .end local v4    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v2    # "deltaKeyIdentifier":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :catch_3
    move-exception v4

    .line 809
    .restart local v4    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Authority key identifier extension could not be extracted from delta CRL."

    invoke-direct {v6, v7, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 818
    .end local v4    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_6
    if-nez v2, :cond_7

    .line 820
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Delta CRL authority key identifier is null."

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 823
    :cond_7
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 825
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Delta CRL authority key identifier does not match complete CRL authority key identifier."

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected static processCRLD(Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .locals 5
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "dp"    # Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 349
    const/4 v1, 0x0

    .line 352
    .local v1, "idp":Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_0
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 360
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 362
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;)V

    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;)V

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->intersect(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v2

    .line 370
    :goto_0
    return-object v2

    .line 355
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Issuing distribution point extension could not be decoded."

    invoke-direct {v2, v3, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 365
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-nez v2, :cond_2

    .line 367
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    goto :goto_0

    .line 370
    :cond_2
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    move-object v3, v2

    :goto_1
    if-nez v1, :cond_4

    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    :goto_2
    invoke-virtual {v3, v2}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->intersect(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v2

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;)V

    move-object v3, v2

    goto :goto_1

    :cond_4
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;)V

    goto :goto_2
.end method

.method protected static processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/List;)Ljava/util/Set;
    .locals 22
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "defaultCRLSignCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "defaultCRLSignKey"    # Ljava/security/PublicKey;
    .param p4, "paramsPKIX"    # Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .param p5, "certPathCerts"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 446
    new-instance v13, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v13}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    .line 449
    .local v13, "selector":Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v9

    .line 450
    .local v9, "issuerPrincipal":[B
    invoke-virtual {v13, v9}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getStores()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v6

    .line 463
    .local v6, "coll":Ljava/util/Collection;
    invoke-virtual/range {p4 .. p4}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getAdditionalStores()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 464
    invoke-virtual/range {p4 .. p4}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 471
    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 473
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 475
    .local v3, "cert_it":Ljava/util/Iterator;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v18, "validCerts":Ljava/util/List;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v19, "validKeys":Ljava/util/List;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 480
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/security/cert/X509Certificate;

    .line 486
    .local v16, "signingCert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 488
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 452
    .end local v3    # "cert_it":Ljava/util/Iterator;
    .end local v6    # "coll":Ljava/util/Collection;
    .end local v9    # "issuerPrincipal":[B
    .end local v16    # "signingCert":Ljava/security/cert/X509Certificate;
    .end local v18    # "validCerts":Ljava/util/List;
    .end local v19    # "validKeys":Ljava/util/List;
    :catch_0
    move-exception v7

    .line 454
    .local v7, "e":Ljava/io/IOException;
    new-instance v20, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v21, "Subject criteria for certificate selector to find issuer certificate for CRL could not be set."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 466
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v9    # "issuerPrincipal":[B
    :catch_1
    move-exception v7

    .line 468
    .local v7, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v20, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v21, "Issuer certificate for CRL cannot be searched."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 494
    .end local v7    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v3    # "cert_it":Ljava/util/Iterator;
    .restart local v6    # "coll":Ljava/util/Collection;
    .restart local v16    # "signingCert":Ljava/security/cert/X509Certificate;
    .restart local v18    # "validCerts":Ljava/util/List;
    .restart local v19    # "validKeys":Ljava/util/List;
    :cond_0
    :try_start_2
    const-string v20, "PKIX"

    const-string v21, "BC"

    invoke-static/range {v20 .. v21}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v2

    .line 495
    .local v2, "builder":Ljava/security/cert/CertPathBuilder;
    new-instance v14, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v14}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;-><init>()V
    :try_end_2
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 496
    .end local v13    # "selector":Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .local v14, "selector":Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    :try_start_3
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 497
    invoke-virtual/range {p4 .. p4}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    .line 498
    .local v17, "temp":Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    .line 499
    invoke-static/range {v17 .. v17}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getInstance(Ljava/security/cert/PKIXParameters;)Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    move-result-object v12

    check-cast v12, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    .line 510
    .local v12, "params":Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 512
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setRevocationEnabled(Z)V

    .line 518
    :goto_1
    invoke-virtual {v2, v12}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v4

    .line 519
    .local v4, "certs":Ljava/util/List;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;I)Ljava/security/PublicKey;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v13, v14

    .line 534
    .end local v14    # "selector":Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .restart local v13    # "selector":Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    goto/16 :goto_0

    .line 516
    .end local v4    # "certs":Ljava/util/List;
    .end local v13    # "selector":Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .restart local v14    # "selector":Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    :cond_1
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setRevocationEnabled(Z)V
    :try_end_3
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_1

    .line 522
    .end local v12    # "params":Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    .end local v17    # "temp":Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    :catch_2
    move-exception v7

    move-object v13, v14

    .line 524
    .end local v2    # "builder":Ljava/security/cert/CertPathBuilder;
    .end local v14    # "selector":Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .local v7, "e":Ljava/security/cert/CertPathBuilderException;
    .restart local v13    # "selector":Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    :goto_2
    new-instance v20, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v21, "Internal error."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 526
    .end local v7    # "e":Ljava/security/cert/CertPathBuilderException;
    :catch_3
    move-exception v7

    .line 528
    .local v7, "e":Ljava/security/cert/CertPathValidatorException;
    :goto_3
    new-instance v20, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v21, "Public key of issuer certificate of CRL could not be retrieved."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 530
    .end local v7    # "e":Ljava/security/cert/CertPathValidatorException;
    :catch_4
    move-exception v7

    .line 532
    .local v7, "e":Ljava/lang/Exception;
    :goto_4
    new-instance v20, Ljava/lang/RuntimeException;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 536
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v16    # "signingCert":Ljava/security/cert/X509Certificate;
    :cond_2
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 538
    .local v5, "checkKeys":Ljava/util/Set;
    const/4 v11, 0x0

    .line 539
    .local v11, "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_5

    .line 541
    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/security/cert/X509Certificate;

    .line 542
    .local v15, "signCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v10

    .line 544
    .local v10, "keyusage":[Z
    if-eqz v10, :cond_4

    array-length v0, v10

    move/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_3

    const/16 v20, 0x6

    aget-boolean v20, v10, v20

    if-nez v20, :cond_4

    .line 546
    :cond_3
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .end local v11    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    const-string v20, "Issuer certificate key usage extension does not permit CRL signing."

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .line 539
    .restart local v11    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 551
    :cond_4
    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 555
    .end local v10    # "keyusage":[Z
    .end local v15    # "signCert":Ljava/security/cert/X509Certificate;
    :cond_5
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_6

    if-nez v11, :cond_6

    .line 557
    new-instance v20, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v21, "Cannot find a valid issuer certificate."

    invoke-direct/range {v20 .. v21}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 559
    :cond_6
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_7

    if-eqz v11, :cond_7

    .line 561
    throw v11

    .line 564
    :cond_7
    return-object v5

    .line 530
    .end local v5    # "checkKeys":Ljava/util/Set;
    .end local v8    # "i":I
    .end local v11    # "lastException":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v13    # "selector":Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .restart local v2    # "builder":Ljava/security/cert/CertPathBuilder;
    .restart local v14    # "selector":Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .restart local v16    # "signingCert":Ljava/security/cert/X509Certificate;
    :catch_5
    move-exception v7

    move-object v13, v14

    .end local v14    # "selector":Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .restart local v13    # "selector":Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    goto :goto_4

    .line 526
    .end local v13    # "selector":Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .restart local v14    # "selector":Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    :catch_6
    move-exception v7

    move-object v13, v14

    .end local v14    # "selector":Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .restart local v13    # "selector":Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    goto :goto_3

    .line 522
    .end local v2    # "builder":Ljava/security/cert/CertPathBuilder;
    :catch_7
    move-exception v7

    goto/16 :goto_2
.end method

.method protected static processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;
    .locals 6
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "keys"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 572
    const/4 v3, 0x0

    .line 573
    .local v3, "lastException":Ljava/lang/Exception;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 575
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PublicKey;

    .line 578
    .local v2, "key":Ljava/security/PublicKey;
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    return-object v2

    .line 581
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Ljava/lang/Exception;
    move-object v3, v0

    .line 585
    goto :goto_0

    .line 586
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "key":Ljava/security/PublicKey;
    :cond_0
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Cannot verify CRL."

    invoke-direct {v4, v5, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected static processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;
    .locals 6
    .param p0, "deltacrls"    # Ljava/util/Set;
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 594
    const/4 v3, 0x0

    .line 596
    .local v3, "lastException":Ljava/lang/Exception;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 598
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    .line 601
    .local v0, "crl":Ljava/security/cert/X509CRL;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    .end local v0    # "crl":Ljava/security/cert/X509CRL;
    :goto_1
    return-object v0

    .line 604
    .restart local v0    # "crl":Ljava/security/cert/X509CRL;
    :catch_0
    move-exception v1

    .line 606
    .local v1, "e":Ljava/lang/Exception;
    move-object v3, v1

    .line 608
    goto :goto_0

    .line 610
    .end local v0    # "crl":Ljava/security/cert/X509CRL;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    if-eqz v3, :cond_1

    .line 612
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Cannot verify delta CRL."

    invoke-direct {v4, v5, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 614
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected static processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    .locals 1
    .param p0, "validDate"    # Ljava/util/Date;
    .param p1, "deltacrl"    # Ljava/security/cert/X509CRL;
    .param p2, "cert"    # Ljava/lang/Object;
    .param p3, "certStatus"    # Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .param p4, "pkixParams"    # Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 839
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 841
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V

    .line 843
    :cond_0
    return-void
.end method

.method protected static processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V
    .locals 2
    .param p0, "validDate"    # Ljava/util/Date;
    .param p1, "completecrl"    # Ljava/security/cert/X509CRL;
    .param p2, "cert"    # Ljava/lang/Object;
    .param p3, "certStatus"    # Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 852
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 854
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V

    .line 856
    :cond_0
    return-void
.end method

.method protected static processCertA(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;ILjava/security/PublicKey;ZLjavax/security/auth/x500/X500Principal;Ljava/security/cert/X509Certificate;)V
    .locals 8
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "paramsPKIX"    # Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .param p2, "index"    # I
    .param p3, "workingPublicKey"    # Ljava/security/PublicKey;
    .param p4, "verificationAlreadyPerformed"    # Z
    .param p5, "workingIssuerName"    # Ljavax/security/auth/x500/X500Principal;
    .param p6, "sign"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1459
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v5

    .line 1460
    .local v5, "certs":Ljava/util/List;
    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1464
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    if-nez p4, :cond_0

    .line 1470
    :try_start_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p3, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1483
    :cond_0
    :try_start_1
    invoke-static {p1, p0, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidCertDateFromValidityModel(Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1502
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isRevocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1506
    :try_start_2
    invoke-static {p1, p0, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidCertDateFromValidityModel(Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;

    move-result-object v2

    move-object v0, p1

    move-object v3, p6

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRLs(Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;)V
    :try_end_2
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1523
    :cond_1
    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1525
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IssuerName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") does not match SubjectName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") of signing certificate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1473
    :catch_0
    move-exception v7

    .line 1475
    .local v7, "e":Ljava/security/GeneralSecurityException;
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Could not validate certificate signature."

    invoke-direct {v0, v2, v7, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1486
    .end local v7    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v7

    .line 1488
    .local v7, "e":Ljava/security/cert/CertificateExpiredException;
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not validate certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1490
    .end local v7    # "e":Ljava/security/cert/CertificateExpiredException;
    :catch_2
    move-exception v7

    .line 1492
    .local v7, "e":Ljava/security/cert/CertificateNotYetValidException;
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not validate certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1494
    .end local v7    # "e":Ljava/security/cert/CertificateNotYetValidException;
    :catch_3
    move-exception v7

    .line 1496
    .local v7, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Could not validate time of certificate."

    invoke-direct {v0, v2, v7, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1509
    .end local v7    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_4
    move-exception v7

    .line 1511
    .restart local v7    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move-object v6, v7

    .line 1512
    .local v6, "cause":Ljava/lang/Throwable;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1514
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 1516
    :cond_2
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v6, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1529
    .end local v6    # "cause":Ljava/lang/Throwable;
    .end local v7    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_3
    return-void
.end method

.method protected static processCertBC(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V
    .locals 21
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "nameConstraintValidator"    # Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1155
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v7

    .line 1156
    .local v7, "certs":Ljava/util/List;
    move/from16 v0, p1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 1157
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    .line 1159
    .local v17, "n":I
    sub-int v15, v17, p1

    .line 1163
    .local v15, "i":I
    invoke-static {v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v19

    if-eqz v19, :cond_0

    move/from16 v0, v17

    if-lt v15, v0, :cond_2

    .line 1165
    :cond_0
    invoke-static {v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v18

    .line 1166
    .local v18, "principal":Ljavax/security/auth/x500/X500Principal;
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual/range {v18 .. v18}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 1171
    .local v4, "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :try_start_0
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 1181
    .local v8, "dns":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermittedDN(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 1182
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcludedDN(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_1
    .catch Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1190
    const/4 v5, 0x0

    .line 1193
    .local v5, "altName":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    :try_start_2
    sget-object v19, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v5

    .line 1201
    new-instance v19, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    sget-object v20, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->EmailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v19 .. v20}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getValues(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/util/Vector;

    move-result-object v12

    .line 1202
    .local v12, "emails":Ljava/util/Vector;
    invoke-virtual {v12}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v9

    .local v9, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1204
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1205
    .local v10, "email":Ljava/lang/String;
    new-instance v11, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-direct {v11, v0, v10}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 1208
    .local v11, "emailAsGeneralName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :try_start_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    .line 1209
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_3
    .catch Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1211
    :catch_0
    move-exception v13

    .line 1213
    .local v13, "ex":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subtree check for certificate subject alternative email failed."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v13, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 1173
    .end local v5    # "altName":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .end local v8    # "dns":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v9    # "e":Ljava/util/Enumeration;
    .end local v10    # "email":Ljava/lang/String;
    .end local v11    # "emailAsGeneralName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v12    # "emails":Ljava/util/Vector;
    .end local v13    # "ex":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    :catch_1
    move-exception v9

    .line 1175
    .local v9, "e":Ljava/lang/Exception;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Exception extracting subject name when checking subtrees."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 1184
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "dns":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_2
    move-exception v9

    .line 1186
    .local v9, "e":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subtree check for certificate subject failed."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 1196
    .end local v9    # "e":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .restart local v5    # "altName":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    :catch_3
    move-exception v9

    .line 1198
    .local v9, "e":Ljava/lang/Exception;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subject alternative name extension could not be decoded."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 1217
    .local v9, "e":Ljava/util/Enumeration;
    .restart local v12    # "emails":Ljava/util/Vector;
    :cond_1
    if-eqz v5, :cond_2

    .line 1219
    const/4 v14, 0x0

    .line 1222
    .local v14, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :try_start_4
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v14

    .line 1229
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_1
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 1234
    :try_start_5
    aget-object v19, v14, v16

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    .line 1235
    aget-object v19, v14, v16

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_5
    .catch Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1229
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1224
    .end local v16    # "j":I
    :catch_4
    move-exception v9

    .line 1226
    .local v9, "e":Ljava/lang/Exception;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subject alternative name contents could not be decoded."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 1237
    .local v9, "e":Ljava/util/Enumeration;
    .restart local v16    # "j":I
    :catch_5
    move-exception v9

    .line 1239
    .local v9, "e":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subtree check for certificate subject alternative name failed."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 1245
    .end local v4    # "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v5    # "altName":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .end local v8    # "dns":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v9    # "e":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .end local v12    # "emails":Ljava/util/Vector;
    .end local v14    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v16    # "j":I
    .end local v18    # "principal":Ljavax/security/auth/x500/X500Principal;
    :cond_2
    return-void
.end method

.method protected static processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 38
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "acceptablePolicies"    # Ljava/util/Set;
    .param p3, "validPolicyTree"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p4, "policyNodes"    # [Ljava/util/List;
    .param p5, "inhibitAnyPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1256
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v20

    .line 1257
    .local v20, "certs":Ljava/util/List;
    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/security/cert/X509Certificate;

    .line 1258
    .local v18, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v29

    .line 1260
    .local v29, "n":I
    sub-int v5, v29, p1

    .line 1265
    .local v5, "i":I
    const/16 v19, 0x0

    .line 1268
    .local v19, "certPolicies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 1276
    if-eqz v19, :cond_11

    if-eqz p3, :cond_11

    .line 1281
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v23

    .line 1282
    .local v23, "e":Ljava/util/Enumeration;
    new-instance v35, Ljava/util/HashSet;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashSet;-><init>()V

    .line 1284
    .local v35, "pols":Ljava/util/Set;
    :cond_0
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1286
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v33

    .line 1287
    .local v33, "pInfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    invoke-virtual/range {v33 .. v33}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v34

    .line 1289
    .local v34, "pOid":Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1291
    const-string v4, "2.5.29.32.0"

    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1293
    const/16 v36, 0x0

    .line 1296
    .local v36, "pq":Ljava/util/Set;
    :try_start_1
    invoke-virtual/range {v33 .. v33}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v36

    .line 1304
    move-object/from16 v0, p4

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    invoke-static {v5, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->processCertD1i(I[Ljava/util/List;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/util/Set;)Z

    move-result v28

    .line 1306
    .local v28, "match":Z
    if-nez v28, :cond_0

    .line 1308
    move-object/from16 v0, p4

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    invoke-static {v5, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->processCertD1ii(I[Ljava/util/List;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/util/Set;)V

    goto :goto_0

    .line 1271
    .end local v23    # "e":Ljava/util/Enumeration;
    .end local v28    # "match":Z
    .end local v33    # "pInfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .end local v34    # "pOid":Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v35    # "pols":Ljava/util/Set;
    .end local v36    # "pq":Ljava/util/Set;
    :catch_0
    move-exception v23

    .line 1273
    .local v23, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Could not read certificate policies extension from certificate."

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v4, v10, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 1298
    .local v23, "e":Ljava/util/Enumeration;
    .restart local v33    # "pInfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .restart local v34    # "pOid":Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .restart local v35    # "pols":Ljava/util/Set;
    .restart local v36    # "pq":Ljava/util/Set;
    :catch_1
    move-exception v24

    .line 1300
    .local v24, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Policy qualifier info set could not be build."

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v4, v10, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 1313
    .end local v24    # "ex":Ljava/security/cert/CertPathValidatorException;
    .end local v33    # "pInfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .end local v34    # "pOid":Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v36    # "pq":Ljava/util/Set;
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "2.5.29.32.0"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1315
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->clear()V

    .line 1316
    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1339
    :goto_1
    if-gtz p5, :cond_3

    move/from16 v0, v29

    if-ge v5, v0, :cond_d

    invoke-static/range {v18 .. v18}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1341
    :cond_3
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v23

    .line 1343
    :cond_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1345
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v33

    .line 1347
    .restart local v33    # "pInfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    const-string v4, "2.5.29.32.0"

    invoke-virtual/range {v33 .. v33}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1349
    invoke-virtual/range {v33 .. v33}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v8

    .line 1350
    .local v8, "_apq":Ljava/util/Set;
    add-int/lit8 v4, v5, -0x1

    aget-object v14, p4, v4

    .line 1352
    .local v14, "_nodes":Ljava/util/List;
    const/16 v27, 0x0

    .local v27, "k":I
    :goto_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v27

    if-ge v0, v4, :cond_d

    .line 1354
    move/from16 v0, v27

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1356
    .local v7, "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 1357
    .local v15, "_policySetIter":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1359
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 1362
    .local v16, "_tmp":Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_a

    move-object/from16 v9, v16

    .line 1364
    check-cast v9, Ljava/lang/String;

    .line 1375
    .end local v16    # "_tmp":Ljava/lang/Object;
    .local v9, "_policy":Ljava/lang/String;
    :goto_4
    const/4 v13, 0x0

    .line 1376
    .local v13, "_found":Z
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v12

    .line 1378
    .local v12, "_childrenIter":Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1380
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1382
    .local v11, "_child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1384
    const/4 v13, 0x1

    goto :goto_5

    .line 1320
    .end local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "_apq":Ljava/util/Set;
    .end local v9    # "_policy":Ljava/lang/String;
    .end local v11    # "_child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v12    # "_childrenIter":Ljava/util/Iterator;
    .end local v13    # "_found":Z
    .end local v14    # "_nodes":Ljava/util/List;
    .end local v15    # "_policySetIter":Ljava/util/Iterator;
    .end local v27    # "k":I
    .end local v33    # "pInfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_7
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .line 1321
    .local v25, "it":Ljava/util/Iterator;
    new-instance v37, Ljava/util/HashSet;

    invoke-direct/range {v37 .. v37}, Ljava/util/HashSet;-><init>()V

    .line 1323
    .local v37, "t1":Ljava/util/Set;
    :cond_8
    :goto_6
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1325
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    .line 1327
    .local v32, "o":Ljava/lang/Object;
    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1329
    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1332
    .end local v32    # "o":Ljava/lang/Object;
    :cond_9
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->clear()V

    .line 1333
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1366
    .end local v25    # "it":Ljava/util/Iterator;
    .end local v37    # "t1":Ljava/util/Set;
    .restart local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v8    # "_apq":Ljava/util/Set;
    .restart local v14    # "_nodes":Ljava/util/List;
    .restart local v15    # "_policySetIter":Ljava/util/Iterator;
    .restart local v16    # "_tmp":Ljava/lang/Object;
    .restart local v27    # "k":I
    .restart local v33    # "pInfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_a
    move-object/from16 v0, v16

    instance-of v4, v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v4, :cond_5

    .line 1368
    check-cast v16, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .end local v16    # "_tmp":Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_policy":Ljava/lang/String;
    goto :goto_4

    .line 1388
    .restart local v12    # "_childrenIter":Ljava/util/Iterator;
    .restart local v13    # "_found":Z
    :cond_b
    if-nez v13, :cond_5

    .line 1390
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1391
    .local v6, "_newChildExpectedPolicies":Ljava/util/Set;
    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1393
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 1395
    .local v3, "_newChild":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 1396
    aget-object v4, p4, v5

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1352
    .end local v3    # "_newChild":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v6    # "_newChildExpectedPolicies":Ljava/util/Set;
    .end local v9    # "_policy":Ljava/lang/String;
    .end local v12    # "_childrenIter":Ljava/util/Iterator;
    .end local v13    # "_found":Z
    :cond_c
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_2

    .line 1405
    .end local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "_apq":Ljava/util/Set;
    .end local v14    # "_nodes":Ljava/util/List;
    .end local v15    # "_policySetIter":Ljava/util/Iterator;
    .end local v27    # "k":I
    .end local v33    # "pInfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_d
    move-object/from16 v17, p3

    .line 1409
    .local v17, "_validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    add-int/lit8 v26, v5, -0x1

    .local v26, "j":I
    :goto_7
    if-ltz v26, :cond_10

    .line 1411
    aget-object v31, p4, v26

    .line 1413
    .local v31, "nodes":Ljava/util/List;
    const/16 v27, 0x0

    .restart local v27    # "k":I
    :goto_8
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v27

    if-ge v0, v4, :cond_e

    .line 1415
    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1416
    .local v30, "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v30 .. v30}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v4

    if-nez v4, :cond_f

    .line 1418
    move-object/from16 v0, v17

    move-object/from16 v1, p4

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v17

    .line 1420
    if-nez v17, :cond_f

    .line 1409
    .end local v30    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_e
    add-int/lit8 v26, v26, -0x1

    goto :goto_7

    .line 1413
    .restart local v30    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_f
    add-int/lit8 v27, v27, 0x1

    goto :goto_8

    .line 1431
    .end local v27    # "k":I
    .end local v30    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v31    # "nodes":Ljava/util/List;
    :cond_10
    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v22

    .line 1433
    .local v22, "criticalExtensionOids":Ljava/util/Set;
    if-eqz v22, :cond_12

    .line 1435
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v21

    .line 1437
    .local v21, "critical":Z
    aget-object v31, p4, v5

    .line 1438
    .restart local v31    # "nodes":Ljava/util/List;
    const/16 v26, 0x0

    :goto_9
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v26

    if-ge v0, v4, :cond_12

    .line 1440
    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1441
    .restart local v30    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->setCritical(Z)V

    .line 1438
    add-int/lit8 v26, v26, 0x1

    goto :goto_9

    .line 1446
    .end local v17    # "_validPolicyTree":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v21    # "critical":Z
    .end local v22    # "criticalExtensionOids":Ljava/util/Set;
    .end local v23    # "e":Ljava/util/Enumeration;
    .end local v26    # "j":I
    .end local v30    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v31    # "nodes":Ljava/util/List;
    .end local v35    # "pols":Ljava/util/Set;
    :cond_11
    const/16 v17, 0x0

    :cond_12
    return-object v17
.end method

.method protected static processCertE(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "validPolicyTree"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1126
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 1127
    .local v2, "certs":Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1131
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .line 1134
    .local v1, "certPolicies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1142
    if-nez v1, :cond_0

    .line 1144
    const/4 p2, 0x0

    .line 1146
    :cond_0
    return-object p2

    .line 1137
    :catch_0
    move-exception v3

    .line 1139
    .local v3, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Could not read certificate policies extension from certificate."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static processCertF(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)V
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "validPolicyTree"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p3, "explicitPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1113
    if-gtz p3, :cond_0

    if-nez p2, :cond_0

    .line 1115
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "No valid policy tree found when one expected."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1118
    :cond_0
    return-void
.end method

.method protected static wrapupCertA(ILjava/security/cert/X509Certificate;)I
    .locals 1
    .param p0, "explicitPolicy"    # I
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 2297
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2299
    add-int/lit8 p0, p0, -0x1

    .line 2301
    :cond_0
    return p0
.end method

.method protected static wrapupCertB(Ljava/security/cert/CertPath;II)I
    .locals 9
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "explicitPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2310
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2311
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2316
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 2319
    .local v4, "pc":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v8, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v8

    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2326
    if-eqz v4, :cond_1

    .line 2328
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 2330
    .local v5, "policyConstraints":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2332
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 2333
    .local v2, "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 2338
    :pswitch_0
    const/4 v8, 0x0

    :try_start_1
    invoke-static {v2, v8}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 2346
    .local v6, "tmpInt":I
    if-nez v6, :cond_0

    move p2, v7

    .line 2354
    .end local v2    # "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v5    # "policyConstraints":Ljava/util/Enumeration;
    .end local v6    # "tmpInt":I
    .end local p2    # "explicitPolicy":I
    :cond_1
    return p2

    .line 2322
    .restart local p2    # "explicitPolicy":I
    :catch_0
    move-exception v3

    .line 2324
    .local v3, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints could not be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 2340
    .end local v3    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v2    # "constraint":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .restart local v5    # "policyConstraints":Ljava/util/Enumeration;
    :catch_1
    move-exception v3

    .line 2342
    .local v3, "e":Ljava/lang/Exception;
    new-instance v7, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints requireExplicitPolicy field could not be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 2333
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected static wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V
    .locals 7
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "pathCheckers"    # Ljava/util/List;
    .param p3, "criticalExtensions"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2364
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2365
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2367
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2368
    .local v3, "tmpIter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2372
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v4, v0, p3}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2374
    :catch_0
    move-exception v2

    .line 2376
    .local v2, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Additional certificate path checker failed."

    invoke-direct {v4, v5, v2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2381
    .end local v2    # "e":Ljava/security/cert/CertPathValidatorException;
    :cond_0
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2383
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Certificate has unsupported critical extension: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2386
    :cond_1
    return-void
.end method

.method protected static wrapupCertG(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/Set;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 21
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "paramsPKIX"    # Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .param p2, "userInitialPolicySet"    # Ljava/util/Set;
    .param p3, "index"    # I
    .param p4, "policyNodes"    # [Ljava/util/List;
    .param p5, "validPolicyTree"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p6, "acceptablePolicies"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2398
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v15

    .line 2407
    .local v15, "n":I
    if-nez p5, :cond_1

    .line 2409
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isExplicitPolicyRequired()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 2411
    new-instance v18, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v19, "Explicit policy requested but none available."

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p0

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v18

    .line 2414
    :cond_0
    const/4 v12, 0x0

    .line 2562
    .local v12, "intersection":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_0
    return-object v12

    .line 2416
    .end local v12    # "intersection":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isAnyPolicy(Ljava/util/Set;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 2419
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isExplicitPolicyRequired()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 2421
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 2423
    new-instance v18, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v19, "Explicit policy requested but none available."

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p0

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v18

    .line 2428
    :cond_2
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 2430
    .local v10, "_validPolicyNodeSet":Ljava/util/Set;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_5

    .line 2432
    aget-object v8, p4, v13

    .line 2434
    .local v8, "_nodeDepth":Ljava/util/List;
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_4

    .line 2436
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2438
    .local v7, "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v18, "2.5.29.32.0"

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 2440
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v6

    .line 2441
    .local v6, "_iter":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 2443
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2434
    .end local v6    # "_iter":Ljava/util/Iterator;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 2430
    .end local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2449
    .end local v8    # "_nodeDepth":Ljava/util/List;
    .end local v14    # "k":I
    :cond_5
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 2450
    .local v11, "_vpnsIter":Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 2452
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2453
    .restart local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v9

    .line 2455
    .local v9, "_validPolicy":Ljava/lang/String;
    move-object/from16 v0, p6

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    goto :goto_4

    .line 2462
    .end local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v9    # "_validPolicy":Ljava/lang/String;
    :cond_7
    if-eqz p5, :cond_a

    .line 2464
    add-int/lit8 v13, v15, -0x1

    :goto_5
    if-ltz v13, :cond_a

    .line 2466
    aget-object v17, p4, v13

    .line 2468
    .local v17, "nodes":Ljava/util/List;
    const/4 v14, 0x0

    .restart local v14    # "k":I
    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_9

    .line 2470
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2471
    .local v16, "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v18

    if-nez v18, :cond_8

    .line 2473
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p5

    .line 2468
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 2464
    .end local v16    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_9
    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    .line 2482
    .end local v10    # "_validPolicyNodeSet":Ljava/util/Set;
    .end local v11    # "_vpnsIter":Ljava/util/Iterator;
    .end local v13    # "j":I
    .end local v14    # "k":I
    .end local v17    # "nodes":Ljava/util/List;
    :cond_a
    move-object/from16 v12, p5

    .restart local v12    # "intersection":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_0

    .line 2499
    .end local v12    # "intersection":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_b
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 2501
    .restart local v10    # "_validPolicyNodeSet":Ljava/util/Set;
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_7
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_f

    .line 2503
    aget-object v8, p4, v13

    .line 2505
    .restart local v8    # "_nodeDepth":Ljava/util/List;
    const/4 v14, 0x0

    .restart local v14    # "k":I
    :goto_8
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_e

    .line 2507
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2509
    .restart local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v18, "2.5.29.32.0"

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 2511
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v6

    .line 2512
    .restart local v6    # "_iter":Ljava/util/Iterator;
    :cond_c
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 2514
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2515
    .local v5, "_c_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v18, "2.5.29.32.0"

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 2517
    invoke-interface {v10, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2505
    .end local v5    # "_c_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v6    # "_iter":Ljava/util/Iterator;
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 2501
    .end local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 2527
    .end local v8    # "_nodeDepth":Ljava/util/List;
    .end local v14    # "k":I
    :cond_f
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 2528
    .restart local v11    # "_vpnsIter":Ljava/util/Iterator;
    :cond_10
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 2530
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2531
    .restart local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v9

    .line 2533
    .restart local v9    # "_validPolicy":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_10

    .line 2535
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-static {v0, v1, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p5

    goto :goto_a

    .line 2542
    .end local v7    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v9    # "_validPolicy":Ljava/lang/String;
    :cond_11
    if-eqz p5, :cond_14

    .line 2544
    add-int/lit8 v13, v15, -0x1

    :goto_b
    if-ltz v13, :cond_14

    .line 2546
    aget-object v17, p4, v13

    .line 2548
    .restart local v17    # "nodes":Ljava/util/List;
    const/4 v14, 0x0

    .restart local v14    # "k":I
    :goto_c
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_13

    .line 2550
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2551
    .restart local v16    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v18

    if-nez v18, :cond_12

    .line 2553
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p5

    .line 2548
    :cond_12
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    .line 2544
    .end local v16    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_13
    add-int/lit8 v13, v13, -0x1

    goto :goto_b

    .line 2560
    .end local v14    # "k":I
    .end local v17    # "nodes":Ljava/util/List;
    :cond_14
    move-object/from16 v12, p5

    .restart local v12    # "intersection":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_0
.end method
