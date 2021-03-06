.class public Lcom/android/org/bouncycastle/asn1/DERSequence;
.super Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
.source "DERSequence.java"


# instance fields
.field private bodyLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 1
    .param p1, "v"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    .line 34
    return-void
.end method

.method public constructor <init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "array"    # [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    .line 43
    return-void
.end method

.method private getBodyLength()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget v3, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    if-gez v3, :cond_1

    .line 50
    const/4 v1, 0x0

    .line 52
    .local v1, "length":I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 56
    .local v2, "obj":Ljava/lang/Object;
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v3

    add-int/2addr v1, v3

    .line 57
    goto :goto_0

    .line 59
    :cond_0
    iput v1, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    .line 62
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v1    # "length":I
    :cond_1
    iget v3, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    return v3
.end method


# virtual methods
.method encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 5
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getDERSubStream()Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    move-result-object v0

    .line 86
    .local v0, "dOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getBodyLength()I

    move-result v2

    .line 88
    .local v2, "length":I
    const/16 v4, 0x30

    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 89
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 95
    .local v3, "obj":Ljava/lang/Object;
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method encodedLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getBodyLength()I

    move-result v0

    .line 70
    .local v0, "length":I
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method
