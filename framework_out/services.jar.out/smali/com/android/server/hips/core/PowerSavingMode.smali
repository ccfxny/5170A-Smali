.class public Lcom/android/server/hips/core/PowerSavingMode;
.super Lcom/android/server/hips/core/Intercept;
.source "PowerSavingMode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/server/hips/core/Intercept;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public addPILog(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 9
    .param p1, "szCallerPkg"    # Ljava/lang/String;
    .param p2, "szCalleePkg"    # Ljava/lang/String;
    .param p3, "nCode"    # I
    .param p4, "nResult"    # I

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/server/hips/core/PowerSavingMode;->mPILList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 17
    iget-object v7, p0, Lcom/android/server/hips/core/PowerSavingMode;->mPILList:Ljava/util/List;

    monitor-enter v7

    .line 18
    :try_start_0
    iget-object v8, p0, Lcom/android/server/hips/core/PowerSavingMode;->mPILList:Ljava/util/List;

    new-instance v0, Lcom/android/server/hips/core/Intercept$PILNode;

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/hips/core/Intercept$PILNode;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Long;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/android/server/hips/core/PowerSavingMode;->mPILList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 22
    invoke-static {}, Lcom/android/server/hips/db/DataBaseHelper;->getInstance()Lcom/android/server/hips/db/DataBaseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hips/core/PowerSavingMode;->mPILList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/server/hips/db/DataBaseHelper;->saveInterceptLog(Ljava/util/List;)V

    .line 23
    iget-object v0, p0, Lcom/android/server/hips/core/PowerSavingMode;->mPILList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 25
    :cond_0
    monitor-exit v7

    .line 27
    :cond_1
    return-void

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
