.class public Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;
.super Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;
.source "DHPrivateKeyParameters.java"


# instance fields
.field private x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V
    .locals 1
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    .prologue
    .line 14
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;-><init>(ZLcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    .line 16
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->x:Ljava/math/BigInteger;

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 32
    instance-of v2, p1, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    if-nez v2, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 37
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .line 39
    .local v0, "other":Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->x:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->x:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->x:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-super {p0}, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
