.class public Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
.super Ljava/lang/Object;
.source "ASN1StreamParser.java"


# instance fields
.field private final _in:Ljava/io/InputStream;

.field private final _limit:I

.field private final tmpBuffers:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 16
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "limit"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    .line 24
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    .line 26
    const/16 v0, 0xb

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->tmpBuffers:[[B

    .line 27
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "encoding"    # [B

    .prologue
    .line 32
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 33
    return-void
.end method

.method private set00Check(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->setEofOn00(Z)V

    .line 226
    :cond_0
    return-void
.end method


# virtual methods
.method readImplicit(ZI)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 2
    .param p1, "constructed"    # Z
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v0, :cond_1

    .line 59
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/io/IOException;

    const-string v1, "indefinite length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readIndef(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    .line 67
    :cond_1
    if-eqz p1, :cond_2

    .line 69
    sparse-switch p2, :sswitch_data_0

    .line 93
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "implicit tagging not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :sswitch_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSetParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DERSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_0

    .line 74
    :sswitch_1
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequenceParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DERSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_0

    .line 76
    :sswitch_2
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_0

    .line 81
    :cond_2
    sparse-switch p2, :sswitch_data_1

    goto :goto_1

    .line 88
    :sswitch_3
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)V

    move-object v0, v1

    goto :goto_0

    .line 84
    :sswitch_4
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    const-string v1, "sequences must use constructed encoding (see X.690 8.9.1/8.10.1)"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :sswitch_5
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    const-string v1, "sets must use constructed encoding (see X.690 8.11.1/8.12.1)"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch

    .line 81
    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_3
        0x10 -> :sswitch_5
        0x11 -> :sswitch_4
    .end sparse-switch
.end method

.method readIndef(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 3
    .param p1, "tagValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 51
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown BER object encountered: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :sswitch_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERExternalParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    .line 49
    :goto_0
    return-object v0

    .line 45
    :sswitch_1
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_0

    .line 47
    :sswitch_2
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_0

    .line 49
    :sswitch_3
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERSetParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BERSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_0

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_2
        0x11 -> :sswitch_3
    .end sparse-switch
.end method

.method public readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 122
    iget-object v9, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 123
    .local v6, "tag":I
    const/4 v9, -0x1

    if-ne v6, v9, :cond_0

    .line 125
    const/4 v8, 0x0

    .line 211
    :goto_0
    return-object v8

    .line 131
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->set00Check(Z)V

    .line 136
    iget-object v9, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-static {v9, v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v7

    .line 138
    .local v7, "tagNo":I
    and-int/lit8 v9, v6, 0x20

    if-eqz v9, :cond_1

    move v3, v8

    .line 143
    .local v3, "isConstructed":Z
    :cond_1
    iget-object v9, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v10, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-static {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;I)I

    move-result v4

    .line 145
    .local v4, "length":I
    if-gez v4, :cond_5

    .line 147
    if-nez v3, :cond_2

    .line 149
    new-instance v8, Ljava/io/IOException;

    const-string v9, "indefinite length primitive encoding encountered"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 152
    :cond_2
    new-instance v2, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    iget-object v9, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v10, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v2, v9, v10}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 153
    .local v2, "indIn":Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iget v9, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v5, v2, v9}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 155
    .local v5, "sp":Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
    and-int/lit8 v9, v6, 0x40

    if-eqz v9, :cond_3

    .line 157
    new-instance v8, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {v8, v7, v5}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_0

    .line 160
    :cond_3
    and-int/lit16 v9, v6, 0x80

    if-eqz v9, :cond_4

    .line 162
    new-instance v9, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v9, v8, v7, v5}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    move-object v8, v9

    goto :goto_0

    .line 165
    :cond_4
    invoke-virtual {v5, v7}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readIndef(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    goto :goto_0

    .line 169
    .end local v2    # "indIn":Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    .end local v5    # "sp":Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
    :cond_5
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-direct {v0, v8, v4}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 171
    .local v0, "defIn":Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    and-int/lit8 v8, v6, 0x40

    if-eqz v8, :cond_6

    .line 173
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v3, v7, v9}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZI[B)V

    goto :goto_0

    .line 176
    :cond_6
    and-int/lit16 v8, v6, 0x80

    if-eqz v8, :cond_7

    .line 178
    new-instance v8, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;

    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v3, v7, v9}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_0

    .line 181
    :cond_7
    if-eqz v3, :cond_8

    .line 184
    sparse-switch v7, :sswitch_data_0

    .line 198
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unknown tag "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " encountered"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 190
    :sswitch_0
    new-instance v8, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_0

    .line 192
    :sswitch_1
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERSequenceParser;

    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/DERSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_0

    .line 194
    :sswitch_2
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERSetParser;

    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/DERSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_0

    .line 196
    :sswitch_3
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERExternalParser;

    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_0

    .line 203
    :cond_8
    packed-switch v7, :pswitch_data_0

    .line 211
    :try_start_0
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->tmpBuffers:[[B

    invoke-static {v7, v0, v8}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(ILcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto/16 :goto_0

    .line 206
    :pswitch_0
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;

    invoke-direct {v8, v0}, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)V

    goto/16 :goto_0

    .line 213
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v8, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    const-string v9, "corrupted stream detected"

    invoke-direct {v8, v9, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 184
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch

    .line 203
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method readTaggedObject(ZI)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 6
    .param p1, "constructed"    # Z
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 98
    if-nez p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    .line 102
    .local v0, "defIn":Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, v5, p2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 114
    .end local v0    # "defIn":Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    :goto_0
    return-object v2

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    .line 107
    .local v1, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v2, :cond_2

    .line 109
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    if-ne v2, v4, :cond_1

    new-instance v2, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    invoke-virtual {v1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-direct {v2, v4, p2, v3}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/BERFactory;->createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/BERSequence;

    move-result-object v3

    invoke-direct {v2, v5, p2, v3}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    if-ne v2, v4, :cond_3

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-direct {v2, v4, p2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/DERFactory;->createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-direct {v2, v5, p2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0
.end method

.method readVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 233
    .local v1, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .local v0, "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v0, :cond_1

    .line 235
    instance-of v2, v0, Lcom/android/org/bouncycastle/asn1/InMemoryRepresentable;

    if-eqz v2, :cond_0

    .line 237
    check-cast v0, Lcom/android/org/bouncycastle/asn1/InMemoryRepresentable;

    .end local v0    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/InMemoryRepresentable;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 241
    .restart local v0    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_0
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 245
    :cond_1
    return-object v1
.end method
