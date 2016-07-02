.class public Lorg/apache/xml/utils/QName;
.super Ljava/lang/Object;
.source "QName.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final S_XMLNAMESPACEURI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"

.field static final serialVersionUID:J = 0x67ca946832676e0L


# instance fields
.field protected _localName:Ljava/lang/String;

.field protected _namespaceURI:Ljava/lang/String;

.field protected _prefix:Ljava/lang/String;

.field private m_hashCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "localName"    # Ljava/lang/String;

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Z)V

    .line 192
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "validate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    if-nez p3, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_ARG_LOCALNAME_NULL"

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    if-eqz p4, :cond_2

    .line 163
    invoke-static {p3}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_ARG_LOCALNAME_INVALID"

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_ARG_PREFIX_INVALID"

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_2
    iput-object p1, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    .line 177
    iput-object p2, p0, Lorg/apache/xml/utils/QName;->_prefix:Ljava/lang/String;

    .line 178
    iput-object p3, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/apache/xml/utils/QName;->m_hashCode:I

    .line 180
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "validate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    if-nez p2, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_ARG_LOCALNAME_NULL"

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    if-eqz p3, :cond_1

    .line 116
    invoke-static {p2}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_ARG_LOCALNAME_INVALID"

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    iput-object p1, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/apache/xml/utils/QName;->m_hashCode:I

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Stack;)V
    .locals 1
    .param p1, "qname"    # Ljava/lang/String;
    .param p2, "namespaces"    # Ljava/util/Stack;

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/util/Stack;Z)V

    .line 235
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Stack;Z)V
    .locals 10
    .param p1, "qname"    # Ljava/lang/String;
    .param p2, "namespaces"    # Ljava/util/Stack;
    .param p3, "validate"    # Z

    .prologue
    const/4 v9, 0x0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    const/4 v3, 0x0

    .line 251
    .local v3, "namespace":Ljava/lang/String;
    const/4 v5, 0x0

    .line 252
    .local v5, "prefix":Ljava/lang/String;
    const/16 v6, 0x3a

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 254
    .local v2, "indexOfNSSep":I
    if-lez v2, :cond_5

    .line 256
    invoke-virtual {p1, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 258
    const-string v6, "xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 260
    const-string v3, "http://www.w3.org/XML/1998/namespace"

    .line 290
    :cond_0
    if-nez v3, :cond_5

    .line 292
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "ER_PREFIX_MUST_RESOLVE"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 263
    :cond_1
    const-string v6, "xmlns"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 313
    .end local p1    # "qname":Ljava/lang/String;
    :goto_0
    return-void

    .line 269
    .restart local p1    # "qname":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Ljava/util/Stack;->size()I

    move-result v0

    .line 271
    .local v0, "depth":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 273
    invoke-virtual {p2, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xml/utils/NameSpace;

    .line 275
    .local v4, "ns":Lorg/apache/xml/utils/NameSpace;
    :goto_2
    if-eqz v4, :cond_3

    .line 277
    iget-object v6, v4, Lorg/apache/xml/utils/NameSpace;->m_prefix:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, v4, Lorg/apache/xml/utils/NameSpace;->m_prefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 279
    iget-object v3, v4, Lorg/apache/xml/utils/NameSpace;->m_uri:Ljava/lang/String;

    .line 280
    const/4 v1, -0x1

    .line 271
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 285
    :cond_4
    iget-object v4, v4, Lorg/apache/xml/utils/NameSpace;->m_next:Lorg/apache/xml/utils/NameSpace;

    goto :goto_2

    .line 299
    .end local v0    # "depth":I
    .end local v1    # "i":I
    .end local v4    # "ns":Lorg/apache/xml/utils/NameSpace;
    :cond_5
    if-gez v2, :cond_7

    .end local p1    # "qname":Ljava/lang/String;
    :goto_3
    iput-object p1, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    .line 302
    if-eqz p3, :cond_8

    .line 304
    iget-object v6, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    invoke-static {v6}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 306
    :cond_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "ER_ARG_LOCALNAME_INVALID"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 299
    .restart local p1    # "qname":Ljava/lang/String;
    :cond_7
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 310
    .end local p1    # "qname":Ljava/lang/String;
    :cond_8
    iput-object v3, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    .line 311
    iput-object v5, p0, Lorg/apache/xml/utils/QName;->_prefix:Ljava/lang/String;

    .line 312
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    iput v6, p0, Lorg/apache/xml/utils/QName;->m_hashCode:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V
    .locals 1
    .param p1, "qname"    # Ljava/lang/String;
    .param p2, "resolver"    # Lorg/apache/xml/utils/PrefixResolver;

    .prologue
    .line 414
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;Z)V

    .line 415
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;Z)V
    .locals 6
    .param p1, "qname"    # Ljava/lang/String;
    .param p2, "resolver"    # Lorg/apache/xml/utils/PrefixResolver;
    .param p3, "validate"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    const/4 v1, 0x0

    .line 431
    .local v1, "prefix":Ljava/lang/String;
    iput-object v4, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    .line 433
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 435
    .local v0, "indexOfNSSep":I
    if-lez v0, :cond_3

    .line 437
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 439
    const-string v2, "xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 441
    const-string v2, "http://www.w3.org/XML/1998/namespace"

    iput-object v2, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    .line 448
    :goto_0
    iget-object v2, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 450
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ER_PREFIX_MUST_RESOLVE"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 445
    :cond_0
    invoke-interface {p2, v1}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    goto :goto_0

    .line 455
    :cond_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    .line 469
    :goto_1
    if-eqz p3, :cond_5

    .line 471
    iget-object v2, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 473
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ER_ARG_LOCALNAME_INVALID"

    invoke-static {v3, v4}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 457
    :cond_3
    if-nez v0, :cond_4

    .line 459
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ER_NAME_CANT_START_WITH_COLON"

    invoke-static {v3, v4}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 466
    :cond_4
    iput-object p1, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    goto :goto_1

    .line 479
    :cond_5
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    iput v2, p0, Lorg/apache/xml/utils/QName;->m_hashCode:I

    .line 480
    iput-object v1, p0, Lorg/apache/xml/utils/QName;->_prefix:Ljava/lang/String;

    .line 481
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/w3c/dom/Element;Lorg/apache/xml/utils/PrefixResolver;)V
    .locals 1
    .param p1, "qname"    # Ljava/lang/String;
    .param p2, "namespaceContext"    # Lorg/w3c/dom/Element;
    .param p3, "resolver"    # Lorg/apache/xml/utils/PrefixResolver;

    .prologue
    .line 327
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/w3c/dom/Element;Lorg/apache/xml/utils/PrefixResolver;Z)V

    .line 328
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/w3c/dom/Element;Lorg/apache/xml/utils/PrefixResolver;Z)V
    .locals 6
    .param p1, "qname"    # Ljava/lang/String;
    .param p2, "namespaceContext"    # Lorg/w3c/dom/Element;
    .param p3, "resolver"    # Lorg/apache/xml/utils/PrefixResolver;
    .param p4, "validate"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object v4, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    .line 347
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 349
    .local v0, "indexOfNSSep":I
    if-lez v0, :cond_2

    .line 351
    if-eqz p2, :cond_2

    .line 353
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "prefix":Ljava/lang/String;
    iput-object v1, p0, Lorg/apache/xml/utils/QName;->_prefix:Ljava/lang/String;

    .line 357
    const-string v2, "xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    const-string v2, "http://www.w3.org/XML/1998/namespace"

    iput-object v2, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    .line 373
    :goto_0
    iget-object v2, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 375
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ER_PREFIX_MUST_RESOLVE"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 363
    :cond_0
    const-string v2, "xmlns"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 401
    .end local v1    # "prefix":Ljava/lang/String;
    .end local p1    # "qname":Ljava/lang/String;
    :goto_1
    return-void

    .line 369
    .restart local v1    # "prefix":Ljava/lang/String;
    .restart local p1    # "qname":Ljava/lang/String;
    :cond_1
    invoke-interface {p3, v1, p2}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    goto :goto_0

    .line 388
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_2
    if-gez v0, :cond_4

    .end local p1    # "qname":Ljava/lang/String;
    :goto_2
    iput-object p1, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    .line 391
    if-eqz p4, :cond_5

    .line 393
    iget-object v2, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 395
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ER_ARG_LOCALNAME_INVALID"

    invoke-static {v3, v4}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 388
    .restart local p1    # "qname":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 400
    .end local p1    # "qname":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    iput v2, p0, Lorg/apache/xml/utils/QName;->m_hashCode:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "validate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    if-nez p1, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_ARG_LOCALNAME_NULL"

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    if-eqz p2, :cond_1

    .line 213
    invoke-static {p1}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_ARG_LOCALNAME_INVALID"

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_1
    iput-object v2, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    .line 220
    iput-object p1, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    .line 221
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/apache/xml/utils/QName;->m_hashCode:I

    .line 222
    return-void
