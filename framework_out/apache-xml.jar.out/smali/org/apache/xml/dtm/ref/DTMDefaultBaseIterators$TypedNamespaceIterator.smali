.class public Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypedNamespaceIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .locals 0
    .param p2, "nodeType"    # I

    .prologue
    .line 654
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    .line 655
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 656
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->_nodeType:I

    .line 657
    return-void
.end method


# virtual methods
.method public next()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 668
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->_currentNode:I

    .line 669
    .local v0, "node":I
    :goto_0
    if-eq v0, v1, :cond_2

    .line 671
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getExpandedTypeID(I)I

    move-result v2

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->_nodeType:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getNodeType(I)S

    move-result v2

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->_nodeType:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getNamespaceType(I)I

    move-result v2

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->_nodeType:I

    if-ne v2, v3, :cond_1

    .line 674
    :cond_0
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->_currentNode:I

    .line 676
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->returnNode(I)I

    move-result v1

    .line 680
    :goto_1
    return v1

    .line 670
    :cond_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->_startNode:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getNextNamespaceNode(IIZ)I

    move-result v0

    goto :goto_0

    .line 680
    :cond_2
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->_currentNode:I

    goto :goto_1
.end method
