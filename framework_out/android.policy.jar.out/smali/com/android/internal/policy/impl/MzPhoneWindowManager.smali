.class public Lcom/android/internal/policy/impl/MzPhoneWindowManager;
.super Ljava/lang/Object;
.source "MzPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MzPhoneWindowManager$MzPolicyHandler;
    }
.end annotation


# static fields
.field public static final MOBEVENT_ACTION_HOME_LONG_PRESS_SCREEN_OFF:Ljava/lang/String; = "key/home_long_press_screen_off"

.field public static final MOBEVENT_ACTION_HOME_LONG_PRESS_VOICE_ON:Ljava/lang/String; = "key/home_long_press_voice_on"

.field public static final MOBEVENT_ACTION_HOME_SCREEN_ON:Ljava/lang/String; = "key/home_screen_on"

.field public static final MOBEVENT_ACTION_HOME_SLIDE_UP:Ljava/lang/String; = "key/home_action_slide_up"

.field public static final MOBEVENT_ACTION_INTERCEPT_SCREEN_SHOT:Ljava/lang/String; = "key/power_intercept_screen_shot"

.field private static TAGG:Ljava/lang/String;

.field private static mUsageStatsProxy:Lcom/meizu/statsos/UsageStatsProxy;


# instance fields
.field private final Back_GESTURE_KEY_CLICK_TIMEOUT:I

.field private final FINGERKEY_HOMEKEY_TIMEOUT:J

.field private final FINGERKEY_LONGPRESS_HOMEKEY_TIMEOUT:J

.field private final MSG_SEND_BACK_KEY:I

.field private final PLAY_TOUCH_HOME_AUDIO:I

.field private TAG:Ljava/lang/String;

.field private bHomeKeyLongFlag:Z

.field private backGestureKeyValid:Z

.field private final effectType:I

.field private fingerTouchConsumed:Z

.field private homeKeySleep:Z

.field private isTouchValid:Z

.field private mHandler:Landroid/os/Handler;

.field private mHomeKeyDown:Z

.field private mHomeKeyDownTime:J

.field private mHomeKeyUpTime:J

.field private final mInterceptHeadsethook:Ljava/lang/Runnable;

.field private final mLaunchVoiceActivity:Ljava/lang/Runnable;

.field private mPowerSaveMode:Z

.field private mVloumeKeyConsumed:Z

.field private final mVolumeUPLongPress:Ljava/lang/Runnable;

.field private preventBackGestureKey:Z

