.class Lcom/meizu/widget/StaggeredGridView$6;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/widget/StaggeredGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/StaggeredGridView;

.field final synthetic val$tPosition:I


# direct methods
.method constructor <init>(Lcom/meizu/widget/StaggeredGridView;I)V
    .locals 0

    .prologue
    .line 2295
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iput p2, p0, Lcom/meizu/widget/StaggeredGridView$6;->val$tPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v9, -0x1

    const/4 v3, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 2299
    iget-object v5, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget v5, v5, Lcom/meizu/widget/StaggeredGridView;->mDragAndDropPosition:I

    if-ne v5, v9, :cond_1

    .line 2406
    :cond_0
    :goto_0
    return v2

    .line 2302
    :cond_1
    const/4 v1, 0x0

    .line 2303
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_2
    :goto_1
    move v2, v4

    .line 2406
    goto :goto_0

    .line 2305
    :sswitch_0
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
    invoke-static {v3}, Lcom/meizu/widget/StaggeredGridView;->access$1000(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2306
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
    invoke-static {v3}, Lcom/meizu/widget/StaggeredGridView;->access$1000(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;->onActionItemDragStart()V

    .line 2307
    :cond_3
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v3, v2}, Lcom/meizu/widget/StaggeredGridView;->notifyDragDropAnimType(I)V

    move v2, v4

    .line 2308
    goto :goto_0

    :sswitch_1
    move v2, v4

    .line 2311
    goto :goto_0

    :sswitch_2
    move v2, v4

    .line 2314
    goto :goto_0

    :sswitch_3
    move v2, v4

    .line 2317
    goto :goto_0

    .line 2319
    :sswitch_4
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
    invoke-static {v3}, Lcom/meizu/widget/StaggeredGridView;->access$1000(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget v3, v3, Lcom/meizu/widget/StaggeredGridView;->mDragAndDropPosition:I

    iget v5, p0, Lcom/meizu/widget/StaggeredGridView$6;->val$tPosition:I

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
    invoke-static {v3}, Lcom/meizu/widget/StaggeredGridView;->access$1000(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    move-result-object v3

    instance-of v3, v3, Lcom/meizu/widget/StaggeredGridView$OnItemDragSwapListener;

    if-eqz v3, :cond_0

    .line 2321
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
    invoke-static {v2}, Lcom/meizu/widget/StaggeredGridView;->access$1000(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/StaggeredGridView$OnItemDragSwapListener;

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget v3, v3, Lcom/meizu/widget/StaggeredGridView;->mDragAndDropPosition:I

    iget v5, p0, Lcom/meizu/widget/StaggeredGridView$6;->val$tPosition:I

    invoke-interface {v2, v3, v5}, Lcom/meizu/widget/StaggeredGridView$OnItemDragSwapListener;->onActionItemSwap(II)V

    move v2, v4

    .line 2322
    goto :goto_0

    .line 2327
    :sswitch_5
    iget-object v5, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v5, v5, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_4

    .line 2328
    iget-object v5, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v5, v5, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v5, v2}, Landroid/view/ActionMode;->setDragDismissAnimating(Z)V

    .line 2331
    :cond_4
    iget-object v5, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v6, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget v6, v6, Lcom/meizu/widget/StaggeredGridView;->mDragAndDropPosition:I

    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I
    invoke-static {v7}, Lcom/meizu/widget/StaggeredGridView;->access$1100(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2332
    if-eqz v1, :cond_5

    .line 2333
    instance-of v5, v1, Lcom/meizu/widget/StaggeredGridView$DragShadowItem;

    if-eqz v5, :cond_9

    .line 2338
    iget-object v5, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mChangeChildAlphaWhenDragView:Z
    invoke-static {v5}, Lcom/meizu/widget/StaggeredGridView;->access$1200(Lcom/meizu/widget/StaggeredGridView;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2339
    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 2346
    :cond_5
    :goto_2
    invoke-virtual {p2}, Landroid/view/DragEvent;->getResult()Z

    move-result v5

    if-nez v5, :cond_a

    .line 2347
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v5, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget v5, v5, Lcom/meizu/widget/StaggeredGridView;->mDragAndDropPosition:I

    invoke-virtual {v2, v5, v4}, Lcom/meizu/widget/StaggeredGridView;->setItemChecked(IZ)V

    .line 2356
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iput v9, v2, Lcom/meizu/widget/StaggeredGridView;->mDragAndDropPosition:I

    .line 2358
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
    invoke-static {v2}, Lcom/meizu/widget/StaggeredGridView;->access$1000(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2359
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
    invoke-static {v2}, Lcom/meizu/widget/StaggeredGridView;->access$1000(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    move-result-object v5

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;
    invoke-static {v2}, Lcom/meizu/widget/StaggeredGridView;->access$1300(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;
    invoke-static {v2}, Lcom/meizu/widget/StaggeredGridView;->access$1300(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v2

    :goto_4
    invoke-interface {v5, v2}, Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;->onActionItemDragEnd(Landroid/view/View;)V

    .line 2362
    :cond_7
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v2}, Lcom/meizu/widget/StaggeredGridView;->getCheckedItemCount()I

    move-result v2

    if-gtz v2, :cond_8

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v2, v2, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_8

    .line 2363
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v2, v2, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 2365
    :cond_8
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mDragSurface:Landroid/view/Surface;
    invoke-static {v2}, Lcom/meizu/widget/StaggeredGridView;->access$1400(Lcom/meizu/widget/StaggeredGridView;)Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2366
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mDragSurface:Landroid/view/Surface;
    invoke-static {v2}, Lcom/meizu/widget/StaggeredGridView;->access$1500(Lcom/meizu/widget/StaggeredGridView;)Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 2367
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # setter for: Lcom/meizu/widget/StaggeredGridView;->mDragSurface:Landroid/view/Surface;
    invoke-static {v2, v3}, Lcom/meizu/widget/StaggeredGridView;->access$1602(Lcom/meizu/widget/StaggeredGridView;Landroid/view/Surface;)Landroid/view/Surface;

    goto/16 :goto_1

    .line 2342
    :cond_9
    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 2348
    :cond_a
    if-eqz v1, :cond_6

    .line 2349
    const v5, 0x1020001

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2350
    .local v0, "checkbox":Landroid/view/View;
    if-eqz v0, :cond_b

    instance-of v5, v0, Landroid/widget/Checkable;

    if-eqz v5, :cond_b

    .line 2351
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "checkbox":Landroid/view/View;
    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2353
    :cond_b
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v2}, Lcom/meizu/widget/StaggeredGridView;->invalidateViews()V

    goto :goto_3

    :cond_c
    move-object v2, v3

    .line 2359
    goto :goto_4

    .line 2372
    :sswitch_6
    iget-object v5, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v6, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget v6, v6, Lcom/meizu/widget/StaggeredGridView;->mDragAndDropPosition:I

    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I
    invoke-static {v7}, Lcom/meizu/widget/StaggeredGridView;->access$1100(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2373
    if-eqz v1, :cond_e

    .line 2374
    instance-of v5, v1, Lcom/meizu/widget/StaggeredGridView$DragShadowItem;

    if-eqz v5, :cond_11

    .line 2379
    iget-object v5, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mChangeChildAlphaWhenDragView:Z
    invoke-static {v5}, Lcom/meizu/widget/StaggeredGridView;->access$1200(Lcom/meizu/widget/StaggeredGridView;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2380
    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 2386
    :cond_d
    :goto_5
    const v5, 0x1020001

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2387
    .restart local v0    # "checkbox":Landroid/view/View;
    if-eqz v0, :cond_e

    instance-of v5, v0, Landroid/widget/Checkable;

    if-eqz v5, :cond_e

    .line 2388
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "checkbox":Landroid/view/View;
    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2391
    :cond_e
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v2}, Lcom/meizu/widget/StaggeredGridView;->requestLayout()V

    .line 2394
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v2}, Lcom/meizu/widget/StaggeredGridView;->getCheckedItemCount()I

    move-result v2

    if-gtz v2, :cond_f

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v2, v2, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_f

    .line 2395
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v2, v2, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 2396
    :cond_f
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iput v9, v2, Lcom/meizu/widget/StaggeredGridView;->mDragAndDropPosition:I

    .line 2397
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
    invoke-static {v2}, Lcom/meizu/widget/StaggeredGridView;->access$1000(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 2398
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
    invoke-static {v2}, Lcom/meizu/widget/StaggeredGridView;->access$1000(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    move-result-object v5

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;
    invoke-static {v2}, Lcom/meizu/widget/StaggeredGridView;->access$1300(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;
    invoke-static {v2}, Lcom/meizu/widget/StaggeredGridView;->access$1300(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v2

    :goto_6
    invoke-interface {v5, v2}, Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;->onActionItemDragEnd(Landroid/view/View;)V

    .line 2400
    :cond_10
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mDragSurface:Landroid/view/Surface;
    invoke-static {v2}, Lcom/meizu/widget/StaggeredGridView;->access$1700(Lcom/meizu/widget/StaggeredGridView;)Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2401
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mDragSurface:Landroid/view/Surface;
    invoke-static {v2}, Lcom/meizu/widget/StaggeredGridView;->access$1800(Lcom/meizu/widget/StaggeredGridView;)Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 2402
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # setter for: Lcom/meizu/widget/StaggeredGridView;->mDragSurface:Landroid/view/Surface;
    invoke-static {v2, v3}, Lcom/meizu/widget/StaggeredGridView;->access$1902(Lcom/meizu/widget/StaggeredGridView;Landroid/view/Surface;)Landroid/view/Surface;

    goto/16 :goto_1

    .line 2383
    :cond_11
    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_5

    :cond_12
    move-object v2, v3

    .line 2398
    goto :goto_6

    .line 2303
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x64 -> :sswitch_6
    .end sparse-switch
.end method
