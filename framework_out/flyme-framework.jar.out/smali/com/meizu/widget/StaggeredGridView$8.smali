.class Lcom/meizu/widget/StaggeredGridView$8;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/StaggeredGridView;


# direct methods
.method constructor <init>(Lcom/meizu/widget/StaggeredGridView;)V
    .locals 0

    .prologue
    .line 3942
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView$8;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3944
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$8;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # invokes: Lcom/meizu/widget/StaggeredGridView;->updateDrag()V
    invoke-static {v0}, Lcom/meizu/widget/StaggeredGridView;->access$5200(Lcom/meizu/widget/StaggeredGridView;)V

    .line 3945
    return-void
.end method
