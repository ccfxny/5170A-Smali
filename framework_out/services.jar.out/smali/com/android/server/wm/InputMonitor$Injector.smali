.class Lcom/android/server/wm/InputMonitor$Injector;
.super Ljava/lang/Object;
.source "InputMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InputMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static insertMultipleWindow(Lcom/android/server/wm/WindowManagerService;)V
    .locals 9
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 727
    .local v0, "N":I
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 728
    .local v3, "list":Lcom/android/server/wm/WindowList;
    const/4 v4, 0x0

    .line 729
    .local v4, "specialWindow":Lcom/android/server/wm/WindowState;
    const/4 v1, -0x1

    .line 730
    .local v1, "insertPos":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "k":I
    :goto_0
    if-ltz v2, :cond_2

    .line 731
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 732
    .local v5, "win":Lcom/android/server/wm/WindowState;
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v6, v6, 0x10

    if-nez v6, :cond_0

    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7fb

    if-ne v6, v7, :cond_0

    .line 734
    move-object v4, v5

    .line 736
    :cond_0
    if-eqz v4, :cond_1

    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v6, :cond_1

    iget v6, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v7, v5, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v6, v7, :cond_1

    .line 738
    move v1, v2

    .line 730
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 741
    .end local v5    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    const/4 v6, -0x1

    if-eq v1, v6, :cond_3

    if-eqz v4, :cond_3

    .line 742
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 743
    invoke-virtual {v3, v1, v4}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    .line 744
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert window="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to position="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_3
    return-void
.end method
