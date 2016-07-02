.class public Lcom/meizu/widget/StaggeredGridView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 1
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 4148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4149
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 4150
    iput p2, p0, Lcom/meizu/widget/StaggeredGridView$AdapterContextMenuInfo;->position:I

    .line 4151
    iput-wide p3, p0, Lcom/meizu/widget/StaggeredGridView$AdapterContextMenuInfo;->id:J

    .line 4152
    return-void
.end method
