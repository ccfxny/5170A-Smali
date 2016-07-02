.class public Lcom/meizu/findphone/FindPhoneUtils;
.super Lcom/meizu/findphone/FindPhoneAbstract;
.source "FindPhoneUtils.java"


# static fields
.field private static volatile sCurrentUserId:I


# instance fields
.field private mConnManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDeviceStateManager:Lmeizu/os/DeviceStateManager;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mMultiUserMode:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, -0x2710

    sput v0, Lcom/meizu/findphone/FindPhoneUtils;->sCurrentUserId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/meizu/findphone/FindPhoneAbstract;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/meizu/findphone/FindPhoneUtils;->mConnManager:Landroid/net/ConnectivityManager;

    .line 39
    iput-object v0, p0, Lcom/meizu/findphone/FindPhoneUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private getCurrentOrCallingUserId()I
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/meizu/findphone/FindPhoneUtils;->mMultiUserMode:Z

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/meizu/findphone/FindPhoneUtils;->getCurrentUser()I

    move-result v0

    .line 148
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    goto :goto_0
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/meizu/findphone/FindPhoneUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    .line 80
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/findphone/FindPhoneUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/meizu/findphone/FindPhoneUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private getLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 135
    :try_start_0
    invoke-direct {p0}, Lcom/meizu/findphone/FindPhoneUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/meizu/findphone/FindPhoneUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 138
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .line 137
    .restart local p2    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 138
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/meizu/findphone/FindPhoneUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/meizu/findphone/FindPhoneUtils;->setLong(Ljava/lang/String;JI)V

    .line 154
    return-void
.end method

