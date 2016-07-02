.class public Lcom/android/internal/policy/impl/MzMotionGesture;
.super Ljava/lang/Object;
.source "MzMotionGesture.java"


# static fields
.field public static final ACTION_PASS_TO_USER:I = 0x1


# instance fields
.field private final BACK_GESTRUE_VALID_DISTANCE:I

.field private DEVICE_HEIGHT:I

.field private DEVICE_WIDTH:I

.field private final GESTURE_BACK_TRIGGER_DISTANCE:I

.field private final GESTURE_VALID_BOTTOM_OFFSET:I

.field private GESTURE_VALID_DOWN_POS:I

.field private RECENT_INVALID_OFFSET_TO_EDGE:I

.field private RECENT_LEFT_POS_MAX:I

.field private RECENT_LEFT_POS_MIN:I

.field private RECENT_PANEL_VALID_WIDE:I

.field private RECENT_RIGHT_POS_MAX:I

.field private RECENT_RIGHT_POS_MIN:I

.field private final RECENT_VALID_DISTANCE:I

.field private SLIDE_UP_IN_BACK_GUESTURE_MODE:I

.field private SLIDE_UP_IN_RECENT_PANEL_MODE:I

.field private final TAG:Ljava/lang/String;

.field private isBackGestureShow:Z

.field private mBackGestureDownPos:F

.field private mBackGestureStateSwtichStartPos:F

.field private mBackGestureValid:Z

.field private mGestureBar:Landroid/view/WindowManagerPolicy$WindowState;

.field public mIStatusBar:Lcom/android/internal/statusbar/IStatusBar;

.field private mMeizuEnableFullScreenDrag:I

.field private mRecentPanel:Landroid/view/WindowManagerPolicy$WindowState;

.field private mRecentPanelDownPos:F

.field private mRecentPanelDownTime:J

.field private mRecentPanelMoveTime:J

.field private mRecentPanelValid:I

.field mzPw:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

.field private preventTouchKey:Z

.field pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private slideMode:I

.field private win:Landroid/view/WindowManagerPolicy$WindowState;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/MzPhoneWindowManager;)V
    .locals 8
    .param p1, "pw"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p2, "mzPw"    # Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    .prologue
    const-wide/16 v6, 0x0

    const/16 v4, 0x1e

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "MzMotionGesture"

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->TAG:Ljava/lang/String;

    .line 35
    const/16 v0, 0x46

    iput v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->GESTURE_VALID_BOTTOM_OFFSET:I

    .line 36
    const/16 v0, 0x6c2

    iput v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->GESTURE_VALID_DOWN_POS:I

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->SLIDE_UP_IN_BACK_GUESTURE_MODE:I

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->SLIDE_UP_IN_RECENT_PANEL_MODE:I

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    .line 40
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->preventTouchKey:Z

    .line 42
    iput v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_VALID_DISTANCE:I

    .line 43
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_INVALID_OFFSET_TO_EDGE:I

    .line 48
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_PANEL_VALID_WIDE:I

    .line 49
    iput v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelDownPos:F

    .line 50
    iput v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelValid:I

    .line 51
    iput-wide v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelDownTime:J

    .line 52
    iput-wide v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelMoveTime:J

    .line 53
    iput-object v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mIStatusBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 54
    iput-object v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanel:Landroid/view/WindowManagerPolicy$WindowState;

    .line 56
    iput v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->GESTURE_BACK_TRIGGER_DISTANCE:I

    .line 57
    iput-object v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mGestureBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 58
    iput-object v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->win:Landroid/view/WindowManagerPolicy$WindowState;

    .line 59
    iput v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureStateSwtichStartPos:F

    .line 60
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureValid:Z

    .line 62
    iput v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureDownPos:F

    .line 63
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->BACK_GESTRUE_VALID_DISTANCE:I

    .line 68
    iput v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mMeizuEnableFullScreenDrag:I

    .line 76
    iput-object p1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 77
    iput-object p2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mzPw:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    .line 78
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzMotionGesture;->onEnableFullScreenDragSettingChanged()V

    .line 79
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzMotionGesture;->registerEnableFullScreenDragSettingObserver()V

    .line 80
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzMotionGesture;->registerUserSwitchedBroadcast()V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MzMotionGesture;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzMotionGesture;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzMotionGesture;->onEnableFullScreenDragSettingChanged()V

    return-void
.end method

