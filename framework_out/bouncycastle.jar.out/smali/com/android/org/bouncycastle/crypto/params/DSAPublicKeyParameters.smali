.class public Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;
.super Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;
.source "DSAPublicKeyParameters.java"


# instance fields
.field private y:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V
    .locals 1
    .param p1, "y"    # Ljava/math/BigInteger;
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;-><init>(ZLcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    .line 16
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;->y:Ljava/math/BigInteger;

    .line 17
    return-void
.end method


# virtual methods
.method public getY()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;->y:Ljava/math/BigInteger;

    return-object v0
.end method
