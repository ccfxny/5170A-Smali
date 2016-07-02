.class public Lcom/android/org/bouncycastle/asn1/cms/Attribute;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "Attribute.java"


# instance fields
.field private attrType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private attrValues:Lcom/android/org/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .locals 0
    .param p1, "attrType"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "attrValues"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->attrType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 92
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->attrValues:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 93
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->attrType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->attrValues:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .locals 2
    .param p1, "attrType"    # Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .param p2, "attrValues"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 83
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->attrType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 84
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->attrValues:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 85
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/Attribute;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 56
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    if-eqz v0, :cond_0

    .line 58
    check-cast p0, Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    .line 66
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 61
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 63
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/cms/Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 66
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAttrType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->attrType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getAttrValues()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->attrValues:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getAttributeValues()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->attrValues:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->toArray()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 117
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->attrType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 118
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->attrValues:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 120
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
