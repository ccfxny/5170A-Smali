.class public Lcom/android/server/hips/core/NormalMode;
.super Lcom/android/server/hips/core/Intercept;
.source "NormalMode.java"


# static fields
.field public static final SRC_AUTOUPDATE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/server/hips/core/Intercept;-><init>()V

    .line 12
    invoke-static {}, Lcom/android/server/hips/db/DataBaseHelper;->checkUpdate()V

    .line 13
    invoke-static {}, Lcom/android/server/hips/db/DataBaseHelper;->getInstance()Lcom/android/server/hips/db/DataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hips/db/DataBaseHelper;->loadInterceptList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hips/core/NormalMode;->mPIIList:Ljava/util/List;

    .line 14
    invoke-static {}, Lcom/android/server/hips/db/DataBaseHelper;->getInstance()Lcom/android/server/hips/db/DataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hips/db/DataBaseHelper;->loadAppBehaviourList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hips/core/NormalMode;->mPIBList:Ljava/util/List;

    .line 15
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
    .line 44
    iget-object v0, p0, Lcom/android/server/hips/core/NormalMode;->mPILList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 45
    iget-object v7, p0, Lcom/android/server/hips/core/NormalMode;->mPILList:Ljava/util/List;

    monitor-enter v7

    .line 46
    :try_start_0
    iget-object v8, p0, Lcom/android/server/hips/core/NormalMode;->mPILList:Ljava/util/List;

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

    .line 49
    iget-object v0, p0, Lcom/android/server/hips/core/NormalMode;->mPILList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 50
    invoke-static {}, Lcom/android/server/hips/db/DataBaseHelper;->getInstance()Lcom/android/server/hips/db/DataBaseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hips/core/NormalMode;->mPILList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/server/hips/db/DataBaseHelper;->saveInterceptLog(Ljava/util/List;)V

    .line 51
    iget-object v0, p0, Lcom/android/server/hips/core/NormalMode;->mPILList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 53
    :cond_0
    monitor-exit v7

    .line 55
    :cond_1
    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addPkg(Ljava/lang/String;I)V
    .locals 1
    .param p1, "szPkg"    # Ljava/lang/String;
    .param p2, "nSrc"    # I

    .prologue
    .line 18
    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    .line 19
    invoke-static {}, Lcom/android/server/hips/db/DataBaseHelper;->getInstance()Lcom/android/server/hips/db/DataBaseHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hips/db/DataBaseHelper;->isExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    invoke-super {p0, p1}, Lcom/android/server/hips/core/Intercept;->addPkg(Ljava/lang/String;)V

    .line 22
    :cond_0
    invoke-static {}, Lcom/android/server/hips/db/DataBaseHelper;->getInstance()Lcom/android/server/hips/db/DataBaseHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hips/db/DataBaseHelper;->addPldPkg(Ljava/lang/String;)V

    .line 27
    :goto_0
    return-void

    .line 24
    :cond_1
    invoke-super {p0, p1}, Lcom/android/server/hips/core/Intercept;->addPkg(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/android/server/hips/db/DataBaseHelper;->getInstance()Lcom/android/server/hips/db/DataBaseHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hips/db/DataBaseHelper;->addUsrPkg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public delPkg(Ljava/lang/String;I)V
    .locals 1
    .param p1, "szPkg"    # Ljava/lang/String;
    .param p2, "nSrc"    # I

    .prologue
    .line 30
    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    .line 31
    invoke-static {}, Lcom/android/server/hips/db/DataBaseHelper;->getInstance()Lcom/android/server/hips/db/DataBaseHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hips/db/DataBaseHelper;->isExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-super {p0, p1}, Lcom/android/server/hips/core/Intercept;->delPkg(Ljava/lang/String;)V

    .line 34
    :cond_0
    invoke-static {}, Lcom/android/server/hips/db/DataBaseHelper;->getInstance()Lcom/android/server/hips/db/DataBaseHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hips/db/DataBaseHelper;->delPldPkg(Ljava/lang/String;)V

    .line 39
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-super {p0, p1}, Lcom/android/server/hips/core/Intercept;->delPkg(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/android/server/hips/db/DataBaseHelper;->getInstance()Lcom/android/server/hips/db/DataBaseHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hips/db/DataBaseHelper;->delUsrPkg(Ljava/lang/String;)V

    goto :goto_0
.end method
