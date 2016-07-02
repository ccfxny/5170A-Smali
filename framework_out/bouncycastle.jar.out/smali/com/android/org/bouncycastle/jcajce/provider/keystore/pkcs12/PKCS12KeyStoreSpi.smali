.class public Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "PKCS12KeyStoreSpi.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lcom/android/org/bouncycastle/jce/interfaces/BCKeyStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;,
        Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;,
        Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;,
        Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$BCPKCS12KeyStore;,
        Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    }
.end annotation


# static fields
.field static final CERTIFICATE:I = 0x1

.field static final KEY:I = 0x2

.field static final KEY_PRIVATE:I = 0x0

.field static final KEY_PUBLIC:I = 0x1

.field static final KEY_SECRET:I = 0x2

.field private static final MIN_ITERATIONS:I = 0x400

.field static final NULL:I = 0x0

.field private static final SALT_SIZE:I = 0x14

.field static final SEALED:I = 0x4

.field static final SECRET:I = 0x3

.field private static final bcProvider:Ljava/security/Provider;

.field private static final keySizeProvider:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;


# instance fields
.field private certAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private certFact:Ljava/security/cert/CertificateFactory;

.field private certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

.field private chainCerts:Ljava/util/Hashtable;

.field private keyAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private keyCerts:Ljava/util/Hashtable;

.field private keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

.field private localIds:Ljava/util/Hashtable;

.field protected random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->bcProvider:Ljava/security/Provider;

    .line 112
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keySizeProvider:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    return-void
.end method

