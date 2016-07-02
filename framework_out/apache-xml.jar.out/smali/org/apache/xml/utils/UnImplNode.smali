.class public Lorg/apache/xml/utils/UnImplNode;
.super Ljava/lang/Object;
.source "UnImplNode.java"

# interfaces
.implements Lorg/w3c/dom/Node;
.implements Lorg/w3c/dom/Element;
.implements Lorg/w3c/dom/NodeList;
.implements Lorg/w3c/dom/Document;


# instance fields
.field protected actualEncoding:Ljava/lang/String;

.field protected fDocumentURI:Ljava/lang/String;

.field private xmlEncoding:Ljava/lang/String;

.field private xmlStandalone:Z

.field private xmlVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "source"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1127
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 1129
    const/4 v0, 0x0

    return-object v0
.end method

.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 97
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public appendData(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1053
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 1054
    return-void
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "deep"    # Z

    .prologue
    .line 536
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 538
    const/4 v0, 0x0

    return-object v0
.end method

.method public compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .locals 1
    .param p1, "other"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1713
    const/4 v0, 0x0

    return v0
.end method

.method public createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 916
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 918
    const/4 v0, 0x0

    return-object v0
.end method

.method public createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 993
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 995
    const/4 v0, 0x0

    return-object v0
.end method

.method public createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 880
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 882
    const/4 v0, 0x0

    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 863
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 865
    const/4 v0, 0x0

    return-object v0
.end method

.method public createDocumentFragment()Lorg/w3c/dom/DocumentFragment;
    .locals 1

    .prologue
    .line 833
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 835
    const/4 v0, 0x0

    return-object v0
.end method

.method public createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 820
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 822
    const/4 v0, 0x0

    return-object v0
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 974
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 976
    const/4 v0, 0x0

    return-object v0
.end method

.method public createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 934
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 936
    const/4 v0, 0x0

    return-object v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 899
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 901
    const/4 v0, 0x0

    return-object v0
.end method

.method public createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 848
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 850
    const/4 v0, 0x0

    return-object v0
.end method

.method public deleteData(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1079
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 1080
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 66
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DOM ERROR! class: "

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

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 80
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DOM ERROR! class: "

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

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1, p2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActualEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1808
    iget-object v0, p0, Lorg/apache/xml/utils/UnImplNode;->actualEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 399
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 401
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 508
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 510
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 359
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 361
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 462
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 464
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    .prologue
    .line 641
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 643
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1741
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 149
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDoctype()Lorg/w3c/dom/DocumentType;
    .locals 1

    .prologue
    .line 777
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 779
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentElement()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 803
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 805
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1793
    iget-object v0, p0, Lorg/apache/xml/utils/UnImplNode;->fDocumentURI:Ljava/lang/String;

    return-object v0
.end method

.method public getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .locals 1

    .prologue
    .line 1769
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1
    .param p1, "elementId"    # Ljava/lang/String;

    .prologue
    .line 1008
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 1010
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 276
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 278
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 429
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 431
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 1253
    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/utils/UnImplNode;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "this":Lorg/apache/xml/utils/UnImplNode;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/xml/utils/UnImplNode;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 162
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 1

    .prologue
    .line 790
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 792
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1146
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 1148
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 175
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 201
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 764
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 766
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 726
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 728
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 188
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 123
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 551
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 553
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    .line 229
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnerElement()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 615
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 617
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 136
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 739
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 741
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 521
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 523
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 1

    .prologue
    .line 1944
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpecified()Z
    .locals 1

    .prologue
    .line 628
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 630
    const/4 v0, 0x0

    return v0
.end method

.method public getStrictErrorChecking()Z
    .locals 1

    .prologue
    .line 1185
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 1187
    const/4 v0, 0x0

    return v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1701
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1227
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getWholeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1895
    const/4 v0, 0x0

    return-object v0
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1953
    iget-object v0, p0, Lorg/apache/xml/utils/UnImplNode;->xmlEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlStandalone()Z
    .locals 1

    .prologue
    .line 1961
    iget-boolean v0, p0, Lorg/apache/xml/utils/UnImplNode;->xmlStandalone:Z

    return v0
.end method

.method public getXmlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1970
    iget-object v0, p0, Lorg/apache/xml/utils/UnImplNode;->xmlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 326
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/String;

    .prologue
    .line 343
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 412
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    .prologue
    .line 110
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "importedNode"    # Lorg/w3c/dom/Node;
    .param p2, "deep"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 955
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 957
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .param p2, "refChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 659
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 661
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertData(ILjava/lang/String;)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1066
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 1067
    return-void
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;

    .prologue
    .line 1526
    const/4 v0, 0x0

    return v0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 4
    .param p1, "arg"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1299
    if-ne p1, p0, :cond_1

    .line 1362
    :cond_0
    :goto_0
    return v0

    .line 1302
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeType()S

    move-result v3

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 1303
    goto :goto_0

    .line 1307
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1308
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 1309
    goto :goto_0

    .line 1312
    :cond_3
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 1313
    goto :goto_0

    .line 1316
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getLocalName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1317
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 1318
    goto :goto_0

    .line 1321
    :cond_5
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 1322
    goto :goto_0

    .line 1325
    :cond_6
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    .line 1326
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    move v0, v1

    .line 1327
    goto :goto_0

    .line 1330
    :cond_7
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 1331
    goto :goto_0

    .line 1334
    :cond_8
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    .line 1335
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    move v0, v1

    .line 1336
    goto :goto_0

    .line 1339
    :cond_9
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    .line 1340
    goto/16 :goto_0

    .line 1343
    :cond_a
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    .line 1344
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1345
    goto/16 :goto_0

    .line 1348
    :cond_b
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1349
    goto/16 :goto_0
.end method

.method public isId()Z
    .locals 1

    .prologue
    .line 1948
    const/4 v0, 0x0

    return v0
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 1
    .param p1, "other"    # Lorg/w3c/dom/Node;

    .prologue
    .line 1602
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 715
    const/4 v0, 0x0

    return v0
.end method

.method public isWhitespaceInElementContent()Z
    .locals 1

    .prologue
    .line 1905
    const/4 v0, 0x0

    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 216
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "specifiedPrefix"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 1375
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeType()S

    move-result v7

    .line 1376
    .local v7, "type":S
    packed-switch v7, :pswitch_data_0

    :pswitch_0
    move-object v5, v9

    .line 1450
    :cond_0
    :goto_0
    return-object v5

    .line 1379
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    .line 1380
    .local v5, "namespace":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getPrefix()Ljava/lang/String;

    move-result-object v6

    .line 1381
    .local v6, "prefix":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 1383
    if-nez p1, :cond_1

    if-eq v6, p1, :cond_0

    .line 1386
    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1391
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->hasAttributes()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1392
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 1393
    .local v4, "map":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    .line 1394
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 1395
    invoke-interface {v4, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1396
    .local v0, "attr":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 1397
    .local v1, "attrPrefix":Ljava/lang/String;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 1398
    .local v8, "value":Ljava/lang/String;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    .line 1399
    if-eqz v5, :cond_4

    const-string v10, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1401
    if-nez p1, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "xmlns"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v5, v8

    .line 1404
    goto :goto_0

    .line 1405
    :cond_3
    if-eqz v1, :cond_4

    const-string v10, "xmlns"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v5, v8

    .line 1409
    goto :goto_0

    .line 1394
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "attr":Lorg/w3c/dom/Node;
    .end local v1    # "attrPrefix":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v8    # "value":Ljava/lang/String;
    :cond_5
    move-object v5, v9

    .line 1421
    goto :goto_0

    .end local v5    # "namespace":Ljava/lang/String;
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_2
    move-object v5, v9

    .line 1435
    goto :goto_0

    .line 1437
    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Element;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 1438
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-interface {v9, p1}, Lorg/w3c/dom/Element;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_6
    move-object v5, v9

    .line 1441
    goto/16 :goto_0

    .line 1376
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "namespaceURI"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1543
    if-nez p1, :cond_1

    .line 1581
    :cond_0
    :goto_0
    :pswitch_0
    return-object v1

    .line 1547
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeType()S

    move-result v0

    .line 1549
    .local v0, "type":S
    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 1568
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1569
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/w3c/dom/Element;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1549
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public normalize()V
    .locals 1

    .prologue
    .line 263
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public normalizeDocument()V
    .locals 0

    .prologue
    .line 1761
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 373
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 478
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method public removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 1
    .param p1, "oldAttr"    # Lorg/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 293
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 295
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "oldChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 694
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 696
    const/4 v0, 0x0

    return-object v0
.end method

.method public renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 0
    .param p1, "n"    # Lorg/w3c/dom/Node;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1752
    return-object p1
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .param p2, "oldChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 677
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 679
    const/4 v0, 0x0

    return-object v0
.end method

.method public replaceData(IILjava/lang/String;)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1094
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 1095
    return-void
.end method

.method public replaceWholeText(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1870
    const/4 v0, 0x0

    return-object v0
.end method

.method public setActualEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1820
    iput-object p1, p0, Lorg/apache/xml/utils/UnImplNode;->actualEncoding:Ljava/lang/String;

    .line 1821
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 386
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 494
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method public setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 1
    .param p1, "newAttr"    # Lorg/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 310
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 1
    .param p1, "newAttr"    # Lorg/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 446
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 448
    const/4 v0, 0x0

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1023
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 1024
    return-void
.end method

.method public setDocumentURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "documentURI"    # Ljava/lang/String;

    .prologue
    .line 1781
    iput-object p1, p0, Lorg/apache/xml/utils/UnImplNode;->fDocumentURI:Ljava/lang/String;

    .line 1782
    return-void
.end method

.method public setIdAttribute(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "makeId"    # Z

    .prologue
    .line 1922
    return-void
.end method

.method public setIdAttribute(Z)V
    .locals 0
    .param p1, "id"    # Z

    .prologue
    .line 1915
    return-void
.end method

.method public setIdAttributeNS(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "makeId"    # Z

    .prologue
    .line 1937
    return-void
.end method

.method public setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V
    .locals 0
    .param p1, "at"    # Lorg/w3c/dom/Attr;
    .param p2, "makeId"    # Z

    .prologue
    .line 1929
    return-void
.end method

.method public setInputEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 1164
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 1165
    return-void
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "nodeValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 565
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 753
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 754
    return-void
.end method

.method public setStrictErrorChecking(Z)V
    .locals 1
    .param p1, "strictErrorChecking"    # Z

    .prologue
    .line 1207
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 1208
    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "textContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1652
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->setNodeValue(Ljava/lang/String;)V

    .line 1653
    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "handler"    # Lorg/w3c/dom/UserDataHandler;

    .prologue
    .line 1214
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/w3c/dom/Document;->setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 593
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 594
    return-void
.end method

.method public setXmlEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "xmlEncoding"    # Ljava/lang/String;

    .prologue
    .line 1956
    iput-object p1, p0, Lorg/apache/xml/utils/UnImplNode;->xmlEncoding:Ljava/lang/String;

    .line 1957
    return-void
.end method

.method public setXmlStandalone(Z)V
    .locals 0
    .param p1, "xmlStandalone"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1965
    iput-boolean p1, p0, Lorg/apache/xml/utils/UnImplNode;->xmlStandalone:Z

    .line 1966
    return-void
.end method

.method public setXmlVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "xmlVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1974
    iput-object p1, p0, Lorg/apache/xml/utils/UnImplNode;->xmlVersion:Ljava/lang/String;

    .line 1975
    return-void
.end method

.method public splitText(I)Lorg/w3c/dom/Text;
    .locals 1
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1109
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 1111
    const/4 v0, 0x0

    return-object v0
.end method

.method public substringData(II)Ljava/lang/String;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1039
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 1041
    const/4 v0, 0x0

    return-object v0
.end method
