.class public Lcom/android/org/bouncycastle/crypto/util/PrivateKeyFactory;
.super Ljava/lang/Object;
.source "PrivateKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 23
    .param p0, "keyInfo"    # Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v10

    .line 82
    .local v10, "algId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    move-result-object v16

    .line 86
    .local v16, "keyStructure":Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime1()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime2()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent1()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent2()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getCoefficient()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 151
    .end local v16    # "keyStructure":Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;
    :goto_0
    return-object v1

    .line 93
    :cond_0
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    move-result-object v21

    .line 96
    .local v21, "params":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v13

    check-cast v13, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 98
    .local v13, "derX":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v18

    .line 99
    .local v18, "lVal":Ljava/math/BigInteger;
    if-nez v18, :cond_1

    const/16 v17, 0x0

    .line 100
    .local v17, "l":I
    :goto_1
    new-instance v14, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, v17

    invoke-direct {v14, v2, v3, v4, v0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 102
    .local v14, "dhParams":Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2, v14}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    goto :goto_0

    .line 99
    .end local v14    # "dhParams":Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    .end local v17    # "l":I
    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->intValue()I

    move-result v17

    goto :goto_1

    .line 114
    .end local v13    # "derX":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .end local v18    # "lVal":Ljava/math/BigInteger;
    .end local v21    # "params":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    :cond_2
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v3, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v13

    check-cast v13, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 117
    .restart local v13    # "derX":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v12

    .line 119
    .local v12, "de":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    const/16 v20, 0x0

    .line 120
    .local v20, "parameters":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    if-eqz v12, :cond_3

    .line 122
    invoke-interface {v12}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;

    move-result-object v21

    .line 123
    .local v21, "params":Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;
    new-instance v20, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    .end local v20    # "parameters":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 126
    .end local v21    # "params":Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;
    .restart local v20    # "parameters":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    :cond_3
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    goto/16 :goto_0

    .line 128
    .end local v12    # "de":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .end local v13    # "derX":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .end local v20    # "parameters":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    :cond_4
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v3, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 130
    new-instance v21, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    .line 133
    .local v21, "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 135
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v19

    .line 136
    .local v19, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v22

    .line 143
    .end local v19    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v22, "x9":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;

    move-result-object v15

    .line 144
    .local v15, "ec":Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;->getKey()Ljava/math/BigInteger;

    move-result-object v11

    .line 148
    .local v11, "d":Ljava/math/BigInteger;
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 151
    .local v1, "dParams":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-direct {v2, v11, v1}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    move-object v1, v2

    goto/16 :goto_0

    .line 140
    .end local v1    # "dParams":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    .end local v11    # "d":Ljava/math/BigInteger;
    .end local v15    # "ec":Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;
    .end local v22    # "x9":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :cond_5
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v22

    .restart local v22    # "x9":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    goto :goto_2

    .line 155
    .end local v21    # "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    .end local v22    # "x9":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "algorithm identifier in key not recognised"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createKey(Ljava/io/InputStream;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .param p0, "inStr"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/util/PrivateKeyFactory;->createKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method

.method public static createKey([B)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .param p0, "privateKeyInfoData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/util/PrivateKeyFactory;->createKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method
