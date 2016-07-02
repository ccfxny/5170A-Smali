.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1Set;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Set.java"


# instance fields
.field private isSorted:Z

.field private set:Ljava/util/Vector;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 11
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    .line 134
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 11
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    .line 142
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Z)V
    .locals 3
    .param p1, "v"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .param p2, "doSort"    # Z

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 11
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    .line 12
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    .line 152
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_0
    if-eqz p2, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->sort()V

    .line 161
    :cond_1
    return-void
.end method

.method protected constructor <init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Z)V
    .locals 3
    .param p1, "array"    # [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .param p2, "doSort"    # Z

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 11
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    .line 12
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_0
    if-eqz p2, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->sort()V

    .line 179
    :cond_1
    return-void
.end method

.method private getEncoded(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B
    .locals 5
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    .line 387
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 388
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 392
    .local v0, "aOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 394
    :catch_0
    move-exception v2

    .line 396
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "cannot encode object added to SET"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 4
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 75
    if-eqz p1, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "object implicit - explicit expected."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 123
    :goto_0
    return-object v1

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    if-eqz v1, :cond_2

    .line 95
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERSet;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/BERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 99
    :cond_2
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DLSet;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DLSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 104
    :cond_3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    instance-of v1, v1, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_4

    .line 106
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    goto :goto_0

    .line 113
    :cond_4
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    instance-of v1, v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_6

    .line 115
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 117
    .local v0, "s":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    if-eqz v1, :cond_5

    .line 119
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERSet;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toArray()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/BERSet;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 123
    :cond_5
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DLSet;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toArray()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DLSet;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 129
    .end local v0    # "s":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown object in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 23
    if-eqz p0, :cond_0

    instance-of v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v2, :cond_1

    .line 25
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .end local p0    # "obj":Ljava/lang/Object;
    move-object v1, p0

    .line 48
    .restart local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 27
    :cond_1
    instance-of v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1SetParser;

    if-eqz v2, :cond_2

    .line 29
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1SetParser;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1SetParser;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    goto :goto_0

    .line 31
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, [B

    if-eqz v2, :cond_3

    .line 35
    :try_start_0
    check-cast p0, [B

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to construct set from byte[]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 42
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v2, :cond_4

    move-object v2, p0

    .line 44
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 46
    .local v1, "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v2, v1, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v2, :cond_4

    .line 48
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    goto :goto_0

    .line 52
    .end local v1    # "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown object in getInstance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "e"    # Ljava/util/Enumeration;

    .prologue
    .line 355
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 358
    .local v0, "encObj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-nez v0, :cond_0

    .line 360
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    .line 363
    .end local v0    # "encObj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_0
    return-object v0
.end method

.method private lessThanOrEqual([B[B)Z
    .locals 6
    .param p1, "a"    # [B
    .param p2, "b"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 373
    array-length v4, p1

    array-length v5, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 374
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eq v0, v1, :cond_3

    .line 376
    aget-byte v4, p1, v0

    aget-byte v5, p2, v0

    if-eq v4, v5, :cond_2

    .line 378
    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    aget-byte v5, p2, v0

    and-int/lit16 v5, v5, 0xff

    if-ge v4, v5, :cond_1

    .line 381
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v2, v3

    .line 378
    goto :goto_1

    .line 374
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    :cond_3
    array-length v4, p1

    if-eq v1, v4, :cond_0

    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 10
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .prologue
    const/4 v7, 0x0

    .line 319
    instance-of v8, p1, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-nez v8, :cond_1

    .line 350
    :cond_0
    :goto_0
    return v7

    :cond_1
    move-object v4, p1

    .line 324
    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 326
    .local v4, "other":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v8

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 332
    .local v5, "s1":Ljava/util/Enumeration;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v6

    .line 334
    .local v6, "s2":Ljava/util/Enumeration;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 336
    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 337
    .local v2, "obj1":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    .line 339
    .local v3, "obj2":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 340
    .local v0, "o1":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-interface {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 342
    .local v1, "o2":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-eq v0, v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    .line 350
    .end local v0    # "o1":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v1    # "o2":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v2    # "obj1":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .end local v3    # "obj2":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_3
    const/4 v7, 0x1

    goto :goto_0
.end method

.method abstract encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getObjects()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 265
    .local v0, "e":Ljava/util/Enumeration;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    .line 267
    .local v1, "hashCode":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 270
    .local v2, "o":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    mul-int/lit8 v1, v1, 0x11

    .line 272
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    .line 273
    goto :goto_0

    .line 275
    .end local v2    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_0
    return v1
.end method

.method isConstructed()Z
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x1

    return v0
.end method

.method public parser()Lcom/android/org/bouncycastle/asn1/ASN1SetParser;
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    .line 224
    .local v0, "outer":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;

    invoke-direct {v1, p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method protected sort()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 404
    iget-boolean v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    if-nez v7, :cond_2

    .line 406
    iput-boolean v8, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    .line 407
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-le v7, v8, :cond_2

    .line 409
    const/4 v6, 0x1

    .line 410
    .local v6, "swapped":Z
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .line 412
    .local v3, "lastSwap":I
    :goto_0
    if-eqz v6, :cond_2

    .line 414
    const/4 v2, 0x0

    .line 415
    .local v2, "index":I
    const/4 v5, 0x0

    .line 416
    .local v5, "swapIndex":I
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getEncoded(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    .line 418
    .local v0, "a":[B
    const/4 v6, 0x0

    .line 420
    :goto_1
    if-eq v2, v3, :cond_1

    .line 422
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getEncoded(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v1

    .line 424
    .local v1, "b":[B
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 426
    move-object v0, v1

    .line 439
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 440
    goto :goto_1

    .line 430
    :cond_0
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 432
    .local v4, "o":Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 433
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v4, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 435
    const/4 v6, 0x1

    .line 436
    move v5, v2

    goto :goto_2

    .line 442
    .end local v1    # "b":[B
    .end local v4    # "o":Ljava/lang/Object;
    :cond_1
    move v3, v5

    .line 443
    goto :goto_0

    .line 446
    .end local v0    # "a":[B
    .end local v2    # "index":I
    .end local v3    # "lastSwap":I
    .end local v5    # "swapIndex":I
    .end local v6    # "swapped":Z
    :cond_2
    return-void
.end method

.method public toArray()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 3

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    new-array v1, v2, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 212
    .local v1, "values":[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 214
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    aput-object v2, v1, v0

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_0
    return-object v1
.end method

.method toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    .line 280
    iget-boolean v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    if-eqz v3, :cond_0

    .line 282
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>()V

    .line 284
    .local v0, "derSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    iput-object v3, v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    .line 303
    :goto_0
    return-object v0

    .line 290
    .end local v0    # "derSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    :cond_0
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 292
    .local v2, "v":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 294
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 297
    :cond_1
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>()V

    .line 299
    .restart local v0    # "derSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    iput-object v2, v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    .line 301
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->sort()V

    goto :goto_0
.end method

.method toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 309
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLSet;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/DLSet;-><init>()V

    .line 311
    .local v0, "derSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    iput-object v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    .line 313
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
