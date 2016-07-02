.class public Lcom/android/server/DeviceControlService;
.super Lmeizu/os/IDeviceControlService$Stub;
.source "DeviceControlService.java"


# static fields
.field private static DEBUG:Z = false

.field public static final DEVCFG_ACCELERATION_SENSOR:I = 0x9

.field public static final DEVCFG_ACTIVATE_STATS:I = 0x5

.field public static final DEVCFG_BUTTON_LIGHT:I = 0x2

.field public static final DEVCFG_EARPOD_STATE:I = 0xb

.field public static final DEVCFG_GRAVITY_SENSOR:I = 0x4

.field public static final DEVCFG_GYROSCOPE_SENSOR:I = 0xa

.field public static final DEVCFG_IR_CALIBRATE:I = 0x0

.field public static final DEVCFG_LIGHT_SENSOR:I = 0x3

.field public static final DEVCFG_MAINTAIN_STATE:I = 0x6

.field public static final DEVCFG_MAX_INT_FIELDS:I = 0x7

.field public static final DEVCFG_SHOPDEMO_TOOL:I = 0x8

.field public static final DEVCFG_TOUCH_SCREEN:I = 0x1

.field public static final EARPOD_ADJUST_CMD_UP_KEY_CALIBRATE:Ljava/lang/String; = "up_key_calibrate"

.field public static final EARPOD_ADJUST_STATE_COMPLETE:Ljava/lang/String; = "COMPLETE"

.field public static final EARPOD_ADJUST_STATE_ERROR:Ljava/lang/String; = "ERROR"

.field public static final EARPOD_ADJUST_STATE_PENDING:Ljava/lang/String; = "PENDING"

.field private static TAG:Ljava/lang/String;


# instance fields
.field public mContext:Landroid/content/Context;

.field private mLightsManager:Lcom/android/server/lights/LightsManager;

.field private mNotification:Lcom/android/server/lights/Light;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "DeviceControlService"

    sput-object v0, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    .line 13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/DeviceControlService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lmeizu/os/IDeviceControlService$Stub;-><init>()V

    .line 44
    invoke-static {}, Lcom/android/server/DeviceControlService;->nativeInit()V

    .line 45
    return-void
.end method

.method private static native nativeInit()V
.end method

.method private static native native_calib_acce_sensor()I
.end method

.method private static native native_calib_gyro_sensor()I
.end method

.method private static native native_calibrate_gp2ap()I
.end method

.method private static native native_count_as_restart(Ljava/lang/String;)I
.end method

