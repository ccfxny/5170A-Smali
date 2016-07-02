.class public Lorg/apache/xalan/serialize/SerializerUtils;
.super Ljava/lang/Object;
.source "SerializerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAttribute(Lorg/apache/xml/serializer/SerializationHandler;I)V
    .locals 9
    .param p0, "handler"    # Lorg/apache/xml/serializer/SerializationHandler;
    .param p1, "attr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-interface {p0}, Lorg/apache/xml/serializer/SerializationHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v8

    check-cast v8, Lorg/apache/xalan/transformer/TransformerImpl;

    .line 60
    .local v8, "transformer":Lorg/apache/xalan/transformer/TransformerImpl;
    invoke-virtual {v8}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v7

    .line 62
    .local v7, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-static {p0, p1, v7}, Lorg/apache/xalan/serialize/SerializerUtils;->isDefinedNSDecl(Lorg/apache/xml/serializer/SerializationHandler;ILorg/apache/xml/dtm/DTM;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-interface {v7, p1}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "ns":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 68
    const-string v1, ""

    .line 73
    :cond_1
    :try_start_0
    invoke-interface {v7, p1}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, p1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CDATA"

    invoke-interface {v7, p1}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-interface/range {v0 .. v6}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static addAttributes(Lorg/apache/xml/serializer/SerializationHandler;I)V
    .locals 4
    .param p0, "handler"    # Lorg/apache/xml/serializer/SerializationHandler;
    .param p1, "src"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-interface {p0}, Lorg/apache/xml/serializer/SerializationHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/transformer/TransformerImpl;

    .line 99
    .local v2, "transformer":Lorg/apache/xalan/transformer/TransformerImpl;
    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 101
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    move-result v1

    .line 102
    .local v1, "node":I
    :goto_0
    const/4 v3, -0x1

    if-eq v3, v1, :cond_0

    .line 105
    invoke-static {p0, v1}, Lorg/apache/xalan/serialize/SerializerUtils;->addAttribute(Lorg/apache/xml/serializer/SerializationHandler;I)V

    .line 103
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    move-result v1

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method public static ensureNamespaceDeclDeclared(Lorg/apache/xml/serializer/SerializationHandler;Lorg/apache/xml/dtm/DTM;I)V
    .locals 5
    .param p0, "handler"    # Lorg/apache/xml/serializer/SerializationHandler;
    .param p1, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .param p2, "namespace"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-interface {p1, p2}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, "uri":Ljava/lang/String;
    invoke-interface {p1, p2}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "prefix":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    if-eqz v2, :cond_1

    .line 261
    invoke-interface {p0}, Lorg/apache/xml/serializer/SerializationHandler;->getNamespaceMappings()Lorg/apache/xml/serializer/NamespaceMappings;

    move-result-object v1

    .line 262
    .local v1, "ns":Lorg/apache/xml/serializer/NamespaceMappings;
    if-eqz v1, :cond_1

    .line 265
    invoke-virtual {v1, v2}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "foundURI":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 268
    :cond_0
    const/4 v4, 0x0

    invoke-interface {p0, v2, v3, v4}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 272
    .end local v0    # "foundURI":Ljava/lang/String;
    .end local v1    # "ns":Lorg/apache/xml/serializer/NamespaceMappings;
    :cond_1
    return-void
.end method

.method public static isDefinedNSDecl(Lorg/apache/xml/serializer/SerializationHandler;ILorg/apache/xml/dtm/DTM;)Z
    .locals 4
    .param p0, "serializer"    # Lorg/apache/xml/serializer/SerializationHandler;
    .param p1, "attr"    # I
    .param p2, "dtm"    # Lorg/apache/xml/dtm/DTM;

    .prologue
    .line 222
    const/16 v2, 0xd

    invoke-interface {p2, p1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v3

    if-ne v2, v3, :cond_0

    .line 226
    invoke-interface {p2, p1}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "prefix":Ljava/lang/String;
    invoke-interface {p0, v0}, Lorg/apache/xml/serializer/SerializationHandler;->getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "uri":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-interface {p2, p1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    const/4 v2, 0x1

    .line 234
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "uri":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static outputResultTreeFragment(Lorg/apache/xml/serializer/SerializationHandler;Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/XPathContext;)V
    .locals 5
    .param p0, "handler"    # Lorg/apache/xml/serializer/SerializationHandler;
    .param p1, "obj"    # Lorg/apache/xpath/objects/XObject;
    .param p2, "support"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->rtf()I

    move-result v0

    .line 126
    .local v0, "doc":I
    invoke-virtual {p2, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    .line 128
    .local v1, "dtm":Lorg/apache/xml/dtm/DTM;
    if-eqz v1, :cond_1

    .line 130
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result v2

    .line 131
    .local v2, "n":I
    :goto_0
    const/4 v3, -0x1

    if-eq v3, v2, :cond_1

    .line 134
    invoke-interface {p0}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V

    .line 138
    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 140
    const-string v3, ""

    const-string v4, ""

    invoke-interface {p0, v3, v4}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    invoke-interface {v1, v2, p0}, Lorg/apache/xml/dtm/DTM;->dispatchToEvents(ILorg/xml/sax/ContentHandler;)V

    .line 132
    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    move-result v2

    goto :goto_0

    .line 144
    .end local v2    # "n":I
    :cond_1
    return-void
.end method

.method public static processNSDecls(Lorg/apache/xml/serializer/SerializationHandler;IILorg/apache/xml/dtm/DTM;)V
    .locals 6
    .param p0, "handler"    # Lorg/apache/xml/serializer/SerializationHandler;
    .param p1, "src"    # I
    .param p2, "type"    # I
    .param p3, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 168
    if-ne p2, v5, :cond_1

    .line 170
    const/4 v5, 0x1

    :try_start_0
    invoke-interface {p3, p1, v5}, Lorg/apache/xml/dtm/DTM;->getFirstNamespaceNode(IZ)I

    move-result v1

    .line 171
    .local v1, "namespace":I
    :goto_0
    const/4 v5, -0x1

    if-eq v5, v1, :cond_2

    .line 176
    invoke-interface {p3, v1}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "prefix":Ljava/lang/String;
    invoke-interface {p0, v2}, Lorg/apache/xml/serializer/SerializationHandler;->getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "desturi":Ljava/lang/String;
    invoke-interface {p3, v1}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "srcURI":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 183
    const/4 v5, 0x0

    invoke-interface {p0, v2, v4, v5}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 172
    :cond_0
    const/4 v5, 0x1

    invoke-interface {p3, p1, v1, v5}, Lorg/apache/xml/dtm/DTM;->getNextNamespaceNode(IIZ)I

    move-result v1

    goto :goto_0

    .line 187
    .end local v0    # "desturi":Ljava/lang/String;
    .end local v1    # "namespace":I
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v4    # "srcURI":Ljava/lang/String;
    :cond_1
    const/16 v5, 0xd

    if-ne p2, v5, :cond_2

    .line 189
    invoke-interface {p3, p1}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v2

    .line 191
    .restart local v2    # "prefix":Ljava/lang/String;
    invoke-interface {p0, v2}, Lorg/apache/xml/serializer/SerializationHandler;->getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .restart local v0    # "desturi":Ljava/lang/String;
    invoke-interface {p3, p1}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 194
    .restart local v4    # "srcURI":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 196
    const/4 v5, 0x0

    invoke-interface {p0, v2, v4, v5}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v0    # "desturi":Ljava/lang/String;
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v4    # "srcURI":Ljava/lang/String;
    :cond_2
    return-void

    .line 200
    :catch_0
    move-exception v3

    .line 202
    .local v3, "se":Lorg/xml/sax/SAXException;
    new-instance v5, Ljavax/xml/transform/TransformerException;

    invoke-direct {v5, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method
