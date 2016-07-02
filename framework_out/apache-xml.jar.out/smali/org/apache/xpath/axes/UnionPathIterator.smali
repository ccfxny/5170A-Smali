.class public Lorg/apache/xpath/axes/UnionPathIterator;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "UnionPathIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/xml/dtm/DTMIterator;
.implements Ljava/io/Serializable;
.implements Lorg/apache/xpath/axes/PathComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = -0x36445c0390868a5dL


# instance fields
.field protected m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

.field protected m_iterators:[Lorg/apache/xml/dtm/DTMIterator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>()V

    .line 56
    iput-object v0, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    .line 57
    iput-object v0, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/compiler/Compiler;I)V
    .locals 1
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>()V

    .line 162
    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result p2

    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xpath/axes/UnionPathIterator;->loadLocationPaths(Lorg/apache/xpath/compiler/Compiler;II)V

    .line 165
    return-void
.end method

.method public static createUnionIterator(Lorg/apache/xpath/compiler/Compiler;I)Lorg/apache/xpath/axes/LocPathIterator;
    .locals 8
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v5, Lorg/apache/xpath/axes/UnionPathIterator;

    invoke-direct {v5, p0, p1}, Lorg/apache/xpath/axes/UnionPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;I)V

    .line 187
    .local v5, "upi":Lorg/apache/xpath/axes/UnionPathIterator;
    iget-object v6, v5, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    array-length v3, v6

    .line 188
    .local v3, "nPaths":I
    const/4 v1, 0x1

    .line 189
    .local v1, "isAllChildIterators":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 191
    iget-object v6, v5, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aget-object v2, v6, v0

    .line 193
    .local v2, "lpi":Lorg/apache/xpath/axes/LocPathIterator;
    invoke-virtual {v2}, Lorg/apache/xpath/axes/LocPathIterator;->getAxis()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    .line 195
    const/4 v1, 0x0

    .line 208
    .end local v2    # "lpi":Lorg/apache/xpath/axes/LocPathIterator;
    :cond_0
    :goto_1
    if-eqz v1, :cond_3

    .line 210
    new-instance v4, Lorg/apache/xpath/axes/UnionChildIterator;

    invoke-direct {v4}, Lorg/apache/xpath/axes/UnionChildIterator;-><init>()V

    .line 212
    .local v4, "uci":Lorg/apache/xpath/axes/UnionChildIterator;
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_4

    .line 214
    iget-object v6, v5, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aget-object v2, v6, v0

    .line 218
    .local v2, "lpi":Lorg/apache/xpath/axes/PredicatedNodeTest;
    invoke-virtual {v4, v2}, Lorg/apache/xpath/axes/UnionChildIterator;->addNodeTest(Lorg/apache/xpath/axes/PredicatedNodeTest;)V

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 201
    .end local v4    # "uci":Lorg/apache/xpath/axes/UnionChildIterator;
    .local v2, "lpi":Lorg/apache/xpath/axes/LocPathIterator;
    :cond_1
    invoke-static {v2}, Lorg/apache/xpath/axes/HasPositionalPredChecker;->check(Lorg/apache/xpath/axes/LocPathIterator;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 203
    const/4 v1, 0x0

    .line 204
    goto :goto_1

    .line 189
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "lpi":Lorg/apache/xpath/axes/LocPathIterator;
    :cond_3
    move-object v4, v5

    .line 224
    :cond_4
    return-object v4
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
    .line 262
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 263
    new-instance v1, Lorg/apache/xpath/axes/IteratorPool;

    invoke-direct {v1, p0}, Lorg/apache/xpath/axes/IteratorPool;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    iput-object v1, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 267
    .local v0, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addIterator(Lorg/apache/xml/dtm/DTMIterator;)V
    .locals 4
    .param p1, "expr"    # Lorg/apache/xml/dtm/DTMIterator;

    .prologue
    const/4 v3, 0x0

    .line 103
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    if-nez v2, :cond_1

    .line 105
    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/xml/dtm/DTMIterator;

    iput-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    .line 106
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    aput-object p1, v2, v3

    .line 119
    :goto_0
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    .line 120
    instance-of v2, p1, Lorg/apache/xpath/Expression;

    if-eqz v2, :cond_0

    .line 121
    check-cast p1, Lorg/apache/xpath/Expression;

    .end local p1    # "expr":Lorg/apache/xml/dtm/DTMIterator;
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 122
    :cond_0
    return-void

    .line 110
    .restart local p1    # "expr":Lorg/apache/xml/dtm/DTMIterator;
    :cond_1
    iget-object v0, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    .line 111
    .local v0, "exprs":[Lorg/apache/xml/dtm/DTMIterator;
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    array-length v1, v2

    .line 113
    .local v1, "len":I
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Lorg/apache/xml/dtm/DTMIterator;

    iput-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    .line 115
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    aput-object p1, v2, v1

    goto :goto_0
.end method

.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 4
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    .prologue
    .line 539
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitUnionPath(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/axes/UnionPathIterator;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 541
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    if-eqz v2, :cond_0

    .line 543
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    array-length v1, v2

    .line 544
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 546
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aget-object v2, v2, v0

    new-instance v3, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;

    invoke-direct {v3, p0, v0}, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;-><init>(Lorg/apache/xpath/axes/UnionPathIterator;I)V

    invoke-virtual {v2, v3, p2}, Lorg/apache/xpath/axes/LocPathIterator;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 544
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 550
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/UnionPathIterator;

    .line 283
    .local v0, "clone":Lorg/apache/xpath/axes/UnionPathIterator;
    iget-object v3, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v3, :cond_0

    .line 285
    iget-object v3, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    array-length v2, v3

    .line 287
    .local v2, "n":I
    new-array v3, v2, [Lorg/apache/xml/dtm/DTMIterator;

    iput-object v3, v0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    .line 289
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 291
    iget-object v4, v0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    iget-object v3, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lorg/apache/xml/dtm/DTMIterator;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xml/dtm/DTMIterator;

    aput-object v3, v4, v1

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_0
    return-object v0
.end method

.method protected createDTMIterator(Lorg/apache/xpath/compiler/Compiler;I)Lorg/apache/xpath/axes/LocPathIterator;
    .locals 2
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->getLocationPathDepth()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {p1, p2, v1}, Lorg/apache/xpath/axes/WalkerFactory;->newDTMIterator(Lorg/apache/xpath/compiler/Compiler;IZ)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/LocPathIterator;

    .line 315
    .local v0, "lpi":Lorg/apache/xpath/axes/LocPathIterator;
    return-object v0

    .line 313
    .end local v0    # "lpi":Lorg/apache/xpath/axes/LocPathIterator;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 6
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    .prologue
    const/4 v3, 0x0

    .line 557
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 580
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v2, p1

    .line 560
    check-cast v2, Lorg/apache/xpath/axes/UnionPathIterator;

    .line 562
    .local v2, "upi":Lorg/apache/xpath/axes/UnionPathIterator;
    iget-object v4, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    if-eqz v4, :cond_2

    .line 564
    iget-object v4, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    array-length v1, v4

    .line 566
    .local v1, "n":I
    iget-object v4, v2, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    array-length v4, v4

    if-ne v4, v1, :cond_0

    .line 569
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 571
    iget-object v4, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aget-object v4, v4, v0

    iget-object v5, v2, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lorg/apache/xpath/axes/LocPathIterator;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 569
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 575
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_2
    iget-object v4, v2, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    if-nez v4, :cond_0

    .line 580
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public detach()V
    .locals 3

    .prologue
    .line 133
    iget-boolean v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_allowDetach:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v2, :cond_1

    .line 134
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    array-length v1, v2

    .line 135
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 137
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    .line 141
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 2
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    .prologue
    .line 455
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 457
    iget-object v1, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->fixupVariables(Ljava/util/Vector;I)V

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 460
    :cond_0
    return-void
.end method

.method public getAnalysisBits()I
    .locals 5

    .prologue
    .line 233
    const/4 v1, 0x0

    .line 235
    .local v1, "bits":I
    iget-object v4, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    if-eqz v4, :cond_0

    .line 237
    iget-object v4, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    array-length v3, v4

    .line 239
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 241
    iget-object v4, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/apache/xpath/axes/LocPathIterator;->getAnalysisBits()I

    move-result v0

    .line 242
    .local v0, "bit":I
    or-int/2addr v1, v0

    .line 239
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    .end local v0    # "bit":I
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_0
    return v1
.end method

.method public getAxis()I
    .locals 1

    .prologue
    .line 488
    const/4 v0, -0x1

    return v0
.end method

.method protected loadLocationPaths(Lorg/apache/xpath/compiler/Compiler;II)V
    .locals 4
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "opPos"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v1

    .line 336
    .local v1, "steptype":I
    const/16 v2, 0x1c

    if-ne v1, v2, :cond_0

    .line 338
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result v2

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {p0, p1, v2, v3}, Lorg/apache/xpath/axes/UnionPathIterator;->loadLocationPaths(Lorg/apache/xpath/compiler/Compiler;II)V

    .line 340
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/axes/UnionPathIterator;->createDTMIterator(Lorg/apache/xpath/compiler/Compiler;I)Lorg/apache/xpath/axes/LocPathIterator;

    move-result-object v3

    aput-object v3, v2, p3

    .line 341
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aget-object v2, v2, p3

    invoke-virtual {v2, p0}, Lorg/apache/xpath/axes/LocPathIterator;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 373
    :goto_0
    return-void

    .line 348
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 370
    new-array v2, p3, [Lorg/apache/xpath/axes/LocPathIterator;

    iput-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    goto :goto_0

    .line 354
    :pswitch_0
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result v2

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {p0, p1, v2, v3}, Lorg/apache/xpath/axes/UnionPathIterator;->loadLocationPaths(Lorg/apache/xpath/compiler/Compiler;II)V

    .line 356
    new-instance v0, Lorg/apache/xpath/axes/WalkingIterator;

    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/xpath/axes/WalkingIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 358
    .local v0, "iter":Lorg/apache/xpath/axes/WalkingIterator;
    invoke-virtual {v0, p0}, Lorg/apache/xpath/axes/WalkingIterator;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 360
    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->getLocationPathDepth()I

    move-result v2

    if-gtz v2, :cond_1

    .line 361
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/xpath/axes/WalkingIterator;->setIsTopLevel(Z)V

    .line 363
    :cond_1
    new-instance v2, Lorg/apache/xpath/axes/FilterExprWalker;

    invoke-direct {v2, v0}, Lorg/apache/xpath/axes/FilterExprWalker;-><init>(Lorg/apache/xpath/axes/WalkingIterator;)V

    iput-object v2, v0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 365
    iget-object v2, v0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    invoke-virtual {v2, p1, p2, v1}, Lorg/apache/xpath/axes/AxesWalker;->init(Lorg/apache/xpath/compiler/Compiler;II)V

    .line 367
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aput-object v0, v2, p3

    goto :goto_0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public nextNode()I
    .locals 8

    .prologue
    const/4 v6, -0x1

    .line 384
    iget-boolean v7, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_foundLast:Z

    if-eqz v7, :cond_0

    move v1, v6

    .line 440
    :goto_0
    return v1

    .line 389
    :cond_0
    const/4 v1, -0x1

    .line 391
    .local v1, "earliestNode":I
    iget-object v7, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v7, :cond_6

    .line 393
    iget-object v7, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    array-length v4, v7

    .line 394
    .local v4, "n":I
    const/4 v3, -0x1

    .line 396
    .local v3, "iteratorUsed":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_5

    .line 398
    iget-object v7, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    aget-object v7, v7, v2

    invoke-interface {v7}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentNode()I

    move-result v5

    .line 400
    .local v5, "node":I
    if-ne v6, v5, :cond_2

    .line 396
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 402
    :cond_2
    if-ne v6, v1, :cond_3

    .line 404
    move v3, v2

    .line 405
    move v1, v5

    goto :goto_2

    .line 409
    :cond_3
    if-ne v5, v1, :cond_4

    .line 413
    iget-object v7, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    aget-object v7, v7, v2

    invoke-interface {v7}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    goto :goto_2

    .line 417
    :cond_4
    invoke-virtual {p0, v5}, Lorg/apache/xpath/axes/UnionPathIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 419
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v0, v5, v1}, Lorg/apache/xml/dtm/DTM;->isNodeAfter(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 421
    move v3, v2

    .line 422
    move v1, v5

    goto :goto_2

    .line 428
    .end local v0    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v5    # "node":I
    :cond_5
    if-eq v6, v1, :cond_7

    .line 430
    iget-object v6, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    aget-object v6, v6, v3

    invoke-interface {v6}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    .line 432
    invoke-virtual {p0}, Lorg/apache/xpath/axes/UnionPathIterator;->incrementCurrentPos()V

    .line 438
    .end local v2    # "i":I
    .end local v3    # "iteratorUsed":I
    .end local v4    # "n":I
    :cond_6
    :goto_3
    iput v1, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_lastFetched:I

    goto :goto_0

    .line 435
    .restart local v2    # "i":I
    .restart local v3    # "iteratorUsed":I
    .restart local v4    # "n":I
    :cond_7
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_foundLast:Z

    goto :goto_3
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 7
    .param p1, "context"    # I
    .param p2, "environment"    # Ljava/lang/Object;

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    .line 73
    :try_start_0
    iget-object v5, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    if-eqz v5, :cond_1

    .line 75
    iget-object v5, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    array-length v3, v5

    .line 76
    .local v3, "n":I
    new-array v4, v3, [Lorg/apache/xml/dtm/DTMIterator;

    .line 78
    .local v4, "newIters":[Lorg/apache/xml/dtm/DTMIterator;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 80
    iget-object v5, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aget-object v5, v5, v1

    iget-object v6, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v5, v6, p1}, Lorg/apache/xpath/axes/LocPathIterator;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v2

    .line 81
    .local v2, "iter":Lorg/apache/xml/dtm/DTMIterator;
    aput-object v2, v4, v1

    .line 82
    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v2    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    :cond_0
    iput-object v4, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v1    # "i":I
    .end local v3    # "n":I
    .end local v4    # "newIters":[Lorg/apache/xml/dtm/DTMIterator;
    :cond_1
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v5, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method
