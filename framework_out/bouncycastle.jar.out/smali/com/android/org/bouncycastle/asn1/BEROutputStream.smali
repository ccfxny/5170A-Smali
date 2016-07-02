.class public Lcom/android/org/bouncycastle/asn1/BEROutputStream;
.super Lcom/android/org/bouncycastle/asn1/DEROutputStream;
.source "BEROutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 13
    return-void
.end method


# virtual methods
.method public writeObject(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    if-nez p1, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BEROutputStream;->writeNull()V

    .line 35
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return-void

    .line 23
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    if-eqz v0, :cond_1

    .line 25
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V

    goto :goto_0

    .line 27
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_2

    .line 29
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V

    goto :goto_0

    .line 33
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "object not BEREncodable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
