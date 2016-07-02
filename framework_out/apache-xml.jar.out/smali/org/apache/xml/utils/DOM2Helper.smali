.class public Lorg/apache/xml/utils/DOM2Helper;
.super Lorg/apache/xml/utils/DOMHelper;
.source "DOM2Helper.java"


# instance fields
.field private m_doc:Lorg/w3c/dom/Document;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/apache/xml/utils/DOMHelper;-><init>()V

    return-void
.end method

.method public static getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 264
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 265
    .local v0, "parent":Lorg/w3c/dom/Node;
    if-nez v0, :cond_0

    const/4 v1, 0x2

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v1, v2, :cond_0

    .line 266
    check-cast p0, Lorg/w3c/dom/Attr;

    .end local p0    # "node":Lorg/w3c/dom/Node;
    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 267
    :cond_0
    return-object v0
.end method

.method public static isNodeAfter(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .locals 3
    .param p0, "node1"    # Lorg/w3c/dom/Node;
    .param p1, "node2"    # Lorg/w3c/dom/Node;

    .prologue
    .line 234
    instance-of v2, p0, Lorg/apache/xml/utils/DOMOrder;

    if-eqz v2, :cond_1

    instance-of v2, p1, Lorg/apache/xml/utils/DOMOrder;

    if-eqz v2, :cond_1

    .line 236
    check-cast p0, Lorg/apache/xml/utils/DOMOrder;

    .end local p0    # "node1":Lorg/w3c/dom/Node;
    invoke-interface {p0}, Lorg/apache/xml/utils/DOMOrder;->getUid()I

    move-result v0

    .line 237
    .local v0, "index1":I
    check-cast p1, Lorg/apache/xml/utils/DOMOrder;

    .end local p1    # "node2":Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/apache/xml/utils/DOMOrder;->getUid()I

    move-result v1

    .line 239
    .local v1, "index2":I
    if-gt v0, v1, :cond_0

    const/4 v2, 0x1

    .line 246
    .end local v0    # "index1":I
    .end local v1    # "index2":I
    :goto_0
    return v2

    .line 239
    .restart local v0    # "index1":I
    .restart local v1    # "index2":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 246
    .end local v0    # "index1":I
    .end local v1    # "index2":I
    .restart local p0    # "node1":Lorg/w3c/dom/Node;
    .restart local p1    # "node2":Lorg/w3c/dom/Node;
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->isNodeAfter(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public checkNode(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 69
    return-void
.end method

.method public getDocument()Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/xml/utils/DOM2Helper;->m_doc:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public getElementByID(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 208
    invoke-interface {p2, p1}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # Lorg/w3c/dom/Node;

    .prologue
    .line 284
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # Lorg/w3c/dom/Node;

    .prologue
    .line 306
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 6
    .param p1, "source"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 142
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 145
    .local v0, "builderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 146
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 148
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 165
    .local v2, "parser":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v5, Lorg/apache/xml/utils/DefaultErrorHandler;

    invoke-direct {v5}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>()V

    invoke-virtual {v2, v5}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 173
    invoke-virtual {v2, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/xml/utils/DOM2Helper;->setDocument(Lorg/w3c/dom/Document;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 189
    return-void

    .line 175
    .end local v0    # "builderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "parser":Ljavax/xml/parsers/DocumentBuilder;
    :catch_0
    move-exception v4

    .line 177
    .local v4, "se":Lorg/xml/sax/SAXException;
    new-instance v5, Ljavax/xml/transform/TransformerException;

    invoke-direct {v5, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 179
    .end local v4    # "se":Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v3

    .line 181
    .local v3, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v5, Ljavax/xml/transform/TransformerException;

    invoke-direct {v5, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 183
    .end local v3    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v1

    .line 185
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v5, Ljavax/xml/transform/TransformerException;

    invoke-direct {v5, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public setDocument(Lorg/w3c/dom/Document;)V
    .locals 0
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/apache/xml/utils/DOM2Helper;->m_doc:Lorg/w3c/dom/Document;

    .line 98
    return-void
.end method

.method public supportsSAX()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method
