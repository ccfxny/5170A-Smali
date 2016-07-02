.class Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper$1;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Landroid/view/ActionMode$OnActionItemDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;


# direct methods
.method constructor <init>(Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;)V
    .locals 0

    .prologue
    .line 2839
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper$1;->this$1:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/DragEvent;Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "event"    # Landroid/view/DragEvent;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 2841
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper$1;->this$1:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # invokes: Lcom/meizu/widget/StaggeredGridView;->doActionItemDrag(Landroid/view/DragEvent;Landroid/view/MenuItem;)V
    invoke-static {v0, p1, p2}, Lcom/meizu/widget/StaggeredGridView;->access$2200(Lcom/meizu/widget/StaggeredGridView;Landroid/view/DragEvent;Landroid/view/MenuItem;)V

    .line 2842
    return-void
.end method
