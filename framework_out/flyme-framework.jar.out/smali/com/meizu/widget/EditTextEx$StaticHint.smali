.class final Lcom/meizu/widget/EditTextEx$StaticHint;
.super Ljava/lang/Object;
.source "EditTextEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/EditTextEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StaticHint"
.end annotation


# static fields
.field private static final UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;


# instance fields
.field private mGravity:I

.field private mPaddingRect:Landroid/graphics/Rect;

.field private mStaticHintBoring:Landroid/text/BoringLayout$Metrics;

.field private mStaticHintLayout:Landroid/text/StaticLayout;

.field private mText:Ljava/lang/CharSequence;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 432
    new-instance v0, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v0}, Landroid/text/BoringLayout$Metrics;-><init>()V

    sput-object v0, Lcom/meizu/widget/EditTextEx$StaticHint;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    const/16 v0, 0x13

    iput v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mGravity:I

    .line 450
    sget-object v0, Lcom/meizu/widget/EditTextEx$StaticHint;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iput-object v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mStaticHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 453
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mPaddingRect:Landroid/graphics/Rect;

    .line 454
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextPaint:Landroid/text/TextPaint;

    .line 455
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/widget/EditTextEx$StaticHint;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/EditTextEx$StaticHint;

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getHintWidth()I

    move-result v0

    return v0
.end method

.method private getHintWidth()I
    .locals 5

    .prologue
    .line 477
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mText:Ljava/lang/CharSequence;

    .line 478
    .local v0, "hint":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 479
    const/4 v2, 0x0

    .line 497
    :cond_0
    :goto_0
    return v2

    .line 481
    :cond_1
    iget v2, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mWidth:I

    .line 482
    .local v2, "hintWidth":I
    if-gtz v2, :cond_0

    .line 483
    iget-object v3, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mStaticHintBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v0, v3, v4}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v1

    .line 485
    .local v1, "hintBoring":Landroid/text/BoringLayout$Metrics;
    if-eqz v1, :cond_2

    .line 486
    iput-object v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mStaticHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 489
    :cond_2
    if-eqz v1, :cond_3

    sget-object v3, Lcom/meizu/widget/EditTextEx$StaticHint;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v1, v3, :cond_4

    .line 490
    :cond_3
    iget-object v3, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v0, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v2, v3

    .line 495
    :goto_1
    iget-object v3, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mPaddingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mPaddingRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    goto :goto_0

    .line 492
    :cond_4
    iget v2, v1, Landroid/text/BoringLayout$Metrics;->width:I

    goto :goto_1
.end method


# virtual methods
.method public drawHint(Landroid/graphics/Canvas;[III)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "drawableState"    # [I
    .param p3, "defColor"    # I
    .param p4, "height"    # I

    .prologue
    .line 571
    iget-object v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mStaticHintLayout:Landroid/text/StaticLayout;

    if-nez v1, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx$StaticHint;->updateHint()V

    .line 573
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mStaticHintLayout:Landroid/text/StaticLayout;

    if-nez v1, :cond_1

    .line 597
    :goto_0
    return-void

    .line 576
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextColor:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_2

    .line 577
    iget-object v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, p3}, Landroid/text/TextPaint;->setColor(I)V

    .line 581
    :goto_1
    iget-object v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextPaint:Landroid/text/TextPaint;

    iput-object p2, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 582
    const/4 v0, 0x0

    .line 583
    .local v0, "dy":I
    iget v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    sparse-switch v1, :sswitch_data_0

    .line 593
    iget-object v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mPaddingRect:Landroid/graphics/Rect;

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 595
    :goto_2
    iget-object v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mPaddingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    int-to-float v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 596
    iget-object v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mStaticHintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 579
    .end local v0    # "dy":I
    :cond_2
    iget-object v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p2, p3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1

    .line 585
    .restart local v0    # "dy":I
    :sswitch_0
    iget-object v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mStaticHintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    sub-int v1, p4, v1

    shr-int/lit8 v0, v1, 0x1

    .line 586
    goto :goto_2

    .line 589
    :sswitch_1
    iget-object v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mStaticHintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    sub-int v1, p4, v1

    iget-object v2, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mPaddingRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v2

    .line 590
    goto :goto_2

    .line 583
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public getHintColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getHintGravity()I
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mGravity:I

    return v0
.end method

.method public getHintSize()I
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextSize:I

    return v0
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPadding()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mPaddingRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setHintColor(Landroid/content/res/ColorStateList;)Z
    .locals 1
    .param p1, "csl"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 523
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextColor:Landroid/content/res/ColorStateList;

    if-ne v0, p1, :cond_0

    .line 524
    const/4 v0, 0x0

    .line 526
    :goto_0
    return v0

    .line 525
    :cond_0
    iput-object p1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextColor:Landroid/content/res/ColorStateList;

    .line 526
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setHintGravity(I)Z
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 512
    iget v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mGravity:I

    if-ne v0, p1, :cond_0

    .line 513
    const/4 v0, 0x0

    .line 515
    :goto_0
    return v0

    .line 514
    :cond_0
    iput p1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mGravity:I

    .line 515
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setHintSize(I)Z
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 501
    iget v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextSize:I

    if-ne v0, p1, :cond_0

    .line 502
    const/4 v0, 0x0

    .line 504
    :goto_0
    return v0

    .line 503
    :cond_0
    iput p1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextSize:I

    .line 504
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setHintText(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 458
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mText:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    const/4 v0, 0x0

    .line 462
    :goto_0
    return v0

    .line 461
    :cond_0
    iput-object p1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mText:Ljava/lang/CharSequence;

    .line 462
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setHintWidth(I)Z
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 470
    iget v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mWidth:I

    if-ne v0, p1, :cond_0

    .line 471
    const/4 v0, 0x0

    .line 473
    :goto_0
    return v0

    .line 472
    :cond_0
    iput p1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mWidth:I

    .line 473
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPadding(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mPaddingRect:Landroid/graphics/Rect;

    .line 535
    return-void
.end method

.method public updateHint()V
    .locals 8

    .prologue
    .line 542
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    :goto_0
    return-void

    .line 547
    :cond_0
    iget v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mGravity:I

    and-int/lit8 v0, v0, 0x7

    sparse-switch v0, :sswitch_data_0

    .line 557
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 560
    .local v4, "alignment":Landroid/text/Layout$Alignment;
    :goto_1
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 561
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getHintWidth()I

    move-result v3

    iget-object v5, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mPaddingRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    iget-object v5, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mPaddingRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v5

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/meizu/widget/EditTextEx$StaticHint;->mStaticHintLayout:Landroid/text/StaticLayout;

    goto :goto_0

    .line 549
    .end local v4    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_0
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 550
    .restart local v4    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_1

    .line 553
    .end local v4    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_1
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 554
    .restart local v4    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_1

    .line 547
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method
