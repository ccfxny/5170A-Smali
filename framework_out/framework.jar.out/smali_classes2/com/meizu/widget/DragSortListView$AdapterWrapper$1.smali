.class Lcom/meizu/widget/DragSortListView$AdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/widget/DragSortListView$AdapterWrapper;-><init>(Lcom/meizu/widget/DragSortListView;Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/widget/DragSortListView$AdapterWrapper;

.field final synthetic val$this$0:Lcom/meizu/widget/DragSortListView;


# direct methods
.method constructor <init>(Lcom/meizu/widget/DragSortListView$AdapterWrapper;Lcom/meizu/widget/DragSortListView;)V
    .locals 0

    .prologue
    .line 658
    iput-object p1, p0, Lcom/meizu/widget/DragSortListView$AdapterWrapper$1;->this$1:Lcom/meizu/widget/DragSortListView$AdapterWrapper;

    iput-object p2, p0, Lcom/meizu/widget/DragSortListView$AdapterWrapper$1;->val$this$0:Lcom/meizu/widget/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/meizu/widget/DragSortListView$AdapterWrapper$1;->this$1:Lcom/meizu/widget/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/meizu/widget/DragSortListView$AdapterWrapper;->notifyDataSetChanged()V

    .line 661
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/meizu/widget/DragSortListView$AdapterWrapper$1;->this$1:Lcom/meizu/widget/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/meizu/widget/DragSortListView$AdapterWrapper;->notifyDataSetInvalidated()V

    .line 665
    return-void
.end method
