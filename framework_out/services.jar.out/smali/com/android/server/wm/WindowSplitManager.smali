.class public Lcom/android/server/wm/WindowSplitManager;
.super Ljava/lang/Object;
.source "WindowSplitManager.java"


# instance fields
.field private isSplitMode:Z

.field private mLoc:I

.field private mService:Lcom/android/server/wm/WindowManagerService;

.field private splitEnterAnim:Landroid/view/animation/Animation;

.field private splitExitAnim:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSplitManager;->isSplitMode:Z

    .line 231
    iput-object v1, p0, Lcom/android/server/wm/WindowSplitManager;->splitEnterAnim:Landroid/view/animation/Animation;

    .line 232
    iput-object v1, p0, Lcom/android/server/wm/WindowSplitManager;->splitExitAnim:Landroid/view/animation/Animation;

    .line 37
    iput-object p1, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 38
    return-void
.end method

.method private addSplitAnim()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v1, 0x10a0067

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowSplitManager;->splitEnterAnim:Landroid/view/animation/Animation;

    .line 237
    iget-object v0, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v1, 0x10a0068

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowSplitManager;->splitExitAnim:Landroid/view/animation/Animation;

    .line 239
    return-void
.end method


# virtual methods
.method public clearSplitAnimation()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 250
    iput-object v0, p0, Lcom/android/server/wm/WindowSplitManager;->splitEnterAnim:Landroid/view/animation/Animation;

    .line 251
    iput-object v0, p0, Lcom/android/server/wm/WindowSplitManager;->splitExitAnim:Landroid/view/animation/Animation;

    .line 252
    return-void
.end method

