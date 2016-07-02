.class Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;
.super Landroid/os/Handler;
.source "IntelligentEngineService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/IntelligentEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerfSchedulerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/os/IntelligentEngineService;


# direct methods
.method constructor <init>(Lcom/android/server/os/IntelligentEngineService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    .line 194
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 195
    return-void
.end method

.method private addScenario(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "boostName"    # Ljava/lang/String;
    .param p2, "timeout"    # Ljava/lang/String;

    .prologue
    .line 366
    invoke-static {p1}, Lcom/android/server/os/ConfigFileUtils;->getBoostValueFromProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "boostValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service_addScenario : boostName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", timeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 371
    new-instance v0, Lcom/android/server/os/BoostInfo;

    invoke-direct {v0, p1, v1, p2}, Lcom/android/server/os/BoostInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .local v0, "boostInfo":Lcom/android/server/os/BoostInfo;
    iget-object v2, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    # getter for: Lcom/android/server/os/IntelligentEngineService;->mScenarioMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/os/IntelligentEngineService;->access$700(Lcom/android/server/os/IntelligentEngineService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .end local v0    # "boostInfo":Lcom/android/server/os/BoostInfo;
    :goto_0
    return-void

    .line 374
    :cond_0
    const-string v2, "boostValue == null"

    invoke-static {v2}, Landroid/perf/LogUtils;->logBoostWarn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private applyAppBoost(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "config"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 264
    if-nez p1, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    const-string v5, "boost_info_configration"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "configBoostName":Ljava/lang/String;
    const-string v5, "boost_info_timeout"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "configTimeout":Ljava/lang/String;
    const-string v5, "boost_info_packageName"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "configPackageName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service_applyAppBoost : configBoostName ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " configTimeout = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "configPackageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mIsGameBoosting ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    # getter for: Lcom/android/server/os/IntelligentEngineService;->mIsGameBoosting:Z
    invoke-static {v6}, Lcom/android/server/os/IntelligentEngineService;->access$500(Lcom/android/server/os/IntelligentEngineService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mGameBoostingPackageName ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    # getter for: Lcom/android/server/os/IntelligentEngineService;->mGameBoostingPackageName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/os/IntelligentEngineService;->access$600(Lcom/android/server/os/IntelligentEngineService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 278
    const-string v5, "AppResume"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 280
    iget-object v5, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    # getter for: Lcom/android/server/os/IntelligentEngineService;->mIsGameBoosting:Z
    invoke-static {v5}, Lcom/android/server/os/IntelligentEngineService;->access$500(Lcom/android/server/os/IntelligentEngineService;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 281
    iget-object v5, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    # getter for: Lcom/android/server/os/IntelligentEngineService;->mGameBoostingPackageName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/os/IntelligentEngineService;->access$600(Lcom/android/server/os/IntelligentEngineService;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->findBoostInfoByName(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/os/BoostInfo;

    move-result-object v4

    .line 283
    .local v4, "gameBoostInfo":Lcom/android/server/os/BoostInfo;
    const-string v5, "0"

    invoke-virtual {v4, v5}, Lcom/android/server/os/BoostInfo;->getDisableBoostConfigForGame(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-virtual {v4}, Lcom/android/server/os/BoostInfo;->getBoostName()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/os/IntelligentEngineService;->simpleHashCode(Ljava/lang/String;)J
    invoke-static {v6, v7}, Lcom/android/server/os/IntelligentEngineService;->access$400(Lcom/android/server/os/IntelligentEngineService;Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->writeBytesToNode([Ljava/lang/String;J)V

    .line 284
    iget-object v5, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    # setter for: Lcom/android/server/os/IntelligentEngineService;->mIsGameBoosting:Z
    invoke-static {v5, v8}, Lcom/android/server/os/IntelligentEngineService;->access$502(Lcom/android/server/os/IntelligentEngineService;Z)Z

    .line 285
    iget-object v5, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    # setter for: Lcom/android/server/os/IntelligentEngineService;->mGameBoostingPackageName:Ljava/lang/String;
    invoke-static {v5, v9}, Lcom/android/server/os/IntelligentEngineService;->access$602(Lcom/android/server/os/IntelligentEngineService;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .end local v4    # "gameBoostInfo":Lcom/android/server/os/BoostInfo;
    :cond_2
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->findBoostInfoByPackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/os/BoostInfo;

    move-result-object v0

    .line 291
    .local v0, "boostInfo":Lcom/android/server/os/BoostInfo;
    if-eqz v0, :cond_0

    .line 292
    if-eqz v3, :cond_4

    .line 293
    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 294
    const-string v5, "0"

    invoke-virtual {v0, v5}, Lcom/android/server/os/BoostInfo;->getDisableBoostConfigForGame(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-virtual {v0}, Lcom/android/server/os/BoostInfo;->getBoostName()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/os/IntelligentEngineService;->simpleHashCode(Ljava/lang/String;)J
    invoke-static {v6, v7}, Lcom/android/server/os/IntelligentEngineService;->access$400(Lcom/android/server/os/IntelligentEngineService;Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->writeBytesToNode([Ljava/lang/String;J)V

    .line 296
    iget-object v5, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    # setter for: Lcom/android/server/os/IntelligentEngineService;->mIsGameBoosting:Z
    invoke-static {v5, v8}, Lcom/android/server/os/IntelligentEngineService;->access$502(Lcom/android/server/os/IntelligentEngineService;Z)Z

    .line 297
    iget-object v5, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    # setter for: Lcom/android/server/os/IntelligentEngineService;->mGameBoostingPackageName:Ljava/lang/String;
    invoke-static {v5, v9}, Lcom/android/server/os/IntelligentEngineService;->access$602(Lcom/android/server/os/IntelligentEngineService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 299
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/os/BoostInfo;->getFinalBoostConfig()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-virtual {v0}, Lcom/android/server/os/BoostInfo;->getBoostName()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/os/IntelligentEngineService;->simpleHashCode(Ljava/lang/String;)J
    invoke-static {v6, v7}, Lcom/android/server/os/IntelligentEngineService;->access$400(Lcom/android/server/os/IntelligentEngineService;Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->writeBytesToNode([Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 303
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/os/BoostInfo;->getFinalBoostConfig()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-virtual {v0}, Lcom/android/server/os/BoostInfo;->getBoostName()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/os/IntelligentEngineService;->simpleHashCode(Ljava/lang/String;)J
    invoke-static {v6, v7}, Lcom/android/server/os/IntelligentEngineService;->access$400(Lcom/android/server/os/IntelligentEngineService;Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->writeBytesToNode([Ljava/lang/String;J)V

    .line 305
    iget-object v5, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/os/IntelligentEngineService;->mIsGameBoosting:Z
    invoke-static {v5, v6}, Lcom/android/server/os/IntelligentEngineService;->access$502(Lcom/android/server/os/IntelligentEngineService;Z)Z

    .line 306
    iget-object v5, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    # setter for: Lcom/android/server/os/IntelligentEngineService;->mGameBoostingPackageName:Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/android/server/os/IntelligentEngineService;->access$602(Lcom/android/server/os/IntelligentEngineService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private applyScenarioBoost(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "config"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v8, 0x0

    .line 223
    const-string v3, "Service_applyScenarioBoost "

    invoke-static {v3}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 224
    if-nez p1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    const-string v3, "boost_info_configration"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "configName":Ljava/lang/String;
    const-string v3, "boost_info_timeout"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "configTimeout":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service_applyScenarioBoost : configName ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " configTimeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 234
    invoke-direct {p0, v1, v2}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->findBoostInfoByName(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/os/BoostInfo;

    move-result-object v0

    .line 235
    .local v0, "boostInfo":Lcom/android/server/os/BoostInfo;
    if-eqz v0, :cond_0

    .line 236
    const-string v3, "TouchBoost"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    # getter for: Lcom/android/server/os/IntelligentEngineService;->lastTouchBoostTime:J
    invoke-static {v3}, Lcom/android/server/os/IntelligentEngineService;->access$200(Lcom/android/server/os/IntelligentEngineService;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x64

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    # getter for: Lcom/android/server/os/IntelligentEngineService;->lastTouchBoostTime:J
    invoke-static {v3}, Lcom/android/server/os/IntelligentEngineService;->access$200(Lcom/android/server/os/IntelligentEngineService;)J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-nez v3, :cond_0

    .line 241
    :cond_2
    iget-object v3, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Lcom/android/server/os/IntelligentEngineService;->lastTouchBoostTime:J
    invoke-static {v3, v4, v5}, Lcom/android/server/os/IntelligentEngineService;->access$202(Lcom/android/server/os/IntelligentEngineService;J)J

    .line 244
    const-string v3, "ListObtainBoost"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    # getter for: Lcom/android/server/os/IntelligentEngineService;->lastListBoostTime:J
    invoke-static {v3}, Lcom/android/server/os/IntelligentEngineService;->access$300(Lcom/android/server/os/IntelligentEngineService;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xc8

    cmp-long v3, v4, v6

    if-gez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    # getter for: Lcom/android/server/os/IntelligentEngineService;->lastListBoostTime:J
    invoke-static {v3}, Lcom/android/server/os/IntelligentEngineService;->access$300(Lcom/android/server/os/IntelligentEngineService;)J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-nez v3, :cond_0

    .line 254
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/os/BoostInfo;->getFinalBoostConfig()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-virtual {v0}, Lcom/android/server/os/BoostInfo;->getBoostName()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/os/IntelligentEngineService;->simpleHashCode(Ljava/lang/String;)J
    invoke-static {v4, v5}, Lcom/android/server/os/IntelligentEngineService;->access$400(Lcom/android/server/os/IntelligentEngineService;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->writeBytesToNode([Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 250
    :cond_4
    iget-object v3, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Lcom/android/server/os/IntelligentEngineService;->lastListBoostTime:J
    invoke-static {v3, v4, v5}, Lcom/android/server/os/IntelligentEngineService;->access$302(Lcom/android/server/os/IntelligentEngineService;J)J

    goto :goto_1
.end method

.method private findBoostInfoByName(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/os/BoostInfo;
    .locals 1
    .param p1, "boostName"    # Ljava/lang/String;
    .param p2, "timeout"    # Ljava/lang/String;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    # getter for: Lcom/android/server/os/IntelligentEngineService;->mScenarioMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/os/IntelligentEngineService;->access$700(Lcom/android/server/os/IntelligentEngineService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    invoke-direct {p0, p1, p2}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->addScenario(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    # getter for: Lcom/android/server/os/IntelligentEngineService;->mScenarioMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/os/IntelligentEngineService;->access$700(Lcom/android/server/os/IntelligentEngineService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/os/BoostInfo;

    return-object v0
.end method

.method private findBoostInfoByPackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/os/BoostInfo;
    .locals 1
    .param p1, "boostName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "timeout"    # Ljava/lang/String;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    # getter for: Lcom/android/server/os/IntelligentEngineService;->mScenarioMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/os/IntelligentEngineService;->access$700(Lcom/android/server/os/IntelligentEngineService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 339
    invoke-static {p2}, Lcom/android/server/os/ConfigFileUtils;->isAppNeedBoost(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    # getter for: Lcom/android/server/os/IntelligentEngineService;->mScenarioMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/os/IntelligentEngineService;->access$700(Lcom/android/server/os/IntelligentEngineService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    invoke-direct {p0, p2, p3}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->addScenario(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    # getter for: Lcom/android/server/os/IntelligentEngineService;->mScenarioMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/os/IntelligentEngineService;->access$700(Lcom/android/server/os/IntelligentEngineService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/os/BoostInfo;

    .line 354
    :goto_0
    return-object v0

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    # getter for: Lcom/android/server/os/IntelligentEngineService;->mScenarioMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/os/IntelligentEngineService;->access$700(Lcom/android/server/os/IntelligentEngineService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 349
    invoke-direct {p0, p1, p3}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->addScenario(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    # getter for: Lcom/android/server/os/IntelligentEngineService;->mScenarioMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/os/IntelligentEngineService;->access$700(Lcom/android/server/os/IntelligentEngineService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/os/BoostInfo;

    goto :goto_0

    .line 354
    :cond_3
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->this$0:Lcom/android/server/os/IntelligentEngineService;

    # getter for: Lcom/android/server/os/IntelligentEngineService;->mScenarioMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/os/IntelligentEngineService;->access$700(Lcom/android/server/os/IntelligentEngineService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/os/BoostInfo;

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 199
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResScheduler: Are you sure U want to post this message with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/perf/LogUtils;->logBoostWarn(Ljava/lang/String;)V

    .line 215
    :goto_0
    return-void

    .line 201
    :pswitch_0
    const-string v1, "Service_handleMessage H_CONFIG_SCENARIO"

    invoke-static {v1}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 203
    .local v0, "data":Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->applyScenarioBoost(Landroid/os/Bundle;)V

    goto :goto_0

    .line 206
    .end local v0    # "data":Landroid/os/Bundle;
    :pswitch_1
    const-string v1, "Service_handleMessage H_CONFIG_APP"

    invoke-static {v1}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 208
    .restart local v0    # "data":Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->applyAppBoost(Landroid/os/Bundle;)V

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public writeBytes(Ljava/lang/String;[B)V
    .locals 5
    .param p1, "nodePath"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 391
    if-eqz p2, :cond_2

    .line 392
    const/4 v1, 0x0

    .line 394
    .local v1, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service_writeBytes ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 395
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    :try_start_1
    array-length v4, p2

    invoke-virtual {v2, p2, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 401
    if-eqz v2, :cond_3

    .line 403
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 412
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 404
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 406
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 397
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v3, "write file node error!"

    invoke-static {v3}, Landroid/perf/LogUtils;->logBoostError(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 401
    if-eqz v1, :cond_0

    .line 403
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 404
    :catch_2
    move-exception v0

    .line 405
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 401
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 403
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 406
    :cond_1
    :goto_3
    throw v3

    .line 404
    :catch_3
    move-exception v0

    .line 405
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 410
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_2
    const-string v3, "write bytes is null"

    invoke-static {v3}, Landroid/perf/LogUtils;->logBoostError(Ljava/lang/String;)V

    goto :goto_0

    .line 401
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 397
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_3
    move-object v1, v2

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method writeBytesToNode([Ljava/lang/String;J)V
    .locals 4
    .param p1, "configString"    # [Ljava/lang/String;
    .param p2, "simpleHashCode"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service_writeBytesToNode = configString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " simpleHashCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 384
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "temp":Ljava/lang/String;
    sget-object v2, Lcom/android/server/os/ConfigFileUtils;->sPerfNodes:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->writeBytes(Ljava/lang/String;[B)V

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    .end local v1    # "temp":Ljava/lang/String;
    :cond_0
    return-void
.end method
