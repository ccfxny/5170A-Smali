.class Landroid/os/PerfSchedulerManager$ScenarioInfo;
.super Ljava/lang/Object;
.source "PerfSchedulerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PerfSchedulerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScenarioInfo"
.end annotation


# instance fields
.field configIntArray:[I

.field configString:Ljava/lang/String;

.field configStringArray:[Ljava/lang/String;

.field currentScenarioPriority:I

.field currentScenarioTimeout:I

.field perfboosthandle:I

.field prePerfboosthandle:I

.field priorityIndex:I

.field final synthetic this$0:Landroid/os/PerfSchedulerManager;

.field timeoutIndex:I

.field validConfigIndex:I


# direct methods
.method public constructor <init>(Landroid/os/PerfSchedulerManager;Ljava/lang/String;)V
    .locals 3
    .param p2, "configarrange"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xff

    const/4 v1, -0x1

    .line 235
    iput-object p1, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->this$0:Landroid/os/PerfSchedulerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->priorityIndex:I

    .line 224
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->timeoutIndex:I

    .line 225
    const/4 v0, 0x2

    iput v0, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->validConfigIndex:I

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->configString:Ljava/lang/String;

    .line 230
    iput v2, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->currentScenarioPriority:I

    .line 231
    iput v2, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->currentScenarioTimeout:I

    .line 232
    iput v1, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->perfboosthandle:I

    .line 233
    iput v1, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->prePerfboosthandle:I

    .line 236
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->configStringArray:[Ljava/lang/String;

    .line 237
    iget-object v0, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->configStringArray:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->configIntArray:[I

    .line 238
    invoke-direct {p0}, Landroid/os/PerfSchedulerManager$ScenarioInfo;->StringArrayToIntArray()V

    .line 239
    invoke-direct {p0}, Landroid/os/PerfSchedulerManager$ScenarioInfo;->getCurrentPriority()V

    .line 240
    invoke-direct {p0}, Landroid/os/PerfSchedulerManager$ScenarioInfo;->getCurrentTimeout()V

    .line 241
    return-void
.end method

.method private StringArrayToIntArray()V
    .locals 3

    .prologue
    .line 256
    iget-object v1, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->configIntArray:[I

    array-length v1, v1

    if-lez v1, :cond_0

    .line 257
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->configStringArray:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 258
    iget-object v1, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->configIntArray:[I

    iget-object v2, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->configStringArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private StringArrayToString()V
    .locals 3

    .prologue
    .line 264
    iget-object v1, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->configString:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 265
    iget v0, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->validConfigIndex:I

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->configStringArray:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->configString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->configStringArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->configString:Ljava/lang/String;

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->configString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->configString:Ljava/lang/String;

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private getCurrentPriority()V
    .locals 2

    .prologue
    .line 244
    iget v0, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->currentScenarioPriority:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    .line 245
    iget-object v0, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->configIntArray:[I

    iget v1, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->priorityIndex:I

    aget v0, v0, v1

    iput v0, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->currentScenarioPriority:I

    .line 247
    :cond_0
    return-void
.end method

.method private getCurrentTimeout()V
    .locals 2

    .prologue
    .line 250
    iget v0, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->currentScenarioTimeout:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    .line 251
    iget-object v0, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->configIntArray:[I

    iget v1, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->timeoutIndex:I

    aget v0, v0, v1

    iput v0, p0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->currentScenarioTimeout:I

    .line 253
    :cond_0
    return-void
.end method


# virtual methods
.method public boost()V
    .locals 19

    .prologue
    .line 273
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    .line 274
    .local v6, "pid":I
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    .line 275
    .local v7, "tid":I
    const/4 v11, 0x0

    .line 278
    .local v11, "gpu_freq":I
    :try_start_0
    move-object/from16 v0, p0

    iget v1, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->perfboosthandle:I

    const/4 v8, -0x1

    if-ne v1, v8, :cond_1

    # getter for: Landroid/os/PerfSchedulerManager;->mService:Lcom/mediatek/perfservice/IPerfService;
    invoke-static {}, Landroid/os/PerfSchedulerManager;->access$000()Lcom/mediatek/perfservice/IPerfService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 279
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->this$0:Landroid/os/PerfSchedulerManager;

    # getter for: Landroid/os/PerfSchedulerManager;->mIsBigLittleArchitecture:Z
    invoke-static {v1}, Landroid/os/PerfSchedulerManager;->access$100(Landroid/os/PerfSchedulerManager;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 280
    move-object/from16 v0, p0

    iget v1, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->validConfigIndex:I

    add-int/lit8 v18, v1, 0x5

    .line 281
    .local v18, "mConfigLength":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->configIntArray:[I

    array-length v1, v1

    move/from16 v0, v18

    if-lt v1, v0, :cond_0

    .line 282
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->configIntArray:[I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->validConfigIndex:I

    add-int/lit8 v8, v8, 0x0

    aget v2, v1, v8

    .line 283
    .local v2, "big_core":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->configIntArray:[I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->validConfigIndex:I

    add-int/lit8 v8, v8, 0x1

    aget v3, v1, v8

    .line 284
    .local v3, "big_freq":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->configIntArray:[I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->validConfigIndex:I

    add-int/lit8 v8, v8, 0x2

    aget v4, v1, v8

    .line 285
    .local v4, "little_core":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->configIntArray:[I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->validConfigIndex:I

    add-int/lit8 v8, v8, 0x3

    aget v5, v1, v8

    .line 286
    .local v5, "little_freq":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->configIntArray:[I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->validConfigIndex:I

    add-int/lit8 v8, v8, 0x4

    aget v11, v1, v8

    .line 287
    # getter for: Landroid/os/PerfSchedulerManager;->mService:Lcom/mediatek/perfservice/IPerfService;
    invoke-static {}, Landroid/os/PerfSchedulerManager;->access$000()Lcom/mediatek/perfservice/IPerfService;

    move-result-object v1

    invoke-interface/range {v1 .. v7}, Lcom/mediatek/perfservice/IPerfService;->userRegBigLittle(IIIIII)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->perfboosthandle:I

    .line 298
    .end local v2    # "big_core":I
    .end local v3    # "big_freq":I
    .end local v4    # "little_core":I
    .end local v5    # "little_freq":I
    :cond_0
    :goto_0
    if-eqz v11, :cond_1

    .line 299
    # getter for: Landroid/os/PerfSchedulerManager;->mService:Lcom/mediatek/perfservice/IPerfService;
    invoke-static {}, Landroid/os/PerfSchedulerManager;->access$000()Lcom/mediatek/perfservice/IPerfService;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->perfboosthandle:I

    const/16 v10, 0x8

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-interface/range {v8 .. v14}, Lcom/mediatek/perfservice/IPerfService;->userRegScnConfig(IIIIII)V

    .line 302
    .end local v18    # "mConfigLength":I
    :cond_1
    sget-boolean v1, Landroid/os/PerfSchedulerManager;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "PerfScheduler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mTimeoutMs = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->currentScenarioTimeout:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " handle = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->perfboosthandle:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_2
    # getter for: Landroid/os/PerfSchedulerManager;->mService:Lcom/mediatek/perfservice/IPerfService;
    invoke-static {}, Landroid/os/PerfSchedulerManager;->access$000()Lcom/mediatek/perfservice/IPerfService;

    move-result-object v1

    move-object/from16 v0, p0

    iget v8, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->perfboosthandle:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->currentScenarioTimeout:I

    invoke-interface {v1, v8, v9}, Lcom/mediatek/perfservice/IPerfService;->userEnableTimeoutMs(II)V

    .line 308
    :goto_1
    return-void

    .line 290
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->validConfigIndex:I

    add-int/lit8 v18, v1, 0x3

    .line 291
    .restart local v18    # "mConfigLength":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->configIntArray:[I

    array-length v1, v1

    move/from16 v0, v18

    if-lt v1, v0, :cond_0

    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->configIntArray:[I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->validConfigIndex:I

    add-int/lit8 v8, v8, 0x0

    aget v15, v1, v8

    .line 293
    .local v15, "cpu_core":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->configIntArray:[I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->validConfigIndex:I

    add-int/lit8 v8, v8, 0x1

    aget v16, v1, v8

    .line 294
    .local v16, "cpu_freq":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->configIntArray:[I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->validConfigIndex:I

    add-int/lit8 v8, v8, 0x2

    aget v11, v1, v8

    .line 295
    # getter for: Landroid/os/PerfSchedulerManager;->mService:Lcom/mediatek/perfservice/IPerfService;
    invoke-static {}, Landroid/os/PerfSchedulerManager;->access$000()Lcom/mediatek/perfservice/IPerfService;

    move-result-object v1

    move/from16 v0, v16

    invoke-interface {v1, v15, v0, v6, v7}, Lcom/mediatek/perfservice/IPerfService;->userReg(IIII)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;->perfboosthandle:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 304
    .end local v15    # "cpu_core":I
    .end local v16    # "cpu_freq":I
    .end local v18    # "mConfigLength":I
    :catch_0
    move-exception v17

    .line 306
    .local v17, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
