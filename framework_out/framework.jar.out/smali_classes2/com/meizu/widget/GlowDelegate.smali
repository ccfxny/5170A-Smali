.class public Lcom/meizu/widget/GlowDelegate;
.super Ljava/lang/Object;
.source "GlowDelegate.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GlowDelegate"


# instance fields
.field final BUTTON_QUIESCENT_ALPHA:F

.field final GLOW_MAX_SCALE_FACTOR:F

.field final GLOW_MIN_SCALE_FACTOR:F

.field private mContext:Landroid/content/Context;

.field mDrawingAlpha:F

.field mGlowAlpha:F

.field mGlowBG:Landroid/graphics/drawable/Drawable;

.field private mGlowDrawables:[I

.field private mGlowDrawablesId:[I

.field mGlowHeight:I

.field mGlowScale:F

.field mGlowWidth:I

.field private mPressed:Z

.field mPressedAnim:Landroid/animation/AnimatorSet;

.field mRect:Landroid/graphics/RectF;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegateView"    # Landroid/view/View;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/GlowDelegate;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegateView"    # Landroid/view/View;
    .param p3, "glowBackgrond"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const v11, 0x3f333333    # 0.7f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v6, p0, Lcom/meizu/widget/GlowDelegate;->mPressed:Z

    .line 33
    iput v8, p0, Lcom/meizu/widget/GlowDelegate;->mGlowAlpha:F

    iput v9, p0, Lcom/meizu/widget/GlowDelegate;->mGlowScale:F

    iput v9, p0, Lcom/meizu/widget/GlowDelegate;->mDrawingAlpha:F

    .line 34
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v8, v8, v8, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v7, p0, Lcom/meizu/widget/GlowDelegate;->mRect:Landroid/graphics/RectF;

    .line 36
    iput v9, p0, Lcom/meizu/widget/GlowDelegate;->GLOW_MAX_SCALE_FACTOR:F

    .line 37
    iput v11, p0, Lcom/meizu/widget/GlowDelegate;->BUTTON_QUIESCENT_ALPHA:F

    .line 38
    const v7, 0x3f3851ec    # 0.72f

    iput v7, p0, Lcom/meizu/widget/GlowDelegate;->GLOW_MIN_SCALE_FACTOR:F

    .line 42
    const/4 v7, 0x6

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    iput-object v7, p0, Lcom/meizu/widget/GlowDelegate;->mGlowDrawablesId:[I

    .line 50
    const/4 v7, 0x6

    new-array v7, v7, [I

    fill-array-data v7, :array_1

    iput-object v7, p0, Lcom/meizu/widget/GlowDelegate;->mGlowDrawables:[I

    .line 64
    iput-object p2, p0, Lcom/meizu/widget/GlowDelegate;->mView:Landroid/view/View;

    .line 65
    iput-object p1, p0, Lcom/meizu/widget/GlowDelegate;->mContext:Landroid/content/Context;

    .line 67
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 68
    .local v5, "typedValue":Landroid/util/TypedValue;
    iget-object v7, p0, Lcom/meizu/widget/GlowDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "mzThemeColor"

    const-string v9, "attr"

    iget-object v10, p0, Lcom/meizu/widget/GlowDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 70
    .local v4, "id":I
    iget-object v7, p0, Lcom/meizu/widget/GlowDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v4, v5, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, v5, Landroid/util/TypedValue;->data:I

    if-eqz v7, :cond_3

    .line 71
    .local v2, "got":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 72
    if-nez p3, :cond_5

    .line 73
    iget-object v6, p0, Lcom/meizu/widget/GlowDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 74
    .local v0, "color":I
    const-string v6, "GlowDelegate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GlowDelegate color is #0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v6, p0, Lcom/meizu/widget/GlowDelegate;->mGlowDrawablesId:[I

    array-length v6, v6

    if-ge v3, v6, :cond_0

    .line 76
    iget-object v6, p0, Lcom/meizu/widget/GlowDelegate;->mGlowDrawablesId:[I

    aget v1, v6, v3

    .line 77
    .local v1, "glowId":I
    if-ne v1, v0, :cond_4

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/meizu/widget/GlowDelegate;->mGlowDrawables:[I

    aget v7, v7, v3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    .line 86
    .end local v0    # "color":I
    .end local v1    # "glowId":I
    .end local v3    # "i":I
    :cond_0
    :goto_2
    iget-object v6, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_1

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0xa02011a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    .line 90
    :cond_1
    iget-object v6, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    .line 91
    invoke-virtual {p0, v11}, Lcom/meizu/widget/GlowDelegate;->setDrawingAlpha(F)V

    .line 92
    iget-object v6, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iput v6, p0, Lcom/meizu/widget/GlowDelegate;->mGlowWidth:I

    .line 93
    iget-object v6, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    iput v6, p0, Lcom/meizu/widget/GlowDelegate;->mGlowHeight:I

    .line 95
    :cond_2
    return-void

    .end local v2    # "got":Z
    :cond_3
    move v2, v6

    .line 70
    goto :goto_0

    .line 75
    .restart local v0    # "color":I
    .restart local v1    # "glowId":I
    .restart local v2    # "got":Z
    .restart local v3    # "i":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 82
    .end local v0    # "color":I
    .end local v1    # "glowId":I
    .end local v3    # "i":I
    :cond_5
    instance-of v6, p3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_0

    .line 83
    iput-object p3, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 42
    nop

    :array_0
    .array-data 4
        -0x282bc
        -0x115ced
        -0xcd5a19
        -0x15adba
        -0xbc4a95
        -0xa9ced
    .end array-data

    .line 50
    :array_1
    .array-data 4
        0xa02011b
        0xa02011c
        0xa02011d
        0xa02011e
        0xa02011f
        0xa020120
    .end array-data
.end method

.method private invalidate()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 170
    return-void
.end method


# virtual methods
.method public GlowBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iput-object p1, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    .line 104
    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p0, v0}, Lcom/meizu/widget/GlowDelegate;->setDrawingAlpha(F)V

    .line 105
    iget-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/GlowDelegate;->mGlowWidth:I

    .line 106
    iget-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/GlowDelegate;->mGlowHeight:I

    .line 108
    :cond_0
    return-void
.end method

.method public getDrawingAlpha()F
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/meizu/widget/GlowDelegate;->mDrawingAlpha:F

    goto :goto_0
.end method

.method public getGlowAlpha()F
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/meizu/widget/GlowDelegate;->mGlowAlpha:F

    goto :goto_0
.end method

.method public getGlowScale()F
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 174
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/meizu/widget/GlowDelegate;->mGlowScale:F

    goto :goto_0
.end method

.method public invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "childBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 284
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1    # "view":Landroid/view/View;
    check-cast p1, Landroid/view/View;

    .line 286
    .restart local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 287
    iget v0, p2, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p2, Landroid/graphics/RectF;->top:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    iget v2, p2, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 292
    :cond_0
    return-void
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/meizu/widget/GlowDelegate;->mPressed:Z

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mPressedAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mPressedAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mPressedAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 301
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/GlowDelegate;->setGlowAlpha(F)V

    .line 302
    const v0, 0x3f3851ec    # 0.72f

    invoke-virtual {p0, v0}, Lcom/meizu/widget/GlowDelegate;->setGlowScale(F)V

    .line 304
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x3f000000    # 0.5f

    .line 111
    iget-object v6, p0, Lcom/meizu/widget/GlowDelegate;->mPressedAnim:Landroid/animation/AnimatorSet;

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/meizu/widget/GlowDelegate;->mPressed:Z

    if-eqz v6, :cond_1

    .line 112
    :cond_0
    iget-object v6, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 114
    iget-object v6, p0, Lcom/meizu/widget/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 115
    .local v5, "w":I
    iget-object v6, p0, Lcom/meizu/widget/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 120
    .local v2, "h":I
    iget v1, p0, Lcom/meizu/widget/GlowDelegate;->mGlowWidth:I

    .line 121
    .local v1, "drawW":I
    iget v0, p0, Lcom/meizu/widget/GlowDelegate;->mGlowHeight:I

    .line 122
    .local v0, "drawH":I
    sub-int v6, v1, v5

    div-int/lit8 v4, v6, 0x2

    .line 123
    .local v4, "marginWidth":I
    sub-int v6, v0, v2

    div-int/lit8 v3, v6, 0x2

    .line 129
    .local v3, "marginHeight":I
    iget v6, p0, Lcom/meizu/widget/GlowDelegate;->mGlowScale:F

    iget v7, p0, Lcom/meizu/widget/GlowDelegate;->mGlowScale:F

    int-to-float v8, v5

    mul-float/2addr v8, v10

    int-to-float v9, v2

    mul-float/2addr v9, v10

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 133
    iget-object v6, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    neg-int v7, v4

    neg-int v8, v3

    sub-int v9, v1, v4

    sub-int v10, v0, v3

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 134
    iget-object v6, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/meizu/widget/GlowDelegate;->mDrawingAlpha:F

    iget v8, p0, Lcom/meizu/widget/GlowDelegate;->mGlowAlpha:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 135
    iget-object v6, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 137
    iget-object v6, p0, Lcom/meizu/widget/GlowDelegate;->mRect:Landroid/graphics/RectF;

    int-to-float v7, v5

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 138
    iget-object v6, p0, Lcom/meizu/widget/GlowDelegate;->mRect:Landroid/graphics/RectF;

    int-to-float v7, v2

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 141
    .end local v0    # "drawH":I
    .end local v1    # "drawW":I
    .end local v2    # "h":I
    .end local v3    # "marginHeight":I
    .end local v4    # "marginWidth":I
    .end local v5    # "w":I
    :cond_1
    return-void
.end method

.method public setDrawingAlpha(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 149
    iget-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_0
    iput p1, p0, Lcom/meizu/widget/GlowDelegate;->mDrawingAlpha:F

    goto :goto_0
.end method

.method public setGlowAlpha(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 163
    iget-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    iput p1, p0, Lcom/meizu/widget/GlowDelegate;->mGlowAlpha:F

    .line 165
    invoke-direct {p0}, Lcom/meizu/widget/GlowDelegate;->invalidate()V

    goto :goto_0
.end method

.method public setGlowScale(F)V
    .locals 8
    .param p1, "x"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 178
    iget-object v4, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iput p1, p0, Lcom/meizu/widget/GlowDelegate;->mGlowScale:F

    .line 180
    iget-object v4, p0, Lcom/meizu/widget/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 181
    .local v3, "w":F
    iget-object v4, p0, Lcom/meizu/widget/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v0, v4

    .line 202
    .local v0, "h":F
    iget v4, p0, Lcom/meizu/widget/GlowDelegate;->mGlowWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/meizu/widget/GlowDelegate;->mGlowScale:F

    mul-float/2addr v4, v5

    sub-float/2addr v4, v3

    div-float/2addr v4, v7

    add-float v1, v4, v6

    .line 203
    .local v1, "rx":F
    iget v4, p0, Lcom/meizu/widget/GlowDelegate;->mGlowHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/meizu/widget/GlowDelegate;->mGlowScale:F

    mul-float/2addr v4, v5

    sub-float/2addr v4, v0

    div-float/2addr v4, v7

    add-float v2, v4, v6

    .line 213
    .local v2, "ry":F
    iget-object v4, p0, Lcom/meizu/widget/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 214
    iget-object v4, p0, Lcom/meizu/widget/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 7
    .param p1, "pressed"    # Z

    .prologue
    const v3, 0x3f333333    # 0.7f

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 219
    iget-object v1, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 220
    invoke-virtual {p0}, Lcom/meizu/widget/GlowDelegate;->isPressed()Z

    move-result v1

    if-eq p1, v1, :cond_3

    .line 221
    iget-object v1, p0, Lcom/meizu/widget/GlowDelegate;->mPressedAnim:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/widget/GlowDelegate;->mPressedAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/meizu/widget/GlowDelegate;->mPressedAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 224
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mPressedAnim:Landroid/animation/AnimatorSet;

    .line 225
    .local v0, "as":Landroid/animation/AnimatorSet;
    if-eqz p1, :cond_4

    .line 226
    iget v1, p0, Lcom/meizu/widget/GlowDelegate;->mGlowScale:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 227
    iput v2, p0, Lcom/meizu/widget/GlowDelegate;->mGlowScale:F

    .line 228
    :cond_1
    iget v1, p0, Lcom/meizu/widget/GlowDelegate;->mGlowAlpha:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    .line 229
    iput v3, p0, Lcom/meizu/widget/GlowDelegate;->mGlowAlpha:F

    .line 231
    :cond_2
    invoke-virtual {p0, v2}, Lcom/meizu/widget/GlowDelegate;->setDrawingAlpha(F)V

    .line 232
    invoke-virtual {p0, v2}, Lcom/meizu/widget/GlowDelegate;->setGlowScale(F)V

    .line 233
    invoke-virtual {p0, v2}, Lcom/meizu/widget/GlowDelegate;->setGlowAlpha(F)V

    .line 252
    :goto_0
    new-instance v1, Lcom/meizu/widget/GlowDelegate$1;

    invoke-direct {v1, p0}, Lcom/meizu/widget/GlowDelegate$1;-><init>(Lcom/meizu/widget/GlowDelegate;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 275
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 279
    .end local v0    # "as":Landroid/animation/AnimatorSet;
    :cond_3
    iput-boolean p1, p0, Lcom/meizu/widget/GlowDelegate;->mPressed:Z

    .line 280
    invoke-direct {p0}, Lcom/meizu/widget/GlowDelegate;->invalidate()V

    .line 281
    return-void

    .line 244
    .restart local v0    # "as":Landroid/animation/AnimatorSet;
    :cond_4
    invoke-virtual {p0, v2}, Lcom/meizu/widget/GlowDelegate;->setDrawingAlpha(F)V

    .line 245
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const-string v2, "glowAlpha"

    new-array v3, v6, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "glowScale"

    new-array v3, v6, [F

    const v4, 0x3f3851ec    # 0.72f

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 250
    const-wide/16 v2, 0x1a0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_0
.end method
