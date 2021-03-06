.class public Lcom/android/org/bouncycastle/asn1/x500/RDN;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "RDN.java"


# instance fields
.field private values:Lcom/android/org/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 3
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 44
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 46
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 47
    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 49
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSet;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 50
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .locals 0
    .param p1, "values"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)V
    .locals 1
    .param p1, "attrTAndV"    # Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 54
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 55
    return-void
.end method

.method public constructor <init>([Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)V
    .locals 1
    .param p1, "aAndVs"    # [Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 64
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 65
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 24
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;

    if-eqz v0, :cond_0

    .line 26
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 33
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 28
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 30
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/RDN;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    move-object p0, v0

    goto :goto_0

    .line 33
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    goto :goto_0
.end method

.method public getTypesAndValues()[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .locals 3

    .prologue
    .line 94
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    new-array v1, v2, [Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    .line 96
    .local v1, "tmp":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v2

    aput-object v2, v1, v0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-object v1
.end method

.method public isMultiValued()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 69
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    return v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method
