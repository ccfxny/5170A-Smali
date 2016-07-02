.class public final Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;
.super Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedAncestorIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;I)V
    .locals 0
    .param p2, "type"    # I

    .prologue
    .line 1402
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;-><init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V

    .line 1403
    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->_nodeType:I

    .line 1404
    return-void
.end method


# virtual methods
.method public getLast()I
    .locals 1

    .prologue
    .line 1504
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_size:I

    return v0
.end method

.method public getNodeByPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1492
    if-lez p1, :cond_0

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_size:I

    if-gt p1, v0, :cond_0

    .line 1493
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestors:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    .line 1496
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 10
    .param p1, "node"    # I

    .prologue
    const/16 v9, 0xe

    const/4 v4, -0x1

    const/4 v8, 0x0

    .line 1417
    if-nez p1, :cond_0

    .line 1418
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getDocument()I

    move-result p1

    .line 1419
    :cond_0
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_realStartNode:I

    .line 1421
    iget-boolean v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->_isRestartable:Z

    if-eqz v5, :cond_1

    .line 1423
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v2

    .line 1424
    .local v2, "nodeID":I
    iput v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_size:I

    .line 1426
    if-ne v2, v4, :cond_2

    .line 1427
    iput v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->_currentNode:I

    .line 1428
    iput v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestorsPos:I

    .line 1484
    .end local v2    # "nodeID":I
    .end local p0    # "this":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;
    :cond_1
    :goto_0
    return-object p0

    .line 1432
    .restart local v2    # "nodeID":I
    .restart local p0    # "this":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;
    :cond_2
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->_nodeType:I

    .line 1434
    .local v3, "nodeType":I
    iget-boolean v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->_includeSelf:Z

    if-nez v5, :cond_3

    .line 1435
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v2

    .line 1436
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result p1

    .line 1439
    :cond_3
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->_startNode:I

    .line 1441
    if-lt v3, v9, :cond_6

    .line 1442
    :goto_1
    if-eq v2, v4, :cond_b

    .line 1443
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v0

    .line 1445
    .local v0, "eType":I
    if-ne v0, v3, :cond_5

    .line 1446
    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_size:I

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestors:[I

    array-length v6, v6

    if-lt v5, v6, :cond_4

    .line 1448
    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_size:I

    mul-int/lit8 v5, v5, 0x2

    new-array v1, v5, [I

    .line 1449
    .local v1, "newAncestors":[I
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestors:[I

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestors:[I

    array-length v6, v6

    invoke-static {v5, v8, v1, v8, v6}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1450
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestors:[I

    .line 1452
    .end local v1    # "newAncestors":[I
    :cond_4
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestors:[I

    iget v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_size:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_size:I

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v7, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v7

    aput v7, v5, v6

    .line 1454
    :cond_5
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v2

    .line 1455
    goto :goto_1

    .line 1458
    .end local v0    # "eType":I
    :cond_6
    :goto_2
    if-eq v2, v4, :cond_b

    .line 1459
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v0

    .line 1461
    .restart local v0    # "eType":I
    if-ge v0, v9, :cond_7

    if-eq v0, v3, :cond_8

    :cond_7
    if-lt v0, v9, :cond_a

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    iget-object v5, v5, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    move-result v5

    if-ne v5, v3, :cond_a

    .line 1464
    :cond_8
    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_size:I

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestors:[I

    array-length v6, v6

    if-lt v5, v6, :cond_9

    .line 1466
    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_size:I

    mul-int/lit8 v5, v5, 0x2

    new-array v1, v5, [I

    .line 1467
    .restart local v1    # "newAncestors":[I
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestors:[I

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestors:[I

    array-length v6, v6

    invoke-static {v5, v8, v1, v8, v6}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1468
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestors:[I

    .line 1470
    .end local v1    # "newAncestors":[I
    :cond_9
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestors:[I

    iget v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_size:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_size:I

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v7, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v7

    aput v7, v5, v6

    .line 1472
    :cond_a
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v2

    .line 1473
    goto :goto_2

    .line 1475
    .end local v0    # "eType":I
    :cond_b
    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestorsPos:I

    .line 1477
    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestorsPos:I

    if-ltz v5, :cond_c

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestors:[I

    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->m_ancestorsPos:I

    aget v4, v4, v5

    :cond_c
    iput v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->_currentNode:I

    .line 1481
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    goto/16 :goto_0
.end method
