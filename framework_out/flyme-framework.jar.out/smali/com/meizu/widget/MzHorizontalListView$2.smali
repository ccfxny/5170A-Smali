.class Lcom/meizu/widget/MzHorizontalListView$2;
.super Landroid/database/DataSetObserver;
.source "MzHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/widget/MzHorizontalListView;->setAdapter(Landroid/widget/BaseAdapter;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/MzHorizontalListView;


# direct methods
.method constructor <init>(Lcom/meizu/widget/MzHorizontalListView;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/meizu/widget/MzHorizontalListView$2;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 118
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalListView$2;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mIsDragging:Z
    invoke-static {v0}, Lcom/meizu/widget/MzHorizontalListView;->access$300(Lcom/meizu/widget/MzHorizontalListView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalListView$2;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mIsAnimating:Z
    invoke-static {v0}, Lcom/meizu/widget/MzHorizontalListView;->access$400(Lcom/meizu/widget/MzHorizontalListView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalListView$2;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    const/4 v1, -0x1

    # invokes: Lcom/meizu/widget/MzHorizontalListView;->handleDataChanged(I)V
    invoke-static {v0, v1}, Lcom/meizu/widget/MzHorizontalListView;->access$500(Lcom/meizu/widget/MzHorizontalListView;I)V

    .line 120
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 125
    return-void
.end method
