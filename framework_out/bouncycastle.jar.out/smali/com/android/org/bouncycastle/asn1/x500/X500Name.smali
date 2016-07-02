.class public Lcom/android/org/bouncycastle/asn1/x500/X500Name;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "X500Name.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Choice;


# static fields
.field private static defaultStyle:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;


# instance fields
.field private hashCodeValue:I

.field private isHashCodeCalculated:Z

.field private rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

.field private style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->INSTANCE:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    .line 101
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 102
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "style"    # Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p2, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 109
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 111
    const/4 v1, 0x0

    .line 113
    .local v1, "index":I
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v4

    aput-object v4, v3, v1

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .locals 1
    .param p1, "style"    # Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p2, "name"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 43
    iget-object v0, p2, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 44
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/String;)V
    .locals 1
    .param p1, "style"    # Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p2, "dirName"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-interface {p1, p2}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->fromString(Ljava/lang/String;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>([Lcom/android/org/bouncycastle/asn1/x500/RDN;)V

    .line 145
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 146
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;[Lcom/android/org/bouncycastle/asn1/x500/RDN;)V
    .locals 0
    .param p1, "style"    # Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p2, "rDNs"    # [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 129
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 130
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "dirName"    # Ljava/lang/String;

    .prologue
    .line 136
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public constructor <init>([Lcom/android/org/bouncycastle/asn1/x500/RDN;)V
    .locals 1
    .param p1, "rDNs"    # [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .prologue
    .line 122
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;[Lcom/android/org/bouncycastle/asn1/x500/RDN;)V

    .line 123
    return-void
.end method

.method public static getDefaultStyle()Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;
    .locals 1

    .prologue
    .line 324
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    return-object v0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 2
    .param p0, "style"    # Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 81
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_0

    .line 83
    check-cast p1, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 85
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    .line 87
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 65
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_0

    .line 67
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 74
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 69
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 71
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 74
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static setDefaultStyle(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;)V
    .locals 2
    .param p0, "style"    # Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    .prologue
    .line 309
    if-nez p0, :cond_0

    .line 311
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cannot set style to null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_0
    sput-object p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 315
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 270
    if-ne p1, p0, :cond_0

    move v2, v3

    .line 293
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v2

    .line 275
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    if-nez v2, :cond_1

    instance-of v2, p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v2, :cond_1

    move v2, v4

    .line 277
    goto :goto_0

    :cond_1
    move-object v2, p1

    .line 280
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 282
    .local v0, "derO":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 284
    goto :goto_0

    .line 289
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-interface {v2, p0, v3}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->areEqual(Lcom/android/org/bouncycastle/asn1/x500/X500Name;Lcom/android/org/bouncycastle/asn1/x500/X500Name;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 291
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move v2, v4

    .line 293
    goto :goto_0
.end method

.method public getAttributeTypes()[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 8

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 171
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    array-length v7, v7

    if-eq v3, v7, :cond_0

    .line 173
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    aget-object v5, v7, v3

    .line 175
    .local v5, "rdn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->size()I

    move-result v7

    add-int/2addr v1, v7

    .line 171
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    .end local v5    # "rdn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    :cond_0
    new-array v6, v1, [Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 180
    .local v6, "res":[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v1, 0x0

    .line 182
    const/4 v3, 0x0

    :goto_1
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    array-length v7, v7

    if-eq v3, v7, :cond_3

    .line 184
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    aget-object v5, v7, v3

    .line 186
    .restart local v5    # "rdn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 188
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    .line 189
    .local v0, "attr":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    array-length v7, v0

    if-eq v4, v7, :cond_2

    .line 191
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aget-object v7, v0, v4

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    aput-object v7, v6, v1

    .line 189
    add-int/lit8 v4, v4, 0x1

    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_2

    .line 194
    .end local v0    # "attr":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .end local v4    # "j":I
    :cond_1
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->size()I

    move-result v7

    if-eqz v7, :cond_2

    .line 196
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    aput-object v7, v6, v1

    move v1, v2

    .line 182
    .end local v2    # "count":I
    .restart local v1    # "count":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 200
    .end local v5    # "rdn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    :cond_3
    return-object v6
.end method

.method public getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 155
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    array-length v1, v1

    new-array v0, v1, [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 157
    .local v0, "tmp":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    return-object v0
.end method

.method public getRDNs(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .locals 10
    .param p1, "attributeType"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    const/4 v9, 0x0

    .line 211
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    array-length v8, v8

    new-array v6, v8, [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 212
    .local v6, "res":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    const/4 v1, 0x0

    .line 214
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    array-length v8, v8

    if-eq v3, v8, :cond_3

    .line 216
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    aget-object v5, v8, v3

    .line 218
    .local v5, "rdn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 220
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    .line 221
    .local v0, "attr":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v8, v0

    if-eq v4, v8, :cond_0

    .line 223
    aget-object v8, v0, v4

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 225
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput-object v5, v6, v1

    move v1, v2

    .line 214
    .end local v0    # "attr":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .end local v2    # "count":I
    .end local v4    # "j":I
    .restart local v1    # "count":I
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 221
    .restart local v0    # "attr":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .restart local v4    # "j":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 232
    .end local v0    # "attr":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .end local v4    # "j":I
    :cond_2
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 234
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    aput-object v5, v6, v1

    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_2

    .line 239
    .end local v5    # "rdn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    :cond_3
    new-array v7, v1, [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 241
    .local v7, "tmp":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    array-length v8, v7

    invoke-static {v6, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    return-object v7
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->isHashCodeCalculated:Z

    if-eqz v0, :cond_0

    .line 255
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->hashCodeValue:I

    .line 262
    :goto_0
    return v0

    .line 258
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->isHashCodeCalculated:Z

    .line 260
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p0}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->calculateHashCode(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->hashCodeValue:I

    .line 262
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->hashCodeValue:I

    goto :goto_0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 248
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p0}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->toString(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