.end method

.method public static getLocalPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "qname"    # Ljava/lang/String;

    .prologue
    .line 690
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 692
    .local v0, "index":I
    if-gez v0, :cond_0

    .end local p0    # "qname":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "qname":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getPrefixFromXMLNSDecl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "attRawName"    # Ljava/lang/String;

    .prologue
    .line 675
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 677
    .local v0, "index":I
    if-ltz v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getPrefixPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "qname"    # Ljava/lang/String;

    .prologue
    .line 705
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 707
    .local v0, "index":I
    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getQNameFromString(Ljava/lang/String;)Lorg/apache/xml/utils/QName;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 635
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, "{}"

    const/4 v6, 0x0

    invoke-direct {v3, p0, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 637
    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 638
    .local v1, "s1":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 640
    .local v2, "s2":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_1

    .line 641
    new-instance v0, Lorg/apache/xml/utils/QName;

    invoke-direct {v0, v4, v1}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    .local v0, "qname":Lorg/apache/xml/utils/QName;
    :goto_1
    return-object v0

    .end local v0    # "qname":Lorg/apache/xml/utils/QName;
    .end local v2    # "s2":Ljava/lang/String;
    :cond_0
    move-object v2, v4

    .line 638
    goto :goto_0

    .line 643
    .restart local v2    # "s2":Ljava/lang/String;
    :cond_1
    new-instance v0, Lorg/apache/xml/utils/QName;

    invoke-direct {v0, v1, v2}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "qname":Lorg/apache/xml/utils/QName;
    goto :goto_1
.end method

.method public static isXMLNSDecl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "attRawName"    # Ljava/lang/String;

    .prologue
    .line 659
    const-string v0, "xmlns"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "xmlns"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "xmlns:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 607
    if-ne p1, p0, :cond_1

    .line 621
    :cond_0
    :goto_0
    return v3

    .line 610
    :cond_1
    instance-of v5, p1, Lorg/apache/xml/utils/QName;

    if-eqz v5, :cond_4

    move-object v0, p1

    .line 611
    check-cast v0, Lorg/apache/xml/utils/QName;

    .line 612
    .local v0, "qname":Lorg/apache/xml/utils/QName;
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 613
    .local v2, "thisnamespace":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/xml/utils/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, "thatnamespace":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    if-nez v2, :cond_2

    if-nez v1, :cond_2

    goto :goto_0

    .end local v0    # "qname":Lorg/apache/xml/utils/QName;
    .end local v1    # "thatnamespace":Ljava/lang/String;
    .end local v2    # "thisnamespace":Ljava/lang/String;
    :cond_4
    move v3, v4

    .line 621
    goto :goto_0
.end method

.method public equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "localPart"    # Ljava/lang/String;

    .prologue
    .line 589
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "thisnamespace":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lorg/apache/xml/utils/QName;->_prefix:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 573
    iget v0, p0, Lorg/apache/xml/utils/QName;->m_hashCode:I

    return v0
.end method

.method public toNamespacedString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lorg/apache/xml/utils/QName;->_prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/xml/utils/QName;->_prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    goto :goto_0
.end method
