.class public Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
.super Lcom/android/org/bouncycastle/asn1/DEREnumerated;
.source "ASN1Enumerated.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;-><init>(I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;-><init>(Ljava/math/BigInteger;)V

    .line 16
    return-void
.end method

.method constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;-><init>([B)V

    .line 11
    return-void
.end method
