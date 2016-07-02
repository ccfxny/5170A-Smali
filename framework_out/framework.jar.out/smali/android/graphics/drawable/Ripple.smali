.class Landroid/graphics/drawable/Ripple;
.super Ljava/lang/Object;
.source "Ripple.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/Ripple$LogInterpolator;
    }
.end annotation


# static fields
.field private static final DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final GLOBAL_SPEED:F = 1.0f

.field private static final LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final RIPPLE_ENTER_DELAY:J = 0x50L

.field private static final WAVE_OPACITY_DECAY_VELOCITY:F = 3.0f

.field private static final WAVE_TOUCH_DOWN_ACCELERATION:F = 1024.0f

.field private static final WAVE_TOUCH_UP_ACCELERATION:F = 3400.0f


# instance fields
.field private mAnimOpacity:Landroid/animation/ObjectAnimator;

.field private mAnimRadius:Landroid/animation/ObjectAnimator;

.field private mAnimX:Landroid/animation/ObjectAnimator;

.field private mAnimY:Landroid/animation/ObjectAnimator;

.field private final mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mBounds:Landroid/graphics/Rect;

.field private mCanUseHardware:Z

.field private mCanceled:Z

.field private mClampedStartingX:F

.field private mClampedStartingY:F

.field private mDensity:F

.field private mHardwareAnimating:Z

.field private mHasMaxRadius:Z

.field private mHasPendingHardwareExit:Z

.field private mOpacity:F

.field private mOuterRadius:F

.field private mOuterX:F

.field private mOuterY:F

.field private final mOwner:Landroid/graphics/drawable/RippleDrawable;

.field private mPendingOpacityDuration:I

.field private mPendingRadiusDuration:I

.field private mPropPaint:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private mPropRadius:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPropX:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPropY:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/RenderNodeAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mStartFromExitAnimation:Ljava/lang/Boolean;

.field private mStartingX:F

.field private mStartingY:F

.field private mTempPaint:Landroid/graphics/Paint;

.field private mTweenRadius:F

.field private mTweenX:F

.field private mTweenY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/graphics/drawable/Ripple;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 39
    new-instance v0, Landroid/graphics/drawable/Ripple$LogInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Ripple$LogInterpolator;-><init>(Landroid/graphics/drawable/Ripple$1;)V

    sput-object v0, Landroid/graphics/drawable/Ripple;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;FF)V
    .locals 2
    .param p1, "owner"    # Landroid/graphics/drawable/RippleDrawable;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "startingX"    # F
    .param p4, "startingY"    # F

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/Ripple;->mRunningAnimations:Ljava/util/ArrayList;

    .line 84
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/graphics/drawable/Ripple;->mOpacity:F

    .line 89
    iput v1, p0, Landroid/graphics/drawable/Ripple;->mTweenRadius:F

    .line 90
    iput v1, p0, Landroid/graphics/drawable/Ripple;->mTweenX:F

    .line 91
    iput v1, p0, Landroid/graphics/drawable/Ripple;->mTweenY:F

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/Ripple;->mStartFromExitAnimation:Ljava/lang/Boolean;

    .line 589
    new-instance v0, Landroid/graphics/drawable/Ripple$1;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/Ripple$1;-><init>(Landroid/graphics/drawable/Ripple;)V

    iput-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 124
    iput-object p1, p0, Landroid/graphics/drawable/Ripple;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    .line 125
    iput-object p2, p0, Landroid/graphics/drawable/Ripple;->mBounds:Landroid/graphics/Rect;

    .line 127
    iput p3, p0, Landroid/graphics/drawable/Ripple;->mStartingX:F

    .line 128
    iput p4, p0, Landroid/graphics/drawable/Ripple;->mStartingY:F

    .line 129
    return-void
.end method

.method static synthetic access$100(Landroid/graphics/drawable/Ripple;)V
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/Ripple;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/graphics/drawable/Ripple;->removeSelf()V

    return-void
.end method

