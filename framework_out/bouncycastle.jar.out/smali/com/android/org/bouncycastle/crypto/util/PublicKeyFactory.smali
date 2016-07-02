.class public Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory;
.super Ljava/lang/Object;
.source "PublicKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createKey(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 32
    .param p0, "keyInfo"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v14

    .line 89
    .local v14, "algId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v9, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v9, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;

    move-result-object v28

    .line 94
    .local v28, "pubKey":Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    const/4 v9, 0x0

    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct {v2, v9, v10, v11}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 187
    .end local v28    # "pubKey":Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;
    :goto_0
    return-object v2

    .line 96
    :cond_1
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v9, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/DHPublicKey;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DHPublicKey;

    move-result-object v19

    .line 100
    .local v19, "dhPublicKey":Lcom/android/org/bouncycastle/asn1/x9/DHPublicKey;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/x9/DHPublicKey;->getY()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v31

    .line 102
    .local v31, "y":Ljava/math/BigInteger;
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;

    move-result-object v18

    .line 104
    .local v18, "dhParams":Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getP()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    .line 105
    .local v3, "p":Ljava/math/BigInteger;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getG()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    .line 106
    .local v4, "g":Ljava/math/BigInteger;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getQ()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    .line 108
    .local v5, "q":Ljava/math/BigInteger;
    const/4 v6, 0x0

    .line 109
    .local v6, "j":Ljava/math/BigInteger;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getJ()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 111
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getJ()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    .line 114
    :cond_2
    const/4 v7, 0x0

    .line 115
    .local v7, "validation":Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getValidationParms()Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;

    move-result-object v20

    .line 116
    .local v20, "dhValidationParms":Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;
    if-eqz v20, :cond_3

    .line 118
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;->getSeed()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v29

    .line 119
    .local v29, "seed":[B
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;->getPgenCounter()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v27

    .line 123
    .local v27, "pgenCounter":Ljava/math/BigInteger;
    new-instance v7, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;

    .end local v7    # "validation":Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;
    invoke-virtual/range {v27 .. v27}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    move-object/from16 v0, v29

    invoke-direct {v7, v0, v2}, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;-><init>([BI)V

    .line 126
    .end local v27    # "pgenCounter":Ljava/math/BigInteger;
    .end local v29    # "seed":[B
    .restart local v7    # "validation":Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;
    :cond_3
    new-instance v9, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V

    move-object/from16 v0, v31

    invoke-direct {v9, v0, v2}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    move-object v2, v9

    goto :goto_0

    .line 128
    .end local v3    # "p":Ljava/math/BigInteger;
    .end local v4    # "g":Ljava/math/BigInteger;
    .end local v5    # "q":Ljava/math/BigInteger;
    .end local v6    # "j":Ljava/math/BigInteger;
    .end local v7    # "validation":Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;
    .end local v18    # "dhParams":Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;
    .end local v19    # "dhPublicKey":Lcom/android/org/bouncycastle/asn1/x9/DHPublicKey;
    .end local v20    # "dhValidationParms":Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;
    .end local v31    # "y":Ljava/math/BigInteger;
    :cond_4
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v9, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 130
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    move-result-object v26

    .line 131
    .local v26, "params":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v17

    check-cast v17, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 133
    .local v17, "derY":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual/range {v26 .. v26}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v23

    .line 134
    .local v23, "lVal":Ljava/math/BigInteger;
    if-nez v23, :cond_5

    const/16 v22, 0x0

    .line 135
    .local v22, "l":I
    :goto_1
    new-instance v18, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual/range {v26 .. v26}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v26 .. v26}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-direct {v0, v2, v9, v10, v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 137
    .local v18, "dhParams":Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v9

    move-object/from16 v0, v18

    invoke-direct {v2, v9, v0}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    goto/16 :goto_0

    .line 134
    .end local v18    # "dhParams":Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    .end local v22    # "l":I
    :cond_5
    invoke-virtual/range {v23 .. v23}, Ljava/math/BigInteger;->intValue()I

    move-result v22

    goto :goto_1

    .line 149
    .end local v17    # "derY":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .end local v23    # "lVal":Ljava/math/BigInteger;
    .end local v26    # "params":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    :cond_6
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v9, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v9, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 152
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v17

    check-cast v17, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 153
    .restart local v17    # "derY":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v15

    .line 155
    .local v15, "de":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    const/16 v25, 0x0

    .line 156
    .local v25, "parameters":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    if-eqz v15, :cond_8

    .line 158
    invoke-interface {v15}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;

    move-result-object v26

    .line 159
    .local v26, "params":Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;
    new-instance v25, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    .end local v25    # "parameters":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    invoke-virtual/range {v26 .. v26}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v26 .. v26}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual/range {v26 .. v26}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v10

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v9, v10}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 162
    .end local v26    # "params":Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;
    .restart local v25    # "parameters":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    :cond_8
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v9

    move-object/from16 v0, v25

    invoke-direct {v2, v9, v0}, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    goto/16 :goto_0

    .line 164
    .end local v15    # "de":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .end local v17    # "derY":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .end local v25    # "parameters":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    :cond_9
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v9, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 166
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    move-result-object v26

    .line 169
    .local v26, "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    invoke-virtual/range {v26 .. v26}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 171
    invoke-virtual/range {v26 .. v26}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v24

    check-cast v24, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 172
    .local v24, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static/range {v24 .. v24}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v30

    .line 179
    .end local v24    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v30, "x9":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :goto_2
    new-instance v21, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 180
    .local v21, "key":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    new-instance v16, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    invoke-virtual/range {v30 .. v30}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    .line 184
    .local v16, "derQ":Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v8, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual/range {v30 .. v30}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v9

    invoke-virtual/range {v30 .. v30}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    invoke-virtual/range {v30 .. v30}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual/range {v30 .. v30}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual/range {v30 .. v30}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v13

    invoke-direct/range {v8 .. v13}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 187
    .local v8, "dParams":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    invoke-direct {v2, v9, v8}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    goto/16 :goto_0

    .line 176
    .end local v8    # "dParams":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    .end local v16    # "derQ":Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
    .end local v21    # "key":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v30    # "x9":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :cond_a
    invoke-virtual/range {v26 .. v26}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v30

    .restart local v30    # "x9":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    goto :goto_2

    .line 191
    .end local v26    # "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    .end local v30    # "x9":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :cond_b
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v9, "algorithm identifier in key not recognised"

    invoke-direct {v2, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

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
    .line 75
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method

.method public static createKey([B)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .param p0, "keyInfoData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method
