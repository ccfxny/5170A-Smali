.class public Lcom/immersion/android/haptics/HapticFeedbackManager;
.super Ljava/lang/Object;
.source "HapticFeedbackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;,
        Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;
    }
.end annotation


# static fields
.field public static final DEFAULT_THEME_CONTENT_URI:Ljava/lang/String; = "content://com.immersion.android.haptics.defaulttheme"

.field private static final DEVICE_HANDLE_ARRAY_SIZE:I = 0x3

.field private static final INITIALIZED:Ljava/lang/String; = "initialized"

.field private static final KEYBOARD_DEVICE_HANDLE_INDEX:I = 0x0

.field private static final MAX_IMMVIBE_INITIALIZATION_ATTEMPTS:I = 0xf

.field public static final TAG:Ljava/lang/String; = "HapticFeedbackManager"

.field public static final UI_DEVICE_HANDLE_INDEX:I = 0x1

.field public static final UI_NOTIFICATION_DEVICE_HANDLE_INDEX:I = 0x2

.field private static final USER_ID:Ljava/lang/String; = "user_id"


# instance fields
.field private mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

.field private mBootedAndInitialized:Z

.field private mCalledFromProxy:Z

.field private mCanUseTouchSenseAPI:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentUserID:I

.field private mDevices:[Lcom/immersion/WrappableDevice;

.field private mImmVibeInitAttempts:I

.field mKeyboardTapVibePattern:[J

.field mLongPressVibePattern:[J

.field private mLooper:Landroid/os/Looper;

.field mSafeModeDisabledVibePattern:[J

.field mSafeModeEnabledVibePattern:[J

.field private mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

.field private mUserThemeObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;

.field private mVibrator:Landroid/os/Vibrator;

.field mVirtualKeyVibePattern:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/immersion/android/haptics/HapticFeedbackManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "calledFromProxy"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    .line 69
    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/immersion/WrappableDevice;

    iput-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    .line 73
    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    .line 74
    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mUserThemeObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;

    .line 75
    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    .line 76
    iput-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    .line 77
    iput-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    .line 78
    iput v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitAttempts:I

    .line 80
    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mLooper:Landroid/os/Looper;

    .line 106
    iput-object p1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    .line 107
    iput-boolean p3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    .line 108
    iput-object p2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mLooper:Landroid/os/Looper;

    .line 109
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_initialized"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 110
    iput-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    .line 111
    invoke-direct {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->immVibeInitialize()V

    .line 112
    iget-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->loadActiveTheme()V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    .line 124
    :goto_0
    invoke-virtual {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->registerSettingsContentObservers()V

    .line 125
    invoke-virtual {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->setupPackageBroadcastReceiver()V

    .line 126
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCurrentUserID:I

    .line 127
    return-void

    .line 121
    :cond_1
    const-string v0, "HapticFeedbackManager"

    const-string v1, "System not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/immersion/android/haptics/HapticFeedbackManager;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Lcom/immersion/android/haptics/HapticFeedbackManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/immersion/android/haptics/HapticFeedbackManager;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    return v0
.end method

.method static synthetic access$200(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/immersion/android/haptics/HapticFeedbackManager;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    return v0
.end method

.method static synthetic access$300(Lcom/immersion/android/haptics/HapticFeedbackManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/immersion/android/haptics/HapticFeedbackManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/immersion/android/haptics/HapticFeedbackManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/immersion/android/haptics/HapticFeedbackManager;

    .prologue
    .line 52
    iget v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCurrentUserID:I

    return v0
.end method

.method static synthetic access$402(Lcom/immersion/android/haptics/HapticFeedbackManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/immersion/android/haptics/HapticFeedbackManager;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCurrentUserID:I

    return p1
.end method

.method static synthetic access$500(Lcom/immersion/android/haptics/HapticFeedbackManager;)Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/immersion/android/haptics/HapticFeedbackManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mUserThemeObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/immersion/android/haptics/HapticFeedbackManager;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    return v0
.end method

.method static synthetic access$602(Lcom/immersion/android/haptics/HapticFeedbackManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/immersion/android/haptics/HapticFeedbackManager;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    return p1
.end method

.method static synthetic access$700(Lcom/immersion/android/haptics/HapticFeedbackManager;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/immersion/android/haptics/HapticFeedbackManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$702(Lcom/immersion/android/haptics/HapticFeedbackManager;Landroid/os/Vibrator;)Landroid/os/Vibrator;
    .locals 0
    .param p0, "x0"    # Lcom/immersion/android/haptics/HapticFeedbackManager;
    .param p1, "x1"    # Landroid/os/Vibrator;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    return-object p1
.end method

.method static synthetic access$800(Lcom/immersion/android/haptics/HapticFeedbackManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/immersion/android/haptics/HapticFeedbackManager;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->immVibeInitialize()V

    return-void
.end method

.method static synthetic access$900(Lcom/immersion/android/haptics/HapticFeedbackManager;)Lcom/immersion/android/haptics/HapticFeedbackTheme;
    .locals 1
    .param p0, "x0"    # Lcom/immersion/android/haptics/HapticFeedbackManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    return-object v0
.end method

.method private getDeviceIndex(I)I
    .locals 1
    .param p1, "effectId"    # I

    .prologue
    .line 924
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0x61a8

    if-lt p1, v0, :cond_1

    const/16 v0, 0x62e8

    if-gt p1, v0, :cond_1

    .line 926
    :cond_0
    const/4 v0, 0x0

    .line 932
    :goto_0
    return v0

    .line 927
    :cond_1
    const/16 v0, 0x63ce

    if-eq p1, v0, :cond_2

    const/16 v0, 0x63d8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x4f4c

    if-ne p1, v0, :cond_3

    .line 930
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 932
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I

    .prologue
    .line 888
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 889
    .local v0, "ar":[I
    if-nez v0, :cond_1

    .line 890
    const/4 v2, 0x0

    .line 896
    :cond_0
    return-object v2

    .line 892
    :cond_1
    array-length v3, v0

    new-array v2, v3, [J

    .line 893
    .local v2, "out":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 894
    aget v3, v0, v1

    int-to-long v4, v3

    aput-wide v4, v2, v1

    .line 893
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private immVibeInitialize()V
    .locals 7

    .prologue
    const/4 v4, 0x4

    .line 131
    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    if-nez v3, :cond_1

    .line 132
    const-string v3, "HapticFeedbackManager"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    const-string v3, "HapticFeedbackManager"

    const-string v4, "ImmVibeInitialize called but system has not finished booting"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitAttempts:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitAttempts:I

    .line 142
    :try_start_0
    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-eqz v3, :cond_4

    .line 145
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_keyboard_devicehandle"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 148
    .local v2, "iDeviceHandle":I
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v4, 0x0

    new-instance v5, Lcom/immersion/WrappableDevice;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Lcom/immersion/WrappableDevice;-><init>(II)V

    aput-object v5, v3, v4

    .line 152
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/immersion/WrappableDevice;->getPropertyInt32(I)I

    .line 156
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_ui_devicehandle"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 159
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v4, 0x1

    new-instance v5, Lcom/immersion/WrappableDevice;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Lcom/immersion/WrappableDevice;-><init>(II)V

    aput-object v5, v3, v4

    .line 163
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/immersion/WrappableDevice;->getPropertyInt32(I)I

    .line 167
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_ui_notification_devicehandle"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 170
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v4, 0x2

    new-instance v5, Lcom/immersion/WrappableDevice;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Lcom/immersion/WrappableDevice;-><init>(II)V

    aput-object v5, v3, v4

    .line 174
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/immersion/WrappableDevice;->getPropertyInt32(I)I

    .line 176
    const-string v3, "HapticFeedbackManager"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 177
    const-string v3, "HapticFeedbackManager"

    const-string v4, "Using existing device handle (called from proxy)."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    .line 230
    .end local v2    # "iDeviceHandle":I
    :goto_1
    const-string v3, "HapticFeedbackManager"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 231
    const-string v3, "HapticFeedbackManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proxy is \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'. mCanUseTouchSenseAPI ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :cond_3
    :try_start_1
    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-nez v3, :cond_9

    .line 247
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107001c

    invoke-static {v3, v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mLongPressVibePattern:[J

    .line 249
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107001d

    invoke-static {v3, v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVirtualKeyVibePattern:[J

    .line 251
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107001e

    invoke-static {v3, v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mKeyboardTapVibePattern:[J

    .line 253
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070021

    invoke-static {v3, v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeDisabledVibePattern:[J

    .line 255
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070022

    invoke-static {v3, v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeEnabledVibePattern:[J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "HapticFeedbackManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proxy is \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'. Exception caught in HapticFeedbackManager(...)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v4, 0x0

    new-instance v5, Lcom/immersion/WrappableDevice;

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/immersion/Device;->newDevice(I)Lcom/immersion/Device;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/immersion/WrappableDevice;-><init>(Lcom/immersion/Device;)V

    aput-object v5, v3, v4

    .line 184
    const/16 v3, 0xbb8

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Lcom/immersion/WrappableDevice;->getCapabilityInt32(I)I

    move-result v4

    if-eq v3, v4, :cond_7

    .line 189
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/immersion/WrappableDevice;->close()V

    .line 190
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v4, 0x0

    new-instance v5, Lcom/immersion/WrappableDevice;

    invoke-static {}, Lcom/immersion/Device;->newDevice()Lcom/immersion/Device;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/immersion/WrappableDevice;-><init>(Lcom/immersion/Device;)V

    aput-object v5, v3, v4

    .line 194
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v4, 0x1

    new-instance v5, Lcom/immersion/WrappableDevice;

    invoke-static {}, Lcom/immersion/Device;->newDevice()Lcom/immersion/Device;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/immersion/WrappableDevice;-><init>(Lcom/immersion/Device;)V

    aput-object v5, v3, v4

    .line 198
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v4, 0x2

    new-instance v5, Lcom/immersion/WrappableDevice;

    invoke-static {}, Lcom/immersion/Device;->newDevice()Lcom/immersion/Device;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/immersion/WrappableDevice;-><init>(Lcom/immersion/Device;)V

    aput-object v5, v3, v4

    .line 201
    const-string v3, "HapticFeedbackManager"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 202
    const-string v3, "HapticFeedbackManager"

    const-string v4, "Opening composite devices for keyboard, UI and notifications"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_5
    :goto_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    .line 216
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_keyboard_devicehandle"

    iget-object v5, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/immersion/WrappableDevice;->getDeviceHandle()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 220
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_ui_devicehandle"

    iget-object v5, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/immersion/WrappableDevice;->getDeviceHandle()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 223
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_ui_notification_devicehandle"

    iget-object v5, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/immersion/WrappableDevice;->getDeviceHandle()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 234
    :catch_1
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    .line 236
    const-string v3, "HapticFeedbackManager"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 237
    const-string v3, "HapticFeedbackManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proxy is \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'. Exception caught in HapticFeedbackManager(...)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    const-string v3, "HapticFeedbackManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proxy is \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'. mCanUseTouchSenseAPI ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 244
    :cond_6
    :try_start_4
    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-nez v3, :cond_a

    .line 247
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107001c

    invoke-static {v3, v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mLongPressVibePattern:[J

    .line 249
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107001d

    invoke-static {v3, v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVirtualKeyVibePattern:[J

    .line 251
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107001e

    invoke-static {v3, v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mKeyboardTapVibePattern:[J

    .line 253
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070021

    invoke-static {v3, v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeDisabledVibePattern:[J

    .line 255
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070022

    invoke-static {v3, v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeEnabledVibePattern:[J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 266
    :catch_2
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "HapticFeedbackManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proxy is \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'. Exception caught in HapticFeedbackManager(...)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_5
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v4, 0x1

    new-instance v5, Lcom/immersion/WrappableDevice;

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/immersion/Device;->newDevice(I)Lcom/immersion/Device;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/immersion/WrappableDevice;-><init>(Lcom/immersion/Device;)V

    aput-object v5, v3, v4

    .line 209
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v4, 0x2

    new-instance v5, Lcom/immersion/WrappableDevice;

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/immersion/Device;->newDevice(I)Lcom/immersion/Device;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/immersion/WrappableDevice;-><init>(Lcom/immersion/Device;)V

    aput-object v5, v3, v4

    .line 211
    const-string v3, "HapticFeedbackManager"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 212
    const-string v3, "HapticFeedbackManager"

    const-string v4, "3000 Edition, Opening single device for keyboard and UI"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 243
    :catchall_0
    move-exception v3

    .line 244
    :try_start_6
    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-nez v4, :cond_b

    .line 247
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107001c

    invoke-static {v4, v5}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mLongPressVibePattern:[J

    .line 249
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107001d

    invoke-static {v4, v5}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVirtualKeyVibePattern:[J

    .line 251
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107001e

    invoke-static {v4, v5}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mKeyboardTapVibePattern:[J

    .line 253
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070021

    invoke-static {v4, v5}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeDisabledVibePattern:[J

    .line 255
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070022

    invoke-static {v4, v5}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeEnabledVibePattern:[J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 269
    :cond_8
    :goto_3
    throw v3

    .line 259
    :cond_9
    :try_start_7
    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-nez v3, :cond_0

    .line 260
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_initialized"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 262
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.HAPTIC_INITIALIZED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "initialized"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 264
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 259
    .end local v1    # "i":Landroid/content/Intent;
    .local v0, "e":Ljava/lang/Throwable;
    :cond_a
    :try_start_8
    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-nez v3, :cond_0

    .line 260
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_initialized"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 262
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.HAPTIC_INITIALIZED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v3, "initialized"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 264
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 259
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "i":Landroid/content/Intent;
    :cond_b
    :try_start_9
    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-nez v4, :cond_8

    .line 260
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "haptic_feedback_initialized"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 262
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.HAPTIC_INITIALIZED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v4, "initialized"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 264
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    .line 266
    .end local v1    # "i":Landroid/content/Intent;
    :catch_3
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "HapticFeedbackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Proxy is \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'. Exception caught in HapticFeedbackManager(...)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3
.end method

.method private isHapticDisabled(I)Z
    .locals 5
    .param p1, "deviceHandle"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 536
    if-nez p1, :cond_0

    const-string v0, "haptic_feedback_keyboard_enable"

    .line 539
    .local v0, "deviceHandleSettings":Ljava/lang/String;
    :goto_0
    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-nez v3, :cond_2

    .line 540
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCurrentUserID:I

    invoke-static {v3, v0, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_1

    .line 548
    .local v1, "hapticsDisabled":Z
    :goto_1
    return v1

    .line 536
    .end local v0    # "deviceHandleSettings":Ljava/lang/String;
    .end local v1    # "hapticsDisabled":Z
    :cond_0
    const-string v0, "haptic_feedback_enabled"

    goto :goto_0

    .restart local v0    # "deviceHandleSettings":Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 540
    goto :goto_1

    .line 545
    :cond_2
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_3

    .restart local v1    # "hapticsDisabled":Z
    :goto_2
    goto :goto_1

    .end local v1    # "hapticsDisabled":Z
    :cond_3
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public canPlayHDEffects()Z
    .locals 2

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitAttempts:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->immVibeInitialize()V

    .line 278
    :cond_0
    iget-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    return v0
.end method

.method public cancel()V
    .locals 5

    .prologue
    .line 287
    :try_start_0
    iget-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-eqz v2, :cond_3

    .line 289
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 290
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/immersion/WrappableDevice;->stopAllPlayingEffects()V

    .line 289
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    :cond_1
    const-string v2, "HapticFeedbackManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 295
    const-string v2, "HapticFeedbackManager"

    const-string v3, "canceled all playing effects for all devices :"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 301
    :cond_3
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    if-nez v2, :cond_4

    .line 302
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    .line 304
    :cond_4
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HapticFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. Exception caught in cancel()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public cancel(I)V
    .locals 4
    .param p1, "deviceHandle"    # I

    .prologue
    .line 317
    :try_start_0
    iget-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-eqz v1, :cond_2

    .line 319
    if-lez p1, :cond_1

    const/4 v1, 0x3

    if-ge p1, v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/immersion/WrappableDevice;->stopAllPlayingEffects()V

    .line 321
    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canceled all playing effects for device :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    const-string v1, "HapticFeedbackManager"

    const-string v2, "deviceHandle is not supported"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. Exception caught in cancel()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 332
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_3

    .line 333
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    .line 335
    :cond_3
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public destroy()V
    .locals 5

    .prologue
    .line 686
    const-string v2, "HapticFeedbackManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 687
    const-string v2, "HapticFeedbackManager"

    const-string v3, "HapticFeedbackManager destroy called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 692
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 693
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    if-eqz v2, :cond_1

    .line 694
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 695
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    .line 698
    :cond_1
    if-eqz v0, :cond_2

    .line 699
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mUserThemeObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;

    if-eqz v2, :cond_2

    .line 700
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mUserThemeObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 701
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mUserThemeObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    :cond_2
    :goto_0
    return-void

    .line 705
    :catch_0
    move-exception v1

    .line 706
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "HapticFeedbackManager"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 707
    const-string v2, "HapticFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch exception caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected deviceForEffectId(I)I
    .locals 4
    .param p1, "effectId"    # I

    .prologue
    const/4 v2, 0x4

    .line 901
    invoke-direct {p0, p1}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getDeviceIndex(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 903
    .local v0, "deviceIndex":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 904
    const-string v1, "HapticFeedbackManager"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 905
    const-string v1, "HapticFeedbackManager"

    const-string v2, "HapticFeedbackTheme --> Use default device handle (Integrator UI)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_0
    const/4 v1, 0x1

    .line 915
    :goto_0
    return v1

    .line 910
    :cond_1
    const-string v1, "HapticFeedbackManager"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 911
    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HapticFeedbackTheme --> Use device handle index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->destroy()V

    .line 716
    return-void
.end method

.method public loadActiveTheme()V
    .locals 4

    .prologue
    .line 552
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_theme"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, "strTheme":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 558
    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. loadActiveTheme() --> strTheme is null, reverting to default theme"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_0
    const-string v0, "content://com.immersion.android.haptics.defaulttheme"

    .line 566
    :cond_1
    invoke-virtual {p0, v0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->loadActiveTheme(Ljava/lang/String;)V

    .line 567
    return-void
.end method

.method public loadActiveTheme(Ljava/lang/String;)V
    .locals 4
    .param p1, "strTheme"    # Ljava/lang/String;

    .prologue
    .line 571
    if-nez p1, :cond_0

    .line 572
    :try_start_0
    const-string p1, "content://com.immersion.android.haptics.defaulttheme"

    .line 574
    :cond_0
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    if-nez v1, :cond_2

    .line 577
    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 578
    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. loadActiveTheme() --> mActiveTheme is null. First time being loaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_1
    new-instance v1, Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    invoke-direct {v1, p1, v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackTheme;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;[Lcom/immersion/Device;)V

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    .line 587
    :cond_2
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-object v1, v1, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 590
    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 591
    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. loadActiveTheme() --> active theme has changed. Loading new theme"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_3
    new-instance v1, Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    invoke-direct {v1, p1, v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackTheme;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;[Lcom/immersion/Device;)V

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    .line 601
    :cond_4
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    invoke-virtual {v1}, Lcom/immersion/android/haptics/HapticFeedbackTheme;->ping()V

    .line 603
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-boolean v1, v1, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    if-nez v1, :cond_6

    .line 608
    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 609
    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. loadActiveTheme() --> problem with currently active theme. Switching back to default theme."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_5
    const-string p1, "content://com.immersion.android.haptics.defaulttheme"

    .line 615
    new-instance v1, Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    invoke-direct {v1, p1, v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackTheme;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;[Lcom/immersion/Device;)V

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    .line 617
    iget-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-nez v1, :cond_6

    .line 622
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_theme"

    iget v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCurrentUserID:I

    invoke-static {v1, v2, p1, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 628
    :cond_6
    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 629
    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. loadActiveTheme() --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-object v3, v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mAuthority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :cond_7
    :goto_0
    return-void

    .line 632
    :catch_0
    move-exception v0

    .line 633
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. Exception caught in loadActiveTheme()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifySystemBoot()V
    .locals 4

    .prologue
    .line 721
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    .line 722
    invoke-direct {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->immVibeInitialize()V

    .line 723
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-eqz v1, :cond_0

    .line 724
    invoke-virtual {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->loadActiveTheme()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. Exception caught in notifySystemBoot()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public performHapticFeedback(IZ)Z
    .locals 1
    .param p1, "effectId"    # I
    .param p2, "always"    # Z

    .prologue
    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/immersion/android/haptics/HapticFeedbackManager;->performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v0

    return v0
.end method

.method public performHapticFeedback(IZ[JLcom/immersion/IVTBuffer;II)Z
    .locals 8
    .param p1, "effectId"    # I
    .param p2, "always"    # Z
    .param p3, "vibPattern"    # [J
    .param p4, "vibEffect"    # Lcom/immersion/IVTBuffer;
    .param p5, "repeat"    # I
    .param p6, "deviceHandle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 351
    iget-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    if-nez v2, :cond_1

    .line 352
    const-string v2, "HapticFeedbackManager"

    const/4 v4, 0x4

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    const-string v2, "HapticFeedbackManager"

    const-string v4, "PerformHapticFeedback but system has not finished booting"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v2, v3

    .line 408
    :goto_0
    return v2

    .line 358
    :cond_1
    iget-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitAttempts:I

    const/16 v5, 0xf

    if-ge v2, v5, :cond_2

    .line 359
    invoke-direct {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->immVibeInitialize()V

    .line 369
    :cond_2
    :try_start_0
    invoke-direct {p0, p6}, Lcom/immersion/android/haptics/HapticFeedbackManager;->isHapticDisabled(I)Z

    move-result v1

    .line 371
    .local v1, "hapticsDisabled":Z
    if-eqz p6, :cond_3

    .line 372
    if-nez p2, :cond_4

    if-eqz v1, :cond_4

    move v2, v3

    .line 374
    goto :goto_0

    .line 377
    :cond_3
    if-eqz v1, :cond_4

    move v2, v3

    .line 378
    goto :goto_0

    .line 381
    :cond_4
    if-eqz p4, :cond_5

    iget-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-eqz v2, :cond_5

    .line 384
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    aget-object v2, v2, p6

    const/4 v5, 0x0

    int-to-byte v6, p5

    invoke-virtual {v2, p4, v5, v6}, Lcom/immersion/WrappableDevice;->playIVTEffectRepeat(Lcom/immersion/IVTBuffer;IB)Lcom/immersion/EffectHandle;

    move v2, v4

    .line 386
    goto :goto_0

    .line 388
    :cond_5
    if-eqz p3, :cond_8

    array-length v2, p3

    if-lez v2, :cond_8

    .line 389
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    if-nez v2, :cond_6

    .line 390
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    const-string v5, "vibrator"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    .line 393
    :cond_6
    array-length v2, p3

    if-ne v2, v4, :cond_7

    .line 395
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v5, 0x0

    aget-wide v6, p3, v5

    invoke-virtual {v2, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    :goto_1
    move v2, v4

    .line 400
    goto :goto_0

    .line 398
    :cond_7
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2, p3, p5}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 405
    .end local v1    # "hapticsDisabled":Z
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HapticFeedbackManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proxy is \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'. Exception caught in performHapticFeedback(...)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 408
    goto :goto_0

    .line 403
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "hapticsDisabled":Z
    :cond_8
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2, p1, p2, p6}, Lcom/immersion/android/haptics/HapticFeedbackManager;->performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZI)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0
.end method

.method public performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 1
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    .line 414
    invoke-virtual {p0, p2}, Lcom/immersion/android/haptics/HapticFeedbackManager;->deviceForEffectId(I)I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZI)Z

    move-result v0

    return v0
.end method

.method public performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZI)Z
    .locals 10
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z
    .param p4, "deviceHandle"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 421
    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    if-nez v4, :cond_1

    .line 422
    const-string v4, "HapticFeedbackManager"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 423
    const-string v4, "HapticFeedbackManager"

    const-string v6, "PerformHapticFeedback called but system has not finished booting"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v4, v5

    .line 526
    :goto_0
    return v4

    .line 428
    :cond_1
    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitAttempts:I

    const/16 v7, 0xf

    if-ge v4, v7, :cond_2

    .line 429
    invoke-direct {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->immVibeInitialize()V

    .line 434
    :cond_2
    :try_start_0
    invoke-direct {p0, p4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->isHapticDisabled(I)Z

    move-result v1

    .line 436
    .local v1, "hapticsDisabled":Z
    if-eqz p4, :cond_3

    .line 437
    if-nez p3, :cond_4

    if-eqz v1, :cond_4

    move v4, v5

    .line 439
    goto :goto_0

    .line 442
    :cond_3
    if-eqz v1, :cond_4

    move v4, v5

    .line 443
    goto :goto_0

    .line 446
    :cond_4
    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-eqz v4, :cond_c

    .line 449
    const-string v4, "HapticFeedbackManager"

    const/4 v7, 0x4

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 450
    sget-object v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 451
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-nez v2, :cond_6

    .line 452
    const-string v4, "HapticFeedbackManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Proxy is \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'. performHapticFeedback() via TouchSense API: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_5
    :goto_1
    const/16 v4, 0x5460

    if-ne p2, v4, :cond_7

    .line 463
    invoke-virtual {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->cancel()V

    move v4, v6

    .line 464
    goto :goto_0

    .line 455
    .restart local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_6
    const-string v7, "HapticFeedbackManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Proxy is \'"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v8, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\'. performHapticFeedback() via TouchSense API: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 523
    .end local v1    # "hapticsDisabled":Z
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "HapticFeedbackManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proxy is \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'. Exception caught in performHapticFeedback(...)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v5

    .line 526
    goto/16 :goto_0

    .line 466
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "hapticsDisabled":Z
    :cond_7
    :try_start_1
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    if-nez v4, :cond_9

    .line 468
    const-string v4, "HapticFeedbackManager"

    const/4 v6, 0x6

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 469
    const-string v4, "HapticFeedbackManager"

    const-string v6, "mActiveTheme is NULL"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v4, v5

    .line 471
    goto/16 :goto_0

    .line 473
    :cond_9
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    aget-object v4, v4, p4

    if-nez v4, :cond_b

    .line 475
    const-string v4, "HapticFeedbackManager"

    const/4 v6, 0x6

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 476
    const-string v4, "HapticFeedbackManager"

    const-string v6, "mDevices[deviceHandle] is NULL"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move v4, v5

    .line 478
    goto/16 :goto_0

    .line 480
    :cond_b
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-object v6, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    aget-object v6, v6, p4

    invoke-virtual {v4, p2, v6}, Lcom/immersion/android/haptics/HapticFeedbackTheme;->performHapticFeedback(ILcom/immersion/Device;)Z

    move-result v4

    goto/16 :goto_0

    .line 484
    :cond_c
    const-string v4, "HapticFeedbackManager"

    const/4 v7, 0x4

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 485
    const-string v4, "HapticFeedbackManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Proxy is \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'. performHapticFeedback() via Google Vibrator API"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_d
    const/4 v3, 0x0

    .line 490
    .local v3, "pattern":[J
    sparse-switch p2, :sswitch_data_0

    move v4, v5

    .line 512
    goto/16 :goto_0

    .line 492
    :sswitch_0
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mLongPressVibePattern:[J

    .line 514
    :goto_2
    array-length v4, v3

    if-ne v4, v6, :cond_e

    .line 516
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v7, 0x0

    aget-wide v8, v3, v7

    invoke-virtual {v4, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    :goto_3
    move v4, v6

    .line 521
    goto/16 :goto_0

    .line 495
    :sswitch_1
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVirtualKeyVibePattern:[J

    .line 496
    goto :goto_2

    .line 503
    :sswitch_2
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mKeyboardTapVibePattern:[J

    .line 504
    goto :goto_2

    .line 506
    :sswitch_3
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeDisabledVibePattern:[J

    .line 507
    goto :goto_2

    .line 509
    :sswitch_4
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeEnabledVibePattern:[J

    .line 510
    goto :goto_2

    .line 519
    :cond_e
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v7, -0x1

    invoke-virtual {v4, v3, v7}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 490
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x2710 -> :sswitch_3
        0x2711 -> :sswitch_4
        0x61a8 -> :sswitch_2
        0x6220 -> :sswitch_2
        0x622a -> :sswitch_2
        0x6234 -> :sswitch_2
        0x623e -> :sswitch_2
    .end sparse-switch
.end method

.method protected registerSettingsContentObservers()V
    .locals 6

    .prologue
    .line 670
    :try_start_0
    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-nez v3, :cond_0

    .line 671
    new-instance v3, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;

    invoke-direct {v3, p0, p0}, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;-><init>(Lcom/immersion/android/haptics/HapticFeedbackManager;Lcom/immersion/android/haptics/HapticFeedbackManager;)V

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mUserThemeObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;

    .line 673
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 674
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 675
    const-string v3, "haptic_feedback_theme"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 676
    .local v2, "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mUserThemeObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 679
    :catch_0
    move-exception v1

    .line 680
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "HapticFeedbackManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proxy is \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'. Exception caught in setupPackageBroadcastReceiver()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected setupPackageBroadcastReceiver()V
    .locals 5

    .prologue
    .line 643
    :try_start_0
    new-instance v2, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    invoke-direct {v2, p0, p0}, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;-><init>(Lcom/immersion/android/haptics/HapticFeedbackManager;Lcom/immersion/android/haptics/HapticFeedbackManager;)V

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    .line 645
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 646
    .local v1, "intf":Landroid/content/IntentFilter;
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 647
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 649
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "intf":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 650
    .restart local v1    # "intf":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 652
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "intf":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 653
    .restart local v1    # "intf":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 655
    iget-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-eqz v2, :cond_0

    .line 656
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "intf":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HAPTIC_INITIALIZED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 657
    .restart local v1    # "intf":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 658
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "intf":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HAPTIC_THEME"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 659
    .restart local v1    # "intf":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    .end local v1    # "intf":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 661
    :catch_0
    move-exception v0

    .line 662
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HapticFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. Exception caught in setupPackageBroadcastReceiver()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
