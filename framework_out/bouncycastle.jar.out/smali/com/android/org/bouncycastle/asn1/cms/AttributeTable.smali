.class public Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;
.super Ljava/lang/Object;
.source "AttributeTable.java"


# instance fields
.field private attributes:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 3
    .param p1, "v"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    .line 30
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 32
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    move-result-object v0

    .line 34
    .local v0, "a":Lcom/android/org/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->getAttrType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->addAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/cms/Attribute;)V

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    .end local v0    # "a":Lcom/android/org/bouncycastle/asn1/cms/Attribute;
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .locals 3
    .param p1, "s"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    .line 41
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 43
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    move-result-object v0

    .line 45
    .local v0, "a":Lcom/android/org/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->getAttrType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->addAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/cms/Attribute;)V

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "a":Lcom/android/org/bouncycastle/asn1/cms/Attribute;
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/cms/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    .line 52
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->getAttrType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->addAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/cms/Attribute;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/cms/Attributes;)V
    .locals 1
    .param p1, "attrs"    # Lcom/android/org/bouncycastle/asn1/cms/Attributes;

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/cms/Attributes;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "attrs"    # Ljava/util/Hashtable;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    .line 24
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->copyTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    .line 25
    return-void
.end method

.method private addAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/cms/Attribute;)V
    .locals 3
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "a"    # Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    .prologue
    .line 65
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 67
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 69
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :goto_0
    return-void

    .line 75
    :cond_0
    instance-of v2, v1, Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    if-eqz v2, :cond_1

    .line 77
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 79
    .local v0, "v":Ljava/util/Vector;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 89
    :goto_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "v":Ljava/util/Vector;
    :cond_1
    move-object v0, v1

    .line 84
    check-cast v0, Ljava/util/Vector;

    .line 86
    .restart local v0    # "v":Ljava/util/Vector;
    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private copyTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 4
    .param p1, "in"    # Ljava/util/Hashtable;

    .prologue
    .line 220
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 221
    .local v2, "out":Ljava/util/Hashtable;
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 223
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 227
    .local v1, "key":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 230
    .end local v1    # "key":Ljava/lang/Object;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;
    .locals 3
    .param p1, "attrType"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "attrValue"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    .line 242
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;-><init>(Ljava/util/Hashtable;)V

    .line 244
    .local v0, "newTable":Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v2, p2}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, p1, v2}, Lcom/android/org/bouncycastle/asn1/cms/Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    invoke-direct {v0, p1, v1}, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->addAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/cms/Attribute;)V

    .line 246
    return-object v0
.end method

.method public get(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/cms/Attribute;
    .locals 2
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 114
    check-cast v0, Ljava/util/Vector;

    .end local v0    # "value":Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    .line 117
    :goto_0
    return-object v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    .end local v0    # "value":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public get(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/cms/Attribute;
    .locals 2
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .prologue
    .line 98
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->get(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public getAll(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .locals 4
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 138
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 140
    .local v1, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 142
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/Vector;

    if-eqz v3, :cond_0

    .line 144
    check-cast v2, Ljava/util/Vector;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 146
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 151
    .end local v0    # "e":Ljava/util/Enumeration;
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_0
    if-eqz v2, :cond_1

    .line 153
    check-cast v2, Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 156
    :cond_1
    return-object v1
.end method

.method public getAll(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .locals 2
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .prologue
    .line 125
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;
    .locals 2
    .param p1, "attrType"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 251
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;-><init>(Ljava/util/Hashtable;)V

    .line 253
    .local v0, "newTable":Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;
    iget-object v1, v0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    return-object v0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 161
    const/4 v2, 0x0

    .line 163
    .local v2, "size":I
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 167
    .local v1, "o":Ljava/lang/Object;
    instance-of v3, v1, Ljava/util/Vector;

    if-eqz v3, :cond_0

    .line 169
    check-cast v1, Ljava/util/Vector;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 173
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    .end local v1    # "o":Ljava/lang/Object;
    :cond_1
    return v2
.end method

.method public toASN1EncodableVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .locals 5

    .prologue
    .line 187
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 188
    .local v2, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 190
    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 192
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 194
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/Vector;

    if-eqz v4, :cond_1

    .line 196
    check-cast v3, Ljava/util/Vector;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 198
    .local v1, "en":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 205
    .end local v1    # "en":Ljava/util/Enumeration;
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_1
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 209
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    return-object v2
.end method

.method public toASN1Structure()Lcom/android/org/bouncycastle/asn1/cms/Attributes;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/Attributes;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/cms/Attributes;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public toHashtable()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->copyTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method
