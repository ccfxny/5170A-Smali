.class public final Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ParentIterator"
.end annotation


# instance fields
.field private _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V
    .locals 1

    .prologue
    .line 126
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public next()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 186
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_currentNode:I

    .line 187
    .local v0, "result":I
    if-ne v0, v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v1

    .line 191
    :cond_1
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_nodeType:I

    if-ne v2, v1, :cond_2

    .line 192
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_currentNode:I

    .line 193
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->returnNode(I)I

    move-result v1

    goto :goto_0

    .line 195
    :cond_2
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_nodeType:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_3

    .line 196
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_nodeType:I

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 197
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_currentNode:I

    .line 198
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->returnNode(I)I

    move-result v1

    goto :goto_0

    .line 202
    :cond_3
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_nodeType:I

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 203
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_currentNode:I

    .line 204
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->returnNode(I)I

    move-result v1

    goto :goto_0
.end method

.method public setNodeType(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 173
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_nodeType:I

    .line 175
    return-object p0
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 2
    .param p1, "node"    # I

    .prologue
    const/4 v1, -0x1

    .line 143
    if-nez p1, :cond_0

    .line 144
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getDocument()I

    move-result p1

    .line 145
    :cond_0
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_isRestartable:Z

    if-eqz v0, :cond_1

    .line 147
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_startNode:I

    .line 149
    if-eq p1, v1, :cond_2

    .line 150
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_currentNode:I

    .line 154
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    .line 157
    .end local p0    # "this":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;
    :cond_1
    return-object p0

    .line 152
    .restart local p0    # "this":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;
    :cond_2
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;->_currentNode:I

    goto :goto_0
.end method
