.class public Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;
.super Ljava/lang/Object;
.source "X500NameBuilder.java"


# instance fields
.field private rdns:Ljava/util/Vector;

.field private template:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->INSTANCE:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;)V
    .locals 1
    .param p1, "template"    # Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    .line 21
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->template:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 22
    return-void
.end method


# virtual methods
.method public addMultiValuedRDN([Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;
    .locals 5
    .param p1, "oids"    # [Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "values"    # [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    .line 59
    array-length v2, p1

    new-array v0, v2, [Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    .line 61
    .local v0, "avs":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    .line 63
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    aget-object v3, p1, v1

    aget-object v4, p2, v1

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v2, v0, v1

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->addMultiValuedRDN([Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;

    move-result-object v2

    return-object v2
.end method

.method public addMultiValuedRDN([Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;
    .locals 5
    .param p1, "oids"    # [Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "values"    # [Ljava/lang/String;

    .prologue
    .line 47
    array-length v2, p2

    new-array v1, v2, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 49
    .local v1, "vals":[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->template:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    aget-object v3, p1, v0

    aget-object v4, p2, v0

    invoke-interface {v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->stringToValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    aput-object v2, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->addMultiValuedRDN([Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;

    move-result-object v2

    return-object v2
.end method

.method public addMultiValuedRDN([Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;
    .locals 2
    .param p1, "attrTAndVs"    # [Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x500/RDN;

    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;-><init>([Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 73
    return-object p0
.end method

.method public addRDN(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;
    .locals 2
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x500/RDN;

    invoke-direct {v1, p1, p2}, Lcom/android/org/bouncycastle/asn1/x500/RDN;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 35
    return-object p0
.end method

.method public addRDN(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->template:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->stringToValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->addRDN(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;

    .line 28
    return-object p0
.end method

.method public addRDN(Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;
    .locals 2
    .param p1, "attrTAndV"    # Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x500/RDN;

    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;-><init>(Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 42
    return-object p0
.end method

.method public build()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 4

    .prologue
    .line 78
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 80
    .local v1, "vals":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/x500/RDN;

    aput-object v2, v1, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->template:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {v2, v3, v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;[Lcom/android/org/bouncycastle/asn1/x500/RDN;)V

    return-object v2
.end method
