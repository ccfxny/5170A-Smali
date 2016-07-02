.class public Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "X9ECPoint.java"


# instance fields
.field p:Lcom/android/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V
    .locals 1
    .param p1, "c"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "s"    # Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 28
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .locals 1
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 22
    return-void
.end method


# virtual methods
.method public getPoint()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method
