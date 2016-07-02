.class public final Lcom/android/server/hips/core/InterceptFactory;
.super Ljava/lang/Object;
.source "InterceptFactory.java"


# static fields
.field public static final MODE_NORMAL:I = 0x1

.field public static final MODE_POWERSAVING:I = 0x2

.field private static final mInstance:Lcom/android/server/hips/core/InterceptFactory;


# instance fields
.field private volatile m_nMode:I

.field private m_objNormalMode:Lcom/android/server/hips/core/NormalMode;

.field private m_objPowerSavingMode:Lcom/android/server/hips/core/PowerSavingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/android/server/hips/core/InterceptFactory;

    invoke-direct {v0}, Lcom/android/server/hips/core/InterceptFactory;-><init>()V

    sput-object v0, Lcom/android/server/hips/core/InterceptFactory;->mInstance:Lcom/android/server/hips/core/InterceptFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/server/hips/core/InterceptFactory;->m_objNormalMode:Lcom/android/server/hips/core/NormalMode;

    .line 45
    iput-object v0, p0, Lcom/android/server/hips/core/InterceptFactory;->m_objPowerSavingMode:Lcom/android/server/hips/core/PowerSavingMode;

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hips/core/InterceptFactory;->m_nMode:I

    .line 49
    new-instance v0, Lcom/android/server/hips/core/NormalMode;

    invoke-direct {v0}, Lcom/android/server/hips/core/NormalMode;-><init>()V

    iput-object v0, p0, Lcom/android/server/hips/core/InterceptFactory;->m_objNormalMode:Lcom/android/server/hips/core/NormalMode;

    .line 50
    new-instance v0, Lcom/android/server/hips/core/PowerSavingMode;

    invoke-direct {v0}, Lcom/android/server/hips/core/PowerSavingMode;-><init>()V

    iput-object v0, p0, Lcom/android/server/hips/core/InterceptFactory;->m_objPowerSavingMode:Lcom/android/server/hips/core/PowerSavingMode;

    .line 51
    return-void
.end method

.method public static getInstance()Lcom/android/server/hips/core/InterceptFactory;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/server/hips/core/InterceptFactory;->mInstance:Lcom/android/server/hips/core/InterceptFactory;

    return-object v0
.end method


# virtual methods
.method public addPkg(Ljava/lang/String;II)V
    .locals 1
    .param p1, "szPkg"    # Ljava/lang/String;
    .param p2, "nMod"    # I
    .param p3, "nSrc"    # I

    .prologue
    .line 60
    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/server/hips/core/InterceptFactory;->m_objNormalMode:Lcom/android/server/hips/core/NormalMode;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/hips/core/NormalMode;->addPkg(Ljava/lang/String;I)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p2, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/server/hips/core/InterceptFactory;->m_objPowerSavingMode:Lcom/android/server/hips/core/PowerSavingMode;

    invoke-virtual {v0, p1}, Lcom/android/server/hips/core/PowerSavingMode;->addPkg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized changeMode(I)V
    .locals 3
    .param p1, "nMode"    # I

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/server/hips/core/InterceptFactory;->m_nMode:I

    .line 55
    const-string v0, "FLYME_HIPS_DEBUG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hips/core/InterceptFactory;->m_nMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/hips/common/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public delPkg(Ljava/lang/String;II)V
    .locals 1
    .param p1, "szPkg"    # Ljava/lang/String;
    .param p2, "nMod"    # I
    .param p3, "nSrc"    # I

    .prologue
    .line 69
    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    .line 70
    iget-object v0, p0, Lcom/android/server/hips/core/InterceptFactory;->m_objNormalMode:Lcom/android/server/hips/core/NormalMode;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/hips/core/NormalMode;->delPkg(Ljava/lang/String;I)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p2, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/server/hips/core/InterceptFactory;->m_objPowerSavingMode:Lcom/android/server/hips/core/PowerSavingMode;

    invoke-virtual {v0, p1}, Lcom/android/server/hips/core/PowerSavingMode;->delPkg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getInterceptDebugStatus()Z
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/android/server/hips/db/DataBaseHelper;->getInterceptDebugStatus()Z

    move-result v0

    return v0
