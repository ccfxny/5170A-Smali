.class Lcom/android/server/wm/MzDragState$1;
.super Ljava/lang/Object;
.source "MzDragState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MzDragState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MzDragState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MzDragState;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/server/wm/MzDragState$1;->this$0:Lcom/android/server/wm/MzDragState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/wm/MzDragState$1;->this$0:Lcom/android/server/wm/MzDragState;

    iget-object v0, v0, Lcom/android/server/wm/MzDragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MzDragState$1;->this$0:Lcom/android/server/wm/MzDragState;

    iget v1, v0, Lcom/android/server/wm/MzDragState;->mUpdateCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/wm/MzDragState;->mUpdateCount:I

    .line 186
    iget-object v0, p0, Lcom/android/server/wm/MzDragState$1;->this$0:Lcom/android/server/wm/MzDragState;

    iget v1, v0, Lcom/android/server/wm/MzDragState;->mThumbOffsetY:F

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/MzDragState;->mThumbOffsetY:F

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/MzDragState$1;->this$0:Lcom/android/server/wm/MzDragState;

    iget-object v0, v0, Lcom/android/server/wm/MzDragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/MzDragState$1;->this$0:Lcom/android/server/wm/MzDragState;

    iget v1, v1, Lcom/android/server/wm/MzDragState;->mCurrentX:F

    iget-object v2, p0, Lcom/android/server/wm/MzDragState$1;->this$0:Lcom/android/server/wm/MzDragState;

    iget v2, v2, Lcom/android/server/wm/MzDragState;->mThumbOffsetX:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/wm/MzDragState$1;->this$0:Lcom/android/server/wm/MzDragState;

    iget v2, v2, Lcom/android/server/wm/MzDragState;->mCurrentY:F

    iget-object v3, p0, Lcom/android/server/wm/MzDragState$1;->this$0:Lcom/android/server/wm/MzDragState;

    iget v3, v3, Lcom/android/server/wm/MzDragState;->mThumbOffsetY:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 188
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_2

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  DRAG "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/MzDragState$1;->this$0:Lcom/android/server/wm/MzDragState;

    iget-object v2, v2, Lcom/android/server/wm/MzDragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": pos=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/MzDragState$1;->this$0:Lcom/android/server/wm/MzDragState;

    iget v2, v2, Lcom/android/server/wm/MzDragState;->mCurrentX:F

    iget-object v3, p0, Lcom/android/server/wm/MzDragState$1;->this$0:Lcom/android/server/wm/MzDragState;

    iget v3, v3, Lcom/android/server/wm/MzDragState;->mThumbOffsetX:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/MzDragState$1;->this$0:Lcom/android/server/wm/MzDragState;

    iget v2, v2, Lcom/android/server/wm/MzDragState;->mCurrentY:F

    iget-object v3, p0, Lcom/android/server/wm/MzDragState$1;->this$0:Lcom/android/server/wm/MzDragState;

    iget v3, v3, Lcom/android/server/wm/MzDragState;->mThumbOffsetY:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :cond_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 193
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_3

    const-string v0, "WindowManager"

    const-string v1, "<<< CLOSE TRANSACTION notifyMoveLw"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/MzDragState$1;->this$0:Lcom/android/server/wm/MzDragState;

    iget v0, v0, Lcom/android/server/wm/MzDragState;->mUpdateCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/server/wm/MzDragState$1;->this$0:Lcom/android/server/wm/MzDragState;

    iget-object v0, v0, Lcom/android/server/wm/MzDragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 192
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 193
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_4

    const-string v1, "WindowManager"

    const-string v2, "<<< CLOSE TRANSACTION notifyMoveLw"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    throw v0
.end method
