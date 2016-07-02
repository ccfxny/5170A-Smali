.class public Lcom/meizu/widget/PreferenceItemLayout;
.super Landroid/widget/FrameLayout;
.source "PreferenceItemLayout.java"

# interfaces
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;
.implements Lcom/meizu/widget/ListDragShadowItem;


# instance fields
.field protected mContentBackground:Landroid/graphics/drawable/Drawable;

.field private mItemShadeRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/PreferenceItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-virtual {p0}, Lcom/meizu/widget/PreferenceItemLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xa020209

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 43
    .local v0, "cbg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/meizu/widget/PreferenceItemLayout;->setContentBackground(Landroid/graphics/drawable/Drawable;)V

    .line 45
    iget-object v1, p0, Lcom/meizu/widget/PreferenceItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/PreferenceItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 52
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/meizu/widget/PreferenceItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 53
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/meizu/widget/PreferenceItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 54
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/meizu/widget/PreferenceItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 55
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/meizu/widget/PreferenceItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 56
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 126
    iget-object v0, p0, Lcom/meizu/widget/PreferenceItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/PreferenceItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/meizu/widget/PreferenceItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/widget/PreferenceItemLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 129
    :cond_0
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 2
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    .line 134
    .local v0, "opaque":Z
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/meizu/widget/PreferenceItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/meizu/widget/PreferenceItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, p1}, Lcom/meizu/widget/PreferenceItemLayout;->applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V

    .line 137
    :cond_0
    return v0
.end method

.method public getContentBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/meizu/widget/PreferenceItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDragView()Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/PreferenceItemLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    .line 118
    iget-object v0, p0, Lcom/meizu/widget/PreferenceItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/meizu/widget/PreferenceItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 121
    :cond_0
    return-void
.end method

.method public needBackground()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/meizu/widget/PreferenceItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/meizu/widget/PreferenceItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/meizu/widget/PreferenceItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/meizu/widget/PreferenceItemLayout;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/widget/PreferenceItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/meizu/widget/PreferenceItemLayout;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/meizu/widget/PreferenceItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 147
    iget-object v0, p0, Lcom/meizu/widget/PreferenceItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 148
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 149
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v0, p0, Lcom/meizu/widget/PreferenceItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/PreferenceItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    .line 76
    :cond_0
    if-eqz p1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/meizu/widget/PreferenceItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/PreferenceItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public setContentBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "contentBackground"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/meizu/widget/PreferenceItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 85
    iget-object v0, p0, Lcom/meizu/widget/PreferenceItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/meizu/widget/PreferenceItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 87
    iget-object v0, p0, Lcom/meizu/widget/PreferenceItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/widget/PreferenceItemLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/meizu/widget/PreferenceItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    .line 92
    if-eqz p1, :cond_3

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/PreferenceItemLayout;->setWillNotDraw(Z)V

    .line 94
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 95
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/meizu/widget/PreferenceItemLayout;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 101
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/widget/PreferenceItemLayout;->requestLayout()V

    .line 102
    invoke-virtual {p0}, Lcom/meizu/widget/PreferenceItemLayout;->invalidate()V

    .line 104
    :cond_2
    return-void

    .line 99
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/PreferenceItemLayout;->setWillNotDraw(Z)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/PreferenceItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