.method private cancelHardwareAnimations(Z)V
    .locals 6
    .param p1, "jumpToEnd"    # Z

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 552
    iget-object v2, p0, Landroid/graphics/drawable/Ripple;->mRunningAnimations:Ljava/util/ArrayList;

    .line 553
    .local v2, "runningAnimations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RenderNodeAnimator;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 554
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 555
    if-eqz p1, :cond_0

    .line 556
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/RenderNodeAnimator;

    invoke-virtual {v3}, Landroid/view/RenderNodeAnimator;->end()V

    .line 554
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 558
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/RenderNodeAnimator;

    invoke-virtual {v3}, Landroid/view/RenderNodeAnimator;->cancel()V

    goto :goto_1

    .line 561
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 563
    iget-boolean v3, p0, Landroid/graphics/drawable/Ripple;->mHasPendingHardwareExit:Z

    if-eqz v3, :cond_2

    .line 565
    iput-boolean v5, p0, Landroid/graphics/drawable/Ripple;->mHasPendingHardwareExit:Z

    .line 567
    if-eqz p1, :cond_2

    .line 568
    const/4 v3, 0x0

    iput v3, p0, Landroid/graphics/drawable/Ripple;->mOpacity:F

    .line 569
    iput v4, p0, Landroid/graphics/drawable/Ripple;->mTweenX:F

    .line 570
    iput v4, p0, Landroid/graphics/drawable/Ripple;->mTweenY:F

    .line 571
    iput v4, p0, Landroid/graphics/drawable/Ripple;->mTweenRadius:F

    .line 575
    :cond_2
    iput-boolean v5, p0, Landroid/graphics/drawable/Ripple;->mHardwareAnimating:Z

    .line 576
    return-void
.end method

.method private cancelSoftwareAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 527
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 529
    iput-object v1, p0, Landroid/graphics/drawable/Ripple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    .line 532
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimOpacity:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimOpacity:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 534
    iput-object v1, p0, Landroid/graphics/drawable/Ripple;->mAnimOpacity:Landroid/animation/ObjectAnimator;

    .line 537
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimX:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 538
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimX:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 539
    iput-object v1, p0, Landroid/graphics/drawable/Ripple;->mAnimX:Landroid/animation/ObjectAnimator;

    .line 542
    :cond_2
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimY:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 543
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimY:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 544
    iput-object v1, p0, Landroid/graphics/drawable/Ripple;->mAnimY:Landroid/animation/ObjectAnimator;

    .line 546
    :cond_3
    return-void
.end method

.method private clampStartingPosition()V
    .locals 12

    .prologue
    .line 153
    iget-object v7, p0, Landroid/graphics/drawable/Ripple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    .line 154
    .local v2, "cX":F
    iget-object v7, p0, Landroid/graphics/drawable/Ripple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    .line 155
    .local v3, "cY":F
    iget v7, p0, Landroid/graphics/drawable/Ripple;->mStartingX:F

    sub-float v4, v7, v2

    .line 156
    .local v4, "dX":F
    iget v7, p0, Landroid/graphics/drawable/Ripple;->mStartingY:F

    sub-float v5, v7, v3

    .line 157
    .local v5, "dY":F
    iget v6, p0, Landroid/graphics/drawable/Ripple;->mOuterRadius:F

    .line 158
    .local v6, "r":F
    mul-float v7, v4, v4

    mul-float v8, v5, v5

    add-float/2addr v7, v8

    mul-float v8, v6, v6

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 160
    float-to-double v8, v5

    float-to-double v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 161
    .local v0, "angle":D
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    float-to-double v10, v6

    mul-double/2addr v8, v10

    double-to-float v7, v8

    add-float/2addr v7, v2

    iput v7, p0, Landroid/graphics/drawable/Ripple;->mClampedStartingX:F

    .line 162
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    float-to-double v10, v6

    mul-double/2addr v8, v10

    double-to-float v7, v8

    add-float/2addr v7, v3

    iput v7, p0, Landroid/graphics/drawable/Ripple;->mClampedStartingY:F

    .line 167
    .end local v0    # "angle":D
    :goto_0
    return-void

    .line 164
    :cond_0
    iget v7, p0, Landroid/graphics/drawable/Ripple;->mStartingX:F

    iput v7, p0, Landroid/graphics/drawable/Ripple;->mClampedStartingX:F

    .line 165
    iget v7, p0, Landroid/graphics/drawable/Ripple;->mStartingY:F

    iput v7, p0, Landroid/graphics/drawable/Ripple;->mClampedStartingY:F

    goto :goto_0
.end method

