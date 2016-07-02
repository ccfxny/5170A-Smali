.class public Lcom/meizu/widget/ScrollPane;
.super Landroid/widget/LinearLayout;
.source "ScrollPane.java"


# static fields
.field private static final MAX_SETTLE_DURATION:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "ScrollPane"


# instance fields
.field private mHeaderLayout:Lcom/meizu/widget/HeaderLinearLayout;

.field private mLimits:[I

.field private mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingListener:Lcom/meizu/widget/PreferenceFrame$OnScrollingListener;

.field private mShadow:Landroid/graphics/drawable/Drawable;

.field private mShadowWidth:I

.field sInterpolator:Landroid/view/animation/DecelerateInterpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/meizu/widget/ScrollPane;->mLimits:[I

    .line 53
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/ScrollPane;->sInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 57
    new-instance v1, Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/meizu/widget/ScrollPane;->sInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, p1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/meizu/widget/ScrollPane;->mScroller:Landroid/widget/Scroller;

    .line 58
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/meizu/widget/ScrollPane;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 61
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/meizu/widget/ScrollPane;->mLimits:[I

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    aput v2, v1, v3

    .line 62
    iget-object v1, p0, Lcom/meizu/widget/ScrollPane;->mLimits:[I

    const/4 v2, 0x1

    aput v3, v1, v2

    .line 63
    return-void
.end method

.method private clampToScrollLimits(I)I
    .locals 3
    .param p1, "paramInt"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 195
    iget-object v0, p0, Lcom/meizu/widget/ScrollPane;->mLimits:[I

    aget v0, v0, v1

    if-ge p1, v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/meizu/widget/ScrollPane;->mLimits:[I

    aget p1, v0, v1

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/ScrollPane;->mLimits:[I

    aget v0, v0, v2

    if-gt p1, v0, :cond_1

    .line 199
    .end local p1    # "paramInt":I
    :goto_0
    return p1

    .restart local p1    # "paramInt":I
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/ScrollPane;->mLimits:[I

    aget p1, v0, v2

    goto :goto_0
.end method

.method private getWindowBackgroud()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollPane;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x1010054

    aput v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 76
    .local v1, "background":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    return v1
.end method

.method private setDefaultBackgroud(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "background"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 88
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    move v3, v1

    :goto_0
    if-eqz p1, :cond_2

    :goto_1
    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 91
    :cond_0
    return-void

    :cond_1
    move v3, v2

    .line 88
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private update(I)V
    .locals 1
    .param p1, "scrollX"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/meizu/widget/ScrollPane;->mScrollingListener:Lcom/meizu/widget/PreferenceFrame$OnScrollingListener;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/meizu/widget/ScrollPane;->mScrollingListener:Lcom/meizu/widget/PreferenceFrame$OnScrollingListener;

    invoke-interface {v0, p1}, Lcom/meizu/widget/PreferenceFrame$OnScrollingListener;->onScrolling(I)V

    .line 158
    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 5

    .prologue
    .line 137
    iget-object v4, p0, Lcom/meizu/widget/ScrollPane;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollPane;->getScrollX()I

    move-result v0

    .line 139
    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollPane;->getScrollY()I

    move-result v1

    .line 140
    .local v1, "oldY":I
    iget-object v4, p0, Lcom/meizu/widget/ScrollPane;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 141
    .local v2, "x":I
    iget-object v4, p0, Lcom/meizu/widget/ScrollPane;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 143
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 144
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/meizu/widget/ScrollPane;->scrollTo(II)V

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollPane;->postInvalidate()V

    .line 148
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_2
    invoke-super {p0}, Landroid/widget/LinearLayout;->computeScroll()V

    .line 149
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 211
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 213
    iget-object v1, p0, Lcom/meizu/widget/ScrollPane;->mShadow:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/meizu/widget/ScrollPane;->mShadowWidth:I

    if-lez v1, :cond_0

    .line 217
    iget v0, p0, Lcom/meizu/widget/ScrollPane;->mShadowWidth:I

    .line 224
    .local v0, "end":I
    iget-object v1, p0, Lcom/meizu/widget/ScrollPane;->mShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/widget/ScrollPane;->getHeight()I

    move-result v2

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 225
    iget-object v1, p0, Lcom/meizu/widget/ScrollPane;->mShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 227
    .end local v0    # "end":I
    :cond_0
    return-void
.end method

.method public getScrollRange()[I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/meizu/widget/ScrollPane;->mLimits:[I

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 98
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollPane;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollPane must has two children which are ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/ScrollPane;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/meizu/widget/ScrollPane;->getWindowBackgroud()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/widget/ScrollPane;->setDefaultBackgroud(Landroid/view/View;I)V

    .line 105
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/widget/ScrollPane;->getScrollX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 269
    const/4 v0, 0x1

    .line 271
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public scrollBy(I)V
    .locals 3
    .param p1, "deltaX"    # I

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollPane;->getScrollX()I

    move-result v1

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/meizu/widget/ScrollPane;->clampToScrollLimits(I)I

    move-result v0

    .line 166
    .local v0, "end":I
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollPane;->getScrollX()I

    move-result v1

    sub-int v1, v0, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/meizu/widget/ScrollPane;->scrollBy(II)V

    .line 167
    return-void
.end method

.method public scrollTo(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/meizu/widget/ScrollPane;->clampToScrollLimits(I)I

    move-result v0

    .line 175
    .local v0, "end":I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/widget/ScrollPane;->scrollTo(II)V

    .line 176
    return-void
.end method

.method public scrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/meizu/widget/ScrollPane;->update(I)V

    .line 185
    iget-object v0, p0, Lcom/meizu/widget/ScrollPane;->mHeaderLayout:Lcom/meizu/widget/HeaderLinearLayout;

    invoke-virtual {v0}, Lcom/meizu/widget/HeaderLinearLayout;->invalidate()V

    .line 186
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    .line 187
    return-void
.end method

.method public setHeaderLayout(Lcom/meizu/widget/HeaderLinearLayout;)V
    .locals 0
    .param p1, "headerLayout"    # Lcom/meizu/widget/HeaderLinearLayout;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/meizu/widget/ScrollPane;->mHeaderLayout:Lcom/meizu/widget/HeaderLinearLayout;

    .line 288
    return-void
.end method

.method public setOnScrollingListener(Lcom/meizu/widget/PreferenceFrame$OnScrollingListener;)V
    .locals 0
    .param p1, "l"    # Lcom/meizu/widget/PreferenceFrame$OnScrollingListener;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/meizu/widget/ScrollPane;->mScrollingListener:Lcom/meizu/widget/PreferenceFrame$OnScrollingListener;

    .line 280
    return-void
.end method

.method public setScrollDistance(I)V
    .locals 4
    .param p1, "distance"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lcom/meizu/widget/ScrollPane;->mLimits:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/meizu/widget/ScrollPane;->mLimits:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v2, p1

    aput v2, v0, v1

    .line 254
    return-void
.end method

.method public setShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/meizu/widget/ScrollPane;->mShadow:Landroid/graphics/drawable/Drawable;

    .line 235
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollPane;->invalidate()V

    .line 236
    return-void
.end method

.method public setShadowWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 243
    iput p1, p0, Lcom/meizu/widget/ScrollPane;->mShadowWidth:I

    .line 244
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollPane;->invalidate()V

    .line 245
    return-void
.end method

.method public smoothScrollBy(III)V
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/meizu/widget/ScrollPane;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/meizu/widget/ScrollPane;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/widget/ScrollPane;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 131
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollPane;->postInvalidateOnAnimation()V

    .line 132
    return-void
.end method

.method public smoothScrollTo(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/meizu/widget/ScrollPane;->clampToScrollLimits(I)I

    move-result p1

    .line 114
    invoke-virtual {p0}, Lcom/meizu/widget/ScrollPane;->getScrollX()I

    move-result v3

    sub-int v1, p1, v3

    .line 115
    .local v1, "dx":I
    iget-object v3, p0, Lcom/meizu/widget/ScrollPane;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalY()I

    move-result v3

    sub-int v2, p2, v3

    .line 116
    .local v2, "dy":I
    const/4 v0, 0x0

    .line 117
    .local v0, "duration":I
    mul-int/lit8 v3, v1, 0x2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xfa

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 118
    invoke-virtual {p0, v1, v2, v0}, Lcom/meizu/widget/ScrollPane;->smoothScrollBy(III)V

    .line 119
    return-void
.end method
