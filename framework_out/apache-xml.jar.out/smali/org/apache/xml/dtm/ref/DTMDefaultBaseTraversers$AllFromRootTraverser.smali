.class Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllFromRootTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .locals 1

    .prologue
    .line 1467
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
    .param p2, "x1"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;

    .prologue
    .line 1467
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method public first(I)I
    .locals 1
    .param p1, "context"    # I

    .prologue
    .line 1479
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getDocumentRoot(I)I

    move-result v0

    return v0
.end method

.method public first(II)I
    .locals 2
    .param p1, "context"    # I
    .param p2, "expandedTypeID"    # I

    .prologue
    .line 1492
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getDocumentRoot(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getExpandedTypeID(I)I

    move-result v0

    if-ne v0, p2, :cond_0

    .end local p1    # "context":I
    :goto_0
    return p1

    .restart local p1    # "context":I
    :cond_0
    invoke-virtual {p0, p1, p1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->next(III)I

    move-result p1

    goto :goto_0
.end method

.method public next(II)I
    .locals 4
    .param p1, "context"    # I
    .param p2, "current"    # I

    .prologue
    const/4 v2, -0x1

    .line 1507
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v3, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    move-result v0

    .line 1509
    .local v0, "subtreeRootIdent":I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v3, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    move-result v3

    add-int/lit8 p2, v3, 0x1

    .line 1512
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v3, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_type(I)S

    move-result v1

    .line 1513
    .local v1, "type":I
    if-ne v1, v2, :cond_0

    .line 1516
    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    move-result v2

    goto :goto_0
.end method

.method public next(III)I
    .locals 4
    .param p1, "context"    # I
    .param p2, "current"    # I
    .param p3, "expandedTypeID"    # I

    .prologue
    const/4 v2, -0x1

    .line 1533
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v3, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    move-result v1

    .line 1535
    .local v1, "subtreeRootIdent":I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v3, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    move-result v3

    add-int/lit8 p2, v3, 0x1

    .line 1537
    :goto_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v3, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_exptype(I)I

    move-result v0

    .line 1539
    .local v0, "exptype":I
    if-ne v0, v2, :cond_0

    .line 1545
    :goto_1
    return v2

    .line 1542
    :cond_0
    if-eq v0, p3, :cond_1

    .line 1535
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1545
    :cond_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    move-result v2

    goto :goto_1
.end method