.method private createPendingHardwareExit(II)V
    .locals 1
    .param p1, "radiusDuration"    # I
    .param p2, "opacityDuration"    # I

    .prologue
    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/Ripple;->mHasPendingHardwareExit:Z

    .line 375
    iput p1, p0, Landroid/graphics/drawable/Ripple;->mPendingRadiusDuration:I

    .line 376
    iput p2, p0, Landroid/graphics/drawable/Ripple;->mPendingOpacityDuration:I

    .line 379
    invoke-direct {p0}, Landroid/graphics/drawable/Ripple;->invalidateSelf()V

    .line 380
    return-void
.end method

.method private drawHardware(Landroid/view/HardwareCanvas;Landroid/graphics/Paint;)Z
    .locals 4
    .param p1, "c"    # Landroid/view/HardwareCanvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 250
    iget-boolean v0, p0, Landroid/graphics/drawable/Ripple;->mHasPendingHardwareExit:Z

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/Ripple;->cancelHardwareAnimations(Z)V

    .line 252
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/Ripple;->startPendingHardwareExit(Landroid/view/HardwareCanvas;Landroid/graphics/Paint;)V

    .line 255
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mPropX:Landroid/graphics/CanvasProperty;

    iget-object v1, p0, Landroid/graphics/drawable/Ripple;->mPropY:Landroid/graphics/CanvasProperty;

    iget-object v2, p0, Landroid/graphics/drawable/Ripple;->mPropRadius:Landroid/graphics/CanvasProperty;

    iget-object v3, p0, Landroid/graphics/drawable/Ripple;->mPropPaint:Landroid/graphics/CanvasProperty;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/HardwareCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method private drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 9
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v8, 0x0

    .line 261
    const/4 v1, 0x0

    .line 263
    .local v1, "hasContent":Z
    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    .line 264
    .local v2, "paintAlpha":I
    int-to-float v6, v2

    iget v7, p0, Landroid/graphics/drawable/Ripple;->mOpacity:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v0, v6

    .line 265
    .local v0, "alpha":I
    iget v6, p0, Landroid/graphics/drawable/Ripple;->mOuterRadius:F

    iget v7, p0, Landroid/graphics/drawable/Ripple;->mTweenRadius:F

    invoke-static {v8, v6, v7}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    .line 266
    .local v3, "radius":F
    if-lez v0, :cond_0

    cmpl-float v6, v3, v8

    if-lez v6, :cond_0

    .line 267
    iget v6, p0, Landroid/graphics/drawable/Ripple;->mClampedStartingX:F

    iget-object v7, p0, Landroid/graphics/drawable/Ripple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/graphics/drawable/Ripple;->mOuterX:F

    iget v8, p0, Landroid/graphics/drawable/Ripple;->mTweenX:F

    invoke-static {v6, v7, v8}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    .line 269
    .local v4, "x":F
    iget v6, p0, Landroid/graphics/drawable/Ripple;->mClampedStartingY:F

    iget-object v7, p0, Landroid/graphics/drawable/Ripple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/graphics/drawable/Ripple;->mOuterY:F

    iget v8, p0, Landroid/graphics/drawable/Ripple;->mTweenY:F

    invoke-static {v6, v7, v8}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v5

    .line 271
    .local v5, "y":F
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 272
    invoke-virtual {p1, v4, v5, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 273
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 274
    const/4 v1, 0x1

    .line 277
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_0
    return v1
.end method

.method private endSoftwareAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 453
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 455
    iput-object v1, p0, Landroid/graphics/drawable/Ripple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    .line 458
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimOpacity:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimOpacity:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 460
    iput-object v1, p0, Landroid/graphics/drawable/Ripple;->mAnimOpacity:Landroid/animation/ObjectAnimator;

    .line 463
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimX:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 464
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimX:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 465
    iput-object v1, p0, Landroid/graphics/drawable/Ripple;->mAnimX:Landroid/animation/ObjectAnimator;

    .line 468
    :cond_2
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimY:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 469
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimY:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 470
    iput-object v1, p0, Landroid/graphics/drawable/Ripple;->mAnimY:Landroid/animation/ObjectAnimator;

    .line 472
    :cond_3
    return-void
.end method

.method private exitSoftware(II)V
    .locals 9
    .param p1, "radiusDuration"    # I
    .param p2, "opacityDuration"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 483
    const-string/jumbo v4, "radiusGravity"

    new-array v5, v7, [F

    aput v6, v5, v8

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 484
    .local v1, "radiusAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 485
    int-to-long v4, p1

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 486
    sget-object v4, Landroid/graphics/drawable/Ripple;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 488
    const-string/jumbo v4, "xGravity"

    new-array v5, v7, [F

    aput v6, v5, v8

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 489
    .local v2, "xAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 490
    int-to-long v4, p1

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 491
    sget-object v4, Landroid/graphics/drawable/Ripple;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 493
    const-string/jumbo v4, "yGravity"

    new-array v5, v7, [F

    aput v6, v5, v8

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 494
    .local v3, "yAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 495
    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 496
    sget-object v4, Landroid/graphics/drawable/Ripple;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 498
    const-string/jumbo v4, "opacity"

    new-array v5, v7, [F

    const/4 v6, 0x0

    aput v6, v5, v8

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 499
    .local v0, "opacityAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 500
    int-to-long v4, p2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 501
    sget-object v4, Landroid/graphics/drawable/Ripple;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 502
    iget-object v4, p0, Landroid/graphics/drawable/Ripple;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 504
    iput-object v1, p0, Landroid/graphics/drawable/Ripple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    .line 505
    iput-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimOpacity:Landroid/animation/ObjectAnimator;

    .line 506
    iput-object v2, p0, Landroid/graphics/drawable/Ripple;->mAnimX:Landroid/animation/ObjectAnimator;

    .line 507
    iput-object v3, p0, Landroid/graphics/drawable/Ripple;->mAnimY:Landroid/animation/ObjectAnimator;

    .line 509
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 510
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 511
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 512
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 513
    return-void
.end method

.method private getTempPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 1
    .param p1, "original"    # Landroid/graphics/Paint;

    .prologue
    .line 475
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mTempPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 476
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/Ripple;->mTempPaint:Landroid/graphics/Paint;

    .line 478
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 479
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mTempPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private invalidateSelf()V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    .line 587
    return-void
.end method

.method private removeSelf()V
    .locals 1

    .prologue
    .line 580
    iget-boolean v0, p0, Landroid/graphics/drawable/Ripple;->mCanceled:Z

    if-nez v0, :cond_0

    .line 581
    iget-object v0, p0, Landroid/graphics/drawable/Ripple;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/RippleDrawable;->removeRipple(Landroid/graphics/drawable/Ripple;)V

    .line 583
    :cond_0
    return-void
.end method

.method private startPendingHardwareExit(Landroid/view/HardwareCanvas;Landroid/graphics/Paint;)V
    .locals 13
    .param p1, "c"    # Landroid/view/HardwareCanvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 383
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/graphics/drawable/Ripple;->mHasPendingHardwareExit:Z

    .line 385
    iget v4, p0, Landroid/graphics/drawable/Ripple;->mPendingRadiusDuration:I

    .line 386
    .local v4, "radiusDuration":I
    iget v1, p0, Landroid/graphics/drawable/Ripple;->mPendingOpacityDuration:I

    .line 388
    .local v1, "opacityDuration":I
    iget v10, p0, Landroid/graphics/drawable/Ripple;->mClampedStartingX:F

    iget-object v11, p0, Landroid/graphics/drawable/Ripple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v11

    sub-float/2addr v10, v11

    iget v11, p0, Landroid/graphics/drawable/Ripple;->mOuterX:F

    iget v12, p0, Landroid/graphics/drawable/Ripple;->mTweenX:F

    invoke-static {v10, v11, v12}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v6

    .line 390
    .local v6, "startX":F
    iget v10, p0, Landroid/graphics/drawable/Ripple;->mClampedStartingY:F

    iget-object v11, p0, Landroid/graphics/drawable/Ripple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v11

    sub-float/2addr v10, v11

    iget v11, p0, Landroid/graphics/drawable/Ripple;->mOuterY:F

    iget v12, p0, Landroid/graphics/drawable/Ripple;->mTweenY:F

    invoke-static {v10, v11, v12}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v7

    .line 393
    .local v7, "startY":F
    const/4 v10, 0x0

    iget v11, p0, Landroid/graphics/drawable/Ripple;->mOuterRadius:F

    iget v12, p0, Landroid/graphics/drawable/Ripple;->mTweenRadius:F

    invoke-static {v10, v11, v12}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v5

    .line 394
    .local v5, "startRadius":F
    invoke-direct {p0, p2}, Landroid/graphics/drawable/Ripple;->getTempPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v2

    .line 395
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Landroid/graphics/drawable/Ripple;->mOpacity:F

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 396
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v10

    iput-object v10, p0, Landroid/graphics/drawable/Ripple;->mPropPaint:Landroid/graphics/CanvasProperty;

    .line 397
    invoke-static {v5}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v10

    iput-object v10, p0, Landroid/graphics/drawable/Ripple;->mPropRadius:Landroid/graphics/CanvasProperty;

    .line 398
    invoke-static {v6}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v10

    iput-object v10, p0, Landroid/graphics/drawable/Ripple;->mPropX:Landroid/graphics/CanvasProperty;

    .line 399
    invoke-static {v7}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v10

    iput-object v10, p0, Landroid/graphics/drawable/Ripple;->mPropY:Landroid/graphics/CanvasProperty;

    .line 401
    new-instance v3, Landroid/view/RenderNodeAnimator;

    iget-object v10, p0, Landroid/graphics/drawable/Ripple;->mPropRadius:Landroid/graphics/CanvasProperty;

    iget v11, p0, Landroid/graphics/drawable/Ripple;->mOuterRadius:F

    invoke-direct {v3, v10, v11}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 402
    .local v3, "radiusAnim":Landroid/view/RenderNodeAnimator;
    int-to-long v10, v4

    invoke-virtual {v3, v10, v11}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 403
    sget-object v10, Landroid/graphics/drawable/Ripple;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v10}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 404
    invoke-virtual {v3, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/graphics/Canvas;)V

    .line 405
    invoke-virtual {v3}, Landroid/view/RenderNodeAnimator;->start()V

    .line 407
    new-instance v8, Landroid/view/RenderNodeAnimator;

    iget-object v10, p0, Landroid/graphics/drawable/Ripple;->mPropX:Landroid/graphics/CanvasProperty;

    iget v11, p0, Landroid/graphics/drawable/Ripple;->mOuterX:F

    invoke-direct {v8, v10, v11}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 408
    .local v8, "xAnim":Landroid/view/RenderNodeAnimator;
    int-to-long v10, v4

    invoke-virtual {v8, v10, v11}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 409
    sget-object v10, Landroid/graphics/drawable/Ripple;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v8, v10}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 410
    invoke-virtual {v8, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/graphics/Canvas;)V

    .line 411
    invoke-virtual {v8}, Landroid/view/RenderNodeAnimator;->start()V

    .line 413
    new-instance v9, Landroid/view/RenderNodeAnimator;

    iget-object v10, p0, Landroid/graphics/drawable/Ripple;->mPropY:Landroid/graphics/CanvasProperty;

    iget v11, p0, Landroid/graphics/drawable/Ripple;->mOuterY:F

    invoke-direct {v9, v10, v11}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 414
    .local v9, "yAnim":Landroid/view/RenderNodeAnimator;
    int-to-long v10, v4

    invoke-virtual {v9, v10, v11}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 415
    sget-object v10, Landroid/graphics/drawable/Ripple;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v9, v10}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 416
    invoke-virtual {v9, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/graphics/Canvas;)V

    .line 417
    invoke-virtual {v9}, Landroid/view/RenderNodeAnimator;->start()V

    .line 419
    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v10, p0, Landroid/graphics/drawable/Ripple;->mPropPaint:Landroid/graphics/CanvasProperty;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {v0, v10, v11, v12}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 421
    .local v0, "opacityAnim":Landroid/view/RenderNodeAnimator;
    int-to-long v10, v1

    invoke-virtual {v0, v10, v11}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 422
    sget-object v10, Landroid/graphics/drawable/Ripple;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v10}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 423
    iget-object v10, p0, Landroid/graphics/drawable/Ripple;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v10}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 424
    invoke-virtual {v0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/graphics/Canvas;)V

    .line 425
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 427
    iget-object v10, p0, Landroid/graphics/drawable/Ripple;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object v10, p0, Landroid/graphics/drawable/Ripple;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    iget-object v10, p0, Landroid/graphics/drawable/Ripple;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v10, p0, Landroid/graphics/drawable/Ripple;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/graphics/drawable/Ripple;->mHardwareAnimating:Z

    .line 435
    const/4 v10, 0x0

    iput v10, p0, Landroid/graphics/drawable/Ripple;->mOpacity:F

    .line 436
    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, p0, Landroid/graphics/drawable/Ripple;->mTweenX:F

    .line 437
    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, p0, Landroid/graphics/drawable/Ripple;->mTweenY:F

    .line 438
    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, p0, Landroid/graphics/drawable/Ripple;->mTweenRadius:F

    .line 439
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/Ripple;->mCanceled:Z

    .line 521
    invoke-direct {p0}, Landroid/graphics/drawable/Ripple;->cancelSoftwareAnimations()V

    .line 522
    invoke-direct {p0, v1}, Landroid/graphics/drawable/Ripple;->cancelHardwareAnimations(Z)V

    .line 523
    iput-boolean v1, p0, Landroid/graphics/drawable/Ripple;->mCanceled:Z

    .line 524
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 227
    iget-object v2, p0, Landroid/graphics/drawable/Ripple;->mStartFromExitAnimation:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 228
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Landroid/graphics/drawable/Ripple;->mStartFromExitAnimation:Ljava/lang/Boolean;

    .line 232
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    .line 233
    .local v0, "canUseHardware":Z
    iget-boolean v2, p0, Landroid/graphics/drawable/Ripple;->mCanUseHardware:Z

    if-eq v2, v0, :cond_1

    iget-boolean v2, p0, Landroid/graphics/drawable/Ripple;->mCanUseHardware:Z

    if-eqz v2, :cond_1

    .line 235
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/graphics/drawable/Ripple;->cancelHardwareAnimations(Z)V

    .line 237
    :cond_1
    iput-boolean v0, p0, Landroid/graphics/drawable/Ripple;->mCanUseHardware:Z

    .line 240
    if-eqz v0, :cond_3

    iget-boolean v2, p0, Landroid/graphics/drawable/Ripple;->mHardwareAnimating:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/graphics/drawable/Ripple;->mHasPendingHardwareExit:Z

    if-eqz v2, :cond_3

    .line 241
    :cond_2
    check-cast p1, Landroid/view/HardwareCanvas;

    .end local p1    # "c":Landroid/graphics/Canvas;
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/Ripple;->drawHardware(Landroid/view/HardwareCanvas;Landroid/graphics/Paint;)Z

    move-result v1

    .line 246
    .local v1, "hasContent":Z
    :goto_0
    return v1

    .line 243
    .end local v1    # "hasContent":Z
    .restart local p1    # "c":Landroid/graphics/Canvas;
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/Ripple;->drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    move-result v1

    .restart local v1    # "hasContent":Z
    goto :goto_0
