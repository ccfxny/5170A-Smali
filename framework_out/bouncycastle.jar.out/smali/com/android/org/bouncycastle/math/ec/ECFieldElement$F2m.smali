.class public Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
.super Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.source "ECFieldElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# static fields
.field public static final GNB:I = 0x1

.field public static final PPB:I = 0x3

.field public static final TPB:I = 0x2


# instance fields
.field private ks:[I

.field private m:I

.field private representation:I

.field private x:Lcom/android/org/bouncycastle/math/ec/LongArray;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;)V
    .locals 4
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "x"    # Ljava/math/BigInteger;

    .prologue
    const/4 v0, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1045
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    .line 1046
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 1048
    iput v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    .line 1049
    new-array v0, v2, [I

    aput p2, v0, v1

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    .line 1067
    :goto_0
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    .line 1068
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v0, p5}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    .line 1069
    return-void

    .line 1053
    :cond_0
    if-lt p3, p4, :cond_1

    .line 1055
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k2 must be smaller than k3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1058
    :cond_1
    if-gtz p3, :cond_2

    .line 1060
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k2 must be larger than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1063
    :cond_2
    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    .line 1064
    new-array v0, v0, [I

    aput p2, v0, v1

    aput p3, v0, v2

    aput p4, v0, v3

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    goto :goto_0
.end method

.method public constructor <init>(IILjava/math/BigInteger;)V
    .locals 6
    .param p1, "m"    # I
    .param p2, "k"    # I
    .param p3, "x"    # Ljava/math/BigInteger;

    .prologue
    const/4 v3, 0x0

    .line 1084
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    .line 1085
    return-void
.end method

.method private constructor <init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V
    .locals 2
    .param p1, "m"    # I
    .param p2, "ks"    # [I
    .param p3, "x"    # Lcom/android/org/bouncycastle/math/ec/LongArray;

    .prologue
    .line 1088
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    .line 1089
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    .line 1090
    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    .line 1091
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    .line 1092
    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    .line 1093
    return-void

    .line 1090
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static checkFieldElements(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 4
    .param p0, "a"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 1140
    instance-of v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    if-eqz v2, :cond_0

    instance-of v2, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    if-nez v2, :cond_1

    .line 1142
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Field elements are not both instances of ECFieldElement.F2m"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v0, p0

    .line 1146
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .local v0, "aF2m":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    move-object v1, p1

    .line 1147
    check-cast v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 1149
    .local v1, "bF2m":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    iget v2, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget v3, v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-eq v2, v3, :cond_2

    .line 1152
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "One of the F2m field elements has incorrect representation"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1155
    :cond_2
    iget v2, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v3, v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v2, v3, :cond_3

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([I[I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1157
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Field elements are not elements of the same field F2m"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1159
    :cond_4
    return-void
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 5
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 1166
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/math/ec/LongArray;

    .local v1, "iarrClone":Lcom/android/org/bouncycastle/math/ec/LongArray;
    move-object v0, p1

    .line 1167
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 1168
    .local v0, "bF2m":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lcom/android/org/bouncycastle/math/ec/LongArray;I)V

    .line 1169
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {v2, v3, v4, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    return-object v2
.end method

.method public addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 4

    .prologue
    .line 1174
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addOne()Lcom/android/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public bitLength()I
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v0

    return v0
.end method

.method public divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 1198
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1199
    .local v0, "bInv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "anObject"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1282
    if-ne p1, p0, :cond_1

    .line 1294
    :cond_0
    :goto_0
    return v1

    .line 1287
    :cond_1
    instance-of v3, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    if-nez v3, :cond_2

    move v1, v2

    .line 1289
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1292
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 1294
    .local v0, "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v4, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget v4, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-static {v3, v4}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/LongArray;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1117
    const-string v0, "F2m"

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    .prologue
    .line 1122
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    return v0
.end method

.method public getK1()I
    .locals 2

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getK2()I
    .locals 2

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getK3()I
    .locals 2

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getM()I
    .locals 1

    .prologue
    .line 1242
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    return v0
.end method

.method public getRepresentation()I
    .locals 1

    .prologue
    .line 1233
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 6

    .prologue
    .line 1215
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v4, v5}, Lcom/android/org/bouncycastle/math/ec/LongArray;->modInverse(I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public isZero()Z
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->isZero()Z

    move-result v0

    return v0
.end method

.method public multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 7
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 1192
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v4, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/org/bouncycastle/math/ec/LongArray;->modMultiply(Lcom/android/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 0

    .prologue
    .line 1205
    return-object p0
.end method

.method public sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .prologue
    .line 1220
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 6

    .prologue
    .line 1210
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v4, v5}, Lcom/android/org/bouncycastle/math/ec/LongArray;->modSquare(I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 1180
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public testBitZero()Z
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->testBitZero()Z

    move-result v0

    return v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
