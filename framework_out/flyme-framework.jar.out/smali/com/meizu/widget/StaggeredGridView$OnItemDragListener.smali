.class public interface abstract Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemDragListener"
.end annotation


# virtual methods
.method public abstract getActionItemType(Landroid/view/MenuItem;)I
.end method

.method public abstract onActionItemDragEnd(Landroid/view/View;)V
.end method

.method public abstract onActionItemDragStart()V
.end method

.method public abstract onActionItemDrop(Landroid/view/MenuItem;IJ)V
.end method