.method public constructor <init>(Ljava/security/Provider;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 4
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "keyAlgorithm"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "certAlgorithm"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    const/4 v2, 0x0

    .line 187
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 114
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 115
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Ljava/util/Hashtable;

    .line 116
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 117
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    .line 118
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    .line 136
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    .line 188
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 189
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 193
    if-eqz p1, :cond_0

    .line 195
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1, p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certFact:Ljava/security/cert/CertificateFactory;

    .line 206
    :goto_0
    return-void

    .line 199
    :cond_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certFact:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t create cert factory - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$100(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 1
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;
    .param p1, "x1"    # Ljava/security/PublicKey;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->bcProvider:Ljava/security/Provider;

    return-object v0
.end method

.method private static calculatePbeMac(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B
    .locals 7
    .param p0, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p1, "salt"    # [B
    .param p2, "itCount"    # I
    .param p3, "password"    # [C
    .param p4, "wrongPkcs12Zero"    # Z
    .param p5, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1647
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->bcProvider:Ljava/security/Provider;

    invoke-static {v5, v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 1648
    .local v2, "keyFact":Ljavax/crypto/SecretKeyFactory;
    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v0, p1, p2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 1649
    .local v0, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v4, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 1650
    .local v4, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v2, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    .line 1651
    .local v1, "key":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    invoke-virtual {v1, p4}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->setTryWrongPKCS12Zero(Z)V

    .line 1653
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->bcProvider:Ljava/security/Provider;

    invoke-static {v5, v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 1654
    .local v3, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v3, v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1655
    invoke-virtual {v3, p5}, Ljavax/crypto/Mac;->update([B)V

    .line 1656
    invoke-virtual {v3}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v5

    return-object v5
.end method

.method private createCipher(I[CLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;
    .locals 15
    .param p1, "mode"    # I
    .param p2, "password"    # [C
    .param p3, "algId"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 718
    invoke-virtual/range {p3 .. p3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    move-result-object v7

    .line 719
    .local v7, "alg":Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getKeyDerivationFunc()Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;

    move-result-object v12

    .line 720
    .local v12, "func":Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v10

    .line 722
    .local v10, "encScheme":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getKeyDerivationFunc()Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->bcProvider:Ljava/security/Provider;

    invoke-static {v1, v2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v14

    .line 725
    .local v14, "keyFact":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->isDefaultPrf()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 727
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    move-result-object v2

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keySizeProvider:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    invoke-virtual {v4, v10}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;->getKeySize(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-direct {v1, v0, v2, v3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v14, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v13

    .line 734
    .local v13, "key":Ljavax/crypto/SecretKey;
    :goto_0
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v8

    .line 736
    .local v8, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v11

    .line 738
    .local v11, "encryptionAlg":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    .line 739
    .local v9, "encParams":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v1, v9, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_0

    .line 741
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move/from16 v0, p1

    invoke-virtual {v8, v0, v13, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 752
    :cond_0
    return-object v8

    .line 731
    .end local v8    # "cipher":Ljavax/crypto/Cipher;
    .end local v9    # "encParams":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .end local v11    # "encryptionAlg":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v13    # "key":Ljavax/crypto/SecretKey;
    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    move-result-object v3

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keySizeProvider:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;->getKeySize(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)I

    move-result v5

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getPrf()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;-><init>([C[BIILcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-virtual {v14, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v13

    .restart local v13    # "key":Ljavax/crypto/SecretKey;
    goto :goto_0
.end method

.method private createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 4
    .param p1, "pubKey"    # Ljava/security/PublicKey;

    .prologue
    .line 213
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 216
    .local v1, "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 218
    .end local v1    # "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "error creating key"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private doStore(Ljava/io/OutputStream;[CZ)V
    .locals 61
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .param p3, "useDEREncoding"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1252
    if-nez p2, :cond_0

    .line 1254
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "No password supplied for PKCS#12 KeyStore."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1260
    :cond_0
    new-instance v47, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v47 .. v47}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1263
    .local v47, "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v50

    .line 1265
    .local v50, "ks":Ljava/util/Enumeration;
    :goto_0
    invoke-interface/range {v50 .. v50}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1267
    const/16 v4, 0x14

    new-array v0, v4, [B

    move-object/from16 v45, v0

    .line 1269
    .local v45, "kSalt":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1271
    invoke-interface/range {v50 .. v50}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/String;

    .line 1272
    .local v53, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Ljava/security/PrivateKey;

    .line 1273
    .local v58, "privKey":Ljava/security/PrivateKey;
    new-instance v44, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    const/16 v4, 0x400

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    .line 1274
    .local v44, "kParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v44

    move-object/from16 v3, p2

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->wrapKey(Ljava/lang/String;Ljava/security/Key;Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B

    move-result-object v41

    .line 1275
    .local v41, "kBytes":[B
    new-instance v39, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v44 .. v44}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-direct {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1276
    .local v39, "kAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v42, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 1277
    .local v42, "kInfo":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    const/16 v18, 0x0

    .line 1278
    .local v18, "attrSet":Z
    new-instance v43, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v43 .. v43}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1280
    .local v43, "kName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v58

    instance-of v4, v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_4

    move-object/from16 v21, v58

    .line 1282
    check-cast v21, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1286
    .local v21, "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v54

    check-cast v54, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    .line 1287
    .local v54, "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    if-eqz v54, :cond_1

    invoke-virtual/range {v54 .. v54}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1289
    :cond_1
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v53

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1295
    :cond_2
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1297
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v32

    .line 1299
    .local v32, "ct":Ljava/security/cert/Certificate;
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v32 .. v32}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1302
    .end local v32    # "ct":Ljava/security/cert/Certificate;
    :cond_3
    invoke-interface/range {v21 .. v21}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v35

    .line 1304
    .local v35, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1306
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1307
    .local v55, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v46, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1309
    .local v46, "kSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v46

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1310
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v21

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1312
    const/16 v18, 0x1

    .line 1314
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v46

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 1318
    .end local v21    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35    # "e":Ljava/util/Enumeration;
    .end local v46    # "kSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v54    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .end local v55    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_4
    if-nez v18, :cond_5

    .line 1323
    new-instance v46, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1324
    .restart local v46    # "kSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v32

    .line 1326
    .restart local v32    # "ct":Ljava/security/cert/Certificate;
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1327
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-virtual/range {v32 .. v32}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1329
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v46

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1331
    new-instance v46, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .end local v46    # "kSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1333
    .restart local v46    # "kSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1334
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v53

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1336
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v46

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1339
    .end local v32    # "ct":Ljava/security/cert/Certificate;
    .end local v46    # "kSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_5
    new-instance v40, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs8ShroudedKeyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v42 .. v42}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v43

    invoke-direct {v7, v0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v40

    invoke-direct {v0, v4, v5, v7}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 1340
    .local v40, "kBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v47

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto/16 :goto_0

    .line 1343
    .end local v18    # "attrSet":Z
    .end local v39    # "kAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v40    # "kBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v41    # "kBytes":[B
    .end local v42    # "kInfo":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v43    # "kName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v44    # "kParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v45    # "kSalt":[B
    .end local v53    # "name":Ljava/lang/String;
    .end local v58    # "privKey":Ljava/security/PrivateKey;
    :cond_6
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v47

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string v5, "DER"

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v48

    .line 1344
    .local v48, "keySEncoded":[B
    new-instance v49, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    .line 1349
    .local v49, "keyString":Lcom/android/org/bouncycastle/asn1/BEROctetString;
    const/16 v4, 0x14

    new-array v0, v4, [B

    move-object/from16 v26, v0

    .line 1351
    .local v26, "cSalt":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1353
    new-instance v30, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v30 .. v30}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1354
    .local v30, "certSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v25, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    const/16 v4, 0x400

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    .line 1355
    .local v25, "cParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v25 .. v25}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-direct {v6, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1356
    .local v6, "cAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v34, Ljava/util/Hashtable;

    invoke-direct/range {v34 .. v34}, Ljava/util/Hashtable;-><init>()V

    .line 1358
    .local v34, "doneCerts":Ljava/util/Hashtable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v31

    .line 1359
    .local v31, "cs":Ljava/util/Enumeration;
    :goto_2
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1363
    :try_start_0
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/String;

    .line 1364
    .restart local v53    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v27

    .line 1365
    .local v27, "cert":Ljava/security/cert/Certificate;
    const/16 v22, 0x0

    .line 1366
    .local v22, "cAttrSet":Z
    new-instance v23, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->x509Certificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1369
    .local v23, "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    new-instance v36, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v36 .. v36}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1371
    .local v36, "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v27

    instance-of v4, v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_a

    .line 1373
    move-object/from16 v0, v27

    check-cast v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v21, v0

    .line 1377
    .restart local v21    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v54

    check-cast v54, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    .line 1378
    .restart local v54    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    if-eqz v54, :cond_7

    invoke-virtual/range {v54 .. v54}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1380
    :cond_7
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v53

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1386
    :cond_8
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    if-nez v4, :cond_9

    .line 1388
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1391
    :cond_9
    invoke-interface/range {v21 .. v21}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v35

    .line 1393
    .restart local v35    # "e":Ljava/util/Enumeration;
    :goto_3
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1395
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1396
    .restart local v55    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v37, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1398
    .local v37, "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v37

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1399
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v21

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1400
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1402
    const/16 v22, 0x1

    .line 1403
    goto :goto_3

    .line 1406
    .end local v21    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35    # "e":Ljava/util/Enumeration;
    .end local v37    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v54    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .end local v55    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_a
    if-nez v22, :cond_b

    .line 1408
    new-instance v37, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1410
    .restart local v37    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1411
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1412
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1414
    new-instance v37, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .end local v37    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1416
    .restart local v37    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1417
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v53

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1419
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1422
    .end local v37    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_b
    new-instance v60, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v36

    invoke-direct {v7, v0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v5, v7}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 1424
    .local v60, "sBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v30

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1426
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1428
    .end local v22    # "cAttrSet":Z
    .end local v23    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v27    # "cert":Ljava/security/cert/Certificate;
    .end local v36    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v53    # "name":Ljava/lang/String;
    .end local v60    # "sBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :catch_0
    move-exception v35

    .line 1430
    .local v35, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error encoding certificate: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1434
    .end local v35    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v31

    .line 1435
    :cond_d
    :goto_4
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1439
    :try_start_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 1440
    .local v29, "certId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/security/cert/Certificate;

    .line 1441
    .restart local v27    # "cert":Ljava/security/cert/Certificate;
    const/16 v22, 0x0

    .line 1443
    .restart local v22    # "cAttrSet":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_d

    .line 1448
    new-instance v23, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->x509Certificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1451
    .restart local v23    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    new-instance v36, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v36 .. v36}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1453
    .restart local v36    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v27

    instance-of v4, v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_11

    .line 1455
    move-object/from16 v0, v27

    check-cast v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v21, v0

    .line 1459
    .restart local v21    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v54

    check-cast v54, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    .line 1460
    .restart local v54    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    if-eqz v54, :cond_e

    invoke-virtual/range {v54 .. v54}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1462
    :cond_e
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v29

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1465
    :cond_f
    invoke-interface/range {v21 .. v21}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v35

    .line 1467
    .local v35, "e":Ljava/util/Enumeration;
    :cond_10
    :goto_5
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1469
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1475
    .restart local v55    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v4, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 1480
    new-instance v37, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1482
    .restart local v37    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v37

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1483
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v21

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1484
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1486
    const/16 v22, 0x1

    .line 1487
    goto :goto_5

    .line 1490
    .end local v21    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35    # "e":Ljava/util/Enumeration;
    .end local v37    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v54    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .end local v55    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_11
    if-nez v22, :cond_12

    .line 1492
    new-instance v37, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1494
    .restart local v37    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1495
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v29

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1497
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1500
    .end local v37    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_12
    new-instance v60, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v36

    invoke-direct {v7, v0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v5, v7}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 1502
    .restart local v60    # "sBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v30

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1504
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 1506
    .end local v22    # "cAttrSet":Z
    .end local v23    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v27    # "cert":Ljava/security/cert/Certificate;
    .end local v29    # "certId":Ljava/lang/String;
    .end local v36    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v60    # "sBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :catch_1
    move-exception v35

    .line 1508
    .local v35, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error encoding certificate: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1512
    .end local v35    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v31

    .line 1513
    :cond_14
    :goto_6
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1517
    :try_start_2
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    .line 1518
    .local v29, "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/security/cert/Certificate;

    .line 1520
    .restart local v27    # "cert":Ljava/security/cert/Certificate;
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_14

    .line 1525
    new-instance v23, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->x509Certificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1528
    .restart local v23    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    new-instance v36, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v36 .. v36}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1530
    .restart local v36    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v27

    instance-of v4, v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_16

    .line 1532
    move-object/from16 v0, v27

    check-cast v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v21, v0

    .line 1533
    .restart local v21    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    invoke-interface/range {v21 .. v21}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v35

    .line 1535
    .local v35, "e":Ljava/util/Enumeration;
    :cond_15
    :goto_7
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1537
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1543
    .restart local v55    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v4, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 1548
    new-instance v37, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1550
    .restart local v37    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v37

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1551
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v21

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1552
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    .line 1560
    .end local v21    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v23    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v27    # "cert":Ljava/security/cert/Certificate;
    .end local v29    # "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .end local v35    # "e":Ljava/util/Enumeration;
    .end local v36    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v37    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v55    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :catch_2
    move-exception v35

    .line 1562
    .local v35, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error encoding certificate: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1556
    .end local v35    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v23    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .restart local v27    # "cert":Ljava/security/cert/Certificate;
    .restart local v29    # "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .restart local v36    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_16
    :try_start_3
    new-instance v60, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v36

    invoke-direct {v7, v0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v5, v7}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 1558
    .restart local v60    # "sBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v30

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_6

    .line 1566
    .end local v23    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v27    # "cert":Ljava/security/cert/Certificate;
    .end local v29    # "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .end local v36    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v60    # "sBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :cond_17
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string v5, "DER"

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v9

    .line 1567
    .local v9, "certSeqEncoded":[B
    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->cryptData(ZLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v28

    .line 1568
    .local v28, "certBytes":[B
    new-instance v24, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;

    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    move-object/from16 v0, v28

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v6, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1570
    .local v24, "cInfo":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    const/4 v4, 0x2

    new-array v0, v4, [Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-object/from16 v38, v0

    const/4 v4, 0x0

    new-instance v5, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v7, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v49

    invoke-direct {v5, v7, v0}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v5, v38, v4

    const/4 v4, 0x1

    new-instance v5, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v7, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->encryptedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v5, v38, v4

    .line 1576
    .local v38, "info":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    new-instance v19, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>([Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;)V

    .line 1578
    .local v19, "auth":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    new-instance v20, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1580
    .local v20, "bOut":Ljava/io/ByteArrayOutputStream;
    if-eqz p3, :cond_18

    .line 1582
    new-instance v17, Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1589
    .local v17, "asn1Out":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    :goto_8
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1591
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v57

    .line 1593
    .local v57, "pkg":[B
    new-instance v52, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    move-object/from16 v0, v57

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    move-object/from16 v0, v52

    invoke-direct {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1598
    .local v52, "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    const/16 v4, 0x14

    new-array v11, v4, [B

    .line 1599
    .local v11, "mSalt":[B
    const/16 v12, 0x400

    .line 1601
    .local v12, "itCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1603
    invoke-virtual/range {v52 .. v52}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v15

    .line 1609
    .local v15, "data":[B
    :try_start_4
    sget-object v10, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->id_SHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v14, 0x0

    move-object/from16 v13, p2

    invoke-static/range {v10 .. v15}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->calculatePbeMac(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B

    move-result-object v59

    .line 1611
    .local v59, "res":[B
    new-instance v16, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->id_SHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v5, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1612
    .local v16, "algId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v33, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    move-object/from16 v0, v33

    move-object/from16 v1, v16

    move-object/from16 v2, v59

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 1614
    .local v33, "dInfo":Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    new-instance v51, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    move-object/from16 v0, v51

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v11, v12}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;-><init>(Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;[BI)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1624
    .local v51, "mData":Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    new-instance v56, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;

    move-object/from16 v0, v56

    move-object/from16 v1, v52

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;Lcom/android/org/bouncycastle/asn1/pkcs/MacData;)V

    .line 1626
    .local v56, "pfx":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    if-eqz p3, :cond_19

    .line 1628
    new-instance v17, Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    .end local v17    # "asn1Out":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1635
    .restart local v17    # "asn1Out":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    :goto_9
    move-object/from16 v0, v17

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1636
    return-void

    .line 1586
    .end local v11    # "mSalt":[B
    .end local v12    # "itCount":I
    .end local v15    # "data":[B
    .end local v16    # "algId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v17    # "asn1Out":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    .end local v33    # "dInfo":Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    .end local v51    # "mData":Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    .end local v52    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v56    # "pfx":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .end local v57    # "pkg":[B
    .end local v59    # "res":[B
    :cond_18
    new-instance v17, Lcom/android/org/bouncycastle/asn1/BEROutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .restart local v17    # "asn1Out":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    goto/16 :goto_8

    .line 1616
    .restart local v11    # "mSalt":[B
    .restart local v12    # "itCount":I
    .restart local v15    # "data":[B
    .restart local v52    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v57    # "pkg":[B
    :catch_3
    move-exception v35

    .line 1618
    .local v35, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error constructing MAC: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1632
    .end local v35    # "e":Ljava/lang/Exception;
    .restart local v16    # "algId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v33    # "dInfo":Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    .restart local v51    # "mData":Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    .restart local v56    # "pfx":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .restart local v59    # "res":[B
    :cond_19
    new-instance v17, Lcom/android/org/bouncycastle/asn1/BEROutputStream;

    .end local v17    # "asn1Out":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .restart local v17    # "asn1Out":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    goto :goto_9
.end method


# virtual methods
.method protected cryptData(ZLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B
    .locals 13
    .param p1, "forEncryption"    # Z
    .param p2, "algId"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "password"    # [C
    .param p4, "wrongPKCS12Zero"    # Z
    .param p5, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 669
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 671
    .local v1, "algorithm":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v10, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 673
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object v8

    .line 674
    .local v8, "pbeParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v9, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 678
    .local v9, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->bcProvider:Ljava/security/Provider;

    invoke-static {v10, v11}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v6

    .line 679
    .local v6, "keyFact":Ljavax/crypto/SecretKeyFactory;
    new-instance v3, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    invoke-direct {v3, v10, v11}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 682
    .local v3, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {v6, v9}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    .line 684
    .local v5, "key":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    move/from16 v0, p4

    invoke-virtual {v5, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->setTryWrongPKCS12Zero(Z)V

    .line 686
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->bcProvider:Ljava/security/Provider;

    invoke-static {v10, v11}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 687
    .local v2, "cipher":Ljavax/crypto/Cipher;
    if-eqz p1, :cond_0

    const/4 v7, 0x1

    .line 688
    .local v7, "mode":I
    :goto_0
    invoke-virtual {v2, v7, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 689
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 702
    .end local v3    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v5    # "key":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .end local v6    # "keyFact":Ljavax/crypto/SecretKeyFactory;
    .end local v7    # "mode":I
    .end local v8    # "pbeParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v9    # "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    :goto_1
    return-object v10

    .line 687
    .restart local v3    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .restart local v5    # "key":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .restart local v6    # "keyFact":Ljavax/crypto/SecretKeyFactory;
    .restart local v8    # "pbeParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .restart local v9    # "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    :cond_0
    const/4 v7, 0x2

    goto :goto_0

    .line 691
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v5    # "key":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .end local v6    # "keyFact":Ljavax/crypto/SecretKeyFactory;
    :catch_0
    move-exception v4

    .line 693
    .local v4, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exception decrypting data - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 696
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v8    # "pbeParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v9    # "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    :cond_1
    sget-object v10, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 700
    const/4 v10, 0x2

    :try_start_1
    move-object/from16 v0, p3

    invoke-direct {p0, v10, v0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createCipher(I[CLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 702
    .restart local v2    # "cipher":Ljavax/crypto/Cipher;
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    goto :goto_1

    .line 704
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    :catch_1
    move-exception v4

    .line 706
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exception decrypting data - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 711
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unknown PBE algorithm: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public engineAliases()Ljava/util/Enumeration;
    .locals 5

    .prologue
    .line 232
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 234
    .local v2, "tab":Ljava/util/Hashtable;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 235
    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "cert"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 240
    :cond_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 241
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 243
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 244
    .local v0, "a":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 246
    const-string v3, "key"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 250
    .end local v0    # "a":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    return-object v3
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v3, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Key;

    .line 269
    .local v2, "k":Ljava/security/Key;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v3, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 271
    .local v0, "c":Ljava/security/cert/Certificate;
    if-eqz v0, :cond_0

    .line 273
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_0
    if-eqz v2, :cond_2

    .line 278
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 279
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 281
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/Certificate;

    .line 283
    .restart local v0    # "c":Ljava/security/cert/Certificate;
    :cond_1
    if-eqz v0, :cond_2

    .line 285
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .end local v1    # "id":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 296
    if-nez p1, :cond_0

    .line 298
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "null alias passed to getCertificate."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v2, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 306
    .local v0, "c":Ljava/security/cert/Certificate;
    if-nez v0, :cond_1

    .line 308
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 309
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 311
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/Certificate;

    .line 319
    .end local v1    # "id":Ljava/lang/String;
    .restart local v0    # "c":Ljava/security/cert/Certificate;
    :cond_1
    :goto_0
    return-object v0

    .line 315
    .restart local v1    # "id":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/Certificate;

    .restart local v0    # "c":Ljava/security/cert/Certificate;
    goto :goto_0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 5
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    .line 325
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 326
    .local v0, "c":Ljava/util/Enumeration;
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 328
    .local v1, "k":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 330
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    .line 331
    .local v3, "tc":Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 333
    .local v2, "ta":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 353
    .end local v2    # "ta":Ljava/lang/String;
    .end local v3    # "tc":Ljava/security/cert/Certificate;
    :goto_0
    return-object v2

    .line 339
    :cond_1
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 340
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 342
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 344
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    .line 345
    .restart local v3    # "tc":Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 347
    .restart local v2    # "ta":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 353
    .end local v2    # "ta":Ljava/lang/String;
    .end local v3    # "tc":Ljava/security/cert/Certificate;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 20
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 359
    if-nez p1, :cond_0

    .line 361
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "null alias passed to getCertificateChain."

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 364
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 366
    const/4 v7, 0x0

    .line 457
    :cond_1
    :goto_0
    return-object v7

    .line 369
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    .line 371
    .local v6, "c":Ljava/security/cert/Certificate;
    if-eqz v6, :cond_8

    .line 373
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 375
    .local v9, "cs":Ljava/util/Vector;
    :goto_1
    if-eqz v6, :cond_7

    move-object/from16 v16, v6

    .line 377
    check-cast v16, Ljava/security/cert/X509Certificate;

    .line 378
    .local v16, "x509c":Ljava/security/cert/X509Certificate;
    const/4 v13, 0x0

    .line 380
    .local v13, "nextC":Ljava/security/cert/Certificate;
    sget-object v17, Lcom/android/org/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v5

    .line 381
    .local v5, "bytes":[B
    if-eqz v5, :cond_3

    .line 385
    :try_start_0
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v3, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 387
    .local v3, "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v17

    check-cast v17, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    .line 388
    .local v4, "authBytes":[B
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    .end local v3    # "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 390
    .restart local v3    # "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v12

    .line 391
    .local v12, "id":Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v17

    if-eqz v17, :cond_3

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;[B)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "nextC":Ljava/security/cert/Certificate;
    check-cast v13, Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    .end local v3    # "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v4    # "authBytes":[B
    .end local v12    # "id":Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .restart local v13    # "nextC":Ljava/security/cert/Certificate;
    :cond_3
    if-nez v13, :cond_5

    .line 408
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v11

    .line 409
    .local v11, "i":Ljava/security/Principal;
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v14

    .line 411
    .local v14, "s":Ljava/security/Principal;
    invoke-interface {v11, v14}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v10

    .line 415
    .local v10, "e":Ljava/util/Enumeration;
    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 418
    .local v8, "crt":Ljava/security/cert/X509Certificate;
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v15

    .line 419
    .local v15, "sub":Ljava/security/Principal;
    invoke-interface {v15, v11}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 423
    :try_start_1
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 424
    move-object v13, v8

    .line 436
    .end local v8    # "crt":Ljava/security/cert/X509Certificate;
    .end local v10    # "e":Ljava/util/Enumeration;
    .end local v11    # "i":Ljava/security/Principal;
    .end local v14    # "s":Ljava/security/Principal;
    .end local v15    # "sub":Ljava/security/Principal;
    :cond_5
    invoke-virtual {v9, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 437
    if-eq v13, v6, :cond_6

    .line 439
    move-object v6, v13

    goto/16 :goto_1

    .line 397
    .end local v13    # "nextC":Ljava/security/cert/Certificate;
    :catch_0
    move-exception v10

    .line 399
    .local v10, "e":Ljava/io/IOException;
    new-instance v17, Ljava/lang/RuntimeException;

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 443
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v13    # "nextC":Ljava/security/cert/Certificate;
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 447
    .end local v5    # "bytes":[B
    .end local v13    # "nextC":Ljava/security/cert/Certificate;
    .end local v16    # "x509c":Ljava/security/cert/X509Certificate;
    :cond_7
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v7, v0, [Ljava/security/cert/Certificate;

    .line 449
    .local v7, "certChain":[Ljava/security/cert/Certificate;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    array-length v0, v7

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v11, v0, :cond_1

    .line 451
    invoke-virtual {v9, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/security/cert/Certificate;

    aput-object v17, v7, v11

    .line 449
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 457
    .end local v7    # "certChain":[Ljava/security/cert/Certificate;
    .end local v9    # "cs":Ljava/util/Vector;
    .end local v11    # "i":I
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 427
    .restart local v5    # "bytes":[B
    .restart local v8    # "crt":Ljava/security/cert/X509Certificate;
    .restart local v9    # "cs":Ljava/util/Vector;
    .local v10, "e":Ljava/util/Enumeration;
    .local v11, "i":Ljava/security/Principal;
    .restart local v13    # "nextC":Ljava/security/cert/Certificate;
    .restart local v14    # "s":Ljava/security/Principal;
    .restart local v15    # "sub":Ljava/security/Principal;
    .restart local v16    # "x509c":Ljava/security/cert/X509Certificate;
    :catch_1
    move-exception v17

    goto :goto_2
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 462
    if-nez p1, :cond_0

    .line 464
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 468
    const/4 v0, 0x0

    .line 470
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 478
    if-nez p1, :cond_0

    .line 480
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null alias passed to getKey."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    return-object v0
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 54
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 760
    if-nez p1, :cond_1

    .line 1195
    :cond_0
    return-void

    .line 765
    :cond_1
    if-nez p2, :cond_2

    .line 767
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v6, "No password supplied for PKCS#12 KeyStore."

    invoke-direct {v3, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 770
    :cond_2
    new-instance v25, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 772
    .local v25, "bufIn":Ljava/io/BufferedInputStream;
    const/16 v3, 0xa

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 774
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedInputStream;->read()I

    move-result v38

    .line 776
    .local v38, "head":I
    const/16 v3, 0x30

    move/from16 v0, v38

    if-eq v0, v3, :cond_3

    .line 778
    new-instance v3, Ljava/io/IOException;

    const-string v6, "stream does not represent a PKCS12 key store"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 781
    :cond_3
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedInputStream;->reset()V

    .line 783
    new-instance v22, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 784
    .local v22, "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v46

    check-cast v46, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 785
    .local v46, "obj":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;

    move-result-object v23

    .line 786
    .local v23, "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getAuthSafe()Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v40

    .line 787
    .local v40, "info":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    new-instance v30, Ljava/util/Vector;

    invoke-direct/range {v30 .. v30}, Ljava/util/Vector;-><init>()V

    .line 788
    .local v30, "chain":Ljava/util/Vector;
    const/16 v53, 0x0

    .line 789
    .local v53, "unmarkedKey":Z
    const/4 v13, 0x0

    .line 791
    .local v13, "wrongPKCS12Zero":Z
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 793
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    move-result-object v44

    .line 794
    .local v44, "mData":Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    invoke-virtual/range {v44 .. v44}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->getMac()Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v33

    .line 795
    .local v33, "dInfo":Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    invoke-virtual/range {v33 .. v33}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v16

    .line 796
    .local v16, "algId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual/range {v44 .. v44}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->getSalt()[B

    move-result-object v4

    .line 797
    .local v4, "salt":[B
    invoke-virtual/range {v44 .. v44}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 799
    .local v5, "itCount":I
    invoke-virtual/range {v40 .. v40}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    .line 803
    .local v8, "data":[B
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    const/4 v7, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v3 .. v8}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->calculatePbeMac(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B

    move-result-object v50

    .line 804
    .local v50, "res":[B
    invoke-virtual/range {v33 .. v33}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->getDigest()[B

    move-result-object v34

    .line 806
    .local v34, "dig":[B
    move-object/from16 v0, v50

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v3

    if-nez v3, :cond_6

    .line 808
    move-object/from16 v0, p2

    array-length v3, v0

    if-lez v3, :cond_4

    .line 810
    new-instance v3, Ljava/io/IOException;

    const-string v6, "PKCS12 key store mac invalid - wrong password or corrupted file."

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 824
    .end local v34    # "dig":[B
    .end local v50    # "res":[B
    :catch_0
    move-exception v35

    .line 826
    .local v35, "e":Ljava/io/IOException;
    throw v35

    .line 814
    .end local v35    # "e":Ljava/io/IOException;
    .restart local v34    # "dig":[B
    .restart local v50    # "res":[B
    :cond_4
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    const/4 v7, 0x1

    move-object/from16 v6, p2

    invoke-static/range {v3 .. v8}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->calculatePbeMac(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B

    move-result-object v50

    .line 816
    move-object/from16 v0, v50

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v3

    if-nez v3, :cond_5

    .line 818
    new-instance v3, Ljava/io/IOException;

    const-string v6, "PKCS12 key store mac invalid - wrong password or corrupted file."

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 828
    .end local v34    # "dig":[B
    .end local v50    # "res":[B
    :catch_1
    move-exception v35

    .line 830
    .local v35, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error constructing MAC: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 821
    .end local v35    # "e":Ljava/lang/Exception;
    .restart local v34    # "dig":[B
    .restart local v50    # "res":[B
    :cond_5
    const/4 v13, 0x1

    .line 834
    .end local v4    # "salt":[B
    .end local v5    # "itCount":I
    .end local v8    # "data":[B
    .end local v16    # "algId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v33    # "dInfo":Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    .end local v34    # "dig":[B
    .end local v44    # "mData":Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    .end local v50    # "res":[B
    :cond_6
    new-instance v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 835
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Ljava/util/Hashtable;

    .line 837
    invoke-virtual/range {v40 .. v40}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 839
    new-instance v22, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    .end local v22    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v40 .. v40}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 841
    .restart local v22    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    move-result-object v20

    .line 842
    .local v20, "authSafe":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getContentInfo()[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v26

    .line 844
    .local v26, "c":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    const/16 v39, 0x0

    .local v39, "i":I
    :goto_0
    move-object/from16 v0, v26

    array-length v3, v0

    move/from16 v0, v39

    if-eq v0, v3, :cond_22

    .line 846
    aget-object v3, v26, v39

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 848
    new-instance v32, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    aget-object v3, v26, v39

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 849
    .local v32, "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v51

    check-cast v51, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 851
    .local v51, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/16 v41, 0x0

    .local v41, "j":I
    :goto_1
    invoke-virtual/range {v51 .. v51}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    move/from16 v0, v41

    if-eq v0, v3, :cond_21

    .line 853
    move-object/from16 v0, v51

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object v21

    .line 854
    .local v21, "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs8ShroudedKeyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 856
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-result-object v36

    .line 857
    .local v36, "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    invoke-virtual/range {v36 .. v36}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual/range {v36 .. v36}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v6, v1, v13}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->unwrapKey(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v49

    .local v49, "privKey":Ljava/security/PrivateKey;
    move-object/from16 v24, v49

    .line 862
    check-cast v24, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 863
    .local v24, "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/16 v17, 0x0

    .line 864
    .local v17, "alias":Ljava/lang/String;
    const/16 v43, 0x0

    .line 866
    .local v43, "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 868
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v35

    .line 869
    .local v35, "e":Ljava/util/Enumeration;
    :cond_7
    :goto_2
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 871
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 872
    .local v52, "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v15

    check-cast v15, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 873
    .local v15, "aOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v3, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v19

    check-cast v19, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 874
    .local v19, "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    const/16 v18, 0x0

    .line 876
    .local v18, "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 878
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v18

    .end local v18    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    check-cast v18, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 880
    .restart local v18    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v37

    .line 881
    .local v37, "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v37, :cond_8

    .line 884
    invoke-interface/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 886
    new-instance v3, Ljava/io/IOException;

    const-string v6, "attempt to add existing attribute with different value"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 892
    :cond_8
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v15, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 896
    .end local v37    # "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_9
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 898
    check-cast v18, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    .end local v18    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v17

    .line 899
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 901
    .restart local v18    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_a
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v43, v18

    .line 903
    check-cast v43, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    goto :goto_2

    .line 908
    .end local v15    # "aOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v18    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v19    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .end local v35    # "e":Ljava/util/Enumeration;
    .end local v52    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_b
    if-eqz v43, :cond_d

    .line 910
    new-instance v45, Ljava/lang/String;

    invoke-virtual/range {v43 .. v43}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v45

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 912
    .local v45, "name":Ljava/lang/String;
    if-nez v17, :cond_c

    .line 914
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    move-object/from16 v0, v45

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 851
    .end local v17    # "alias":Ljava/lang/String;
    .end local v24    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v36    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v43    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v45    # "name":Ljava/lang/String;
    .end local v49    # "privKey":Ljava/security/PrivateKey;
    :goto_3
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_1

    .line 918
    .restart local v17    # "alias":Ljava/lang/String;
    .restart local v24    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .restart local v36    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .restart local v43    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .restart local v45    # "name":Ljava/lang/String;
    .restart local v49    # "privKey":Ljava/security/PrivateKey;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v45

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 923
    .end local v45    # "name":Ljava/lang/String;
    :cond_d
    const/16 v53, 0x1

    .line 924
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const-string v6, "unmarked"

    move-object/from16 v0, v49

    invoke-virtual {v3, v6, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 927
    .end local v17    # "alias":Ljava/lang/String;
    .end local v24    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v36    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v43    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v49    # "privKey":Ljava/security/PrivateKey;
    :cond_e
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 929
    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 933
    :cond_f
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra in data "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 934
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 938
    .end local v21    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v32    # "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v41    # "j":I
    .end local v51    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_10
    aget-object v3, v26, v39

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->encryptedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 940
    aget-object v3, v26, v39

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;

    move-result-object v31

    .line 941
    .local v31, "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    const/4 v10, 0x0

    invoke-virtual/range {v31 .. v31}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v11

    invoke-virtual/range {v31 .. v31}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v14

    move-object/from16 v9, p0

    move-object/from16 v12, p2

    invoke-virtual/range {v9 .. v14}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->cryptData(ZLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v47

    .line 943
    .local v47, "octets":[B
    invoke-static/range {v47 .. v47}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v51

    check-cast v51, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 945
    .restart local v51    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/16 v41, 0x0

    .restart local v41    # "j":I
    :goto_4
    invoke-virtual/range {v51 .. v51}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    move/from16 v0, v41

    if-eq v0, v3, :cond_21

    .line 947
    move-object/from16 v0, v51

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object v21

    .line 949
    .restart local v21    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 951
    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 945
    :goto_5
    add-int/lit8 v41, v41, 0x1

    goto :goto_4

    .line 953
    :cond_11
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs8ShroudedKeyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 955
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-result-object v36

    .line 956
    .restart local v36    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    invoke-virtual/range {v36 .. v36}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual/range {v36 .. v36}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v6, v1, v13}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->unwrapKey(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v49

    .restart local v49    # "privKey":Ljava/security/PrivateKey;
    move-object/from16 v24, v49

    .line 961
    check-cast v24, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 962
    .restart local v24    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/16 v17, 0x0

    .line 963
    .restart local v17    # "alias":Ljava/lang/String;
    const/16 v43, 0x0

    .line 965
    .restart local v43    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v35

    .line 966
    .restart local v35    # "e":Ljava/util/Enumeration;
    :cond_12
    :goto_6
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 968
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 969
    .restart local v52    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v15

    check-cast v15, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 970
    .restart local v15    # "aOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v3, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v19

    check-cast v19, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 971
    .restart local v19    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    const/16 v18, 0x0

    .line 973
    .restart local v18    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-lez v3, :cond_14

    .line 975
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v18

    .end local v18    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    check-cast v18, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 977
    .restart local v18    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v37

    .line 978
    .restart local v37    # "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v37, :cond_13

    .line 981
    invoke-interface/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 983
    new-instance v3, Ljava/io/IOException;

    const-string v6, "attempt to add existing attribute with different value"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 989
    :cond_13
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v15, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 993
    .end local v37    # "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_14
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 995
    check-cast v18, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    .end local v18    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v17

    .line 996
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 998
    .restart local v18    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_15
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move-object/from16 v43, v18

    .line 1000
    check-cast v43, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    goto :goto_6

    .line 1004
    .end local v15    # "aOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v18    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v19    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .end local v52    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_16
    new-instance v45, Ljava/lang/String;

    invoke-virtual/range {v43 .. v43}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v45

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 1006
    .restart local v45    # "name":Ljava/lang/String;
    if-nez v17, :cond_17

    .line 1008
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    move-object/from16 v0, v45

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 1012
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v45

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 1015
    .end local v17    # "alias":Ljava/lang/String;
    .end local v24    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35    # "e":Ljava/util/Enumeration;
    .end local v36    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v43    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v45    # "name":Ljava/lang/String;
    .end local v49    # "privKey":Ljava/security/PrivateKey;
    :cond_18
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1017
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v42

    .line 1018
    .local v42, "kInfo":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-static/range {v42 .. v42}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v49

    .restart local v49    # "privKey":Ljava/security/PrivateKey;
    move-object/from16 v24, v49

    .line 1023
    check-cast v24, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1024
    .restart local v24    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/16 v17, 0x0

    .line 1025
    .restart local v17    # "alias":Ljava/lang/String;
    const/16 v43, 0x0

    .line 1027
    .restart local v43    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v35

    .line 1028
    .restart local v35    # "e":Ljava/util/Enumeration;
    :cond_19
    :goto_7
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1030
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 1031
    .restart local v52    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v15

    check-cast v15, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1032
    .restart local v15    # "aOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v3, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v19

    check-cast v19, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 1033
    .restart local v19    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    const/16 v18, 0x0

    .line 1035
    .restart local v18    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-lez v3, :cond_1b

    .line 1037
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v18

    .end local v18    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    check-cast v18, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 1039
    .restart local v18    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v37

    .line 1040
    .restart local v37    # "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v37, :cond_1a

    .line 1043
    invoke-interface/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 1045
    new-instance v3, Ljava/io/IOException;

    const-string v6, "attempt to add existing attribute with different value"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1051
    :cond_1a
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v15, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1055
    .end local v37    # "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_1b
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1057
    check-cast v18, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    .end local v18    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v17

    .line 1058
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    .line 1060
    .restart local v18    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1c
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v43, v18

    .line 1062
    check-cast v43, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    goto :goto_7

    .line 1066
    .end local v15    # "aOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v18    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v19    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .end local v52    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_1d
    new-instance v45, Ljava/lang/String;

    invoke-virtual/range {v43 .. v43}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v45

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 1068
    .restart local v45    # "name":Ljava/lang/String;
    if-nez v17, :cond_1e

    .line 1070
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    move-object/from16 v0, v45

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 1074
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v45

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 1079
    .end local v17    # "alias":Ljava/lang/String;
    .end local v24    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35    # "e":Ljava/util/Enumeration;
    .end local v42    # "kInfo":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v43    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v45    # "name":Ljava/lang/String;
    .end local v49    # "privKey":Ljava/security/PrivateKey;
    :cond_1f
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra in encryptedData "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1080
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1086
    .end local v21    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v31    # "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .end local v41    # "j":I
    .end local v47    # "octets":[B
    .end local v51    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_20
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v26, v39

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1087
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v26, v39

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 844
    :cond_21
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_0

    .line 1092
    .end local v20    # "authSafe":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v26    # "c":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v39    # "i":I
    :cond_22
    new-instance v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 1093
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    .line 1094
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    .line 1096
    const/16 v39, 0x0

    .restart local v39    # "i":I
    :goto_8
    invoke-virtual/range {v30 .. v30}, Ljava/util/Vector;->size()I

    move-result v3

    move/from16 v0, v39

    if-eq v0, v3, :cond_0

    .line 1098
    move-object/from16 v0, v30

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    .line 1099
    .restart local v21    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    move-result-object v28

    .line 1101
    .local v28, "cb":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getCertId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->x509Certificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 1103
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported certificate type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getCertId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1110
    :cond_23
    :try_start_2
    new-instance v27, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getCertValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1112
    .local v27, "cIn":Ljava/io/ByteArrayInputStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certFact:Ljava/security/cert/CertificateFactory;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v29

    .line 1122
    .local v29, "cert":Ljava/security/cert/Certificate;
    const/16 v43, 0x0

    .line 1123
    .restart local v43    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    const/16 v17, 0x0

    .line 1125
    .restart local v17    # "alias":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 1127
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v35

    .line 1128
    .restart local v35    # "e":Ljava/util/Enumeration;
    :cond_24
    :goto_9
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1130
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 1131
    .restart local v52    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v48

    check-cast v48, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1132
    .local v48, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v3, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v18

    check-cast v18, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 1133
    .restart local v18    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    const/16 v24, 0x0

    .line 1135
    .restart local v24    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    move-object/from16 v0, v29

    instance-of v3, v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v3, :cond_26

    move-object/from16 v24, v29

    .line 1137
    check-cast v24, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1139
    move-object/from16 v0, v24

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v37

    .line 1140
    .restart local v37    # "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v37, :cond_25

    .line 1143
    invoke-interface/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 1145
    new-instance v3, Ljava/io/IOException;

    const-string v6, "attempt to add existing attribute with different value"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1114
    .end local v17    # "alias":Ljava/lang/String;
    .end local v18    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v24    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v27    # "cIn":Ljava/io/ByteArrayInputStream;
    .end local v29    # "cert":Ljava/security/cert/Certificate;
    .end local v35    # "e":Ljava/util/Enumeration;
    .end local v37    # "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .end local v43    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v48    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v52    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_2
    move-exception v35

    .line 1116
    .local v35, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1151
    .restart local v17    # "alias":Ljava/lang/String;
    .restart local v18    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .restart local v24    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .restart local v27    # "cIn":Ljava/io/ByteArrayInputStream;
    .restart local v29    # "cert":Ljava/security/cert/Certificate;
    .local v35, "e":Ljava/util/Enumeration;
    .restart local v37    # "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .restart local v43    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .restart local v48    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v52    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_25
    move-object/from16 v0, v24

    move-object/from16 v1, v48

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1155
    .end local v37    # "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_26
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1157
    check-cast v18, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    .end local v18    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_9

    .line 1159
    .restart local v18    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_27
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    move-object/from16 v43, v18

    .line 1161
    check-cast v43, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    goto/16 :goto_9

    .line 1166
    .end local v18    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v24    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35    # "e":Ljava/util/Enumeration;
    .end local v48    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v52    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v6, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual/range {v29 .. v29}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    move-object/from16 v0, v29

    invoke-virtual {v3, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    if-eqz v53, :cond_2a

    .line 1170
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1172
    new-instance v45, Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v45

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 1174
    .restart local v45    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    move-object/from16 v0, v45

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const-string v7, "unmarked"

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v45

    invoke-virtual {v3, v0, v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1096
    .end local v45    # "name":Ljava/lang/String;
    :cond_29
    :goto_a
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_8

    .line 1183
    :cond_2a
    if-eqz v43, :cond_2b

    .line 1185
    new-instance v45, Ljava/lang/String;

    invoke-virtual/range {v43 .. v43}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v45

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 1187
    .restart local v45    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    move-object/from16 v0, v45

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    .end local v45    # "name":Ljava/lang/String;
    :cond_2b
    if-eqz v17, :cond_29

    .line 1191
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 505
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is a key entry with the name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 509
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 528
    instance-of v1, p2, Ljava/security/PrivateKey;

    if-nez v1, :cond_0

    .line 530
    new-instance v1, Ljava/security/KeyStoreException;

    const-string v2, "PKCS12 does not support non-PrivateKeys"

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 533
    :cond_0
    instance-of v1, p2, Ljava/security/PrivateKey;

    if-eqz v1, :cond_1

    if-nez p4, :cond_1

    .line 535
    new-instance v1, Ljava/security/KeyStoreException;

    const-string v2, "no certificate chain for private key"

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 538
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 540
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    .line 543
    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 544
    if-eqz p4, :cond_3

    .line 546
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v2, 0x0

    aget-object v2, p4, v2

    invoke-virtual {v1, p1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 548
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p4

    if-eq v0, v1, :cond_3

    .line 550
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    aget-object v3, p4, v0

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    aget-object v3, p4, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 553
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 518
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSize()I
    .locals 5

    .prologue
    .line 557
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 559
    .local v2, "tab":Ljava/util/Hashtable;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 560
    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 562
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "cert"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 565
    :cond_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 566
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 568
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 569
    .local v0, "a":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 571
    const-string v3, "key"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 575
    .end local v0    # "a":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v3

    return v3
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1246
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->doStore(Ljava/io/OutputStream;[CZ)V

    .line 1247
    return-void
.end method

.method public engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 6
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1201
    if-nez p1, :cond_0

    .line 1203
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "\'param\' arg cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1206
    :cond_0
    instance-of v3, p1, Lcom/android/org/bouncycastle/jcajce/provider/config/PKCS12StoreParameter;

    if-nez v3, :cond_1

    instance-of v3, p1, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;

    if-nez v3, :cond_1

    .line 1208
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No support for \'param\' of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1214
    :cond_1
    instance-of v3, p1, Lcom/android/org/bouncycastle/jcajce/provider/config/PKCS12StoreParameter;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 1216
    check-cast v0, Lcom/android/org/bouncycastle/jcajce/provider/config/PKCS12StoreParameter;

    .line 1225
    .local v0, "bcParam":Lcom/android/org/bouncycastle/jcajce/provider/config/PKCS12StoreParameter;
    :goto_0
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v2

    .line 1226
    .local v2, "protParam":Ljava/security/KeyStore$ProtectionParameter;
    if-nez v2, :cond_3

    .line 1228
    const/4 v1, 0x0

    .line 1240
    .end local v2    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    .local v1, "password":[C
    :goto_1
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/config/PKCS12StoreParameter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/config/PKCS12StoreParameter;->isForDEREncoding()Z

    move-result v4

    invoke-direct {p0, v3, v1, v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->doStore(Ljava/io/OutputStream;[CZ)V

    .line 1241
    return-void

    .line 1220
    .end local v0    # "bcParam":Lcom/android/org/bouncycastle/jcajce/provider/config/PKCS12StoreParameter;
    .end local v1    # "password":[C
    :cond_2
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/config/PKCS12StoreParameter;

    move-object v3, p1

    check-cast v3, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->isUseDEREncoding()Z

    move-result v3

    invoke-direct {v0, v4, v5, v3}, Lcom/android/org/bouncycastle/jcajce/provider/config/PKCS12StoreParameter;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V

    .restart local v0    # "bcParam":Lcom/android/org/bouncycastle/jcajce/provider/config/PKCS12StoreParameter;
    goto :goto_0

    .line 1230
    .restart local v2    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    :cond_3
    instance-of v3, v2, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v3, :cond_4

    .line 1232
    check-cast v2, Ljava/security/KeyStore$PasswordProtection;

    .end local v2    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    invoke-virtual {v2}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v1

    .restart local v1    # "password":[C
    goto :goto_1

    .line 1236
    .end local v1    # "password":[C
    .restart local v2    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No support for protection parameter of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setRandom(Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "rand"    # Ljava/security/SecureRandom;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    .line 228
    return-void
.end method

.method protected unwrapKey(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;
    .locals 12
    .param p1, "algId"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "data"    # [B
    .param p3, "password"    # [C
    .param p4, "wrongPKCS12Zero"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 585
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 588
    .local v1, "algorithm":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_start_0
    sget-object v9, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v9}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 590
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object v7

    .line 592
    .local v7, "pbeParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v8, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v8, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 595
    .local v8, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->bcProvider:Ljava/security/Provider;

    invoke-static {v9, v10}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v6

    .line 597
    .local v6, "keyFact":Ljavax/crypto/SecretKeyFactory;
    new-instance v3, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    invoke-direct {v3, v9, v10}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 601
    .local v3, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {v6, v8}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 603
    .local v5, "k":Ljavax/crypto/SecretKey;
    move-object v0, v5

    check-cast v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    move-object v9, v0

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->setTryWrongPKCS12Zero(Z)V

    .line 605
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->bcProvider:Ljava/security/Provider;

    invoke-static {v9, v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 607
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v9, 0x4

    invoke-virtual {v2, v9, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 610
    const-string v9, ""

    const/4 v10, 0x2

    invoke-virtual {v2, p2, v9, v10}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v9

    check-cast v9, Ljava/security/PrivateKey;

    .line 618
    .end local v3    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v5    # "k":Ljavax/crypto/SecretKey;
    .end local v6    # "keyFact":Ljavax/crypto/SecretKeyFactory;
    .end local v7    # "pbeParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v8    # "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    :goto_0
    return-object v9

    .line 612
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    :cond_0
    sget-object v9, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v9}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 615
    const/4 v9, 0x4

    invoke-direct {p0, v9, p3, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createCipher(I[CLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 618
    .restart local v2    # "cipher":Ljavax/crypto/Cipher;
    const-string v9, ""

    const/4 v10, 0x2

    invoke-virtual {v2, p2, v9, v10}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v9

    check-cast v9, Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 621
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v4

    .line 623
    .local v4, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exception unwrapping private key - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 626
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exception unwrapping private key - cannot recognise: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method protected wrapKey(Ljava/lang/String;Ljava/security/Key;Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B
    .locals 9
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "pbeParams"    # Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .param p4, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 636
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v5, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 641
    .local v5, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    :try_start_0
    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->bcProvider:Ljava/security/Provider;

    invoke-static {p1, v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 643
    .local v3, "keyFact":Ljavax/crypto/SecretKeyFactory;
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v6

    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    invoke-direct {v1, v6, v7}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 647
    .local v1, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->bcProvider:Ljava/security/Provider;

    invoke-static {p1, v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 649
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x3

    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v7

    invoke-virtual {v0, v6, v7, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 651
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 658
    .local v4, "out":[B
    return-object v4

    .line 653
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v3    # "keyFact":Ljavax/crypto/SecretKeyFactory;
    .end local v4    # "out":[B
    :catch_0
    move-exception v2

    .line 655
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception encrypting data - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
