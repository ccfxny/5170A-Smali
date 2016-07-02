.class public Lcom/android/org/bouncycastle/asn1/x9/X9Curve;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "X9Curve.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;


# instance fields
.field private curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field private fieldIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private seed:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 18
    .param p1, "fieldID"    # Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;
    .param p2, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 26
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->getIdentifier()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 50
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v8, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->prime_field:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v14

    .line 53
    .local v14, "p":Ljava/math/BigInteger;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v1, v14, v7}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    .line 54
    .local v1, "x9A":Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;
    new-instance v6, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    const/4 v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v6, v14, v7}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    .line 55
    .local v6, "x9B":Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;
    new-instance v7, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->getValue()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->getValue()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v7, v14, v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 97
    .end local v14    # "p":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 99
    const/4 v7, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    .line 101
    :cond_0
    return-void

    .line 57
    .end local v1    # "x9A":Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;
    .end local v6    # "x9B":Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v8, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->characteristic_two_field:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v15

    .line 61
    .local v15, "parameters":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v7, 0x0

    invoke-virtual {v15, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    .line 63
    .local v2, "m":I
    const/4 v7, 0x1

    invoke-virtual {v15, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v17

    check-cast v17, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 66
    .local v17, "representation":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v3, 0x0

    .line 67
    .local v3, "k1":I
    const/4 v4, 0x0

    .line 68
    .local v4, "k2":I
    const/4 v5, 0x0

    .line 70
    .local v5, "k3":I
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->tpBasis:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 73
    const/4 v7, 0x2

    invoke-virtual {v15, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    .line 87
    :goto_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(IIIILcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    .line 88
    .restart local v1    # "x9A":Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;
    new-instance v6, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    const/4 v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    check-cast v11, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move v7, v2

    move v8, v3

    move v9, v4

    move v10, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(IIIILcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    .line 90
    .restart local v6    # "x9B":Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;
    new-instance v7, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->getValue()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->getValue()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v13

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-direct/range {v7 .. v13}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    goto/16 :goto_0

    .line 75
    .end local v1    # "x9A":Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;
    .end local v6    # "x9B":Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;
    :cond_2
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->ppBasis:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 78
    const/4 v7, 0x2

    invoke-virtual {v15, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v16

    .line 79
    .local v16, "pentanomial":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    .line 80
    const/4 v7, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 81
    const/4 v7, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 82
    goto/16 :goto_1

    .line 85
    .end local v16    # "pentanomial":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "This type of EC basis is not implemented"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 94
    .end local v2    # "m":I
    .end local v3    # "k1":I
    .end local v4    # "k2":I
    .end local v5    # "k3":I
    .end local v15    # "parameters":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v17    # "representation":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_4
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "This type of ECCurve is not implemented"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;)V
    .locals 1
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 32
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    .line 33
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->setFieldIdentifier()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)V
    .locals 1
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "seed"    # [B

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 40
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 41
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    .line 42
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->setFieldIdentifier()V

    .line 43
    return-void
.end method

.method private setFieldIdentifier()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    instance-of v0, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->prime_field:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 117
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    instance-of v0, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    if-eqz v0, :cond_1

    .line 111
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->characteristic_two_field:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    .line 115
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type of ECCurve is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .prologue
    .line 141
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 143
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->prime_field:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 146
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 154
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    if-eqz v1, :cond_1

    .line 156
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERBitString;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 159
    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->characteristic_two_field:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 151
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0
.end method
