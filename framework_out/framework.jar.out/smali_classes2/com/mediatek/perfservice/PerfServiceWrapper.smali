.class public Lcom/mediatek/perfservice/PerfServiceWrapper;
.super Ljava/lang/Object;
.source "PerfServiceWrapper.java"

# interfaces
.implements Lcom/mediatek/perfservice/IPerfServiceWrapper;


# static fields
.field private static final RENDER_THREAD_UPDATE_DURATION:I = 0x190

.field private static final TAG:Ljava/lang/String; = "PerfServiceWrapper"

.field private static isOptHongbaoEnable:Z


# instance fields
.field private inited:I

.field private mContext:Landroid/content/Context;

.field private mPreviousTime:J

.field private sService:Lcom/mediatek/perfservice/IPerfService;

.field private setTid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "persist.opt.hongbao.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/perfservice/PerfServiceWrapper;->isOptHongbaoEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    .line 55
    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->inited:I

    .line 57
    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->setTid:I

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mPreviousTime:J

    .line 88
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    .line 55
    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->inited:I

    .line 57
    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->setTid:I

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mPreviousTime:J

    .line 82
    iput-object p1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mContext:Landroid/content/Context;

    .line 83
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 84
    return-void
.end method

.method private boostWechatFromTypeOfService(I)V
    .locals 8
    .param p1, "typeOfService"    # I

    .prologue
    const/4 v5, -0x1

    .line 138
    const/4 v1, -0x1

    .line 140
    .local v1, "handle":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 141
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    const/16 v2, 0xdac

    invoke-interface {v0, p1, v2}, Lcom/mediatek/perfservice/IPerfService;->userBenchMarkPowerMode(II)V

    .line 143
    const/4 v0, 0x3

    const v2, 0x21b8d0

    const/4 v3, 0x2

    const v4, 0x19c990

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/mediatek/perfservice/PerfServiceWrapper;->userRegBigLittle(IIII)I

    move-result v1

    .line 144
    if-eq v1, v5, :cond_0

    .line 145
    const/16 v2, 0x8

    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/perfservice/PerfServiceWrapper;->userRegScnConfig(IIIIII)V

    .line 146
    const/16 v0, 0xfa0

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->userEnableTimeoutMs(II)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    const/16 v2, 0x2710

    invoke-interface {v0, p1, v2}, Lcom/mediatek/perfservice/IPerfService;->userWiFiUnSleep(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_1
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v7

    .line 151
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in boostWechatFromNetWork:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 69
    iget v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->inited:I

    if-nez v1, :cond_0

    .line 70
    const-string v1, "mtk-perfservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 71
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 72
    invoke-static {v0}, Lcom/mediatek/perfservice/IPerfService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/perfservice/IPerfService;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    .line 73
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_1

    .line 74
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->inited:I

    .line 79
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 76
    .restart local v0    # "b":Landroid/os/IBinder;
    :cond_1
    const-string v1, "ERR: getService() sService is still null.."

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 416
    const-string v0, "PerfServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PerfServiceWrapper] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 420
    const-string v0, "PerfServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PerfServiceWrapper] ERR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return-void
.end method

.method public static native nativeGetPid()I
.end method

.method public static native nativeGetTid()I
.end method


# virtual methods
.method public boostDisable(I)V
    .locals 3
    .param p1, "scenario"    # I

    .prologue
    .line 106
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 107
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->boostDisable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in boostDisable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public boostEnable(I)V
    .locals 3
    .param p1, "scenario"    # I

    .prologue
    .line 95
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 96
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->boostEnable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in boostEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public boostEnableTimeout(II)V
    .locals 3
    .param p1, "scenario"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 117
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 118
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->boostEnableTimeout(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in boostEnableTimeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public boostEnableTimeoutMs(II)V
    .locals 3
    .param p1, "scenario"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 128
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 129
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->boostEnableTimeoutMs(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in boostEnableTimeoutMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public boostWechatFromLuckyMoneyXXXActivity()V
    .locals 1

    .prologue
    .line 161
    sget-boolean v0, Lcom/mediatek/perfservice/PerfServiceWrapper;->isOptHongbaoEnable:Z

    if-eqz v0, :cond_0

    .line 162
    const/16 v0, 0x401

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->boostWechatFromTypeOfService(I)V

    .line 163
    :cond_0
    return-void
.end method

.method public boostWechatFromNetWork()V
    .locals 1

    .prologue
    .line 156
    sget-boolean v0, Lcom/mediatek/perfservice/PerfServiceWrapper;->isOptHongbaoEnable:Z

    if-eqz v0, :cond_0

    .line 157
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->boostWechatFromTypeOfService(I)V

    .line 158
    :cond_0
    return-void
.end method

.method public dumpAll()V
    .locals 3

    .prologue
    .line 348
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 349
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1}, Lcom/mediatek/perfservice/IPerfService;->dumpAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in dumpAll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyAppState(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "packName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "state"    # I

    .prologue
    .line 169
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 170
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2, p3}, Lcom/mediatek/perfservice/IPerfService;->notifyAppState(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in notifyAppState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyDisplayType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 394
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 396
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->notifyDisplayType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in notifyDisplayType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyFrameUpdate(I)V
    .locals 8
    .param p1, "level"    # I

    .prologue
    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 372
    .local v2, "nowTime":J
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 374
    iget v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->setTid:I

    if-nez v1, :cond_0

    .line 375
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetTid()I

    move-result p1

    .line 376
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->setTid:I

    .line 379
    :cond_0
    iget-wide v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mPreviousTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    iget-wide v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mPreviousTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x190

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    .line 381
    :cond_1
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_2

    .line 382
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->notifyFrameUpdate(I)V

    .line 383
    :cond_2
    iput-wide v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mPreviousTime:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :cond_3
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERR: RemoteException in notifyFrameUpdate:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyUserStatus(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "status"    # I

    .prologue
    .line 406
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 408
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->notifyUserStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in notifyUserStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFavorPid(I)V
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 359
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 360
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->setFavorPid(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in setFavorPid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userDisable(I)V
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 286
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 287
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->userDisable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in userDisable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userDisableAll()V
    .locals 3

    .prologue
    .line 328
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 329
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1}, Lcom/mediatek/perfservice/IPerfService;->userDisableAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in userDisableAll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userEnable(I)V
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 275
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 276
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->userEnable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in userEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userEnableTimeout(II)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 297
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 298
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->userEnableTimeout(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in userEnableTimeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userEnableTimeoutMs(II)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 308
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 309
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->userEnableTimeoutMs(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in userEnableTimeoutMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userGetCapability(I)I
    .locals 4
    .param p1, "cmd"    # I

    .prologue
    .line 221
    const/4 v1, -0x1

    .line 224
    .local v1, "value":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 225
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v2, p1}, Lcom/mediatek/perfservice/IPerfService;->userGetCapability(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 231
    :cond_0
    :goto_0
    return v1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: RemoteException in userGetCapability:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userReg(II)I
    .locals 6
    .param p1, "scn_core"    # I
    .param p2, "scn_freq"    # I

    .prologue
    .line 178
    const/4 v1, -0x1

    .line 181
    .local v1, "handle":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 182
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetPid()I

    move-result v2

    .line 183
    .local v2, "pid":I
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetTid()I

    move-result v3

    .line 184
    .local v3, "tid":I
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v4, :cond_0

    .line 185
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v4, p1, p2, v2, v3}, Lcom/mediatek/perfservice/IPerfService;->userReg(IIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 190
    .end local v2    # "pid":I
    .end local v3    # "tid":I
    :cond_0
    :goto_0
    return v1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERR: RemoteException in userReg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userRegBigLittle(IIII)I
    .locals 9
    .param p1, "scn_core_big"    # I
    .param p2, "scn_freq_big"    # I
    .param p3, "scn_core_little"    # I
    .param p4, "scn_freq_little"    # I

    .prologue
    .line 194
    const/4 v8, -0x1

    .line 197
    .local v8, "handle":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 198
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetPid()I

    move-result v5

    .line 199
    .local v5, "pid":I
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetTid()I

    move-result v6

    .line 200
    .local v6, "tid":I
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/perfservice/IPerfService;->userRegBigLittle(IIIIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 206
    .end local v5    # "pid":I
    .end local v6    # "tid":I
    :cond_0
    :goto_0
    return v8

    .line 202
    :catch_0
    move-exception v7

    .line 203
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERR: RemoteException in userRegBigLittle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userRegScn()I
    .locals 6

    .prologue
    .line 235
    const/4 v1, -0x1

    .line 238
    .local v1, "handle":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 239
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetPid()I

    move-result v2

    .line 240
    .local v2, "pid":I
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetTid()I

    move-result v3

    .line 241
    .local v3, "tid":I
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v4, :cond_0

    .line 242
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v4, v2, v3}, Lcom/mediatek/perfservice/IPerfService;->userRegScn(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 247
    .end local v2    # "pid":I
    .end local v3    # "tid":I
    :cond_0
    :goto_0
    return v1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERR: RemoteException in userRegScn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userRegScnConfig(IIIIII)V
    .locals 8
    .param p1, "handle"    # I
    .param p2, "cmd"    # I
    .param p3, "param_1"    # I
    .param p4, "param_2"    # I
    .param p5, "param_3"    # I
    .param p6, "param_4"    # I

    .prologue
    .line 253
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 254
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/perfservice/IPerfService;->userRegScnConfig(IIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v7

    .line 257
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERR: RemoteException in userRegScnConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userResetAll()V
    .locals 3

    .prologue
    .line 318
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 319
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1}, Lcom/mediatek/perfservice/IPerfService;->userResetAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in userResetAll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userRestoreAll()V
    .locals 3

    .prologue
    .line 338
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 339
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1}, Lcom/mediatek/perfservice/IPerfService;->userRestoreAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in userRestoreAll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userUnreg(I)V
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 212
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 213
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->userUnreg(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in userUnreg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userUnregScn(I)V
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 264
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 265
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->userUnregScn(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in userUnregScn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method
