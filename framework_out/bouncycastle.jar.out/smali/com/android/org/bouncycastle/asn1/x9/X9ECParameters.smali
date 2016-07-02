.class public Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "X9ECParameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field private fieldID:Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

.field private g:Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field private h:Ljava/math/BigInteger;

.field private n:Ljava/math/BigInteger;

.field private seed:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 35
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 38
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bad version in X9ECParameters"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 41
    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;-><init>(Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 45
    .local v1, "x9c":Lcom/android/org/bouncycastle/asn1/x9/X9Curve;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 46
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 48
    .local v0, "p":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v2, v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    if-eqz v2, :cond_3

    .line 50
    check-cast v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    .end local v0    # "p":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->g:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 57
    :goto_0
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    .line 58
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->getSeed()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    .line 60
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 62
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    .line 64
    :cond_2
    return-void

    .line 54
    .restart local v0    # "p":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_3
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .end local v0    # "p":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-direct {v2, v3, v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->g:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .locals 6
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "g"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;

    .prologue
    .line 86
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "g"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;
    .param p4, "h"    # Ljava/math/BigInteger;

    .prologue
    .line 95
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 6
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "g"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;
    .param p4, "h"    # Ljava/math/BigInteger;
    .param p5, "seed"    # [B

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 106
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->g:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 107
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    .line 108
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    .line 109
    iput-object p5, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    .line 111
    instance-of v1, p1, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    if-eqz v1, :cond_1

    .line 113
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    .end local p1    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;-><init>(Ljava/math/BigInteger;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->fieldID:Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 117
    .restart local p1    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    :cond_1
    instance-of v1, p1, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 119
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    .line 120
    .local v0, "curveF2m":Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getK1()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getK2()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getK3()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->fieldID:Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 68
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    if-eqz v0, :cond_0

    .line 70
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    .line 78
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 73
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 75
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 78
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->g:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getH()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 145
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    .line 148
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    goto :goto_0
.end method

.method public getN()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    .line 171
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 173
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 174
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->fieldID:Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 175
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 176
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->g:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 177
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 179
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    .line 181
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 184
    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
