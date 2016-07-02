.class public final Lcom/android/org/conscrypt/OpenSSLECGroupContext;
.super Ljava/lang/Object;
.source "OpenSSLECGroupContext.java"


# instance fields
.field private final groupCtx:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "groupCtx"    # J

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:J

    .line 34
    return-void
.end method

.method public static getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .locals 4
    .param p0, "curveName"    # Ljava/lang/String;

    .prologue
    .line 39
    const-string v2, "secp256r1"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    const-string p0, "prime256v1"

    .line 45
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_new_by_curve_name(Ljava/lang/String;)J

    move-result-wide v0

    .line 46
    .local v0, "ctx":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 47
    const/4 v2, 0x0

    .line 54
    :goto_1
    return-object v2

    .line 41
    .end local v0    # "ctx":J
    :cond_1
    const-string v2, "secp192r1"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    const-string p0, "prime192v1"

    goto :goto_0

    .line 50
    .restart local v0    # "ctx":J
    :cond_2
    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_set_point_conversion_form(JI)V

    .line 52
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_set_asn1_flag(JI)V

    .line 54
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-direct {v2, v0, v1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;-><init>(J)V

    goto :goto_1
.end method

.method public static getInstance(ILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .locals 8
    .param p0, "type"    # I
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "a"    # Ljava/math/BigInteger;
    .param p3, "b"    # Ljava/math/BigInteger;
    .param p4, "x"    # Ljava/math/BigInteger;
    .param p5, "y"    # Ljava/math/BigInteger;
    .param p6, "n"    # Ljava/math/BigInteger;
    .param p7, "h"    # Ljava/math/BigInteger;

    .prologue
    .line 59
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-static {p0, v2, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_new_curve(I[B[B[B)J

    move-result-wide v0

    .line 61
    .local v0, "ctx":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 62
    const/4 v7, 0x0

    .line 79
    :goto_0
    return-object v7

    .line 65
    :cond_0
    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_set_point_conversion_form(JI)V

    .line 68
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-direct {v7, v0, v1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;-><init>(J)V

    .line 70
    .local v7, "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    new-instance v6, Lcom/android/org/conscrypt/OpenSSLECPointContext;

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EC_POINT_new(J)J

    move-result-wide v2

    invoke-direct {v6, v7, v2, v3}, Lcom/android/org/conscrypt/OpenSSLECPointContext;-><init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;J)V

    .line 73
    .local v6, "generator":Lcom/android/org/conscrypt/OpenSSLECPointContext;
    invoke-virtual {v6}, Lcom/android/org/conscrypt/OpenSSLECPointContext;->getContext()J

    move-result-wide v2

    invoke-virtual {p4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/NativeCrypto;->EC_POINT_set_affine_coordinates(JJ[B[B)V

    .line 76
    invoke-virtual {v6}, Lcom/android/org/conscrypt/OpenSSLECPointContext;->getContext()J

    move-result-wide v2

    invoke-virtual {p6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_set_generator(JJ[B[B)V

    goto :goto_0
.end method

.method public static getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .locals 14
    .param p0, "params"    # Ljava/security/spec/ECParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-static {p0}, Lcom/android/org/conscrypt/Platform;->getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;

    move-result-object v9

    .line 116
    .local v9, "curveName":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 117
    invoke-static {v9}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v2

    .line 137
    :goto_0
    return-object v2

    .line 120
    :cond_0
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v8

    .line 121
    .local v8, "curve":Ljava/security/spec/EllipticCurve;
    invoke-virtual {v8}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v10

    .line 125
    .local v10, "field":Ljava/security/spec/ECField;
    instance-of v2, v10, Ljava/security/spec/ECFieldFp;

    if-eqz v2, :cond_1

    .line 126
    const/4 v0, 0x1

    .line 127
    .local v0, "type":I
    check-cast v10, Ljava/security/spec/ECFieldFp;

    .end local v10    # "field":Ljava/security/spec/ECField;
    invoke-virtual {v10}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v1

    .line 136
    .local v1, "p":Ljava/math/BigInteger;
    :goto_1
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v11

    .line 137
    .local v11, "generator":Ljava/security/spec/ECPoint;
    invoke-virtual {v8}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v8}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v11}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v11}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v7

    int-to-long v12, v7

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getInstance(ILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v2

    goto :goto_0

    .line 128
    .end local v0    # "type":I
    .end local v1    # "p":Ljava/math/BigInteger;
    .end local v11    # "generator":Ljava/security/spec/ECPoint;
    .restart local v10    # "field":Ljava/security/spec/ECField;
    :cond_1
    instance-of v2, v10, Ljava/security/spec/ECFieldF2m;

    if-eqz v2, :cond_2

    .line 129
    const/4 v0, 0x2

    .line 130
    .restart local v0    # "type":I
    check-cast v10, Ljava/security/spec/ECFieldF2m;

    .end local v10    # "field":Ljava/security/spec/ECField;
    invoke-virtual {v10}, Ljava/security/spec/ECFieldF2m;->getReductionPolynomial()Ljava/math/BigInteger;

    move-result-object v1

    .restart local v1    # "p":Ljava/math/BigInteger;
    goto :goto_1

    .line 132
    .end local v0    # "type":I
    .end local v1    # "p":Ljava/math/BigInteger;
    .restart local v10    # "field":Ljava/security/spec/ECField;
    :cond_2
    new-instance v2, Ljava/security/InvalidParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unhandled field class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 95
    instance-of v1, p1, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    if-nez v1, :cond_0

    .line 96
    const/4 v1, 0x0

    .line 100
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 99
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 100
    .local v0, "other":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:J

    iget-wide v4, v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_cmp(JJ)Z

    move-result v1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 85
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 86
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_clear_free(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 91
    return-void

    .line 89
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getContext()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:J

    return-wide v0
.end method

.method public getECParameterSpec()Ljava/security/spec/ECParameterSpec;
    .locals 20

    .prologue
    .line 143
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_curve_name(J)Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, "curveName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_curve(J)[[B

    move-result-object v9

    .line 146
    .local v9, "curveParams":[[B
    new-instance v14, Ljava/math/BigInteger;

    const/16 v17, 0x0

    aget-object v17, v9, v17

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 147
    .local v14, "p":Ljava/math/BigInteger;
    new-instance v4, Ljava/math/BigInteger;

    const/16 v17, 0x1

    aget-object v17, v9, v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 148
    .local v4, "a":Ljava/math/BigInteger;
    new-instance v5, Ljava/math/BigInteger;

    const/16 v17, 0x2

    aget-object v17, v9, v17

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 151
    .local v5, "b":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lcom/android/org/conscrypt/NativeCrypto;->get_EC_GROUP_type(J)I

    move-result v16

    .line 152
    .local v16, "type":I
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 153
    new-instance v10, Ljava/security/spec/ECFieldFp;

    invoke-direct {v10, v14}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    .line 160
    .local v10, "field":Ljava/security/spec/ECField;
    :goto_0
    new-instance v7, Ljava/security/spec/EllipticCurve;

    invoke-direct {v7, v10, v4, v5}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 162
    .local v7, "curve":Ljava/security/spec/EllipticCurve;
    new-instance v12, Lcom/android/org/conscrypt/OpenSSLECPointContext;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_generator(J)J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v12, v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLECPointContext;-><init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;J)V

    .line 164
    .local v12, "generatorCtx":Lcom/android/org/conscrypt/OpenSSLECPointContext;
    invoke-virtual {v12}, Lcom/android/org/conscrypt/OpenSSLECPointContext;->getECPoint()Ljava/security/spec/ECPoint;

    move-result-object v11

    .line 166
    .local v11, "generator":Ljava/security/spec/ECPoint;
    new-instance v13, Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_order(J)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 167
    .local v13, "order":Ljava/math/BigInteger;
    new-instance v6, Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_cofactor(J)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 169
    .local v6, "cofactor":Ljava/math/BigInteger;
    new-instance v15, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v15, v7, v11, v13, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 170
    .local v15, "spec":Ljava/security/spec/ECParameterSpec;
    invoke-static {v15, v8}, Lcom/android/org/conscrypt/Platform;->setCurveName(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)V

    .line 171
    return-object v15

    .line 154
    .end local v6    # "cofactor":Ljava/math/BigInteger;
    .end local v7    # "curve":Ljava/security/spec/EllipticCurve;
    .end local v10    # "field":Ljava/security/spec/ECField;
    .end local v11    # "generator":Ljava/security/spec/ECPoint;
    .end local v12    # "generatorCtx":Lcom/android/org/conscrypt/OpenSSLECPointContext;
    .end local v13    # "order":Ljava/math/BigInteger;
    .end local v15    # "spec":Ljava/security/spec/ECParameterSpec;
    :cond_0
    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 155
    new-instance v10, Ljava/security/spec/ECFieldF2m;

    invoke-virtual {v14}, Ljava/math/BigInteger;->bitLength()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-direct {v10, v0, v14}, Ljava/security/spec/ECFieldF2m;-><init>(ILjava/math/BigInteger;)V

    .restart local v10    # "field":Ljava/security/spec/ECField;
    goto :goto_0

    .line 157
    .end local v10    # "field":Ljava/security/spec/ECField;
    :cond_1
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unknown curve type "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