.method private checkSlideMode(Landroid/view/MotionEvent;)I
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 225
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    .line 226
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 227
    .local v0, "rot":I
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mzPw:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->isBackGestureKeyValid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/MzMotionGesture;->isInBackGuestureModeArea(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->SLIDE_UP_IN_BACK_GUESTURE_MODE:I

    iput v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    .line 232
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    return v1

    .line 229
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/MzMotionGesture;->isInRecentPanelModeArea(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->SLIDE_UP_IN_RECENT_PANEL_MODE:I

    iput v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    goto :goto_0
.end method

.method private interceptActionMoveForBackGuesture(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x40a00000    # 5.0f

    const/high16 v3, 0x41f00000    # 30.0f

    const/4 v4, 0x1

    .line 236
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureValid:Z

    if-nez v2, :cond_5

    .line 237
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzMotionGesture;->isLandScape()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 238
    iget-object v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 239
    .local v1, "rot":I
    if-ne v1, v4, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureDownPos:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_1

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureDownPos:F

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    .line 241
    :cond_1
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureValid:Z

    .line 248
    .end local v1    # "rot":I
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureValid:Z

    if-eqz v2, :cond_3

    .line 249
    iget-object v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mzPw:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->setPreventBackGestureKey(Z)V

    .line 250
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    .line 251
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/MzMotionGesture;->updateGestureBar(Z)V

    .line 302
    :cond_3
    :goto_1
    return-void

    .line 244
    :cond_4
    iget v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureDownPos:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    .line 245
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureValid:Z

    goto :goto_0

    .line 256
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzMotionGesture;->isLandScape()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 257
    .local v0, "pos":F
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 258
    .restart local v1    # "rot":I
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 261
    :pswitch_0
    iget v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureStateSwtichStartPos:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_8

    .line 262
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    if-eqz v2, :cond_7

    .line 263
    iput v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureStateSwtichStartPos:F

    goto :goto_1

    .line 256
    .end local v0    # "pos":F
    .end local v1    # "rot":I
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_2

    .line 264
    .restart local v0    # "pos":F
    .restart local v1    # "rot":I
    :cond_7
    iget v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureStateSwtichStartPos:F

    sub-float/2addr v2, v3

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    .line 265
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    .line 266
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/MzMotionGesture;->updateGestureBar(Z)V

    goto :goto_1

    .line 269
    :cond_8
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    if-eqz v2, :cond_9

    .line 270
    iget v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureStateSwtichStartPos:F

    add-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    .line 271
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    .line 272
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/MzMotionGesture;->updateGestureBar(Z)V

    goto :goto_1

    .line 275
    :cond_9
    iput v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureStateSwtichStartPos:F

    goto :goto_1

    .line 281
    :pswitch_1
    iget v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureStateSwtichStartPos:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_b

    .line 282
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    if-eqz v2, :cond_a

    .line 283
    iput v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureStateSwtichStartPos:F

    goto :goto_1

    .line 284
    :cond_a
    iget v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureStateSwtichStartPos:F

    sub-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    .line 285
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    .line 286
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/MzMotionGesture;->updateGestureBar(Z)V

    goto :goto_1

    .line 289
    :cond_b
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    if-eqz v2, :cond_c

    .line 290
    iget v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureStateSwtichStartPos:F

    add-float/2addr v2, v3

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    .line 291
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    .line 292
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/MzMotionGesture;->updateGestureBar(Z)V

    goto/16 :goto_1

    .line 295
    :cond_c
    iput v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureStateSwtichStartPos:F

    goto/16 :goto_1

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private interceptActionMoveForRecentPanel(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v8, 0x12c

    const/4 v7, -0x1

    const/high16 v4, 0x41f00000    # 30.0f

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 395
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelValid:I

    if-nez v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 397
    .local v0, "rot":I
    packed-switch v0, :pswitch_data_0

    .line 425
    .end local v0    # "rot":I
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelValid:I

    if-ne v1, v6, :cond_1

    .line 426
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MzMotionGesture;->updateRecentPanel(Landroid/view/MotionEvent;)V

    .line 427
    :cond_1
    return-void

    .line 400
    .restart local v0    # "rot":I
    :pswitch_0
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelDownPos:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    .line 401
    iput v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelValid:I

    goto :goto_0

    .line 402
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelDownPos:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_3

    iget-wide v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelMoveTime:J

    iget-wide v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelDownTime:J

    sub-long/2addr v2, v4

    cmp-long v1, v2, v8

    if-lez v1, :cond_0

    .line 403
    :cond_3
    iput v7, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelValid:I

    goto :goto_0

    .line 407
    :pswitch_1
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelDownPos:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4

    .line 408
    iput v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelValid:I

    goto :goto_0

    .line 409
    :cond_4
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelDownPos:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_5

    iget-wide v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelMoveTime:J

    iget-wide v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelDownTime:J

    sub-long/2addr v2, v4

    cmp-long v1, v2, v8

    if-lez v1, :cond_0

    .line 410
    :cond_5
    iput v7, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelValid:I

    goto :goto_0

    .line 414
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelDownPos:F

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v4

    if-lez v1, :cond_6

    .line 415
    iput v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelValid:I

    goto :goto_0

    .line 416
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelDownPos:F

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_7

    iget-wide v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelMoveTime:J

    iget-wide v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelDownTime:J

    sub-long/2addr v2, v4

    cmp-long v1, v2, v8

    if-lez v1, :cond_0

    .line 417
    :cond_7
    iput v7, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelValid:I

    goto :goto_0

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private interceptActionUpForBackGuesture(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 305
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mzPw:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MzMotionGesture;->getWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->handleHomeFlag(Landroid/view/WindowManagerPolicy$WindowState;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    .line 307
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MzMotionGesture;->updateGestureBar(Z)V

    .line 308
    const-string v1, "MzMotionGesture"

    const-string v2, "interceptKeyTi HomeKey!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    if-eqz v1, :cond_3

    .line 314
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1, v4}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 316
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    .line 317
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MzMotionGesture;->updateGestureBar(Z)V

    goto :goto_0

    .line 321
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 322
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 323
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 325
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    .line 327
    .end local v0    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_3
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    .line 328
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->isBackGestureShow:Z

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MzMotionGesture;->updateGestureBar(Z)V

    goto :goto_0
.end method

.method private isInBackGuestureModeArea(Landroid/view/MotionEvent;I)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rot"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 332
    packed-switch p2, :pswitch_data_0

    move v0, v1

    .line 352
    :cond_0
    :goto_0
    return v0

    .line 335
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_LEFT_POS_MAX:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_RIGHT_POS_MIN:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    :cond_1
    move v0, v1

    .line 338
    goto :goto_0

    .line 340
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_LEFT_POS_MAX:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_RIGHT_POS_MIN:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    :cond_2
    move v0, v1

    .line 343
    goto :goto_0

    .line 345
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_LEFT_POS_MAX:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_RIGHT_POS_MIN:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    :cond_3
    move v0, v1

    .line 348
    goto :goto_0

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private isInRecentPanelModeArea(Landroid/view/MotionEvent;I)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rot"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 442
    packed-switch p2, :pswitch_data_0

    move v0, v1

    .line 468
    :cond_0
    :goto_0
    return v0

    .line 445
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_LEFT_POS_MIN:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_LEFT_POS_MAX:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_RIGHT_POS_MIN:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_RIGHT_POS_MAX:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->GESTURE_VALID_DOWN_POS:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    :cond_3
    move v0, v1

    .line 450
    goto :goto_0

    .line 452
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_LEFT_POS_MIN:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_LEFT_POS_MAX:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_5

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_RIGHT_POS_MIN:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_RIGHT_POS_MAX:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->GESTURE_VALID_DOWN_POS:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    :cond_6
    move v0, v1

    .line 457
    goto :goto_0

    .line 459
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_LEFT_POS_MIN:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_LEFT_POS_MAX:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_8

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_RIGHT_POS_MIN:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_RIGHT_POS_MAX:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    const/high16 v3, 0x428c0000    # 70.0f

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    :cond_9
    move v0, v1

    .line 464
    goto/16 :goto_0

    .line 442
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private isLandScape()Z
    .locals 3

    .prologue
    .line 186
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 187
    .local v0, "size":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 188
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onEnableFullScreenDragSettingChanged()V
    .locals 4

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_full_screen_drag"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mMeizuEnableFullScreenDrag:I

    .line 475
    return-void
.end method

.method private registerEnableFullScreenDragSettingObserver()V
    .locals 5

    .prologue
    .line 479
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 480
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "enable_full_screen_drag"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/internal/policy/impl/MzMotionGesture$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/MzMotionGesture$2;-><init>(Lcom/android/internal/policy/impl/MzMotionGesture;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 489
    return-void
.end method

.method private registerUserSwitchedBroadcast()V
    .locals 3

    .prologue
    .line 492
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 493
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 494
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/policy/impl/MzMotionGesture$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MzMotionGesture$3;-><init>(Lcom/android/internal/policy/impl/MzMotionGesture;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 503
    return-void
.end method

.method private updateGestureBar(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/MzMotionGesture$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/MzMotionGesture$1;-><init>(Lcom/android/internal/policy/impl/MzMotionGesture;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 368
    return-void
.end method

.method private updateRecentPanel(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 430
    const-string v1, "MzMotionGesture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update recent panel, action is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,x = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mIStatusBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mIStatusBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBar;->updateRecentPanel(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public SetWindowState(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 221
    .line 222
    return-void
.end method

.method public cancelGlobalGestures()V
    .locals 8

    .prologue
    const/high16 v5, -0x40800000    # -1.0f

    .line 513
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v7, -0x1

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MzMotionGesture;->updateRecentPanel(Landroid/view/MotionEvent;)V

    .line 516
    return-void
.end method

.method public configureGestureEffectStartArea()V
    .locals 8

    .prologue
    .line 193
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 194
    .local v3, "point":Landroid/graphics/Point;
    iget-object v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 195
    iget v5, v3, Landroid/graphics/Point;->x:I

    .line 196
    .local v5, "width":I
    iget v2, v3, Landroid/graphics/Point;->y:I

    .line 197
    .local v2, "height":I
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 198
    .local v0, "deviceHeight":I
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 201
    .local v1, "deviceWidth":I
    iput v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->DEVICE_HEIGHT:I

    .line 202
    iput v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->DEVICE_WIDTH:I

    .line 204
    add-int/lit8 v6, v0, -0x46

    iput v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->GESTURE_VALID_DOWN_POS:I

    .line 205
    iget-object v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0xa0e00a6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_INVALID_OFFSET_TO_EDGE:I

    .line 209
    iget v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_INVALID_OFFSET_TO_EDGE:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    div-int/lit8 v4, v6, 0x3

    .line 210
    .local v4, "tmp":I
    iget v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_INVALID_OFFSET_TO_EDGE:I

    iput v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_LEFT_POS_MIN:I

    .line 211
    iget v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_INVALID_OFFSET_TO_EDGE:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_LEFT_POS_MAX:I

    .line 212
    iget v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_INVALID_OFFSET_TO_EDGE:I

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_RIGHT_POS_MIN:I

    .line 213
    iget v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_INVALID_OFFSET_TO_EDGE:I

    sub-int v6, v1, v6

    iput v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->RECENT_RIGHT_POS_MAX:I

    .line 214
    return-void
.end method

.method public getWindowState()Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->win:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method public interceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 84
    const/4 v0, 0x1

    .line 85
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    if-nez v1, :cond_0

    move v1, v2

    .line 182
    :goto_0
    return v1

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenDim()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    const-string v1, "persist.sys.meizu.dim.input"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 93
    and-int/lit8 v0, v0, -0x2

    move v1, v0

    .line 94
    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 179
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->preventTouchKey:Z

    if-eqz v1, :cond_3

    .line 180
    and-int/lit8 v0, v0, -0x2

    :cond_3
    move v1, v0

    .line 182
    goto :goto_0

    .line 100
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MzMotionGesture;->checkSlideMode(Landroid/view/MotionEvent;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    .line 101
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mzPw:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->setTouchValid(Z)V

    .line 102
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mzPw:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->isBackGestureKeyValid()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 103
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->preventTouchKey:Z

    .line 105
    :cond_4
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->SLIDE_UP_IN_BACK_GUESTURE_MODE:I

    if-ne v1, v3, :cond_b

    .line 106
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzMotionGesture;->isLandScape()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    :goto_2
    iput v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureStateSwtichStartPos:F

    iput v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureDownPos:F

    .line 107
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->preventTouchKey:Z

    .line 113
    :cond_5
    :goto_3
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    if-lez v1, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MzMotionGesture;->isTaskPanelOrStatusBarEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->SLIDE_UP_IN_RECENT_PANEL_MODE:I

    if-eq v1, v3, :cond_8

    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->SLIDE_UP_IN_BACK_GUESTURE_MODE:I

    if-ne v1, v3, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MzMotionGesture;->isGlobalSystemUIShow()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mzPw:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->isPowerSaveMode()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_2

    .line 125
    :cond_8
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->preventTouchKey:Z

    .line 126
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    iget v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->SLIDE_UP_IN_RECENT_PANEL_MODE:I

    if-ne v1, v2, :cond_9

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MzMotionGesture;->cancelGlobalGestures()V

    .line 128
    :cond_9
    iput v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    goto :goto_1

    .line 106
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    goto :goto_2

    .line 108
    :cond_b
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->SLIDE_UP_IN_RECENT_PANEL_MODE:I

    if-ne v1, v3, :cond_5

    .line 109
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MzMotionGesture;->updateRecentPanel(Landroid/view/MotionEvent;)V

    .line 110
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzMotionGesture;->isLandScape()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    :goto_4
    iput v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelDownPos:F

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelDownTime:J

    goto :goto_3

    .line 110
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    goto :goto_4

    .line 133
    :pswitch_1
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    iget v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->SLIDE_UP_IN_BACK_GUESTURE_MODE:I

    if-ne v1, v2, :cond_d

    .line 134
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MzMotionGesture;->interceptActionMoveForBackGuesture(Landroid/view/MotionEvent;)V

    .line 135
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureValid:Z

    if-eqz v1, :cond_2

    .line 136
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->preventTouchKey:Z

    goto/16 :goto_1

    .line 138
    :cond_d
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    iget v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->SLIDE_UP_IN_RECENT_PANEL_MODE:I

    if-ne v1, v2, :cond_2

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelMoveTime:J

    .line 140
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MzMotionGesture;->interceptActionMoveForRecentPanel(Landroid/view/MotionEvent;)V

    .line 141
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelValid:I

    if-ne v1, v4, :cond_2

    .line 142
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->preventTouchKey:Z

    goto/16 :goto_1

    .line 148
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->preventTouchKey:Z

    if-eqz v1, :cond_e

    .line 149
    and-int/lit8 v0, v0, -0x2

    .line 151
    :cond_e
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->SLIDE_UP_IN_BACK_GUESTURE_MODE:I

    if-ne v1, v3, :cond_10

    .line 152
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureValid:Z

    if-eqz v1, :cond_f

    .line 153
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MzMotionGesture;->interceptActionUpForBackGuesture(Landroid/view/MotionEvent;)V

    .line 154
    and-int/lit8 v0, v0, -0x2

    .line 171
    :cond_f
    :goto_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mzPw:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->setTouchValid(Z)V

    .line 172
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mBackGestureValid:Z

    .line 173
    iput v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelValid:I

    .line 174
    iput v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    .line 175
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mzPw:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->setBackGestureKeyValid(Z)V

    .line 176
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->preventTouchKey:Z

    goto/16 :goto_1

    .line 156
    :cond_10
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->slideMode:I

    iget v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->SLIDE_UP_IN_RECENT_PANEL_MODE:I

    if-ne v1, v3, :cond_f

    .line 157
    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mRecentPanelValid:I

    if-ne v1, v4, :cond_11

    .line 158
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mzPw:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->collectSlideUpHomeKey(Landroid/content/Context;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MzMotionGesture;->updateRecentPanel(Landroid/view/MotionEvent;)V

    .line 160
    and-int/lit8 v0, v0, -0x2

    goto :goto_5

    .line 162
    :cond_11
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MzMotionGesture;->updateRecentPanel(Landroid/view/MotionEvent;)V

    goto :goto_5

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isGlobalSystemUIShow()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 371
    const/4 v2, 0x0

    .line 372
    .local v2, "show":Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mIStatusBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v5, :cond_0

    .line 373
    iget-object v5, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    .line 374
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzMotionGesture;->isLandScape()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 375
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->DEVICE_WIDTH:I

    if-ne v5, v6, :cond_3

    move v2, v3

    .line 380
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_2

    .line 381
    iget-object v3, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 383
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e0

    if-ne v3, v4, :cond_2

    const-string v3, "MzGlobalActions"

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "recentPanel"

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "recentPanelLand"

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 388
    :cond_1
    const/4 v2, 0x1

    .line 391
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    return v2

    .restart local v1    # "rect":Landroid/graphics/Rect;
    :cond_3
    move v2, v4

    .line 375
    goto :goto_0

    .line 377
    :cond_4
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->DEVICE_HEIGHT:I

    if-ne v5, v6, :cond_5

    move v2, v3

    :goto_1
    goto :goto_0

    :cond_5
    move v2, v4

    goto :goto_1
.end method

.method public isTaskPanelOrStatusBarEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 508
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->mMeizuEnableFullScreenDrag:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzMotionGesture;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getSplitMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
