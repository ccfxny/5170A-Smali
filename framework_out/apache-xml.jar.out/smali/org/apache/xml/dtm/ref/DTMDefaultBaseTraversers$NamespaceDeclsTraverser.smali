.class Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;
.super Lorg/apache/xml/dtm/DTMAxisTraverser;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NamespaceDeclsTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .locals 0

    .prologue
    .line 1025
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMAxisTraverser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
    .param p2, "x1"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;

    .prologue
    .line 1025
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method public next(II)I
    .locals 2
    .param p1, "context"    # I
    .param p2, "current"    # I

    .prologue
    const/4 v1, 0x0

    .line 1039
    if-ne p1, p2, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getFirstNamespaceNode(IZ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getNextNamespaceNode(IIZ)I

    move-result v0

    goto :goto_0
.end method

.method public next(III)I
    .locals 3
    .param p1, "context"    # I
    .param p2, "current"    # I
    .param p3, "expandedTypeID"    # I

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 1057
    if-ne p1, p2, :cond_1

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, p1, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getFirstNamespaceNode(IZ)I

    move-result p2

    .line 1063
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getExpandedTypeID(I)I

    move-result v1

    if-ne v1, p3, :cond_2

    move v0, p2

    .line 1069
    :goto_1
    return v0

    .line 1057
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, p1, p2, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getNextNamespaceNode(IIZ)I

    move-result p2

    goto :goto_0

    .line 1067
    :cond_2
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, p1, p2, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getNextNamespaceNode(IIZ)I

    move-result p2

    if-ne v0, p2, :cond_0

    goto :goto_1
.end method