.method public covertCropToPortrait(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V
    .locals 2
    .param p1, "crop"    # Landroid/graphics/Rect;
    .param p2, "source"    # Landroid/graphics/Rect;
    .param p3, "dw"    # I
    .param p4, "dh"    # I
    .param p5, "rotation"    # I

    .prologue
    const/4 v1, 0x0

    .line 128
    if-nez p5, :cond_1

    .line 129
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 130
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 131
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 132
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 133
    invoke-virtual {p1, v1, v1, p3, p4}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const/4 v0, 0x1

    if-ne p5, v0, :cond_2

    .line 135
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 136
    iget v0, p2, Landroid/graphics/Rect;->top:I

    sub-int v0, p3, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 137
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 138
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p3, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 139
    invoke-virtual {p1, v1, v1, p3, p4}, Landroid/graphics/Rect;->intersect(IIII)Z

    goto :goto_0

    .line 140
    :cond_2
    const/4 v0, 0x3

    if-ne p5, v0, :cond_0

    .line 141
    iget v0, p2, Landroid/graphics/Rect;->right:I

    sub-int v0, p4, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 142
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 143
    iget v0, p2, Landroid/graphics/Rect;->left:I

    sub-int v0, p4, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 144
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 145
    invoke-virtual {p1, v1, v1, p3, p4}, Landroid/graphics/Rect;->intersect(IIII)Z

    goto :goto_0
.end method

.method public findWallpaperIndexForSplit(ILcom/android/server/wm/WindowState;)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "wallpaperTarget"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 150
    const/4 v0, -0x1

    .line 151
    .local v0, "changeIndex":I
    if-eqz p2, :cond_0

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_0

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v4, v4, Lcom/android/server/wm/AppWindowToken;->splitMode:I

    if-lez v4, :cond_0

    .line 152
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 153
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 154
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 155
    .local v2, "indexWin":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v4, v4, Lcom/android/server/wm/AppWindowToken;->splitMode:I

    if-lez v4, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 157
    move v0, v1

    .line 162
    .end local v1    # "i":I
    .end local v2    # "indexWin":Lcom/android/server/wm/WindowState;
    .end local v3    # "windows":Lcom/android/server/wm/WindowList;
    :cond_0
    return v0

    .line 153
    .restart local v1    # "i":I
    .restart local v2    # "indexWin":Lcom/android/server/wm/WindowState;
    .restart local v3    # "windows":Lcom/android/server/wm/WindowList;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public freezingAppForSplitLocChange(Landroid/os/IBinder;)V
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v9, 0x1

    .line 206
    iget-object v6, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v6, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 207
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v5

    .line 208
    .local v5, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v5, :cond_0

    iget-object v6, v5, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v6, :cond_1

    .line 209
    :cond_0
    monitor-exit v7

    .line 230
    :goto_0
    return-void

    .line 211
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 212
    .local v2, "origId":J
    iget-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v6, :cond_3

    .line 213
    iget-object v6, v5, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v6, v6, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-nez v6, :cond_2

    .line 214
    iget-object v6, v5, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    .line 215
    iget-object v6, v5, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    const/4 v8, 0x0

    iput v8, v6, Lcom/android/server/wm/AppWindowAnimator;->lastFreezeDuration:I

    .line 216
    iget-object v6, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v8, v6, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    .line 217
    iget-object v6, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-ne v6, v9, :cond_2

    .line 218
    invoke-direct {p0}, Lcom/android/server/wm/WindowSplitManager;->addSplitAnim()V

    .line 219
    iget-object v6, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->freezingAppForSplitLocked()V

    .line 222
    :cond_2
    iget-object v6, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 223
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 224
    iget-object v6, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 225
    .local v4, "w":Lcom/android/server/wm/WindowState;
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 228
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v4    # "w":Lcom/android/server/wm/WindowState;
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 229
    monitor-exit v7

    goto :goto_0

    .end local v2    # "origId":J
    .end local v5    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public getLoc()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/android/server/wm/WindowSplitManager;->mLoc:I

    return v0
.end method

.method public getScreenSize()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 118
    iget-object v2, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 119
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 120
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 121
    .local v1, "size":Landroid/graphics/Point;
    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 122
    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 123
    monitor-exit v3

    return-object v1

    .line 124
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v1    # "size":Landroid/graphics/Point;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getSplitEnterAnim()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/server/wm/WindowSplitManager;->splitEnterAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getSplitExitAnim()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/server/wm/WindowSplitManager;->splitExitAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getStackBound(Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)V
    .locals 8
    .param p1, "bound"    # Landroid/graphics/Rect;
    .param p2, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 255
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 256
    .local v2, "stackBound":Landroid/graphics/Rect;
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 257
    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_1

    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v5, :cond_1

    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_1

    .line 260
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v1

    .line 264
    .local v1, "rotation":I
    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v3, v3, Lcom/android/server/wm/AppWindowToken;->splitMode:I

    if-ne v3, v4, :cond_4

    .line 265
    if-nez v1, :cond_2

    .line 266
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/server/wm/WindowSplitManager;->mLoc:I

    invoke-virtual {p1, v6, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 267
    :cond_2
    if-eq v1, v4, :cond_3

    if-ne v1, v7, :cond_0

    .line 268
    :cond_3
    iget v3, p0, Lcom/android/server/wm/WindowSplitManager;->mLoc:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v6, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 270
    :cond_4
    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v3, v3, Lcom/android/server/wm/AppWindowToken;->splitMode:I

    if-ne v3, v5, :cond_0

    .line 271
    if-nez v1, :cond_6

    .line 272
    iget-object v3, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getInputMethodWindowVisibleHeight()I

    move-result v0

    .line 273
    .local v0, "offset":I
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSplitManager;->getLoc()I

    move-result v3

    if-le v0, v3, :cond_5

    .line 274
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSplitManager;->getLoc()I

    move-result v0

    .line 276
    :cond_5
    iget v3, p0, Lcom/android/server/wm/WindowSplitManager;->mLoc:I

    sub-int/2addr v3, v0

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v0

    invoke-virtual {p1, v6, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 277
    .end local v0    # "offset":I
    :cond_6
    if-eq v1, v4, :cond_7

    if-ne v1, v7, :cond_0

    .line 278
    :cond_7
    iget v3, p0, Lcom/android/server/wm/WindowSplitManager;->mLoc:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v3, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public isOpeningSameSplitLocked(Lcom/android/server/wm/WindowState;)Z
    .locals 6
    .param p1, "target"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v3, 0x1

    .line 190
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v4, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v3

    .line 193
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 194
    .local v0, "NO":I
    if-lez v0, :cond_3

    .line 195
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 196
    iget-object v4, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 197
    .local v2, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_2

    iget v4, v2, Lcom/android/server/wm/AppWindowToken;->splitMode:I

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v5, v5, Lcom/android/server/wm/AppWindowToken;->splitMode:I

    if-eq v4, v5, :cond_0

    .line 195
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 202
    .end local v1    # "i":I
    .end local v2    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isSplitMode()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSplitManager;->isSplitMode:Z

    return v0
.end method

.method public moveWinShownFrameForRisizingSplit(III)V
    .locals 8
    .param p1, "taskUpId"    # I
    .param p2, "taskDownId"    # I
    .param p3, "loc"    # I

    .prologue
    .line 166
    iget-object v6, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v6, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 167
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 168
    .local v1, "taskDown":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_2

    .line 169
    iget-object v3, v1, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 170
    .local v3, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "tokenNdx":I
    :goto_0
    if-ltz v2, :cond_1

    .line 171
    invoke-virtual {v3, v2}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .line 172
    .local v0, "t":Lcom/android/server/wm/AppWindowToken;
    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "winNdx":I
    :goto_1
    if-ltz v5, :cond_0

    .line 173
    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 174
    .local v4, "win":Lcom/android/server/wm/WindowState;
    iput p3, v4, Lcom/android/server/wm/WindowState;->shownFrameLoc:I

    .line 172
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 170
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 177
    .end local v0    # "t":Lcom/android/server/wm/AppWindowToken;
    .end local v5    # "winNdx":I
    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 179
    .end local v2    # "tokenNdx":I
    .end local v3    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_2
    monitor-exit v7

    .line 180
    return-void

    .line 179
    .end local v1    # "taskDown":Lcom/android/server/wm/Task;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public offsetSplitWinShownFrame(Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 183
    if-eqz p1, :cond_0

    iget v1, p1, Lcom/android/server/wm/WindowState;->shownFrameLoc:I

    if-lez v1, :cond_0

    .line 184
    iget v1, p1, Lcom/android/server/wm/WindowState;->shownFrameLoc:I

    int-to-float v1, v1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float v0, v1, v2

    .line 185
    .local v0, "offset":F
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 187
    .end local v0    # "offset":F
    :cond_0
    return-void
.end method

.method public setSplitMode(Z)V
    .locals 2
    .param p1, "splitMode"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/server/wm/WindowSplitManager;->isSplitMode:Z

    .line 110
    iget-object v0, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowSplitManager;->isSplitMode:Z

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->setSplitMode(Z)V

    .line 111
    return-void
.end method

.method public setWinTokenSplitMode(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "splitLoc"    # I

    .prologue
    .line 43
    iget-object v1, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 45
    .local v0, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_0

    .line 46
    monitor-exit v2

    .line 51
    :goto_0
    return-void

    .line 48
    :cond_0
    iput p2, v0, Lcom/android/server/wm/AppWindowToken;->splitMode:I

    .line 49
    iget-object v1, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v3, p0, Lcom/android/server/wm/WindowSplitManager;->mLoc:I

    invoke-interface {v1, v3}, Landroid/view/WindowManagerPolicy;->setSplitLineLoc(I)V

    .line 50
    monitor-exit v2

    goto :goto_0

    .end local v0    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateSplitLoc(I)V
    .locals 8
    .param p1, "loc"    # I

    .prologue
    .line 68
    iget v5, p0, Lcom/android/server/wm/WindowSplitManager;->mLoc:I

    if-ne p1, v5, :cond_0

    .line 88
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 72
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 73
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v4

    .line 74
    .local v4, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 75
    .local v0, "NW":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 76
    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 77
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget v5, v3, Lcom/android/server/wm/WindowState;->shownFrameLoc:I

    if-lez v5, :cond_1

    .line 78
    const/4 v5, 0x0

    iput v5, v3, Lcom/android/server/wm/WindowState;->shownFrameLoc:I

    .line 79
    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iput p1, v5, Landroid/graphics/Rect;->top:I

    .line 75
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 83
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    iput p1, p0, Lcom/android/server/wm/WindowSplitManager;->mLoc:I

    .line 84
    iget-object v5, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v7, p0, Lcom/android/server/wm/WindowSplitManager;->mLoc:I

    invoke-interface {v5, v7}, Landroid/view/WindowManagerPolicy;->setSplitLineLoc(I)V

    .line 85
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 86
    iget-object v5, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    .line 87
    monitor-exit v6

    goto :goto_0

    .end local v0    # "NW":I
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "i":I
    .end local v4    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public updateSplitLocForExchangeSplitActivity()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->updateSplitLocForExchangeSplitActivity()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowSplitManager;->mLoc:I

    .line 101
    monitor-exit v1

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateSplitLocWithoutLayout(I)V
    .locals 2
    .param p1, "loc"    # I

    .prologue
    .line 91
    iget v0, p0, Lcom/android/server/wm/WindowSplitManager;->mLoc:I

    if-ne p1, v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iput p1, p0, Lcom/android/server/wm/WindowSplitManager;->mLoc:I

    .line 95
    iget-object v0, p0, Lcom/android/server/wm/WindowSplitManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v1, p0, Lcom/android/server/wm/WindowSplitManager;->mLoc:I

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->setSplitLineLoc(I)V

    goto :goto_0
.end method

.method public updateWindowSplitModeLocked(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 55
    if-nez p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->splitmode:I

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v1, v1, Lcom/android/server/wm/AppWindowToken;->splitMode:I

    if-eq v0, v1, :cond_0

    .line 59
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->splitMode:I

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-nez v0, :cond_2

    .line 60
    const-string v0, "splitwin"

    const-string v1, "window exit splitmode, mark it needing layout."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 63
    :cond_2
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v1, v1, Lcom/android/server/wm/AppWindowToken;->splitMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->splitmode:I

    goto :goto_0
.end method
