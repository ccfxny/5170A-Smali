.class Lcom/meizu/widget/MzHorizontalListView$1;
.super Ljava/lang/Object;
.source "MzHorizontalListView.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/widget/MzHorizontalListView;->init(Landroid/content/Context;)V
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
    .line 94
    iput-object p1, p0, Lcom/meizu/widget/MzHorizontalListView$1;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 98
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalListView$1;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # invokes: Lcom/meizu/widget/MzHorizontalListView;->stopScroll()V
    invoke-static {v0}, Lcom/meizu/widget/MzHorizontalListView;->access$200(Lcom/meizu/widget/MzHorizontalListView;)V

    .line 100
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
