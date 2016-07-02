.class public Lorg/apache/xpath/XPathAPI;
.super Ljava/lang/Object;
.source "XPathAPI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eval(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .param p0, "contextNode"    # Lorg/w3c/dom/Node;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {p0, p1, p0}, Lorg/apache/xpath/XPathAPI;->eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    return-object v0
.end method

.method public static eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;
    .locals 8
    .param p0, "contextNode"    # Lorg/w3c/dom/Node;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "prefixResolver"    # Lorg/apache/xml/utils/PrefixResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 277
    new-instance v0, Lorg/apache/xpath/XPath;

    move-object v1, p1

    move-object v3, p2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 281
    .local v0, "xpath":Lorg/apache/xpath/XPath;
    new-instance v7, Lorg/apache/xpath/XPathContext;

    invoke-direct {v7, v4}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    .line 284
    .local v7, "xpathSupport":Lorg/apache/xpath/XPathContext;
    invoke-virtual {v7, p0}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v6

    .line 286
    .local v6, "ctxtNode":I
    invoke-virtual {v0, v7, v6, p2}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    return-object v1
.end method

.method public static eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;
    .locals 8
    .param p0, "contextNode"    # Lorg/w3c/dom/Node;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "namespaceNode"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 225
    new-instance v7, Lorg/apache/xpath/XPathContext;

    invoke-direct {v7, v4}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    .line 231
    .local v7, "xpathSupport":Lorg/apache/xpath/XPathContext;
    new-instance v3, Lorg/apache/xml/utils/PrefixResolverDefault;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/16 v5, 0x9

    if-ne v1, v5, :cond_0

    check-cast p2, Lorg/w3c/dom/Document;

    .end local p2    # "namespaceNode":Lorg/w3c/dom/Node;
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p2

    :cond_0
    invoke-direct {v3, p2}, Lorg/apache/xml/utils/PrefixResolverDefault;-><init>(Lorg/w3c/dom/Node;)V

    .line 236
    .local v3, "prefixResolver":Lorg/apache/xml/utils/PrefixResolverDefault;
    new-instance v0, Lorg/apache/xpath/XPath;

    move-object v1, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 240
    .local v0, "xpath":Lorg/apache/xpath/XPath;
    invoke-virtual {v7, p0}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v6

    .line 242
    .local v6, "ctxtNode":I
    invoke-virtual {v0, v7, v6, v3}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    return-object v1
.end method

.method public static selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/traversal/NodeIterator;
    .locals 1
    .param p0, "contextNode"    # Lorg/w3c/dom/Node;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {p0, p1, p0}, Lorg/apache/xpath/XPathAPI;->selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object v0

    return-object v0
.end method

.method public static selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;
    .locals 2
    .param p0, "contextNode"    # Lorg/w3c/dom/Node;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "namespaceNode"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {p0, p1, p2}, Lorg/apache/xpath/XPathAPI;->eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 131
    .local v0, "list":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->nodeset()Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object v1

    return-object v1
.end method

.method public static selectNodeList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1
    .param p0, "contextNode"    # Lorg/w3c/dom/Node;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {p0, p1, p0}, Lorg/apache/xpath/XPathAPI;->selectNodeList(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public static selectNodeList(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;
    .locals 2
    .param p0, "contextNode"    # Lorg/w3c/dom/Node;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "namespaceNode"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {p0, p1, p2}, Lorg/apache/xpath/XPathAPI;->eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 170
    .local v0, "list":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object v1

    return-object v1
.end method

.method public static selectSingleNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1
    .param p0, "contextNode"    # Lorg/w3c/dom/Node;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {p0, p1, p0}, Lorg/apache/xpath/XPathAPI;->selectSingleNode(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public static selectSingleNode(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .param p0, "contextNode"    # Lorg/w3c/dom/Node;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "namespaceNode"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {p0, p1, p2}, Lorg/apache/xpath/XPathAPI;->selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object v0

    .line 92
    .local v0, "nl":Lorg/w3c/dom/traversal/NodeIterator;
    invoke-interface {v0}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object v1

    return-object v1
.end method
