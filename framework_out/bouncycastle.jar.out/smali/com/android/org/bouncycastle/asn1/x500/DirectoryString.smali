.class public Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "DirectoryString.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Choice;
.implements Lcom/android/org/bouncycastle/asn1/ASN1String;


# instance fields
.field private string:Lcom/android/org/bouncycastle/asn1/ASN1String;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/DERBMPString;)V
    .locals 0
    .param p1, "string"    # Lcom/android/org/bouncycastle/asn1/DERBMPString;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/org/bouncycastle/asn1/ASN1String;

    .line 94
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/DERPrintableString;)V
    .locals 0
    .param p1, "string"    # Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/org/bouncycastle/asn1/ASN1String;

    .line 76
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/DERT61String;)V
    .locals 0
    .param p1, "string"    # Lcom/android/org/bouncycastle/asn1/DERT61String;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/org/bouncycastle/asn1/ASN1String;

    .line 70
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/DERUTF8String;)V
    .locals 0
    .param p1, "string"    # Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/org/bouncycastle/asn1/ASN1String;

    .line 88
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/DERUniversalString;)V
    .locals 0
    .param p1, "string"    # Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/org/bouncycastle/asn1/ASN1String;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 98
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/org/bouncycastle/asn1/ASN1String;

    .line 99
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;
    .locals 2
    .param p0, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "choice item must be explicitly tagged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 23
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;

    if-eqz v0, :cond_1

    .line 25
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;

    .line 50
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 28
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERT61String;

    if-eqz v0, :cond_2

    .line 30
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERT61String;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;-><init>(Lcom/android/org/bouncycastle/asn1/DERT61String;)V

    move-object p0, v0

    goto :goto_0

    .line 33
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    if-eqz v0, :cond_3

    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;-><init>(Lcom/android/org/bouncycastle/asn1/DERPrintableString;)V

    move-object p0, v0

    goto :goto_0

    .line 38
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    if-eqz v0, :cond_4

    .line 40
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;-><init>(Lcom/android/org/bouncycastle/asn1/DERUniversalString;)V

    move-object p0, v0

    goto :goto_0

    .line 43
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    if-eqz v0, :cond_5

    .line 45
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;-><init>(Lcom/android/org/bouncycastle/asn1/DERUTF8String;)V

    move-object p0, v0

    goto :goto_0

    .line 48
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_5
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    if-eqz v0, :cond_6

    .line 50
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;-><init>(Lcom/android/org/bouncycastle/asn1/DERBMPString;)V

    move-object p0, v0

    goto :goto_0

    .line 53
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/org/bouncycastle/asn1/ASN1String;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