.field private pw:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "MzKeyEvent"

    sput-object v0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAGG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 4
    .param p1, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "MzPhoneWindowManager"

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    .line 56
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mPowerSaveMode:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->isTouchValid:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->backGestureKeyValid:Z

    .line 59
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->homeKeySleep:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->bHomeKeyLongFlag:Z

    .line 62
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->preventBackGestureKey:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHomeKeyDown:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->fingerTouchConsumed:Z

    .line 67
    iput v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->effectType:I

    .line 68
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->PLAY_TOUCH_HOME_AUDIO:I

    .line 69
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->MSG_SEND_BACK_KEY:I

    .line 70
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->Back_GESTURE_KEY_CLICK_TIMEOUT:I

    .line 78
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    .line 80
    iput-wide v2, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHomeKeyUpTime:J

    .line 81
    iput-wide v2, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHomeKeyDownTime:J

    .line 82
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->FINGERKEY_HOMEKEY_TIMEOUT:J

    .line 83
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->FINGERKEY_LONGPRESS_HOMEKEY_TIMEOUT:J

    .line 205
    new-instance v0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mLaunchVoiceActivity:Ljava/lang/Runnable;

    .line 414
    new-instance v0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mInterceptHeadsethook:Ljava/lang/Runnable;

    .line 588
    new-instance v0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVolumeUPLongPress:Ljava/lang/Runnable;

    .line 86
    iput-object p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 87
    new-instance v0, Lcom/android/internal/policy/impl/MzPhoneWindowManager$MzPolicyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager$MzPolicyHandler;-><init>(Lcom/android/internal/policy/impl/MzPhoneWindowManager;Lcom/android/internal/policy/impl/MzPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->onEnablePowerSaveModeSettingChanged()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mPowerSaveMode:Z

    .line 89
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->registerPowerSaveModeObserver()V

    .line 90
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MzPhoneWindowManager;Landroid/view/KeyEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzPhoneWindowManager;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->dispatchBackKeyWithWakeLock(Landroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->playHomeEffect()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/MzPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->bHomeKeyLongFlag:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/MzPhoneWindowManager;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzPhoneWindowManager;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->startVoiceActivity(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/MzPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mPowerSaveMode:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/MzPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->isPhoneIdle()Z

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/MzPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    return p1
.end method

.method public static checkProxyValid(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 539
    sget-object v0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mUsageStatsProxy:Lcom/meizu/statsos/UsageStatsProxy;

    if-nez v0, :cond_0

    .line 540
    sget-object v0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAGG:Ljava/lang/String;

    const-string v1, "UsageStatsProxy invalid, construct ..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-static {p0}, Lcom/meizu/statsos/UsageStatsProxy;->getOfflineInstance(Landroid/content/Context;)Lcom/meizu/statsos/UsageStatsProxy;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mUsageStatsProxy:Lcom/meizu/statsos/UsageStatsProxy;

    .line 543
    :cond_0
    return-void
.end method

.method public static collectHomeLongScreenOff(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 518
    invoke-static {p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->checkProxyValid(Landroid/content/Context;)V

    .line 519
    const-string v0, "key/home_long_press_screen_off"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method public static collectHomeLongVoiceOn(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 526
    invoke-static {p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->checkProxyValid(Landroid/content/Context;)V

    .line 527
    const-string v0, "key/home_long_press_voice_on"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method public static collectHomeScreenOn(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 510
    invoke-static {p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->checkProxyValid(Landroid/content/Context;)V

    .line 511
    const-string v0, "key/home_screen_on"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method public static collectInterceptScreenShot(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 534
    invoke-static {p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->checkProxyValid(Landroid/content/Context;)V

    .line 535
    const-string v0, "key/power_intercept_screen_shot"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method public static collectSlideUpHomeKey(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 502
    invoke-static {p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->checkProxyValid(Landroid/content/Context;)V

    .line 503
    const-string v0, "key/home_action_slide_up"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    return-void
.end method

.method private dispatchBackKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 375
    const/4 v0, 0x1

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 376
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "back key inject InputEvent successed---! --> action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", times is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 384
    :cond_0
    return-void

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "back key inject InputEvent failed---!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isPhoneIdle()Z
    .locals 5

    .prologue
    .line 154
    const/4 v0, 0x1

    .line 155
    .local v0, "isPhoneIdle":Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 156
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 158
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the phone idel is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    return v0

    .line 157
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static onEventOnly(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 546
    sget-object v0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAGG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mUsageStatsProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mUsageStatsProxy:Lcom/meizu/statsos/UsageStatsProxy;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    sget-object v0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mUsageStatsProxy:Lcom/meizu/statsos/UsageStatsProxy;

    if-eqz v0, :cond_0

    .line 548
    sget-object v2, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mUsageStatsProxy:Lcom/meizu/statsos/UsageStatsProxy;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, p0, v1, v0}, Lcom/meizu/statsos/UsageStatsProxy;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :cond_0
    return-void
.end method

.method private playHomeEffect()V
    .locals 7

    .prologue
    .line 389
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sound_effects_enabled"

    const/4 v5, 0x0

    const/4 v6, -0x3

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 394
    .local v2, "soundEnable":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 395
    .local v0, "audioService":Landroid/media/IAudioService;
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 396
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/media/IAudioService;->playSoundEffect(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    .end local v0    # "audioService":Landroid/media/IAudioService;
    .end local v2    # "soundEnable":I
    :cond_0
    :goto_0
    return-void

    .line 399
    :catch_0
    move-exception v1

    .line 400
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private registerPowerSaveModeObserver()V
    .locals 5

    .prologue
    .line 358
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 359
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "mz_current_power_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/internal/policy/impl/MzPhoneWindowManager$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/MzPhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/MzPhoneWindowManager;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 367
    return-void
.end method

.method private startVoiceActivity(Landroid/content/Context;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v10

    .line 189
    :goto_0
    return v0

    .line 171
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "MzPhoneWindowManager alrady launch voice assistant!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->mzGetStatusBar()Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-interface {v11, v0}, Lcom/android/internal/statusbar/IStatusBar;->updateRecentPanel(Landroid/view/MotionEvent;)V

    .line 174
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 175
    .local v9, "intent":Landroid/content/Intent;
    const-string v0, "com.meizu.voiceassistant"

    const-string v1, "com.meizu.voiceassistant.MainActivity"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const/high16 v0, 0x10000000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 178
    const-string v0, "meizu.intent.extra.LONGPRESSKEY"

    const-string v1, "meizu.intent.extra.VOICEASSISTANT"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v9, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 189
    const/4 v0, 0x1

    goto :goto_0

    .line 181
    .end local v9    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v8

    .line 182
    .local v8, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v8}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    move v0, v10

    .line 183
    goto :goto_0

    .line 184
    .end local v8    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v8

    .line 185
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    move v0, v10

    .line 186
    goto :goto_0
.end method


# virtual methods
.method public HandleLongPressOnHome(ILandroid/view/KeyEvent;)I
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 287
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->isPowerSaveMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v3

    .line 290
    :cond_1
    const/4 v5, 0x3

    if-ne p1, v5, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_0

    .line 294
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 295
    .local v1, "action":I
    const/4 v0, 0x0

    .line 296
    .local v0, "HOEM_LOGPRESS_SCREENOF":I
    iget-object v5, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mz_intelligent_voice"

    const/4 v7, -0x3

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 301
    .local v2, "isLongHomePressEnable":I
    if-nez v2, :cond_3

    .line 302
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->homeKeySleep:Z

    .line 303
    iget-object v3, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 304
    iget-object v3, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->collectHomeLongScreenOff(Landroid/content/Context;)V

    :cond_2
    :goto_1
    move v3, v4

    .line 320
    goto :goto_0

    .line 306
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->isPhoneIdle()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 311
    iget-object v3, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->startVoiceActivity(Landroid/content/Context;)Z

    .line 312
    iget-object v3, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->collectHomeLongVoiceOn(Landroid/content/Context;)V

    .line 313
    iget-object v3, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v4, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    goto :goto_1
.end method

.method public InterceptPowerKeyForTelephony(ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 118
    iget-object v9, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v6

    .line 119
    .local v6, "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v2, 0x0

    .line 120
    .local v2, "handled":Z
    const/4 v3, 0x0

    .line 121
    .local v3, "hungUp":Z
    const/4 v0, 0x0

    .line 122
    .local v0, "UNINTERCEPT_POWERKEY":I
    if-eqz v6, :cond_1

    .line 123
    iget-object v9, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v9, v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_1

    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 126
    :cond_0
    invoke-static {p1}, Landroid/telephony/MzTelephonyManager;->processKeyEvent(I)I

    move-result v5

    .line 127
    .local v5, "proceResult":I
    and-int/lit8 v9, v5, 0x1

    if-eqz v9, :cond_3

    move v2, v7

    .line 128
    :goto_0
    and-int/lit8 v9, v5, 0x10

    if-eqz v9, :cond_4

    move v3, v7

    .line 129
    :goto_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "InterceptPowerKeyForTelephony the value is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .end local v5    # "proceResult":I
    :cond_1
    if-nez v2, :cond_2

    .line 134
    iget-object v9, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v9, v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "intercpt_powerkey"

    const/4 v11, -0x3

    invoke-static {v9, v10, v8, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 138
    .local v1, "appInterceptPowerkey":I
    if-eqz v1, :cond_2

    .line 139
    const/4 v2, 0x1

    .line 140
    new-instance v4, Landroid/content/Intent;

    const-string v9, "alarmclock.intent.action.POWERKEY_CLICK"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v4, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v9, v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    iget-object v9, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v9, v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "intercpt_powerkey"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 149
    .end local v1    # "appInterceptPowerkey":I
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_2
    if-nez v2, :cond_5

    :goto_2
    return v7

    .restart local v5    # "proceResult":I
    :cond_3
    move v2, v8

    .line 127
    goto :goto_0

    :cond_4
    move v3, v8

    .line 128
    goto :goto_1

    .end local v5    # "proceResult":I
    :cond_5
    move v7, v8

    .line 149
    goto :goto_2
.end method

.method public InterceptVolumeKeyDownForTelephony(I)V
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    .line 562
    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVolumeUPLongPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 564
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVolumeUPLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "InterceptVolumeKeyDownForTelephony    mVolumeUPLongPress!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_0
    return-void
.end method

.method public InterceptVolumeKeyUpForTelephony(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 571
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 572
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    .line 575
    :cond_0
    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    .line 576
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVolumeUPLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 578
    :cond_1
    return-void
.end method

.method public PreventVolumeKeyForTelephony()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 581
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    if-eqz v1, :cond_0

    .line 582
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    .line 583
    const/4 v0, 0x1

    .line 585
    :cond_0
    return v0
.end method

.method public SetFingerTouchConsumed(Z)V
    .locals 0
    .param p1, "fingerTouchConsumed"    # Z

    .prologue
    .line 464
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->fingerTouchConsumed:Z

    .line 465
    return-void
.end method

.method public SetHomeDownTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 484
    iput-wide p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHomeKeyDownTime:J

    .line 485
    return-void
.end method

.method public SetHomeKeySleep(Z)V
    .locals 0
    .param p1, "homeKeySleep"    # Z

    .prologue
    .line 472
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->homeKeySleep:Z

    .line 473
    return-void
.end method

.method public SetHomeUpTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 480
    iput-wide p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHomeKeyUpTime:J

    .line 481
    return-void
.end method

.method public fingerTouchKeyVibrate(IZ)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z

    .prologue
    .line 230
    return-void
.end method

.method public handleHomeFlag(Landroid/view/WindowManagerPolicy$WindowState;Z)Z
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "homeConsumed"    # Z

    .prologue
    .line 108
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 109
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    if-nez p2, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    iget v1, v1, Landroid/view/MeizuLayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1

    .line 111
    const/4 v1, 0x1

    .line 113
    :goto_1
    return v1

    .line 108
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public handleLongPressOnHeadSetIfNeeded(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 326
    const/16 v1, 0x4f

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    .line 327
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->isPhoneIdle()Z

    move-result v1

    if-nez v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v2, "The phone is incall!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    :goto_0
    return v0

    .line 330
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "The phone is idle!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 333
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->startVoiceActivity(Landroid/content/Context;)Z

    .line 340
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->collectHomeLongVoiceOn(Landroid/content/Context;)V

    .line 341
    const/4 v0, 0x1

    goto :goto_0

    .line 343
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v2, "The Device Not Provisioned"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public interceptFingerTouchKey(IZ)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z

    .prologue
    .line 251
    return-void
.end method

.method public interceptHeadsethook(Z)V
    .locals 4
    .param p1, "down"    # Z

    .prologue
    .line 405
    if-eqz p1, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "interceptHeadsethook: add mLunchVoiceActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mInterceptHeadsethook:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 412
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "interceptHeadsethook: remove mLunchVoiceActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mInterceptHeadsethook:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public interceptHomeKeyForBackGesture(IZ)V
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z

    .prologue
    const/4 v4, 0x0

    .line 268
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 269
    if-eqz p2, :cond_1

    .line 273
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->backGestureKeyValid:Z

    .line 274
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->preventBackGestureKey:Z

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    const-wide/16 v2, 0x46

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_1
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->backGestureKeyValid:Z

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/InterruptedException;
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->backGestureKeyValid:Z

    goto :goto_1
.end method

.method public interceptHomeKeyLongPress(Z)V
    .locals 4
    .param p1, "down"    # Z

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 196
    :cond_0
    if-eqz p1, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "interceptHomeKeyLongPress: add mLunchVoiceActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mLaunchVoiceActivity:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "interceptHomeKeyLongPress: remove mLunchVoiceActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mLaunchVoiceActivity:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isBackGestureKeyValid()Z
    .locals 1

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->backGestureKeyValid:Z

    return v0
.end method

.method public isFingerKeyTime(J)Z
    .locals 7
    .param p1, "time"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 488
    iget-wide v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHomeKeyUpTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHomeKeyDownTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 489
    :cond_0
    iput-wide v4, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHomeKeyUpTime:J

    .line 490
    iput-wide v4, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHomeKeyDownTime:J

    .line 491
    const/4 v0, 0x1

    .line 495
    :goto_0
    return v0

    .line 493
    :cond_1
    iput-wide v4, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHomeKeyUpTime:J

    .line 494
    iput-wide v4, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHomeKeyDownTime:J

    .line 495
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFingerTouchConsumed()Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->fingerTouchConsumed:Z

    return v0
.end method

.method public isHomeKeyDown()Z
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHomeKeyDown:Z

    return v0
.end method

.method public isHomeKeySleep()Z
    .locals 1

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->homeKeySleep:Z

    return v0
.end method

.method public isPowerSaveMode()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mPowerSaveMode:Z

    return v0
.end method

.method public isPreventBackGestureKey()Z
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->preventBackGestureKey:Z

    return v0
.end method

.method public isTouchKeyValid()Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->isTouchValid:Z

    return v0
.end method

.method public onEnablePowerSaveModeSettingChanged()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 352
    iget-object v1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mz_current_power_mode"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public sendEvent(III)V
    .locals 17
    .param p1, "keycode"    # I
    .param p2, "action"    # I
    .param p3, "flags"    # I

    .prologue
    .line 254
    move/from16 v0, p3

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    const/4 v8, 0x1

    .line 255
    .local v8, "repeatCount":I
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    or-int/lit8 v12, p3, 0x8

    const/16 v13, 0x101

    const/4 v14, 0x0

    move/from16 v6, p2

    move/from16 v7, p1

    invoke-static/range {v2 .. v14}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v15

    .line 259
    .local v15, "ev":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->pw:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 263
    .local v16, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 264
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->sendToTarget()V

    .line 265
    return-void

    .line 254
    .end local v8    # "repeatCount":I
    .end local v15    # "ev":Landroid/view/KeyEvent;
    .end local v16    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public setBackGestureKeyValid(Z)V
    .locals 0
    .param p1, "backGestureKey"    # Z

    .prologue
    .line 440
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->backGestureKeyValid:Z

    .line 441
    return-void
.end method

.method public setHomeKeyDown(Z)V
    .locals 0
    .param p1, "bHomeKeyDown"    # Z

    .prologue
    .line 456
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->mHomeKeyDown:Z

    .line 457
    return-void
.end method

.method public setPreventBackGestureKey(Z)V
    .locals 0
    .param p1, "preventBackGesture"    # Z

    .prologue
    .line 448
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->preventBackGestureKey:Z

    .line 449
    return-void
.end method

.method public setTouchValid(Z)V
    .locals 0
    .param p1, "bTouchValid"    # Z

    .prologue
    .line 432
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->isTouchValid:Z

    .line 433
    return-void
.end method