.end method

.method public getInterceptSwitchStatus()Z
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/android/server/hips/core/Intercept;->getInterceptSwitchStatus()Z

    move-result v0

    return v0
.end method

.method public getSearchPkgStatus()Z
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/android/server/hips/core/Intercept;->getSearchPkgStatus()Z

    move-result v0

    return v0
.end method

.method public interceptAct(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "szCallerPkg"    # Ljava/lang/String;
    .param p2, "szAct"    # Ljava/lang/String;

    .prologue
    .line 108
    const/4 v0, -0x1

    .line 109
    .local v0, "nRet":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/hips/core/InterceptFactory;->m_nMode:I

    if-ne v1, v2, :cond_1

    .line 110
    iget-object v1, p0, Lcom/android/server/hips/core/InterceptFactory;->m_objNormalMode:Lcom/android/server/hips/core/NormalMode;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/hips/core/NormalMode;->interceptAct(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/hips/core/InterceptFactory;->m_nMode:I

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method

.method public interceptPkg(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "nCode"    # I
    .param p2, "szCallerPkg"    # Ljava/lang/String;
    .param p3, "szCalleePkg"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "bRet":Z
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/hips/core/InterceptFactory;->m_nMode:I

    if-ne v1, v2, :cond_1

    .line 87
    iget-object v1, p0, Lcom/android/server/hips/core/InterceptFactory;->m_objNormalMode:Lcom/android/server/hips/core/NormalMode;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/hips/core/NormalMode;->interceptPkg(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/hips/core/InterceptFactory;->m_nMode:I

    if-ne v1, v2, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/server/hips/core/InterceptFactory;->m_objPowerSavingMode:Lcom/android/server/hips/core/PowerSavingMode;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/hips/core/PowerSavingMode;->interceptPkg(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public interceptPkgIgnoreCaller(Ljava/lang/String;)Z
    .locals 3
    .param p1, "szCalleePkg"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "bRet":Z
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/hips/core/InterceptFactory;->m_nMode:I

    if-ne v1, v2, :cond_1

    .line 100
    iget-object v1, p0, Lcom/android/server/hips/core/InterceptFactory;->m_objNormalMode:Lcom/android/server/hips/core/NormalMode;

    invoke-virtual {v1, p1}, Lcom/android/server/hips/core/NormalMode;->interceptPkgIgnoreCaller(Ljava/lang/String;)Z

    move-result v0

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/hips/core/InterceptFactory;->m_nMode:I

    if-ne v1, v2, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/server/hips/core/InterceptFactory;->m_objPowerSavingMode:Lcom/android/server/hips/core/PowerSavingMode;

    invoke-virtual {v1, p1}, Lcom/android/server/hips/core/PowerSavingMode;->interceptPkgIgnoreCaller(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setInterceptSwitchStatus(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 30
    invoke-static {p1}, Lcom/android/server/hips/core/Intercept;->setInterceptSwitchStatus(Z)V

    .line 31
    invoke-static {p1}, Lcom/android/server/hips/db/DataBaseHelper;->setInterceptSwitchStatus(Z)V

    .line 32
    return-void
.end method

.method public setSearchPkgStatus(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 39
    invoke-static {p1}, Lcom/android/server/hips/core/Intercept;->setSearchPkgStatus(Z)V

    .line 40
    return-void
.end method

.method public updatePkgInterceptStatus(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "szPkg"    # Ljava/lang/String;
    .param p2, "bIntercept"    # Z

    .prologue
    .line 77
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/hips/core/InterceptFactory;->m_nMode:I

    if-ne v0, v1, :cond_1

    .line 78
    iget-object v0, p0, Lcom/android/server/hips/core/InterceptFactory;->m_objNormalMode:Lcom/android/server/hips/core/NormalMode;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hips/core/NormalMode;->updatePkgInterceptStatus(Ljava/lang/String;Z)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/hips/core/InterceptFactory;->m_nMode:I

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method
