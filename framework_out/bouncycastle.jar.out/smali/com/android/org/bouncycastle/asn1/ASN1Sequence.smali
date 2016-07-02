.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Sequence.java"


# instance fields
.field protected seq:Ljava/util/Vector;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 10
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    .line 117
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 10
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    .line 125
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 3
    .param p1, "v"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 10
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method

.method protected constructor <init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 3
    .param p1, "array"    # [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 10
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .locals 3
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 73
    if-eqz p1, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object implicit - explicit expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    if-eqz v0, :cond_2

    .line 93
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERSequence;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 97
    :cond_2
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLSequence;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DLSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_4

    .line 104
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    goto :goto_0

    .line 109
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

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

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 21
    if-eqz p0, :cond_0

    instance-of v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v2, :cond_1

    .line 23
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local p0    # "obj":Ljava/lang/Object;
    move-object v1, p0

    .line 46
    .restart local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 25
    :cond_1
    instance-of v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1SequenceParser;

    if-eqz v2, :cond_2

    .line 27
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1SequenceParser;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1SequenceParser;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    goto :goto_0

    .line 29
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, [B

    if-eqz v2, :cond_3

    .line 33
    :try_start_0
    check-cast p0, [B

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to construct sequence from byte[]: "

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

    .line 40
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v2, :cond_4

    move-object v2, p0

    .line 42
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 44
    .local v1, "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v2, v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v2, :cond_4

    .line 46
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    goto :goto_0

    .line 50
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
    .line 288
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 290
    .local v0, "encObj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    return-object v0
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 10
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .prologue
    const/4 v7, 0x0

    .line 252
    instance-of v8, p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v8, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v7

    :cond_1
    move-object v4, p1

    .line 257
    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 259
    .local v4, "other":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v8

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 265
    .local v5, "s1":Ljava/util/Enumeration;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v6

    .line 267
    .local v6, "s2":Ljava/util/Enumeration;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 269
    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 270
    .local v2, "obj1":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    .line 272
    .local v3, "obj2":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 273
    .local v0, "o1":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-interface {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 275
    .local v1, "o2":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-eq v0, v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    .line 283
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
    .line 220
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getObjects()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 236
    .local v0, "e":Ljava/util/Enumeration;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    .line 238
    .local v1, "hashCode":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 241
    .local v2, "o":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    mul-int/lit8 v1, v1, 0x11

    .line 243
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    .line 244
    goto :goto_0

    .line 246
    .end local v2    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_0
    return v1
.end method

.method isConstructed()Z
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x1

    return v0
.end method

.method public parser()Lcom/android/org/bouncycastle/asn1/ASN1SequenceParser;
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    .line 173
    .local v0, "outer":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$1;

    invoke-direct {v1, p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$1;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 3

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v1, v2, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 156
    .local v1, "values":[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    aput-object v2, v1, v0

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    return-object v1
.end method

.method toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 295
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>()V

    .line 297
    .local v0, "derSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    iput-object v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    .line 299
    return-object v0
.end method

.method toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 304
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLSequence;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/DLSequence;-><init>()V

    .line 306
    .local v0, "dlSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    iput-object v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    .line 308
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
