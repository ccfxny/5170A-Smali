.class public Lorg/apache/xpath/axes/NodeSequence;
.super Lorg/apache/xpath/objects/XObject;
.source "NodeSequence.java"

# interfaces
.implements Lorg/apache/xml/dtm/DTMIterator;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/xpath/axes/PathComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x35a7b8becbfe0b34L


# instance fields
.field private m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

.field protected m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

.field protected m_iter:Lorg/apache/xml/dtm/DTMIterator;

.field protected m_last:I

.field protected m_next:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 212
    invoke-direct {p0}, Lorg/apache/xpath/objects/XObject;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 213
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "nodeVector"    # Ljava/lang/Object;

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 180
    instance-of v0, p1, Lorg/apache/xml/utils/NodeVector;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 181
    check-cast v0, Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->SetVector(Lorg/apache/xml/utils/NodeVector;)V

    .line 183
    :cond_0
    if-eqz p1, :cond_1

    .line 185
    instance-of v0, p1, Lorg/apache/xml/utils/NodeVector;

    const-string v1, "Must have a NodeVector as the object for NodeSequence!"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/axes/NodeSequence;->assertion(ZLjava/lang/String;)V

    .line 187
    instance-of v0, p1, Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 189
    check-cast v0, Lorg/apache/xml/dtm/DTMIterator;

    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->setIter(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 190
    check-cast p1, Lorg/apache/xml/dtm/DTMIterator;

    .end local p1    # "nodeVector":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    move-result v0

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    .line 194
    :cond_1
    return-void
.end method

.method private constructor <init>(Lorg/apache/xml/dtm/DTMIterator;ILorg/apache/xpath/XPathContext;Z)V
    .locals 1
    .param p1, "iter"    # Lorg/apache/xml/dtm/DTMIterator;
    .param p2, "context"    # I
    .param p3, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p4, "shouldCacheNodes"    # Z

    .prologue
    .line 166
    invoke-direct {p0}, Lorg/apache/xpath/objects/XObject;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 167
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->setIter(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 168
    invoke-virtual {p0, p2, p3}, Lorg/apache/xpath/axes/NodeSequence;->setRoot(ILjava/lang/Object;)V

    .line 169
    invoke-virtual {p0, p4}, Lorg/apache/xpath/axes/NodeSequence;->setShouldCacheNodes(Z)V

    .line 170
    return-void
.end method

.method private constructor <init>(Lorg/apache/xml/dtm/DTMManager;)V
    .locals 2
    .param p1, "dtmMgr"    # Lorg/apache/xml/dtm/DTMManager;

    .prologue
    const/4 v1, 0x0

    .line 202
    new-instance v0, Lorg/apache/xml/utils/NodeVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    .line 50
    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 203
    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    .line 204
    iput-object p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    .line 205
    return-void
.end method

.method private cacheComplete()Z
    .locals 2

    .prologue
    .line 106
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    # invokes: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->isComplete()Z
    invoke-static {v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$100(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Z

    move-result v0

    .line 111
    .local v0, "complete":Z
    :goto_0
    return v0

    .line 109
    .end local v0    # "complete":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "complete":Z
    goto :goto_0
.end method

.method private getCache()Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    return-object v0
.end method

.method private markCacheComplete()V
    .locals 3

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v0

    .line 120
    .local v0, "nv":Lorg/apache/xml/utils/NodeVector;
    if-eqz v0, :cond_0

    .line 121
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    const/4 v2, 0x1

    # invokes: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->setCacheComplete(Z)V
    invoke-static {v1, v2}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$200(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Z)V

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method protected SetVector(Lorg/apache/xml/utils/NodeVector;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xml/utils/NodeVector;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->setObject(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method protected addNodeInDocOrder(I)I
    .locals 8
    .param p1, "node"    # I

    .prologue
    .line 723
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v6

    const-string v7, "addNodeInDocOrder must be done on a mutable sequence!"

    invoke-virtual {p0, v6, v7}, Lorg/apache/xpath/axes/NodeSequence;->assertion(ZLjava/lang/String;)V

    .line 725
    const/4 v3, -0x1

    .line 727
    .local v3, "insertIndex":I
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v5

    .line 732
    .local v5, "vec":Lorg/apache/xml/utils/NodeVector;
    invoke-virtual {v5}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v4

    .line 734
    .local v4, "size":I
    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 736
    invoke-virtual {v5, v2}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v0

    .line 738
    .local v0, "child":I
    if-ne v0, p1, :cond_2

    .line 740
    const/4 v2, -0x2

    .line 752
    .end local v0    # "child":I
    :cond_0
    const/4 v6, -0x2

    if-eq v2, v6, :cond_1

    .line 754
    add-int/lit8 v3, v2, 0x1

    .line 756
    invoke-virtual {v5, p1, v3}, Lorg/apache/xml/utils/NodeVector;->insertElementAt(II)V

    .line 760
    :cond_1
    return v3

    .line 745
    .restart local v0    # "child":I
    :cond_2
    iget-object v6, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v6, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    .line 746
    .local v1, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v1, p1, v0}, Lorg/apache/xml/dtm/DTM;->isNodeAfter(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 734
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public allowDetachToRelease(Z)V
    .locals 1
    .param p1, "allowRelease"    # Z

    .prologue
    .line 409
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->setShouldCacheNodes(Z)V

    .line 414
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTMIterator;->allowDetachToRelease(Z)V

    .line 416
    :cond_1
    invoke-super {p0, p1}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V

    .line 417
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 654
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/NodeSequence;

    .line 655
    .local v0, "clone":Lorg/apache/xpath/axes/NodeSequence;
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/dtm/DTMIterator;

    iput-object v1, v0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    .line 656
    :cond_0
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    if-eqz v1, :cond_1

    .line 662
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    # invokes: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->increaseUseCount()V
    invoke-static {v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$500(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)V

    .line 665
    :cond_1
    return-object v0
.end method

.method public cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 629
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/NodeSequence;

    .line 630
    .local v0, "seq":Lorg/apache/xpath/axes/NodeSequence;
    const/4 v1, 0x0

    iput v1, v0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 631
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    if-eqz v1, :cond_0

    .line 637
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    # invokes: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->increaseUseCount()V
    invoke-static {v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$500(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)V

    .line 640
    :cond_0
    return-object v0
.end method

.method public detach()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    .line 399
    :cond_0
    invoke-super {p0}, Lorg/apache/xpath/objects/XObject;->detach()V

    .line 400
    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    .prologue
    .line 710
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/objects/XObject;->fixupVariables(Ljava/util/Vector;I)V

    .line 711
    return-void
.end method

.method public getAnalysisBits()I
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    instance-of v0, v0, Lorg/apache/xpath/axes/PathComponent;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    check-cast v0, Lorg/apache/xpath/axes/PathComponent;

    invoke-interface {v0}, Lorg/apache/xpath/axes/PathComponent;->getAnalysisBits()I

    move-result v0

    .line 702
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAxis()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 685
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v1, :cond_0

    .line 686
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getAxis()I

    move-result v0

    .line 690
    :goto_0
    return v0

    .line 689
    :cond_0
    const-string v1, "Can not getAxis from a non-iterated node sequence!"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/axes/NodeSequence;->assertion(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public final getContainedIter()Lorg/apache/xml/dtm/DTMIterator;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    return-object v0
.end method

.method public getCurrentNode()I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 424
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 426
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    add-int/lit8 v0, v3, -0x1

    .line 427
    .local v0, "currentIndex":I
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v1

    .line 428
    .local v1, "vec":Lorg/apache/xml/utils/NodeVector;
    if-ltz v0, :cond_0

    invoke-virtual {v1}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 429
    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v2

    .line 439
    .end local v0    # "currentIndex":I
    .end local v1    # "vec":Lorg/apache/xml/utils/NodeVector;
    :cond_0
    :goto_0
    return v2

    .line 434
    :cond_1
    iget-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v3, :cond_0

    .line 436
    iget-object v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentNode()I

    move-result v2

    goto :goto_0
.end method

.method public getCurrentPos()I
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    return v0
.end method

.method public getDTM(I)Lorg/apache/xml/dtm/DTM;
    .locals 3
    .param p1, "nodeHandle"    # I

    .prologue
    .line 222
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v0

    .line 223
    .local v0, "mgr":Lorg/apache/xml/dtm/DTMManager;
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    .line 228
    :goto_0
    return-object v1

    .line 227
    :cond_0
    const/4 v1, 0x0

    const-string v2, "Can not get a DTM Unless a DTMManager has been set!"

    invoke-virtual {p0, v1, v2}, Lorg/apache/xpath/axes/NodeSequence;->assertion(ZLjava/lang/String;)V

    .line 228
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDTMManager()Lorg/apache/xml/dtm/DTMManager;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    return-object v0
.end method

.method public getExpandEntityReferences()Z
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getExpandEntityReferences()Z

    move-result v0

    .line 304
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getIteratorCache()Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    return-object v0
.end method

.method public getLength()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 589
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;->getCache()Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    move-result-object v0

    .line 591
    .local v0, "cache":Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    if-eqz v0, :cond_3

    .line 594
    # invokes: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->isComplete()Z
    invoke-static {v0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$100(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 597
    # invokes: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->getVector()Lorg/apache/xml/utils/NodeVector;
    invoke-static {v0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$000(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Lorg/apache/xml/utils/NodeVector;

    move-result-object v1

    .line 598
    .local v1, "nv":Lorg/apache/xml/utils/NodeVector;
    invoke-virtual {v1}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v3

    .line 619
    .end local v1    # "nv":Lorg/apache/xml/utils/NodeVector;
    :goto_0
    return v3

    .line 604
    :cond_0
    iget-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    instance-of v3, v3, Lorg/apache/xpath/NodeSetDTM;

    if-eqz v3, :cond_1

    .line 606
    iget-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v3}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    move-result v3

    goto :goto_0

    .line 609
    :cond_1
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    if-ne v4, v3, :cond_2

    .line 611
    iget v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 612
    .local v2, "pos":I
    invoke-virtual {p0, v4}, Lorg/apache/xpath/axes/NodeSequence;->runTo(I)V

    .line 613
    iput v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 615
    .end local v2    # "pos":I
    :cond_2
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    goto :goto_0

    .line 619
    :cond_3
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    if-ne v4, v3, :cond_4

    iget-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v3}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    move-result v3

    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    goto :goto_0

    :cond_4
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    goto :goto_0
.end method

.method public getRoot()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getRoot()I

    move-result v0

    .line 252
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected getVector()Lorg/apache/xml/utils/NodeVector;
    .locals 2

    .prologue
    .line 66
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    # invokes: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->getVector()Lorg/apache/xml/utils/NodeVector;
    invoke-static {v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$000(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Lorg/apache/xml/utils/NodeVector;

    move-result-object v0

    .line 67
    .local v0, "nv":Lorg/apache/xml/utils/NodeVector;
    :goto_0
    return-object v0

    .line 66
    .end local v0    # "nv":Lorg/apache/xml/utils/NodeVector;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWhatToShow()I
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0x11

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getWhatToShow()I

    move-result v0

    goto :goto_0
.end method

.method public hasCache()Z
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v0

    .line 96
    .local v0, "nv":Lorg/apache/xml/utils/NodeVector;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDocOrdered()Z
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->isDocOrdered()Z

    move-result v0

    .line 677
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFresh()Z
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMutable()Z
    .locals 1

    .prologue
    .line 473
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v0

    return v0
.end method

.method public item(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 529
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->setCurrentPos(I)V

    .line 530
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->nextNode()I

    move-result v0

    .line 531
    .local v0, "n":I
    iput p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 532
    return v0
.end method

.method public nextNode()I
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 314
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v2

    .line 315
    .local v2, "vec":Lorg/apache/xml/utils/NodeVector;
    if-eqz v2, :cond_3

    .line 318
    iget v4, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    invoke-virtual {v2}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 321
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v1

    .line 322
    .local v1, "next":I
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 366
    .end local v1    # "next":I
    :cond_0
    :goto_0
    return v1

    .line 325
    :cond_1
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;->cacheComplete()Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    if-ne v3, v4, :cond_2

    iget-object v4, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-nez v4, :cond_3

    .line 327
    :cond_2
    iget v4, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    move v1, v3

    .line 328
    goto :goto_0

    .line 332
    :cond_3
    iget-object v4, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-nez v4, :cond_4

    move v1, v3

    .line 333
    goto :goto_0

    .line 335
    :cond_4
    iget-object v4, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v4}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v1

    .line 336
    .restart local v1    # "next":I
    if-eq v3, v1, :cond_7

    .line 338
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 340
    iget-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v3}, Lorg/apache/xml/dtm/DTMIterator;->isDocOrdered()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 342
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/xml/utils/NodeVector;->addElement(I)V

    .line 343
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    goto :goto_0

    .line 347
    :cond_5
    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/NodeSequence;->addNodeInDocOrder(I)I

    move-result v0

    .line 348
    .local v0, "insertIndex":I
    if-ltz v0, :cond_0

    .line 349
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    goto :goto_0

    .line 353
    .end local v0    # "insertIndex":I
    :cond_6
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    goto :goto_0

    .line 360
    :cond_7
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;->markCacheComplete()V

    .line 362
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    .line 363
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    goto :goto_0
.end method

.method public previousNode()I
    .locals 2

    .prologue
    .line 374
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    if-gtz v1, :cond_0

    .line 377
    const/4 v1, -0x1

    .line 388
    :goto_0
    return v1

    .line 380
    :cond_0
    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 381
    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/NodeSequence;->item(I)I

    move-result v1

    goto :goto_0

    .line 386
    :cond_1
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->previousNode()I

    move-result v0

    .line 387
    .local v0, "n":I
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentPos()I

    move-result v1

    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 388
    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 285
    return-void
.end method

.method public runTo(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v4, -0x1

    .line 491
    if-ne v4, p1, :cond_2

    .line 493
    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 494
    .local v1, "pos":I
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->nextNode()I

    move-result v0

    .local v0, "n":I
    if-ne v4, v0, :cond_0

    .line 495
    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 514
    .end local v0    # "n":I
    .end local v1    # "pos":I
    :cond_1
    :goto_0
    return-void

    .line 497
    :cond_2
    iget v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    if-eq v2, p1, :cond_1

    .line 501
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 503
    iput p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    goto :goto_0

    .line 505
    :cond_3
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v2

    if-nez v2, :cond_4

    iget v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    if-ge p1, v2, :cond_4

    .line 507
    :goto_1
    iget v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    if-lt v2, p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->previousNode()I

    move-result v0

    .restart local v0    # "n":I
    if-eq v4, v0, :cond_1

    goto :goto_1

    .line 511
    .end local v0    # "n":I
    :cond_4
    :goto_2
    iget v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    if-ge v2, p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->nextNode()I

    move-result v0

    .restart local v0    # "n":I
    if-eq v4, v0, :cond_1

    goto :goto_2
.end method

.method public setCurrentPos(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 521
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->runTo(I)V

    .line 522
    return-void
.end method

.method public setItem(II)V
    .locals 8
    .param p1, "node"    # I
    .param p2, "index"    # I

    .prologue
    const/4 v7, 0x1

    .line 540
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v5

    .line 541
    .local v5, "vec":Lorg/apache/xml/utils/NodeVector;
    if-eqz v5, :cond_1

    .line 543
    invoke-virtual {v5, p2}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v3

    .line 544
    .local v3, "oldNode":I
    if-eq v3, p1, :cond_0

    iget-object v6, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    # invokes: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->useCount()I
    invoke-static {v6}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$300(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)I

    move-result v6

    if-le v6, v7, :cond_0

    .line 552
    new-instance v1, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    invoke-direct {v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;-><init>()V

    .line 555
    .local v1, "newCache":Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    :try_start_0
    invoke-virtual {v5}, Lorg/apache/xml/utils/NodeVector;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/utils/NodeVector;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    .local v2, "nv":Lorg/apache/xml/utils/NodeVector;
    # invokes: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->setVector(Lorg/apache/xml/utils/NodeVector;)V
    invoke-static {v1, v2}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$400(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Lorg/apache/xml/utils/NodeVector;)V

    .line 563
    # invokes: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->setCacheComplete(Z)V
    invoke-static {v1, v7}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$200(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Z)V

    .line 564
    iput-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    .line 565
    move-object v5, v2

    .line 568
    invoke-super {p0, v2}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    .line 577
    .end local v1    # "newCache":Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    .end local v2    # "nv":Lorg/apache/xml/utils/NodeVector;
    :cond_0
    invoke-virtual {v5, p1, p2}, Lorg/apache/xml/utils/NodeVector;->setElementAt(II)V

    .line 578
    invoke-virtual {v5}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v6

    iput v6, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    .line 582
    .end local v3    # "oldNode":I
    :goto_0
    return-void

    .line 556
    .restart local v1    # "newCache":Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    .restart local v3    # "oldNode":I
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 559
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 560
    .local v4, "rte":Ljava/lang/RuntimeException;
    throw v4

    .line 581
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    .end local v1    # "newCache":Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    .end local v3    # "oldNode":I
    .end local v4    # "rte":Ljava/lang/RuntimeException;
    :cond_1
    iget-object v6, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v6, p1, p2}, Lorg/apache/xml/dtm/DTMIterator;->setItem(II)V

    goto :goto_0
.end method

.method public final setIter(Lorg/apache/xml/dtm/DTMIterator;)V
    .locals 0
    .param p1, "iter"    # Lorg/apache/xml/dtm/DTMIterator;

    .prologue
    .line 137
    iput-object p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    .line 138
    return-void
.end method

.method protected setObject(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 778
    instance-of v2, p1, Lorg/apache/xml/utils/NodeVector;

    if-eqz v2, :cond_2

    .line 781
    invoke-super {p0, p1}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    move-object v1, p1

    .line 784
    check-cast v1, Lorg/apache/xml/utils/NodeVector;

    .line 785
    .local v1, "v":Lorg/apache/xml/utils/NodeVector;
    iget-object v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    if-eqz v2, :cond_1

    .line 786
    iget-object v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    # invokes: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->setVector(Lorg/apache/xml/utils/NodeVector;)V
    invoke-static {v2, v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$400(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Lorg/apache/xml/utils/NodeVector;)V

    .line 802
    .end local v1    # "v":Lorg/apache/xml/utils/NodeVector;
    :cond_0
    :goto_0
    return-void

    .line 787
    .restart local v1    # "v":Lorg/apache/xml/utils/NodeVector;
    :cond_1
    if-eqz v1, :cond_0

    .line 788
    new-instance v2, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    invoke-direct {v2}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;-><init>()V

    iput-object v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    .line 789
    iget-object v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    # invokes: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->setVector(Lorg/apache/xml/utils/NodeVector;)V
    invoke-static {v2, v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$400(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Lorg/apache/xml/utils/NodeVector;)V

    goto :goto_0

    .line 791
    .end local v1    # "v":Lorg/apache/xml/utils/NodeVector;
    :cond_2
    instance-of v2, p1, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 792
    check-cast v0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    .line 793
    .local v0, "cache":Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    iput-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    .line 794
    iget-object v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    # invokes: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->increaseUseCount()V
    invoke-static {v2}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$500(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)V

    .line 797
    # invokes: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->getVector()Lorg/apache/xml/utils/NodeVector;
    invoke-static {v0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$000(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Lorg/apache/xml/utils/NodeVector;

    move-result-object v2

    invoke-super {p0, v2}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 799
    .end local v0    # "cache":Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    :cond_3
    invoke-super {p0, p1}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 3
    .param p1, "nodeHandle"    # I
    .param p2, "environment"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 261
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v1, :cond_2

    move-object v0, p2

    .line 263
    check-cast v0, Lorg/apache/xpath/XPathContext;

    .line 264
    .local v0, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    .line 265
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1, p1, p2}, Lorg/apache/xml/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    .line 266
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->isDocOrdered()Z

    move-result v1

    if-nez v1, :cond_1

    .line 268
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/NodeSequence;->setShouldCacheNodes(Z)V

    .line 270
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/NodeSequence;->runTo(I)V

    .line 271
    iput v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 276
    .end local v0    # "xctxt":Lorg/apache/xpath/XPathContext;
    :cond_1
    :goto_0
    return-void

    .line 275
    :cond_2
    const-string v1, "Can not setRoot on a non-iterated NodeSequence!"

    invoke-virtual {p0, v2, v1}, Lorg/apache/xpath/axes/NodeSequence;->assertion(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public setShouldCacheNodes(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 455
    if-eqz p1, :cond_1

    .line 457
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    new-instance v0, Lorg/apache/xml/utils/NodeVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->SetVector(Lorg/apache/xml/utils/NodeVector;)V

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->SetVector(Lorg/apache/xml/utils/NodeVector;)V

    goto :goto_0
.end method