.method private setLong(Ljava/lang/String;JI)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 158
    :try_start_0
    invoke-direct {p0}, Lcom/meizu/findphone/FindPhoneUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/meizu/findphone/FindPhoneUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 161
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "FindphoneAbstract"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write long "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCurrentUser()I
    .locals 3

    .prologue
    .line 93
    sget v1, Lcom/meizu/findphone/FindPhoneUtils;->sCurrentUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 95
    sget v1, Lcom/meizu/findphone/FindPhoneUtils;->sCurrentUserId:I

    .line 100
    :goto_0
    return v1

    .line 98
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDuration(J)J
    .locals 3
    .param p1, "defaultDuration"    # J

    .prologue
    .line 169
    const-string v0, "lockscreen.lock_time_interval"

    invoke-direct {p0, v0, p1, p2}, Lcom/meizu/findphone/FindPhoneUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLimitTime(J)J
    .locals 3
    .param p1, "defaultTime"    # J

    .prologue
    .line 106
    const-string v0, "lockscreen.findphone_limit_time"

    invoke-direct {p0, v0, p1, p2}, Lcom/meizu/findphone/FindPhoneUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/meizu/findphone/FindPhoneUtils;->mContext:Landroid/content/Context;

    .line 44
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/findphone/FindPhoneUtils;->mMultiUserMode:Z

    .line 46
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFindphoneLocked()Z
    .locals 4

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 53
    .local v0, "lock":Z
    :try_start_0
    iget-object v2, p0, Lcom/meizu/findphone/FindPhoneUtils;->mDeviceStateManager:Lmeizu/os/DeviceStateManager;

    if-nez v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/meizu/findphone/FindPhoneUtils;->mContext:Landroid/content/Context;

    const-string v3, "device_states"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmeizu/os/DeviceStateManager;

    iput-object v2, p0, Lcom/meizu/findphone/FindPhoneUtils;->mDeviceStateManager:Lmeizu/os/DeviceStateManager;

    .line 56
    :cond_0
    const/4 v1, 0x0

    .line 57
    .local v1, "recoveryLockState":I
    iget-object v2, p0, Lcom/meizu/findphone/FindPhoneUtils;->mDeviceStateManager:Lmeizu/os/DeviceStateManager;

    if-eqz v2, :cond_1

    .line 58
    iget-object v2, p0, Lcom/meizu/findphone/FindPhoneUtils;->mDeviceStateManager:Lmeizu/os/DeviceStateManager;

    sget-object v3, Lmeizu/os/DeviceStateManager$RemoteHandle;->Lock:Lmeizu/os/DeviceStateManager$RemoteHandle;

    invoke-virtual {v3}, Lmeizu/os/DeviceStateManager$RemoteHandle;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lmeizu/os/DeviceStateManager;->doCheckState(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 60
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 61
    const/4 v0, 0x1

    .line 65
    .end local v1    # "recoveryLockState":I
    :cond_2
    :goto_0
    return v0

    .line 63
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public processLeftTimes(Z)I
    .locals 2
    .param p1, "reset"    # Z

    .prologue
    .line 71
    :try_start_0
    invoke-direct {p0}, Lcom/meizu/findphone/FindPhoneUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->mzProcessLeftTimes(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 74
    :goto_0
    return v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 74
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 88
    sput p1, Lcom/meizu/findphone/FindPhoneUtils;->sCurrentUserId:I

    .line 89
    return-void
.end method

.method public updateLimitedTime(Lcom/meizu/flyme/service/find/FindPhoneData;)V
    .locals 18
    .param p1, "data"    # Lcom/meizu/flyme/service/find/FindPhoneData;

    .prologue
    .line 112
    if-eqz p1, :cond_1

    .line 113
    move-object/from16 v0, p1

    iget v4, v0, Lcom/meizu/flyme/service/find/FindPhoneData;->mCode:I

    .line 114
    .local v4, "errorcode":I
    move-object/from16 v0, p1

    iget v5, v0, Lcom/meizu/flyme/service/find/FindPhoneData;->mDuration:I

    int-to-long v2, v5

    .line 115
    .local v2, "duration":J
    const-string v5, "FindphoneAbstract"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "errorcode = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", duration = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    const-wide/16 v12, 0x0

    cmp-long v5, v2, v12

    if-lez v5, :cond_2

    .line 117
    const-string v5, "lockscreen.findphone_limit_time"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12, v13}, Lcom/meizu/findphone/FindPhoneUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 118
    .local v8, "limitTime":J
    const-string v5, "lockscreen.lock_time_interval"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12, v13}, Lcom/meizu/findphone/FindPhoneUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 119
    .local v6, "lastDuration":J
    const-string v5, "FindphoneAbstract"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "limitTime = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", lastDuration = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/findphone/FindPhoneUtils;->getCurrentTime()J

    move-result-wide v10

    .line 121
    .local v10, "now":J
    const-wide/16 v12, 0x0

    cmp-long v5, v8, v12

    if-eqz v5, :cond_0

    sub-long v12, v10, v8

    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v6

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    cmp-long v5, v12, v14

    if-lez v5, :cond_1

    .line 122
    :cond_0
    const-string v5, "FindphoneAbstract"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateLimitedTime setLong , now = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", duration = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v5, "lockscreen.findphone_limit_time"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10, v11}, Lcom/meizu/findphone/FindPhoneUtils;->setLong(Ljava/lang/String;J)V

    .line 124
    const-string v5, "lockscreen.lock_time_interval"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v3}, Lcom/meizu/findphone/FindPhoneUtils;->setLong(Ljava/lang/String;J)V

    .line 131
    .end local v2    # "duration":J
    .end local v4    # "errorcode":I
    .end local v6    # "lastDuration":J
    .end local v8    # "limitTime":J
    .end local v10    # "now":J
    :cond_1
    :goto_0
    return-void

    .line 126
    .restart local v2    # "duration":J
    .restart local v4    # "errorcode":I
    :cond_2
    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 127
    :cond_3
    const-string v5, "lockscreen.findphone_limit_time"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12, v13}, Lcom/meizu/findphone/FindPhoneUtils;->setLong(Ljava/lang/String;J)V

    .line 128
    const-string v5, "lockscreen.lock_time_interval"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12, v13}, Lcom/meizu/findphone/FindPhoneUtils;->setLong(Ljava/lang/String;J)V

    goto :goto_0
.end method
