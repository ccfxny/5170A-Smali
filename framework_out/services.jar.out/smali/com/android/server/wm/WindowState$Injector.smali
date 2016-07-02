.class Lcom/android/server/wm/WindowState$Injector;
.super Ljava/lang/Object;
.source "WindowState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static computeFrameLw(Lcom/android/server/wm/WindowState;)V
    .locals 5
    .param p0, "dst"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 1705
    sget-boolean v2, Lcom/android/server/wm/WindowStateExt;->DEBUG_MOVEWIN:Z

    if-eqz v2, :cond_0

    .line 1706
    const-string v2, "Move_Win"

    const-string v3, "****************************************"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    const-string v2, "Move_Win"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package name == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    const-string v2, "Move_Win"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WindowState computeFrameLw>> before move win mFrame == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateExt;->isInMovedMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1712
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateExt;->getMovedX()I

    move-result v0

    .line 1713
    .local v0, "moveX":I
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateExt;->getMovedY()I

    move-result v1

    .line 1714
    .local v1, "moveY":I
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_1

    .line 1715
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1716
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1717
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1718
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1720
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    iput v0, v2, Lcom/android/server/wm/WindowStateExt;->mPreMovedShowX:I

    .line 1721
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    iput v1, v2, Lcom/android/server/wm/WindowStateExt;->mPreMovedShowY:I

    .line 1723
    .end local v0    # "moveX":I
    .end local v1    # "moveY":I
    :cond_2
    sget-boolean v2, Lcom/android/server/wm/WindowStateExt;->DEBUG_MOVEWIN:Z

    if-eqz v2, :cond_3

    .line 1724
    const-string v2, "Move_Win"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WindowState computeFrameLw>> final mFrame == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    const-string v2, "Move_Win"

    const-string v3, "****************************************"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    :cond_3
    return-void
.end method

.method static newInstanceWindowStateExt(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "dst"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 1701
    new-instance v0, Lcom/android/server/wm/WindowStateExt;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowStateExt;-><init>(Lcom/android/server/wm/WindowState;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    .line 1702
    return-void
.end method
