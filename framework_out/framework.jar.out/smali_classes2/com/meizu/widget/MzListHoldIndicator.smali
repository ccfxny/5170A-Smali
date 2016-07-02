.class public Lcom/meizu/widget/MzListHoldIndicator;
.super Ljava/lang/Object;
.source "MzListHoldIndicator.java"


# static fields
.field static final ALPHA_MAX:I = 0xff

.field static final FADE_DURATION:J = 0xc8L

.field private static final STATE_GONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExtraOffset:I

.field private mHoldDrawable:Landroid/graphics/drawable/Drawable;

.field private mHoldDrawableAlpha:I

.field private mHoldDrawableHeight:I

.field private mHoldDrawableWidth:I

.field private mPreHoldDrawableAlpha:I

.field private mTopOffset:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v3, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawableAlpha:I

    .line 34
    iput v3, p0, Lcom/meizu/widget/MzListHoldIndicator;->mPreHoldDrawableAlpha:I

    .line 37
    iput-object p2, p0, Lcom/meizu/widget/MzListHoldIndicator;->mView:Landroid/view/View;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xa02018c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawable:Landroid/graphics/drawable/Drawable;

    .line 41
    iget-object v0, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xa0e008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/MzListHoldIndicator;->mTopOffset:I

    .line 47
    iget-object v0, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawableWidth:I

    .line 48
    iget-object v0, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawableHeight:I

    .line 50
    iput-object p1, p0, Lcom/meizu/widget/MzListHoldIndicator;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 54
    iget v2, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawableAlpha:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/widget/MzListHoldIndicator;->mView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget v2, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawableAlpha:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawableAlpha:I

    const/16 v3, 0xff

    if-gt v2, v3, :cond_2

    iget v2, p0, Lcom/meizu/widget/MzListHoldIndicator;->mPreHoldDrawableAlpha:I

    iget v3, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawableAlpha:I

    if-eq v2, v3, :cond_2

    .line 57
    iget-object v2, p0, Lcom/meizu/widget/MzListHoldIndicator;->mView:Landroid/view/View;

    const/4 v3, 0x0

    iget v4, p0, Lcom/meizu/widget/MzListHoldIndicator;->mTopOffset:I

    iget-object v5, p0, Lcom/meizu/widget/MzListHoldIndicator;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/meizu/widget/MzListHoldIndicator;->mTopOffset:I

    iget v7, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawableHeight:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 60
    :cond_2
    iget-object v2, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawableAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 61
    iget-object v2, p0, Lcom/meizu/widget/MzListHoldIndicator;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawableWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 63
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 64
    .local v0, "restoreCount":I
    iget-object v2, p0, Lcom/meizu/widget/MzListHoldIndicator;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    add-int/2addr v2, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/meizu/widget/MzListHoldIndicator;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    iget v4, p0, Lcom/meizu/widget/MzListHoldIndicator;->mExtraOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/meizu/widget/MzListHoldIndicator;->mTopOffset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 65
    iget-object v2, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 66
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawableAlpha:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public registerObserver()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public setExtraOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/meizu/widget/MzListHoldIndicator;->mExtraOffset:I

    .line 108
    return-void
.end method

.method public setHoldDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "holdDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 151
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 153
    iput-object p1, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawable:Landroid/graphics/drawable/Drawable;

    .line 154
    iget-object v0, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 156
    iget-object v0, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawableWidth:I

    .line 157
    iget-object v0, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawableHeight:I

    .line 159
    :cond_0
    return-void
.end method

.method public setHoldDrawableAlpha(F)V
    .locals 1
    .param p1, "delta"    # F

    .prologue
    .line 141
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 142
    const/4 p1, 0x0

    .line 146
    :cond_0
    :goto_0
    iget v0, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawableAlpha:I

    iput v0, p0, Lcom/meizu/widget/MzListHoldIndicator;->mPreHoldDrawableAlpha:I

    .line 147
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/widget/MzListHoldIndicator;->mHoldDrawableAlpha:I

    .line 148
    return-void

    .line 143
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 144
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 93
    if-nez p1, :cond_1

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MzListHoldIndicator;->setHoldDrawableAlpha(F)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 97
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MzListHoldIndicator;->setHoldDrawableAlpha(F)V

    goto :goto_0
.end method

.method public show()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public unRegisterObserver()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method
