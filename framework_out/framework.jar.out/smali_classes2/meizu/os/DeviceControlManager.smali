.class public Lmeizu/os/DeviceControlManager;
.super Ljava/lang/Object;
.source "DeviceControlManager.java"


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

.field public static final DEVCFG_SHOPDEMO_TOOL:I = 0x8

.field public static final DEVCFG_TOUCH_SCREEN:I = 0x1

.field public static final EARPOD_ADJUST_CMD_UP_KEY_CALIBRATE:Ljava/lang/String; = "up_key_calibrate"

.field public static final EARPOD_ADJUST_STATE_COMPLETE:Ljava/lang/String; = "COMPLETE"

.field public static final EARPOD_ADJUST_STATE_ERROR:Ljava/lang/String; = "ERROR"

.field public static final EARPOD_ADJUST_STATE_PENDING:Ljava/lang/String; = "PENDING"

.field private static TAG:Ljava/lang/String;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mService:Lmeizu/os/IDeviceControlService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "DeviceControlManager"

    sput-object v0, Lmeizu/os/DeviceControlManager;->TAG:Ljava/lang/String;

    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lmeizu/os/DeviceControlManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmeizu/os/IDeviceControlService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lmeizu/os/IDeviceControlService;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lmeizu/os/DeviceControlManager;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lmeizu/os/DeviceControlManager;->mService:Lmeizu/os/IDeviceControlService;

    .line 43
    return-void
.end method


# virtual methods
.method public calibrateAcceAndGyroSensor()I
    .locals 2

    .prologue
    .line 158
    :try_start_0
    iget-object v1, p0, Lmeizu/os/DeviceControlManager;->mService:Lmeizu/os/IDeviceControlService;

    invoke-interface {v1}, Lmeizu/os/IDeviceControlService;->calibrateAcceAndGyroSensor()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 160
    :goto_0
    return v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public calibrateGp2ap()I
    .locals 2

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Lmeizu/os/DeviceControlManager;->mService:Lmeizu/os/IDeviceControlService;

    invoke-interface {v1}, Lmeizu/os/IDeviceControlService;->calibrateGp2ap()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 113
    :goto_0
    return v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public countAsRestart(I)I
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 224
    const/4 v1, -0x1

    .line 226
    .local v1, "ret":I
    :try_start_0
    iget-object v3, p0, Lmeizu/os/DeviceControlManager;->mService:Lmeizu/os/IDeviceControlService;

    invoke-interface {v3, p1}, Lmeizu/os/IDeviceControlService;->countAsRestart(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    move v2, v1

    .line 230
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 227
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    .line 230
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catchall_0
    move-exception v3

    move v2, v1

    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method public readCPUfreq()I
    .locals 2

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lmeizu/os/DeviceControlManager;->mService:Lmeizu/os/IDeviceControlService;

    invoke-interface {v1}, Lmeizu/os/IDeviceControlService;->readCPUfreq()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 70
    :goto_0
    return v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public readCfgParam(I[I)I
    .locals 2
    .param p1, "dev"    # I
    .param p2, "info"    # [I

    .prologue
    .line 98
    :try_start_0
    iget-object v1, p0, Lmeizu/os/DeviceControlManager;->mService:Lmeizu/os/IDeviceControlService;

    invoke-interface {v1, p1, p2}, Lmeizu/os/IDeviceControlService;->readCfgParam(I[I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 100
    :goto_0
    return v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public readEarpodAdjustData()I
    .locals 2

    .prologue
    .line 183
    :try_start_0
    iget-object v1, p0, Lmeizu/os/DeviceControlManager;->mService:Lmeizu/os/IDeviceControlService;

    invoke-interface {v1}, Lmeizu/os/IDeviceControlService;->readEarpodAdjustData()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 185
    :goto_0
    return v1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public readEarpodAdjustState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    :try_start_0
    iget-object v1, p0, Lmeizu/os/DeviceControlManager;->mService:Lmeizu/os/IDeviceControlService;

    invoke-interface {v1}, Lmeizu/os/IDeviceControlService;->readEarpodAdjustState()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 177
    :goto_0
    return-object v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ERROR"

    goto :goto_0
.end method

.method public readGp2apValue()I
    .locals 2

    .prologue
    .line 124
    :try_start_0
    iget-object v1, p0, Lmeizu/os/DeviceControlManager;->mService:Lmeizu/os/IDeviceControlService;

    invoke-interface {v1}, Lmeizu/os/IDeviceControlService;->readGp2apValue()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 126
    :goto_0
    return v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public resumeSystemControl(B)I
    .locals 2
    .param p1, "direction"    # B

    .prologue
    .line 214
    :try_start_0
    iget-object v1, p0, Lmeizu/os/DeviceControlManager;->mService:Lmeizu/os/IDeviceControlService;

    invoke-interface {v1, p1}, Lmeizu/os/IDeviceControlService;->resumeSystemControl(B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 217
    :goto_0
    return v1

    .line 215
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public saveCPUfreq(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 54
    :try_start_0
    iget-object v1, p0, Lmeizu/os/DeviceControlManager;->mService:Lmeizu/os/IDeviceControlService;

    invoke-interface {v1, p1}, Lmeizu/os/IDeviceControlService;->saveCPUfreq(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 56
    :goto_0
    return v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setNotificationLightEnable(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 197
    :try_start_0
    iget-object v0, p0, Lmeizu/os/DeviceControlManager;->mService:Lmeizu/os/IDeviceControlService;

    invoke-interface {v0, p1}, Lmeizu/os/IDeviceControlService;->setNotificationLightEnable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public set_hdmi_cable_status(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p0, Lmeizu/os/DeviceControlManager;->mService:Lmeizu/os/IDeviceControlService;

    invoke-interface {v1, p1}, Lmeizu/os/IDeviceControlService;->set_hdmi_cable_status(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 148
    :goto_0
    return v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public writeByteToControl(BB)I
    .locals 2
    .param p1, "direction"    # B
    .param p2, "value"    # B

    .prologue
    .line 205
    :try_start_0
    iget-object v1, p0, Lmeizu/os/DeviceControlManager;->mService:Lmeizu/os/IDeviceControlService;

    invoke-interface {v1, p1, p2}, Lmeizu/os/IDeviceControlService;->writeByteToControl(BB)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 208
    :goto_0
    return v1

    .line 206
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public writeCfgParam(I[I)I
    .locals 2
    .param p1, "dev"    # I
    .param p2, "info"    # [I

    .prologue
    .line 83
    :try_start_0
    iget-object v1, p0, Lmeizu/os/DeviceControlManager;->mService:Lmeizu/os/IDeviceControlService;

    invoke-interface {v1, p1, p2}, Lmeizu/os/IDeviceControlService;->writeCfgParam(I[I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 85
    :goto_0
    return v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public writeEarpodAdjustCmd(Ljava/lang/String;)I
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 167
    :try_start_0
    iget-object v1, p0, Lmeizu/os/DeviceControlManager;->mService:Lmeizu/os/IDeviceControlService;

    invoke-interface {v1, p1}, Lmeizu/os/IDeviceControlService;->writeEarpodAdjustCmd(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 169
    :goto_0
    return v1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public writeGp2apValue(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Lmeizu/os/DeviceControlManager;->mService:Lmeizu/os/IDeviceControlService;

    invoke-interface {v1, p1}, Lmeizu/os/IDeviceControlService;->writeGp2apValue(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 140
    :goto_0
    return v1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method
