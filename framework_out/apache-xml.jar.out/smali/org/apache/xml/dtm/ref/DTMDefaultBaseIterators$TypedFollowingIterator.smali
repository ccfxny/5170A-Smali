.class public final Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedFollowingIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .locals 0
    .param p2, "type"    # I

    .prologue
    .line 1556
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 1557
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->_nodeType:I

    .line 1558
    return-void
.end method


# virtual methods
.method public next()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 1571
    :cond_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->_currentNode:I

    .line 1573
    .local v0, "node":I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->_startNode:I

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->_currentNode:I

    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v2

    iput v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->_currentNode:I

    .line 1577
    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getExpandedTypeID(I)I

    move-result v2

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->_nodeType:I

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getNodeType(I)S

    move-result v2

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->_nodeType:I

    if-ne v2, v3, :cond_0

    .line 1579
    :cond_1
    if-ne v0, v1, :cond_2

    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;->returnNode(I)I

    move-result v1

    goto :goto_0
.end method