.method private static native native_read_cfgparam(I[I)I
.end method

.method private static native native_read_cpu_value()I
.end method

.method private static native native_read_earpod_adjust_data()I
.end method

.method private static native native_read_earpod_adjust_state()I
.end method

.method private static native native_read_gp2ap()I
.end method

.method private static native native_resume_system_control(B)I
.end method

.method private static native native_save_cpu_value(I)I
.end method

.method private static native native_set_hdmi_cable_status(I)I
.end method

.method private static native native_write_acce_factory_calib_value()I
.end method

.method private static native native_write_byte_to_control(BB)I
.end method

.method private static native native_write_cfgparam(I[I)I
.end method

.method private static native native_write_earpod_adjust_cmd(Ljava/lang/String;)I
.end method

.method private static native native_write_earpod_factory_calib_value()I
.end method

.method private static native native_write_gp2ap(I)I
.end method

.method private static native native_write_gyro_factory_calib_value()I
.end method

.method private static native native_write_proximity_sensor_factory_calib_value()I
.end method

.method private setNotificationLightEnableInternal(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 298
    sget-object v0, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNotificationLightEnableInternal mode=:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mNotification:Lcom/android/server/lights/Light;

    if-nez v0, :cond_0

    .line 300
    sget-object v0, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNotificationLightEnableInternal mNotification == null! mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_0
    return-void

    .line 304
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 306
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mNotification:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->mzTurnOnStable()V

    goto :goto_0

    .line 309
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mNotification:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->mzTurnOffStable()V

    goto :goto_0

    .line 312
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mNotification:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->mzTurnOnFlick()V

    goto :goto_0

    .line 315
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mNotification:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->mzTurnOffFlick()V

    goto :goto_0

    .line 318
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mNotification:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->mzTurnOnDoubleFlick()V

    goto :goto_0

    .line 321
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mNotification:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->mzTurnOffDoubleFlick()V

    goto :goto_0

    .line 324
    :sswitch_6
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mNotification:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->mzTurnOnFlash()V

    goto :goto_0

    .line 327
    :sswitch_7
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mNotification:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->mzTurnOffFlash()V

    goto :goto_0

    .line 330
    :sswitch_8
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mNotification:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->mzTurnOnOneshotBlink()V

    goto :goto_0

    .line 304
    nop

    :sswitch_data_0
    .sparse-switch
        0x200 -> :sswitch_0
        0x400 -> :sswitch_1
        0x800 -> :sswitch_2
        0x1000 -> :sswitch_3
        0x2000 -> :sswitch_4
        0x4000 -> :sswitch_5
        0x8000 -> :sswitch_6
        0x10000 -> :sswitch_7
        0x20000 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public calibFactoryValueWhenBootSystem()V
    .locals 0

    .prologue
    .line 190
    invoke-static {}, Lcom/android/server/DeviceControlService;->native_write_proximity_sensor_factory_calib_value()I

    .line 195
    invoke-static {}, Lcom/android/server/DeviceControlService;->native_write_acce_factory_calib_value()I

    .line 197
    invoke-static {}, Lcom/android/server/DeviceControlService;->native_write_gyro_factory_calib_value()I

    .line 201
    invoke-static {}, Lcom/android/server/DeviceControlService;->native_write_earpod_factory_calib_value()I

    .line 203
    return-void
.end method

.method public calibrateAcceAndGyroSensor()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 175
    invoke-static {}, Lcom/android/server/DeviceControlService;->native_calib_acce_sensor()I

    move-result v1

    if-gez v1, :cond_0

    .line 176
    sget-object v1, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    const-string v2, "calibrateAcceleration failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_0
    return v0

    .line 179
    :cond_0
    invoke-static {}, Lcom/android/server/DeviceControlService;->native_calib_gyro_sensor()I

    move-result v1

    if-gez v1, :cond_1

    .line 180
    sget-object v1, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    const-string v2, "calibrateGyroscope failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public calibrateGp2ap()I
    .locals 2

    .prologue
    .line 123
    sget-boolean v0, Lcom/android/server/DeviceControlService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    const-string v1, "calibrateGp2ap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    invoke-static {}, Lcom/android/server/DeviceControlService;->native_calibrate_gp2ap()I

    move-result v0

    return v0
.end method

.method public countAsRestart(I)I
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 247
    .local v1, "typeStr":Ljava/lang/StringBuilder;
    const-string v2, "reboot_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    sget-boolean v2, Lcom/android/server/DeviceControlService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 250
    sget-object v2, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "countAsRestart type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", typeStr is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/DeviceControlService;->native_count_as_restart(Ljava/lang/String;)I

    move-result v0

    .line 253
    return v0
.end method

.method public readCPUfreq()I
    .locals 4

    .prologue
    .line 77
    invoke-static {}, Lcom/android/server/DeviceControlService;->native_read_cpu_value()I

    move-result v0

    .line 78
    .local v0, "ret":I
    sget-boolean v1, Lcom/android/server/DeviceControlService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 79
    sget-object v1, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readCPUfreq----value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    return v0
.end method

.method public readCfgParam(I[I)I
    .locals 4
    .param p1, "dev"    # I
    .param p2, "info"    # [I

    .prologue
    .line 107
    sget-boolean v1, Lcom/android/server/DeviceControlService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 108
    sget-object v1, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readCfgParam dev:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/DeviceControlService;->native_read_cfgparam(I[I)I

    move-result v0

    .line 111
    .local v0, "ret":I
    sget-boolean v1, Lcom/android/server/DeviceControlService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 112
    sget-object v1, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readCfgParam dev over:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1
    return v0
.end method

.method public readEarpodAdjustData()I
    .locals 2

    .prologue
    .line 226
    sget-boolean v0, Lcom/android/server/DeviceControlService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 227
    sget-object v0, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    const-string v1, "read earpod adjust data."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    invoke-static {}, Lcom/android/server/DeviceControlService;->native_read_earpod_adjust_data()I

    move-result v0

    return v0
.end method

.method public readEarpodAdjustState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    invoke-static {}, Lcom/android/server/DeviceControlService;->native_read_earpod_adjust_state()I

    move-result v0

    .line 216
    .local v0, "result":I
    packed-switch v0, :pswitch_data_0

    .line 222
    :pswitch_0
    const-string v1, "ERROR"

    :goto_0
    return-object v1

    .line 217
    :pswitch_1
    const-string v1, "ERROR"

    goto :goto_0

    .line 218
    :pswitch_2
    const-string v1, "PENDING"

    goto :goto_0

    .line 219
    :pswitch_3
    const-string v1, "COMPLETE"

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public readGp2apValue()I
    .locals 4

    .prologue
    .line 136
    const/4 v0, -0x1

    .line 137
    .local v0, "ret":I
    invoke-static {}, Lcom/android/server/DeviceControlService;->native_read_gp2ap()I

    move-result v0

    .line 138
    sget-boolean v1, Lcom/android/server/DeviceControlService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 139
    sget-object v1, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readGp2apValue--value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    return v0
.end method

.method public resumeSystemControl(B)I
    .locals 1
    .param p1, "direction"    # B

    .prologue
    .line 239
    invoke-static {p1}, Lcom/android/server/DeviceControlService;->native_resume_system_control(B)I

    move-result v0

    return v0
.end method

.method public saveCPUfreq(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/server/DeviceControlService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveCPUfreq----value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    invoke-static {p1}, Lcom/android/server/DeviceControlService;->native_save_cpu_value(I)I

    move-result v0

    return v0
.end method

.method public setNotificationLightEnable(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lcom/android/server/DeviceControlService;->setNotificationLightEnableInternal(I)V

    .line 344
    return-void
.end method

.method public set_hdmi_cable_status(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 164
    sget-boolean v1, Lcom/android/server/DeviceControlService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 165
    sget-object v1, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set_hdmi_cable_status value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    invoke-static {p1}, Lcom/android/server/DeviceControlService;->native_set_hdmi_cable_status(I)I

    move-result v0

    .line 168
    .local v0, "ret":I
    sget-boolean v1, Lcom/android/server/DeviceControlService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 169
    sget-object v1, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set_hdmi_cable_status--value overy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_1
    return v0
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/server/DeviceControlService;->mContext:Landroid/content/Context;

    .line 50
    const-class v0, Lcom/android/server/lights/LightsManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    iput-object v0, p0, Lcom/android/server/DeviceControlService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    .line 51
    iget-object v0, p0, Lcom/android/server/DeviceControlService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceControlService;->mNotification:Lcom/android/server/lights/Light;

    .line 53
    return-void
.end method

.method public writeByteToControl(BB)I
    .locals 1
    .param p1, "direction"    # B
    .param p2, "value"    # B

    .prologue
    .line 235
    invoke-static {p1, p2}, Lcom/android/server/DeviceControlService;->native_write_byte_to_control(BB)I

    move-result v0

    return v0
.end method

.method public writeCfgParam(I[I)I
    .locals 3
    .param p1, "dev"    # I
    .param p2, "info"    # [I

    .prologue
    .line 92
    sget-boolean v0, Lcom/android/server/DeviceControlService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeCfgParam dev:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/DeviceControlService;->native_write_cfgparam(I[I)I

    move-result v0

    return v0
.end method

.method public writeEarpodAdjustCmd(Ljava/lang/String;)I
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 207
    sget-boolean v0, Lcom/android/server/DeviceControlService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    const-string v1, "write earpod adjust cmd."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    invoke-static {p1}, Lcom/android/server/DeviceControlService;->native_write_earpod_adjust_cmd(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public writeGp2apValue(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 152
    sget-boolean v1, Lcom/android/server/DeviceControlService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 153
    sget-object v1, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeGp2apValue value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    invoke-static {p1}, Lcom/android/server/DeviceControlService;->native_write_gp2ap(I)I

    move-result v0

    .line 156
    .local v0, "ret":I
    sget-boolean v1, Lcom/android/server/DeviceControlService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 157
    sget-object v1, Lcom/android/server/DeviceControlService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeGp2apValue--value overy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_1
    return v0
.end method
