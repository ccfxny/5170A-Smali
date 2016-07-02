.class public Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "NameConstraints.java"


# instance fields
.field private excluded:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

.field private permitted:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 35
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 38
    .local v1, "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 41
    :pswitch_0
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->createArray(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    goto :goto_0

    .line 44
    :pswitch_1
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->createArray(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    goto :goto_0

    .line 48
    .end local v1    # "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_0
    return-void

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>([Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    .locals 0
    .param p1, "permitted"    # [Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .param p2, "excluded"    # [Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 65
    if-eqz p1, :cond_0

    .line 67
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    .line 70
    :cond_0
    if-eqz p2, :cond_1

    .line 72
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    .line 74
    :cond_1
    return-void
.end method

.method private createArray(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .locals 3
    .param p1, "subtree"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v0, v2, [Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    .line 80
    .local v0, "ar":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 82
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v2

    aput-object v2, v0, v1

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 20
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;

    if-eqz v0, :cond_0

    .line 22
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;

    .line 29
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 24
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 26
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getExcludedSubtrees()[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    return-object v0
.end method

.method public getPermittedSubtrees()[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 104
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 106
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    if-eqz v1, :cond_0

    .line 108
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v5, v5, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    if-eqz v1, :cond_1

    .line 113
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSequence;

    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v5, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 116
    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
