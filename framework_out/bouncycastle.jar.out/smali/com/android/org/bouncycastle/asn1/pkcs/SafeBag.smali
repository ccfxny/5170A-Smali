.class public Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "SafeBag.java"


# instance fields
.field private bagAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private bagId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private bagValue:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagValue:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .locals 0
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .param p3, "bagAttributes"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 36
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagValue:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 37
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 38
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagValue:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 61
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 63
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 65
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 43
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    if-eqz v0, :cond_0

    .line 45
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    .line 53
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 48
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 50
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 53
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getBagValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagValue:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    .line 84
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 86
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 87
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagValue:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 89
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 94
    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DLSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DLSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
