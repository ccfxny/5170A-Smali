.class Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;
.super Ljava/lang/Object;
.source "MzHorizontalListView.java"

# interfaces
.implements Landroid/view/View$OnDragListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/MzHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerListenerImpl"
.end annotation


# instance fields
.field private mDragView:Landroid/view/View;

.field private mPosition:I

.field final synthetic this$0:Lcom/meizu/widget/MzHorizontalListView;


# direct methods
.method constructor <init>(Lcom/meizu/widget/MzHorizontalListView;I)V
    .locals 0
    .param p2, "position"    # I

    .prologue
    .line 237
    iput-object p1, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput p2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->mPosition:I

    .line 239
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mOnItemClickListener:Lcom/meizu/widget/MzHorizontalListView$onItemClickListener;
    invoke-static {v0}, Lcom/meizu/widget/MzHorizontalListView;->access$1500(Lcom/meizu/widget/MzHorizontalListView;)Lcom/meizu/widget/MzHorizontalListView$onItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mOnItemClickListener:Lcom/meizu/widget/MzHorizontalListView$onItemClickListener;
    invoke-static {v0}, Lcom/meizu/widget/MzHorizontalListView;->access$1500(Lcom/meizu/widget/MzHorizontalListView;)Lcom/meizu/widget/MzHorizontalListView$onItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->mPosition:I

    iget-object v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/meizu/widget/MzHorizontalListView;->access$1400(Lcom/meizu/widget/MzHorizontalListView;)Landroid/widget/BaseAdapter;

    move-result-object v2

    iget v3, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->mPosition:I

    invoke-virtual {v2, v3}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/meizu/widget/MzHorizontalListView$onItemClickListener;->onItemClick(Landroid/view/View;ILjava/lang/Object;)V

    .line 339
    :cond_0
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 249
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 251
    .local v0, "action":I
    iget-object v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mIsAnimating:Z
    invoke-static {v2}, Lcom/meizu/widget/MzHorizontalListView;->access$400(Lcom/meizu/widget/MzHorizontalListView;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 253
    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 254
    iget-object v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    iget v3, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->mPosition:I

    # setter for: Lcom/meizu/widget/MzHorizontalListView;->mCurrentEnterPosition:I
    invoke-static {v2, v3}, Lcom/meizu/widget/MzHorizontalListView;->access$702(Lcom/meizu/widget/MzHorizontalListView;I)I

    .line 313
    :cond_0
    :goto_0
    return v1

    .line 255
    :cond_1
    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 258
    :cond_2
    iget-object v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->mDragView:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 259
    iget-object v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 260
    iput-object v4, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->mDragView:Landroid/view/View;

    .line 261
    iget-object v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # setter for: Lcom/meizu/widget/MzHorizontalListView;->mIsDragging:Z
    invoke-static {v2, v1}, Lcom/meizu/widget/MzHorizontalListView;->access$302(Lcom/meizu/widget/MzHorizontalListView;Z)Z

    .line 264
    :cond_3
    iget-object v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # invokes: Lcom/meizu/widget/MzHorizontalListView;->stopScroll()V
    invoke-static {v2}, Lcom/meizu/widget/MzHorizontalListView;->access$200(Lcom/meizu/widget/MzHorizontalListView;)V

    goto :goto_0

    .line 269
    :cond_4
    packed-switch v0, :pswitch_data_0

    .line 305
    :pswitch_0
    iget-object v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # invokes: Lcom/meizu/widget/MzHorizontalListView;->stopScroll()V
    invoke-static {v2}, Lcom/meizu/widget/MzHorizontalListView;->access$200(Lcom/meizu/widget/MzHorizontalListView;)V

    .line 306
    iget-object v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->mDragView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 307
    iget-object v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 308
    iput-object v4, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->mDragView:Landroid/view/View;

    .line 309
    iget-object v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # setter for: Lcom/meizu/widget/MzHorizontalListView;->mIsDragging:Z
    invoke-static {v2, v1}, Lcom/meizu/widget/MzHorizontalListView;->access$302(Lcom/meizu/widget/MzHorizontalListView;Z)Z

    goto :goto_0

    .line 273
    :pswitch_1
    iget-object v1, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    iget v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->mPosition:I

    # invokes: Lcom/meizu/widget/MzHorizontalListView;->enterScrollArea(I)Z
    invoke-static {v1, v2}, Lcom/meizu/widget/MzHorizontalListView;->access$800(Lcom/meizu/widget/MzHorizontalListView;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 274
    iget-object v1, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    iget-object v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->scrollForward:Z
    invoke-static {v2}, Lcom/meizu/widget/MzHorizontalListView;->access$900(Lcom/meizu/widget/MzHorizontalListView;)Z

    move-result v2

    # invokes: Lcom/meizu/widget/MzHorizontalListView;->startScroll(Z)V
    invoke-static {v1, v2}, Lcom/meizu/widget/MzHorizontalListView;->access$1000(Lcom/meizu/widget/MzHorizontalListView;Z)V

    .line 278
    :goto_1
    iget-object v1, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mCurrentEnterPosition:I
    invoke-static {v1}, Lcom/meizu/widget/MzHorizontalListView;->access$700(Lcom/meizu/widget/MzHorizontalListView;)I

    move-result v1

    iget v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->mPosition:I

    if-ne v1, v2, :cond_5

    .line 279
    iget-object v1, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    const/4 v2, -0x1

    # setter for: Lcom/meizu/widget/MzHorizontalListView;->mCurrentEnterPosition:I
    invoke-static {v1, v2}, Lcom/meizu/widget/MzHorizontalListView;->access$702(Lcom/meizu/widget/MzHorizontalListView;I)I

    .line 280
    iget-object v1, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mDragPosition:I
    invoke-static {v1}, Lcom/meizu/widget/MzHorizontalListView;->access$1100(Lcom/meizu/widget/MzHorizontalListView;)I

    move-result v1

    iget v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->mPosition:I

    if-le v1, v2, :cond_7

    .line 281
    iget-object v1, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mMoveForwardRunnable:Lcom/meizu/widget/MzHorizontalListView$MoveForwardAnimator;
    invoke-static {v1}, Lcom/meizu/widget/MzHorizontalListView;->access$1200(Lcom/meizu/widget/MzHorizontalListView;)Lcom/meizu/widget/MzHorizontalListView$MoveForwardAnimator;

    move-result-object v1

    iget v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->mPosition:I

    iget-object v3, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mDragPosition:I
    invoke-static {v3}, Lcom/meizu/widget/MzHorizontalListView;->access$1100(Lcom/meizu/widget/MzHorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/meizu/widget/MzHorizontalListView$MoveForwardAnimator;->start(II)V

    .line 313
    :cond_5
    :goto_2
    :pswitch_2
    const/4 v1, 0x1

    goto :goto_0

    .line 276
    :cond_6
    iget-object v1, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # invokes: Lcom/meizu/widget/MzHorizontalListView;->stopScroll()V
    invoke-static {v1}, Lcom/meizu/widget/MzHorizontalListView;->access$200(Lcom/meizu/widget/MzHorizontalListView;)V

    goto :goto_1

    .line 283
    :cond_7
    iget-object v1, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mMoveBackwardRunnable:Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;
    invoke-static {v1}, Lcom/meizu/widget/MzHorizontalListView;->access$1300(Lcom/meizu/widget/MzHorizontalListView;)Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mDragPosition:I
    invoke-static {v2}, Lcom/meizu/widget/MzHorizontalListView;->access$1100(Lcom/meizu/widget/MzHorizontalListView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->mPosition:I

    invoke-virtual {v1, v2, v3}, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->start(II)V

    goto :goto_2

    .line 288
    :pswitch_3
    iget-object v1, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    iget v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->mPosition:I

    # setter for: Lcom/meizu/widget/MzHorizontalListView;->mCurrentEnterPosition:I
    invoke-static {v1, v2}, Lcom/meizu/widget/MzHorizontalListView;->access$702(Lcom/meizu/widget/MzHorizontalListView;I)I

    .line 289
    iget-object v1, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    iget v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->mPosition:I

    # invokes: Lcom/meizu/widget/MzHorizontalListView;->enterScrollArea(I)Z
    invoke-static {v1, v2}, Lcom/meizu/widget/MzHorizontalListView;->access$800(Lcom/meizu/widget/MzHorizontalListView;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 290
    iget-object v1, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    iget-object v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->scrollForward:Z
    invoke-static {v2}, Lcom/meizu/widget/MzHorizontalListView;->access$900(Lcom/meizu/widget/MzHorizontalListView;)Z

    move-result v2

    # invokes: Lcom/meizu/widget/MzHorizontalListView;->startScroll(Z)V
    invoke-static {v1, v2}, Lcom/meizu/widget/MzHorizontalListView;->access$1000(Lcom/meizu/widget/MzHorizontalListView;Z)V

    .line 294
    :goto_3
    iget-object v1, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mDragPosition:I
    invoke-static {v1}, Lcom/meizu/widget/MzHorizontalListView;->access$1100(Lcom/meizu/widget/MzHorizontalListView;)I

    move-result v1

    iget v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->mPosition:I

    if-le v1, v2, :cond_9

    .line 295
    iget-object v1, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mMoveForwardRunnable:Lcom/meizu/widget/MzHorizontalListView$MoveForwardAnimator;
    invoke-static {v1}, Lcom/meizu/widget/MzHorizontalListView;->access$1200(Lcom/meizu/widget/MzHorizontalListView;)Lcom/meizu/widget/MzHorizontalListView$MoveForwardAnimator;

    move-result-object v1

    iget v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->mPosition:I

    iget-object v3, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mDragPosition:I
    invoke-static {v3}, Lcom/meizu/widget/MzHorizontalListView;->access$1100(Lcom/meizu/widget/MzHorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/meizu/widget/MzHorizontalListView$MoveForwardAnimator;->start(II)V

    goto :goto_2

    .line 292
    :cond_8
    iget-object v1, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # invokes: Lcom/meizu/widget/MzHorizontalListView;->stopScroll()V
    invoke-static {v1}, Lcom/meizu/widget/MzHorizontalListView;->access$200(Lcom/meizu/widget/MzHorizontalListView;)V

    goto :goto_3

    .line 297
    :cond_9
    iget-object v1, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mMoveBackwardRunnable:Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;
    invoke-static {v1}, Lcom/meizu/widget/MzHorizontalListView;->access$1300(Lcom/meizu/widget/MzHorizontalListView;)Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mDragPosition:I
    invoke-static {v2}, Lcom/meizu/widget/MzHorizontalListView;->access$1100(Lcom/meizu/widget/MzHorizontalListView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->mPosition:I

    invoke-virtual {v1, v2, v3}, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->start(II)V

    goto :goto_2

    .line 269
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 320
    new-instance v1, Lcom/meizu/widget/MzHorizontalListView$InnerShadowBuilder;

    iget-object v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    iget v3, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->mPosition:I

    invoke-direct {v1, v2, p1, v3}, Lcom/meizu/widget/MzHorizontalListView$InnerShadowBuilder;-><init>(Lcom/meizu/widget/MzHorizontalListView;Landroid/view/View;I)V

    .line 321
    .local v1, "shadowBuilder":Lcom/meizu/widget/MzHorizontalListView$InnerShadowBuilder;
    iget-object v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v4}, Lcom/meizu/widget/MzHorizontalListView;->access$1400(Lcom/meizu/widget/MzHorizontalListView;)Landroid/widget/BaseAdapter;

    move-result-object v4

    iget v5, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->mPosition:I

    invoke-virtual {v4, v5}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4, v7}, Lcom/meizu/widget/MzHorizontalListView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    .line 322
    .local v0, "ok":Z
    if-nez v0, :cond_0

    .line 331
    :goto_0
    return v6

    .line 325
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p1, v7, v2}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 327
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 328
    iput-object p1, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->mDragView:Landroid/view/View;

    .line 329
    iget-object v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    iget v3, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->mPosition:I

    # setter for: Lcom/meizu/widget/MzHorizontalListView;->mDragPosition:I
    invoke-static {v2, v3}, Lcom/meizu/widget/MzHorizontalListView;->access$1102(Lcom/meizu/widget/MzHorizontalListView;I)I

    .line 330
    iget-object v2, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # setter for: Lcom/meizu/widget/MzHorizontalListView;->mIsDragging:Z
    invoke-static {v2, v6}, Lcom/meizu/widget/MzHorizontalListView;->access$302(Lcom/meizu/widget/MzHorizontalListView;Z)Z

    goto :goto_0
.end method

.method public setPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 242
    iget v0, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->mPosition:I

    if-eq v0, p1, :cond_0

    .line 243
    iput p1, p0, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->mPosition:I

    .line 245
    :cond_0
    return-void
.end method