.end method

.method public enter()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x50

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    .line 305
    invoke-virtual {p0}, Landroid/graphics/drawable/Ripple;->cancel()V

    .line 307
    const-wide v4, 0x408f400000000000L    # 1000.0

    iget v6, p0, Landroid/graphics/drawable/Ripple;->mOuterRadius:F

    const/high16 v7, 0x44800000    # 1024.0f

    div-float/2addr v6, v7

    iget v7, p0, Landroid/graphics/drawable/Ripple;->mDensity:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v3, v4

    .line 310
    .local v3, "radiusDuration":I
    const-string/jumbo v4, "radiusGravity"

    new-array v5, v8, [F

    aput v9, v5, v10

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 311
    .local v2, "radius":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v8}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 312
    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 313
    sget-object v4, Landroid/graphics/drawable/Ripple;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 314
    invoke-virtual {v2, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 316
    const-string/jumbo v4, "xGravity"

    new-array v5, v8, [F

    aput v9, v5, v10

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 317
    .local v0, "cX":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v8}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 318
    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 319
    sget-object v4, Landroid/graphics/drawable/Ripple;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 320
    invoke-virtual {v0, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 322
    const-string/jumbo v4, "yGravity"

    new-array v5, v8, [F

    aput v9, v5, v10

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 323
    .local v1, "cY":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 324
    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 325
    sget-object v4, Landroid/graphics/drawable/Ripple;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 326
    invoke-virtual {v1, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 328
    iput-object v2, p0, Landroid/graphics/drawable/Ripple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    .line 329
    iput-object v0, p0, Landroid/graphics/drawable/Ripple;->mAnimX:Landroid/animation/ObjectAnimator;

    .line 330
    iput-object v1, p0, Landroid/graphics/drawable/Ripple;->mAnimY:Landroid/animation/ObjectAnimator;

    .line 335
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 336
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 337
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 338
    return-void
.end method

.method public exit()V
    .locals 8

    .prologue
    .line 346
    iget-object v4, p0, Landroid/graphics/drawable/Ripple;->mStartFromExitAnimation:Ljava/lang/Boolean;

    if-nez v4, :cond_0

    .line 347
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v4, p0, Landroid/graphics/drawable/Ripple;->mStartFromExitAnimation:Ljava/lang/Boolean;

    .line 351
    :cond_0
    const/4 v4, 0x0

    iget v5, p0, Landroid/graphics/drawable/Ripple;->mOuterRadius:F

    iget v6, p0, Landroid/graphics/drawable/Ripple;->mTweenRadius:F

    invoke-static {v4, v5, v6}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    .line 353
    .local v1, "radius":F
    iget-object v4, p0, Landroid/graphics/drawable/Ripple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/graphics/drawable/Ripple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 354
    iget v4, p0, Landroid/graphics/drawable/Ripple;->mOuterRadius:F

    sub-float v3, v4, v1

    .line 359
    .local v3, "remaining":F
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Ripple;->cancel()V

    .line 361
    const-wide v4, 0x408f400000000000L    # 1000.0

    const v6, 0x458a4000    # 4424.0f

    div-float v6, v3, v6

    iget v7, p0, Landroid/graphics/drawable/Ripple;->mDensity:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v2, v4

    .line 363
    .local v2, "radiusDuration":I
    const/high16 v4, 0x447a0000    # 1000.0f

    iget v5, p0, Landroid/graphics/drawable/Ripple;->mOpacity:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 366
    .local v0, "opacityDuration":I
    iget-boolean v4, p0, Landroid/graphics/drawable/Ripple;->mCanUseHardware:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/graphics/drawable/Ripple;->mStartFromExitAnimation:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 367
    :cond_1
    invoke-direct {p0, v2, v0}, Landroid/graphics/drawable/Ripple;->createPendingHardwareExit(II)V

    .line 371
    :goto_1
    return-void

    .line 356
    .end local v0    # "opacityDuration":I
    .end local v2    # "radiusDuration":I
    .end local v3    # "remaining":F
    :cond_2
    iget v3, p0, Landroid/graphics/drawable/Ripple;->mOuterRadius:F

    .restart local v3    # "remaining":F
    goto :goto_0

    .line 369
    .restart local v0    # "opacityDuration":I
    .restart local v2    # "radiusDuration":I
    :cond_3
    invoke-direct {p0, v2, v0}, Landroid/graphics/drawable/Ripple;->exitSoftware(II)V

    goto :goto_1
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 284
    iget v3, p0, Landroid/graphics/drawable/Ripple;->mOuterX:F

    float-to-int v0, v3

    .line 285
    .local v0, "outerX":I
    iget v3, p0, Landroid/graphics/drawable/Ripple;->mOuterY:F

    float-to-int v1, v3

    .line 286
    .local v1, "outerY":I
    iget v3, p0, Landroid/graphics/drawable/Ripple;->mOuterRadius:F

    float-to-int v3, v3

    add-int/lit8 v2, v3, 0x1

    .line 287
    .local v2, "r":I
    sub-int v3, v0, v2

    sub-int v4, v1, v2

    add-int v5, v0, v2

    add-int v6, v1, v2

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 288
    return-void
.end method

.method public getOpacity()F
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Landroid/graphics/drawable/Ripple;->mOpacity:F

    return v0
.end method

.method public getRadiusGravity()F
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Landroid/graphics/drawable/Ripple;->mTweenRadius:F

    return v0
.end method

.method public getXGravity()F
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Landroid/graphics/drawable/Ripple;->mTweenX:F

    return v0
.end method

.method public getYGravity()F
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Landroid/graphics/drawable/Ripple;->mTweenY:F

    return v0
.end method

.method public isHardwareAnimating()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Landroid/graphics/drawable/Ripple;->mHardwareAnimating:Z

    return v0
.end method

.method public jump()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 446
    iput-boolean v0, p0, Landroid/graphics/drawable/Ripple;->mCanceled:Z

    .line 447
    invoke-direct {p0}, Landroid/graphics/drawable/Ripple;->endSoftwareAnimations()V

    .line 448
    invoke-direct {p0, v0}, Landroid/graphics/drawable/Ripple;->cancelHardwareAnimations(Z)V

    .line 449
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/Ripple;->mCanceled:Z

    .line 450
    return-void
.end method

.method public move(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 295
    iput p1, p0, Landroid/graphics/drawable/Ripple;->mStartingX:F

    .line 296
    iput p2, p0, Landroid/graphics/drawable/Ripple;->mStartingY:F

    .line 298
    invoke-direct {p0}, Landroid/graphics/drawable/Ripple;->clampStartingPosition()V

    .line 299
    return-void
.end method

.method public onHotspotBoundsChanged()V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 170
    iget-boolean v2, p0, Landroid/graphics/drawable/Ripple;->mHasMaxRadius:Z

    if-nez v2, :cond_0

    .line 171
    iget-object v2, p0, Landroid/graphics/drawable/Ripple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 172
    .local v1, "halfWidth":F
    iget-object v2, p0, Landroid/graphics/drawable/Ripple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 173
    .local v0, "halfHeight":F
    mul-float v2, v1, v1

    mul-float v3, v0, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Landroid/graphics/drawable/Ripple;->mOuterRadius:F

    .line 175
    invoke-direct {p0}, Landroid/graphics/drawable/Ripple;->clampStartingPosition()V

    .line 177
    .end local v0    # "halfHeight":F
    .end local v1    # "halfWidth":F
    :cond_0
    return-void
.end method

.method public setOpacity(F)V
    .locals 0
    .param p1, "a"    # F

    .prologue
    .line 180
    iput p1, p0, Landroid/graphics/drawable/Ripple;->mOpacity:F

    .line 181
    invoke-direct {p0}, Landroid/graphics/drawable/Ripple;->invalidateSelf()V

    .line 182
    return-void
.end method

.method public setRadiusGravity(F)V
    .locals 0
    .param p1, "r"    # F

    .prologue
    .line 190
    iput p1, p0, Landroid/graphics/drawable/Ripple;->mTweenRadius:F

    .line 191
    invoke-direct {p0}, Landroid/graphics/drawable/Ripple;->invalidateSelf()V

    .line 192
    return-void
.end method

.method public setXGravity(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 201
    iput p1, p0, Landroid/graphics/drawable/Ripple;->mTweenX:F

    .line 202
    invoke-direct {p0}, Landroid/graphics/drawable/Ripple;->invalidateSelf()V

    .line 203
    return-void
.end method

.method public setYGravity(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 212
    iput p1, p0, Landroid/graphics/drawable/Ripple;->mTweenY:F

    .line 213
    invoke-direct {p0}, Landroid/graphics/drawable/Ripple;->invalidateSelf()V

    .line 214
    return-void
.end method

.method public setup(IF)V
    .locals 5
    .param p1, "maxRadius"    # I
    .param p2, "density"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 132
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 133
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/graphics/drawable/Ripple;->mHasMaxRadius:Z

    .line 134
    int-to-float v2, p1

    iput v2, p0, Landroid/graphics/drawable/Ripple;->mOuterRadius:F

    .line 141
    :goto_0
    iput v4, p0, Landroid/graphics/drawable/Ripple;->mOuterX:F

    .line 142
    iput v4, p0, Landroid/graphics/drawable/Ripple;->mOuterY:F

    .line 143
    iput p2, p0, Landroid/graphics/drawable/Ripple;->mDensity:F

    .line 145
    invoke-direct {p0}, Landroid/graphics/drawable/Ripple;->clampStartingPosition()V

    .line 146
    return-void

    .line 136
    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/Ripple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 137
    .local v1, "halfWidth":F
    iget-object v2, p0, Landroid/graphics/drawable/Ripple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 138
    .local v0, "halfHeight":F
    mul-float v2, v1, v1

    mul-float v3, v0, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Landroid/graphics/drawable/Ripple;->mOuterRadius:F

    goto :goto_0
.end method
