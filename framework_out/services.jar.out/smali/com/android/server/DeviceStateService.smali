.class public Lcom/android/server/DeviceStateService;
.super Lmeizu/os/IDeviceStateService$Stub;
.source "DeviceStateService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# static fields
.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final ROOT_RECOVERY_STATE:Ljava/lang/String; = "android.permission.ROOT_RECOVERY_STATE"

.field private static final VOLD_TAG:Ljava/lang/String; = "DeviceStateService"

.field public static final resultStatus:I = 0x2bd


# instance fields
.field private mConnected:Z

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field public mContext:Landroid/content/Context;

.field mDeviceControl:Lcom/android/server/DeviceControlService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/DeviceControlService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "devicecontrolservice"    # Lcom/android/server/DeviceControlService;

    .prologue
    .line 74
    invoke-direct {p0}, Lmeizu/os/IDeviceStateService$Stub;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceStateService;->mConnected:Z

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DeviceStateService;->mDeviceControl:Lcom/android/server/DeviceControlService;

    .line 75
    iput-object p1, p0, Lcom/android/server/DeviceStateService;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/android/server/DeviceStateService;->mDeviceControl:Lcom/android/server/DeviceControlService;

    .line 89
    return-void
.end method

.method private native nativeDoCheckState(I)I
.end method

.method private native nativeDoCommand(I[B)I
.end method

.method private native nativeDoGetInitNo(I[B)I
.end method

.method private native nativeLockRecoveryUnchecked()I
.end method

.method private native nativeLockRecoveryUncheckedByHandle(I)I
.end method


# virtual methods
.method public doCheckState(I)I
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/DeviceStateService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ROOT_RECOVERY_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "DeviceStateService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCheckState handle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/DeviceStateService;->nativeDoCheckState(I)I

    move-result v0

    return v0
.end method

.method public doCommand(I[B)I
    .locals 3
    .param p1, "handle"    # I
    .param p2, "rsaData"    # [B

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/DeviceStateService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ROOT_RECOVERY_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "DeviceStateService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCommand handle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/server/DeviceStateService;->nativeDoCommand(I[B)I

    move-result v0

    return v0
.end method

.method public doGetInitNo(I[B)I
    .locals 3
    .param p1, "handle"    # I
    .param p2, "inData"    # [B

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/DeviceStateService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ROOT_RECOVERY_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "DeviceStateService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doGetInitNo handle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/server/DeviceStateService;->nativeDoGetInitNo(I[B)I

    move-result v0

    return v0
.end method

.method public getActivateStats()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v2, p0, Lcom/android/server/DeviceStateService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ROOT_RECOVERY_STATE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v2, p0, Lcom/android/server/DeviceStateService;->mDeviceControl:Lcom/android/server/DeviceControlService;

    if-nez v2, :cond_1

    .line 138
    const-string v2, "DeviceStateService"

    const-string v3, "mDeviceControl==null!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    :goto_0
    return v1

    .line 143
    :cond_1
    const/4 v2, 0x7

    new-array v0, v2, [I

    .line 145
    .local v0, "data":[I
    iget-object v2, p0, Lcom/android/server/DeviceStateService;->mDeviceControl:Lcom/android/server/DeviceControlService;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0}, Lcom/android/server/DeviceControlService;->readCfgParam(I[I)I

    move-result v2

    if-lez v2, :cond_0

    .line 146
    aget v1, v0, v1

    goto :goto_0
.end method

.method public lockRecoveryUnchecked()I
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/DeviceStateService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ROOT_RECOVERY_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "DeviceStateService"

    const-string v1, "lockRecoveryUnchecked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0}, Lcom/android/server/DeviceStateService;->nativeLockRecoveryUnchecked()I

    move-result v0

    return v0
.end method

.method public lockRecoveryUncheckedByHandle(I)I
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/DeviceStateService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ROOT_RECOVERY_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v0, "DeviceStateService"

    const-string v1, "lockRecoveryUncheckedByHandle"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/DeviceStateService;->nativeLockRecoveryUncheckedByHandle(I)I

    move-result v0

    return v0
.end method

.method public onCheckHoldWakeLock(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceStateService;->mConnected:Z

    .line 177
    const-string v0, "DeviceStateService"

    const-string v1, "Ahahaha!onDaemonConnected "

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public setActivateStats(I)I
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-object v2, p0, Lcom/android/server/DeviceStateService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ROOT_RECOVERY_STATE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lcom/android/server/DeviceStateService;->mDeviceControl:Lcom/android/server/DeviceControlService;

    if-nez v2, :cond_1

    .line 159
    const-string v2, "DeviceStateService"

    const-string v3, "mDeviceControl==null!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    :goto_0
    return v1

    .line 164
    :cond_1
    const/4 v2, 0x7

    new-array v0, v2, [I

    .line 165
    .local v0, "data":[I
    aput p1, v0, v1

    .line 166
    iget-object v2, p0, Lcom/android/server/DeviceStateService;->mDeviceControl:Lcom/android/server/DeviceControlService;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0}, Lcom/android/server/DeviceControlService;->writeCfgParam(I[I)I

    move-result v2

    if-lez v2, :cond_0

    .line 167
    const/4 v1, 0x1

    goto :goto_0
.end method
