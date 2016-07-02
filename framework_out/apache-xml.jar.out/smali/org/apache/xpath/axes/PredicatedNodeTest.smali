.class public abstract Lorg/apache/xpath/axes/PredicatedNodeTest;
.super Lorg/apache/xpath/patterns/NodeTest;
.source "PredicatedNodeTest.java"

# interfaces
.implements Lorg/apache/xpath/axes/SubContextList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;
    }
.end annotation


# static fields
.field static final DEBUG_PREDICATECOUNTING:Z = false

.field static final serialVersionUID:J = -0x55f3d768b61b4e07L


# instance fields
.field protected transient m_foundLast:Z

.field protected m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

.field protected m_predCount:I

.field transient m_predicateIndex:I

.field private m_predicates:[Lorg/apache/xpath/Expression;

.field protected transient m_proximityPositions:[I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 53
    invoke-direct {p0}, Lorg/apache/xpath/patterns/NodeTest;-><init>()V

    .line 109
    iput v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predCount:I

    .line 593
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    .line 602
    iput v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    .line 54
    return-void
.end method

.method constructor <init>(Lorg/apache/xpath/axes/LocPathIterator;)V
    .locals 2
    .param p1, "locPathIterator"    # Lorg/apache/xpath/axes/LocPathIterator;

    .prologue
    const/4 v1, -0x1

    .line 44
    invoke-direct {p0}, Lorg/apache/xpath/patterns/NodeTest;-><init>()V

    .line 109
    iput v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predCount:I

    .line 593
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    .line 602
    iput v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    .line 45
    iput-object p1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lorg/apache/xpath/axes/PredicatedNodeTest;)[Lorg/apache/xpath/Expression;
    .locals 1
    .param p0, "x0"    # Lorg/apache/xpath/axes/PredicatedNodeTest;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 69
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 70
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    .line 71
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->resetProximityPositions()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 75
    .local v0, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public acceptNode(I)S
    .locals 5
    .param p1, "n"    # I

    .prologue
    const/4 v3, 0x3

    .line 464
    iget-object v4, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    invoke-virtual {v4}, Lorg/apache/xpath/axes/LocPathIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v2

    .line 468
    .local v2, "xctxt":Lorg/apache/xpath/XPathContext;
    :try_start_0
    invoke-virtual {v2, p1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 470
    invoke-virtual {p0, v2, p1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 473
    .local v0, "score":Lorg/apache/xpath/objects/XObject;
    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-eq v0, v4, :cond_1

    .line 475
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 477
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/apache/xpath/axes/PredicatedNodeTest;->countProximityPosition(I)V

    .line 479
    invoke-virtual {p0, p1, v2}, Lorg/apache/xpath/axes/PredicatedNodeTest;->executePredicates(ILorg/apache/xpath/XPathContext;)Z
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 494
    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 497
    :goto_0
    return v3

    .line 483
    :cond_0
    const/4 v3, 0x1

    .line 494
    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    goto :goto_0

    .line 486
    .end local v0    # "score":Lorg/apache/xpath/objects/XObject;
    :catch_0
    move-exception v1

    .line 490
    .local v1, "se":Ljavax/xml/transform/TransformerException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    .end local v1    # "se":Ljavax/xml/transform/TransformerException;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    throw v3
.end method

.method public callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .locals 4
    .param p1, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    .prologue
    .line 550
    iget-object v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v3, :cond_1

    .line 552
    iget-object v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v1, v3

    .line 553
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 555
    new-instance v2, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;

    invoke-direct {v2, p0, v0}, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;-><init>(Lorg/apache/xpath/axes/PredicatedNodeTest;I)V

    .line 556
    .local v2, "predOwner":Lorg/apache/xpath/ExpressionOwner;
    iget-object v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lorg/apache/xpath/XPathVisitor;->visitPredicate(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/Expression;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 558
    iget-object v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 553
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "predOwner":Lorg/apache/xpath/ExpressionOwner;
    :cond_1
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 3

    .prologue
    .line 532
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v1

    .line 533
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 535
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicate(I)Lorg/apache/xpath/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 536
    const/4 v2, 0x1

    .line 538
    :goto_1
    return v2

    .line 533
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 538
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/PredicatedNodeTest;

    .line 92
    .local v0, "clone":Lorg/apache/xpath/axes/PredicatedNodeTest;
    iget-object v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    iget-object v2, v0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    if-ne v1, v2, :cond_0

    .line 95
    iget-object v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    .line 97
    iget-object v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    iget-object v2, v0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    iget-object v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 102
    :cond_0
    iget-object v1, v0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    if-ne v1, p0, :cond_1

    move-object v1, v0

    .line 103
    check-cast v1, Lorg/apache/xpath/axes/LocPathIterator;

    iput-object v1, v0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    .line 105
    :cond_1
    return-object v0
.end method

.method protected countProximityPosition(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 286
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    .line 287
    .local v0, "pp":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 288
    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 289
    :cond_0
    return-void
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 6
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    .prologue
    const/4 v3, 0x0

    .line 570
    invoke-super {p0, p1}, Lorg/apache/xpath/patterns/NodeTest;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 589
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v2, p1

    .line 573
    check-cast v2, Lorg/apache/xpath/axes/PredicatedNodeTest;

    .line 574
    .local v2, "pnt":Lorg/apache/xpath/axes/PredicatedNodeTest;
    iget-object v4, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v4, :cond_2

    .line 577
    iget-object v4, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v1, v4

    .line 578
    .local v1, "n":I
    iget-object v4, v2, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v4, v4

    if-ne v4, v1, :cond_0

    .line 580
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 582
    iget-object v4, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v4, v4, v0

    iget-object v5, v2, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 580
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 586
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_2
    iget-object v4, v2, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    if-nez v4, :cond_0

    .line 589
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method executePredicates(ILorg/apache/xpath/XPathContext;)Z
    .locals 11
    .param p1, "context"    # I
    .param p2, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v10, -0x1

    .line 325
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v1

    .line 327
    .local v1, "nPredicates":I
    if-nez v1, :cond_0

    .line 404
    :goto_0
    return v6

    .line 330
    :cond_0
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v5

    .line 334
    .local v5, "savedResolver":Lorg/apache/xml/utils/PrefixResolver;
    const/4 v8, 0x0

    :try_start_0
    iput v8, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    .line 335
    invoke-virtual {p2, p0}, Lorg/apache/xpath/XPathContext;->pushSubContextList(Lorg/apache/xpath/axes/SubContextList;)V

    .line 336
    iget-object v8, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    invoke-virtual {v8}, Lorg/apache/xpath/axes/LocPathIterator;->getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v8

    invoke-virtual {p2, v8}, Lorg/apache/xpath/XPathContext;->pushNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 337
    invoke-virtual {p2, p1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 339
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 342
    iget-object v8, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v8, v8, v0

    invoke-virtual {v8, p2}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    .line 345
    .local v2, "pred":Lorg/apache/xpath/objects/XObject;
    const/4 v8, 0x2

    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 357
    iget v8, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    invoke-virtual {p0, v8}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getProximityPosition(I)I

    move-result v4

    .line 358
    .local v4, "proxPos":I
    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->num()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    double-to-int v3, v8

    .line 359
    .local v3, "predIndex":I
    if-eq v4, v3, :cond_1

    .line 398
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 399
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 400
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    .line 401
    iput v10, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    move v6, v7

    goto :goto_0

    .line 385
    :cond_1
    :try_start_1
    iget-object v8, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Lorg/apache/xpath/Expression;->isStableNumber()Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v8, v1, -0x1

    if-ne v0, v8, :cond_2

    .line 387
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    .line 393
    .end local v3    # "predIndex":I
    .end local v4    # "proxPos":I
    :cond_2
    iget v8, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    invoke-virtual {p0, v8}, Lorg/apache/xpath/axes/PredicatedNodeTest;->countProximityPosition(I)V

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 390
    :cond_3
    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->bool()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-nez v8, :cond_2

    .line 398
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 399
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 400
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    .line 401
    iput v10, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    move v6, v7

    goto :goto_0

    .line 398
    .end local v2    # "pred":Lorg/apache/xpath/objects/XObject;
    :cond_4
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 399
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 400
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    .line 401
    iput v10, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    goto :goto_0

    .line 398
    .end local v0    # "i":I
    :catchall_0
    move-exception v6

    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 399
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 400
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    .line 401
    iput v10, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    throw v6
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 3
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    .prologue
    .line 419
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/patterns/NodeTest;->fixupVariables(Ljava/util/Vector;I)V

    .line 421
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v1

    .line 423
    .local v1, "nPredicates":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 425
    iget-object v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 427
    :cond_0
    return-void
.end method

.method public abstract getLastPos(Lorg/apache/xpath/XPathContext;)I
.end method

.method public getLocPathIterator()Lorg/apache/xpath/axes/LocPathIterator;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    return-object v0
.end method

.method public getPredicate(I)Lorg/apache/xpath/Expression;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPredicateCount()I
    .locals 2

    .prologue
    .line 118
    const/4 v0, -0x1

    iget v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predCount:I

    if-ne v0, v1, :cond_1

    .line 119
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v0, v0

    goto :goto_0

    .line 121
    :cond_1
    iget v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predCount:I

    goto :goto_0
.end method

.method public getPredicateIndex()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    return v0
.end method

.method public getProximityPosition()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getProximityPosition(I)I

    move-result v0

    return v0
.end method

.method protected getProximityPosition(I)I
    .locals 1
    .param p1, "predicateIndex"    # I

    .prologue
    .line 235
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProximityPosition(Lorg/apache/xpath/XPathContext;)I
    .locals 1
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;

    .prologue
    .line 212
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getProximityPosition()I

    move-result v0

    return v0
.end method

.method protected initPredicateInfo(Lorg/apache/xpath/compiler/Compiler;I)V
    .locals 3
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->getFirstPredicateOpPos(I)I

    move-result v1

    .line 165
    .local v1, "pos":I
    if-lez v1, :cond_0

    .line 167
    invoke-virtual {p1, v1}, Lorg/apache/xpath/compiler/Compiler;->getCompiledPredicates(I)[Lorg/apache/xpath/Expression;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    .line 168
    iget-object v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v2, :cond_0

    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 172
    iget-object v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public initProximityPosition(I)V
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 274
    return-void
.end method

.method public isReverseAxes()Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method protected nodeToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "n"    # I

    .prologue
    .line 439
    const/4 v1, -0x1

    if-eq v1, p1, :cond_0

    .line 441
    iget-object v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    invoke-virtual {v1}, Lorg/apache/xpath/axes/LocPathIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 442
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 446
    .end local v0    # "dtm":Lorg/apache/xml/dtm/DTM;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "null"

    goto :goto_0
.end method

.method public resetProximityPositions()V
    .locals 4

    .prologue
    .line 243
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v2

    .line 244
    .local v2, "nPredicates":I
    if-lez v2, :cond_1

    .line 246
    iget-object v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    if-nez v3, :cond_0

    .line 247
    new-array v3, v2, [I

    iput-object v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    .line 249
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 253
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->initProximityPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v3, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 262
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setLocPathIterator(Lorg/apache/xpath/axes/LocPathIterator;)V
    .locals 0
    .param p1, "li"    # Lorg/apache/xpath/axes/LocPathIterator;

    .prologue
    .line 519
    iput-object p1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    .line 520
    if-eq p0, p1, :cond_0

    .line 521
    invoke-virtual {p1, p0}, Lorg/apache/xpath/axes/LocPathIterator;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 522
    :cond_0
    return-void
.end method

.method public setPredicateCount(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 136
    if-lez p1, :cond_1

    .line 138
    new-array v1, p1, [Lorg/apache/xpath/Expression;

    .line 139
    .local v1, "newPredicates":[Lorg/apache/xpath/Expression;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 141
    iget-object v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    iput-object v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    .line 148
    .end local v0    # "i":I
    .end local v1    # "newPredicates":[Lorg/apache/xpath/Expression;
    :goto_1
    return-void

    .line 146
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    goto :goto_1
.end method
