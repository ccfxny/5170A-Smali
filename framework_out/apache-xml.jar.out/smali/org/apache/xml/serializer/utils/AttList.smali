.class public final Lorg/apache/xml/serializer/utils/AttList;
.super Ljava/lang/Object;
.source "AttList.java"

# interfaces
.implements Lorg/xml/sax/Attributes;


# instance fields
.field m_attrs:Lorg/w3c/dom/NamedNodeMap;

.field m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

.field m_lastIndex:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/NamedNodeMap;Lorg/apache/xml/serializer/utils/DOM2Helper;)V
    .locals 1
    .param p1, "attrs"    # Lorg/w3c/dom/NamedNodeMap;
    .param p2, "dh"    # Lorg/apache/xml/serializer/utils/DOM2Helper;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    .line 82
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/serializer/utils/AttList;->m_lastIndex:I

    .line 83
    iput-object p2, p0, Lorg/apache/xml/serializer/utils/AttList;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    .line 84
    return-void
.end method


# virtual methods
.method public getIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 255
    iget-object v2, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 257
    iget-object v2, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v2, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 258
    .local v0, "a":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    .end local v0    # "a":Lorg/w3c/dom/Node;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 255
    .restart local v0    # "a":Lorg/w3c/dom/Node;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 261
    .end local v0    # "a":Lorg/w3c/dom/Node;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localPart"    # Ljava/lang/String;

    .prologue
    .line 234
    iget-object v3, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 236
    iget-object v3, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v3, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 237
    .local v0, "a":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "u":Ljava/lang/String;
    if-nez v2, :cond_1

    if-nez p1, :cond_2

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 243
    .end local v0    # "a":Lorg/w3c/dom/Node;
    .end local v1    # "i":I
    .end local v2    # "u":Ljava/lang/String;
    :goto_1
    return v1

    .line 238
    .restart local v0    # "a":Lorg/w3c/dom/Node;
    .restart local v1    # "i":I
    .restart local v2    # "u":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 234
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 243
    .end local v0    # "a":Lorg/w3c/dom/Node;
    .end local v2    # "u":Ljava/lang/String;
    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 123
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/AttList;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    iget-object v0, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-virtual {v1, v0}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 149
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 175
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 190
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 107
    iget-object v2, p0, Lorg/apache/xml/serializer/utils/AttList;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v1, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Attr;

    invoke-virtual {v2, v1}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "ns":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 109
    const-string v0, ""

    .line 110
    :cond_0
    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v1, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    .line 204
    .local v0, "attr":Lorg/w3c/dom/Attr;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v1, p1, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 220
    .local v0, "a":Lorg/w3c/dom/Node;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
