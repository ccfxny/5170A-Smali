.class public Lcom/meizu/widget/LockPasswordView;
.super Landroid/view/View;
.source "LockPasswordView.java"


# instance fields
.field private mCircleHollow:Landroid/graphics/drawable/Drawable;

.field private mCircleSize:I

.field private mCircleSolid:Landroid/graphics/drawable/Drawable;

.field private mCurNum:I

.field private mHollowVisible:Z

.field private mMaxNum:I

.field private padding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/LockPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    const v0, 0xa10002d

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/LockPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v9, 0x1

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput-boolean v9, p0, Lcom/meizu/widget/LockPasswordView;->mHollowVisible:Z

    .line 39
    const/16 v7, 0x19

    iput v7, p0, Lcom/meizu/widget/LockPasswordView;->padding:I

    .line 51
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0xa0e001f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Lcom/meizu/widget/LockPasswordView;->padding:I

    .line 52
    const/4 v6, 0x0

    .line 53
    .local v6, "solid":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 54
    .local v2, "hollow":Landroid/graphics/drawable/Drawable;
    iget v5, p0, Lcom/meizu/widget/LockPasswordView;->mCircleSize:I

    .line 55
    .local v5, "size":I
    sget-object v7, Lcom/flyme/internal/R$styleable;->LockPasswordView:[I

    const/4 v8, 0x0

    invoke-virtual {p1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    .line 58
    .local v4, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_5

    .line 59
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 60
    .local v1, "attr":I
    const/4 v7, 0x3

    if-ne v1, v7, :cond_1

    .line 61
    iget v7, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    .line 58
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :cond_1
    const/4 v7, 0x4

    if-ne v1, v7, :cond_2

    .line 63
    iget-boolean v7, p0, Lcom/meizu/widget/LockPasswordView;->mHollowVisible:Z

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/meizu/widget/LockPasswordView;->mHollowVisible:Z

    goto :goto_1

    .line 64
    :cond_2
    if-nez v1, :cond_3

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_1

    .line 66
    :cond_3
    if-ne v1, v9, :cond_4

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 68
    :cond_4
    const/4 v7, 0x2

    if-ne v1, v7, :cond_0

    .line 69
    iget v7, p0, Lcom/meizu/widget/LockPasswordView;->mCircleSize:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    goto :goto_1

    .line 72
    .end local v1    # "attr":I
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    if-eqz v6, :cond_6

    if-eqz v2, :cond_6

    .line 74
    invoke-virtual {p0, v6, v2, v5}, Lcom/meizu/widget/LockPasswordView;->setPasswordDrawablesAndSize(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    .line 75
    :cond_6
    return-void
.end method


# virtual methods
.method public getCurNum()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    return v0
.end method

.method public getMaxNum()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    return v0
.end method

.method public isHollowVisible()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/meizu/widget/LockPasswordView;->mHollowVisible:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 166
    iget-boolean v10, p0, Lcom/meizu/widget/LockPasswordView;->mHollowVisible:Z

    if-eqz v10, :cond_0

    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    .line 169
    .local v0, "N":I
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->getRight()I

    move-result v10

    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->getLeft()I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/meizu/widget/LockPasswordView;->mCircleSize:I

    mul-int/2addr v11, v0

    sub-int/2addr v10, v11

    div-int/lit8 v4, v10, 0x2

    .line 170
    .local v4, "left":I
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->getTop()I

    move-result v10

    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->getBottom()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, p0, Lcom/meizu/widget/LockPasswordView;->mCircleSize:I

    sub-int/2addr v10, v11

    div-int/lit8 v8, v10, 0x2

    .line 172
    .local v8, "top":I
    iget v10, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    if-lez v10, :cond_1

    .line 173
    iget-object v10, p0, Lcom/meizu/widget/LockPasswordView;->mCircleSolid:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 174
    .local v9, "w":I
    iget-object v10, p0, Lcom/meizu/widget/LockPasswordView;->mCircleSolid:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 175
    .local v1, "h":I
    iget v10, p0, Lcom/meizu/widget/LockPasswordView;->mCircleSize:I

    sub-int/2addr v10, v9

    shr-int/lit8 v5, v10, 0x1

    .line 176
    .local v5, "offX":I
    iget v10, p0, Lcom/meizu/widget/LockPasswordView;->mCircleSize:I

    sub-int/2addr v10, v1

    shr-int/lit8 v6, v10, 0x1

    .line 177
    .local v6, "offY":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v10, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    if-ge v2, v10, :cond_1

    .line 178
    iget v10, p0, Lcom/meizu/widget/LockPasswordView;->mCircleSize:I

    mul-int/2addr v10, v2

    add-int/2addr v10, v4

    add-int v3, v10, v5

    .line 179
    .local v3, "l":I
    add-int v7, v8, v6

    .line 180
    .local v7, "t":I
    iget-object v10, p0, Lcom/meizu/widget/LockPasswordView;->mCircleSolid:Landroid/graphics/drawable/Drawable;

    add-int v11, v3, v9

    add-int v12, v7, v1

    invoke-virtual {v10, v3, v7, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 181
    iget-object v10, p0, Lcom/meizu/widget/LockPasswordView;->mCircleSolid:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 166
    .end local v0    # "N":I
    .end local v1    # "h":I
    .end local v2    # "i":I
    .end local v3    # "l":I
    .end local v4    # "left":I
    .end local v5    # "offX":I
    .end local v6    # "offY":I
    .end local v7    # "t":I
    .end local v8    # "top":I
    .end local v9    # "w":I
    :cond_0
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    goto :goto_0

    .line 185
    .restart local v0    # "N":I
    .restart local v4    # "left":I
    .restart local v8    # "top":I
    :cond_1
    iget-boolean v10, p0, Lcom/meizu/widget/LockPasswordView;->mHollowVisible:Z

    if-eqz v10, :cond_2

    iget v10, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    iget v11, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    if-ge v10, v11, :cond_2

    .line 186
    iget-object v10, p0, Lcom/meizu/widget/LockPasswordView;->mCircleHollow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 187
    .restart local v9    # "w":I
    iget-object v10, p0, Lcom/meizu/widget/LockPasswordView;->mCircleHollow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 188
    .restart local v1    # "h":I
    iget v10, p0, Lcom/meizu/widget/LockPasswordView;->mCircleSize:I

    sub-int/2addr v10, v9

    shr-int/lit8 v5, v10, 0x1

    .line 189
    .restart local v5    # "offX":I
    iget v10, p0, Lcom/meizu/widget/LockPasswordView;->mCircleSize:I

    sub-int/2addr v10, v1

    shr-int/lit8 v6, v10, 0x1

    .line 190
    .restart local v6    # "offY":I
    iget v2, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    .restart local v2    # "i":I
    :goto_2
    iget v10, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    if-ge v2, v10, :cond_2

    .line 191
    iget v10, p0, Lcom/meizu/widget/LockPasswordView;->mCircleSize:I

    mul-int/2addr v10, v2

    add-int/2addr v10, v4

    add-int v3, v10, v5

    .line 192
    .restart local v3    # "l":I
    add-int v7, v8, v6

    .line 193
    .restart local v7    # "t":I
    iget-object v10, p0, Lcom/meizu/widget/LockPasswordView;->mCircleHollow:Landroid/graphics/drawable/Drawable;

    add-int v11, v3, v9

    add-int v12, v7, v1

    invoke-virtual {v10, v3, v7, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 194
    iget-object v10, p0, Lcom/meizu/widget/LockPasswordView;->mCircleHollow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 197
    .end local v1    # "h":I
    .end local v2    # "i":I
    .end local v3    # "l":I
    .end local v5    # "offX":I
    .end local v6    # "offY":I
    .end local v7    # "t":I
    .end local v9    # "w":I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->getSuggestedMinimumWidth()I

    move-result v2

    iget v3, p0, Lcom/meizu/widget/LockPasswordView;->mCircleSize:I

    iget v4, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    mul-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 202
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->getSuggestedMinimumHeight()I

    move-result v2

    iget v3, p0, Lcom/meizu/widget/LockPasswordView;->mCircleSize:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 203
    .local v0, "height":I
    invoke-static {v0, p2}, Lcom/meizu/widget/LockPasswordView;->getDefaultSize(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/meizu/widget/LockPasswordView;->setMeasuredDimension(II)V

    .line 205
    return-void
.end method

.method public setCircleHollowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "circleHollow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/meizu/widget/LockPasswordView;->mCircleHollow:Landroid/graphics/drawable/Drawable;

    .line 219
    return-void
.end method

.method public setCircleSolidDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "circleSolid"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/meizu/widget/LockPasswordView;->mCircleSolid:Landroid/graphics/drawable/Drawable;

    .line 212
    return-void
.end method

.method public setCurNum(I)Z
    .locals 1
    .param p1, "cur"    # I

    .prologue
    .line 106
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    if-gt p1, v0, :cond_1

    .line 107
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    if-eq v0, p1, :cond_0

    .line 108
    iput p1, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    .line 109
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->invalidate()V

    .line 111
    :cond_0
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHollowVisible(Z)V
    .locals 1
    .param p1, "vis"    # Z

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/meizu/widget/LockPasswordView;->mHollowVisible:Z

    if-eq v0, p1, :cond_0

    .line 128
    iput-boolean p1, p0, Lcom/meizu/widget/LockPasswordView;->mHollowVisible:Z

    .line 129
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->requestLayout()V

    .line 130
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->invalidate()V

    .line 132
    :cond_0
    return-void
.end method

.method public setMaxNum(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 81
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    if-eq v0, p1, :cond_1

    .line 82
    iput p1, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    .line 83
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    if-gez v0, :cond_2

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    .line 88
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->requestLayout()V

    .line 89
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->invalidate()V

    .line 91
    :cond_1
    return-void

    .line 85
    :cond_2
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    iget v1, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    if-le v0, v1, :cond_0

    .line 86
    iget v0, p0, Lcom/meizu/widget/LockPasswordView;->mMaxNum:I

    iput v0, p0, Lcom/meizu/widget/LockPasswordView;->mCurNum:I

    goto :goto_0
.end method

.method public setPasswordDrawablesAndSize(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .param p1, "solid"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hollow"    # Landroid/graphics/drawable/Drawable;
    .param p3, "size"    # I

    .prologue
    .line 145
    if-gtz p3, :cond_1

    .line 146
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 148
    .local v0, "circleSize":I
    iget-boolean v1, p0, Lcom/meizu/widget/LockPasswordView;->mHollowVisible:Z

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 153
    :cond_0
    iget v1, p0, Lcom/meizu/widget/LockPasswordView;->padding:I

    add-int p3, v0, v1

    .line 155
    .end local v0    # "circleSize":I
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/LockPasswordView;->mCircleSolid:Landroid/graphics/drawable/Drawable;

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Lcom/meizu/widget/LockPasswordView;->mCircleHollow:Landroid/graphics/drawable/Drawable;

    if-ne v1, p2, :cond_2

    iget v1, p0, Lcom/meizu/widget/LockPasswordView;->mCircleSize:I

    if-eq p3, v1, :cond_3

    .line 156
    :cond_2
    iput-object p1, p0, Lcom/meizu/widget/LockPasswordView;->mCircleSolid:Landroid/graphics/drawable/Drawable;

    .line 157
    iput-object p2, p0, Lcom/meizu/widget/LockPasswordView;->mCircleHollow:Landroid/graphics/drawable/Drawable;

    .line 158
    iput p3, p0, Lcom/meizu/widget/LockPasswordView;->mCircleSize:I

    .line 159
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->requestLayout()V

    .line 160
    invoke-virtual {p0}, Lcom/meizu/widget/LockPasswordView;->invalidate()V

    .line 162
    :cond_3
    return-void
.end method
