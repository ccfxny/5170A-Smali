.class Lcom/android/internal/telephony/cat/CatService$5;
.super Landroid/database/ContentObserver;
.source "CatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CatService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 2671
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 2759
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/cat/CatService$5;->onChange(ZLandroid/net/Uri;)V

    .line 2760
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 11
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 2675
    const-string v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2676
    const-string v1, "mPowerOnSequenceObserver onChange"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2677
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$1200(Lcom/android/internal/telephony/cat/CatService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dialog_sequence_settings"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 2682
    .local v10, "seqValue":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPowerOnSequenceObserver onChange, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2683
    if-ne v10, v4, :cond_6

    .line 2685
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$1300(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2687
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # invokes: Lcom/android/internal/telephony/cat/CatService;->isAlarmBoot()Z
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$1400(Lcom/android/internal/telephony/cat/CatService;)Z

    move-result v8

    .line 2688
    .local v8, "isAlarmState":Z
    const/4 v9, 0x0

    .line 2689
    .local v9, "isFlightMode":Z
    const/4 v7, 0x0

    .line 2691
    .local v7, "flightMode":I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$1200(Lcom/android/internal/telephony/cat/CatService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 2697
    :goto_0
    if-eqz v7, :cond_1

    move v9, v0

    .line 2698
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAlarmState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isFlightMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flightMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2701
    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    .line 2702
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # invokes: Lcom/android/internal/telephony/cat/CatService;->resetPowerOnSequenceFlag()V
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$1500(Lcom/android/internal/telephony/cat/CatService;)V

    .line 2703
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$1300(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    # invokes: Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->access$1600(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2704
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # setter for: Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cat/CatService;->access$1302(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2705
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # invokes: Lcom/android/internal/telephony/cat/CatService;->unregisterPowerOnSequenceObserver()V
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$1700(Lcom/android/internal/telephony/cat/CatService;)V

    .line 2755
    .end local v7    # "flightMode":I
    .end local v8    # "isAlarmState":Z
    .end local v9    # "isFlightMode":Z
    .end local v10    # "seqValue":I
    :cond_0
    :goto_2
    return-void

    .line 2693
    .restart local v7    # "flightMode":I
    .restart local v8    # "isAlarmState":Z
    .restart local v9    # "isFlightMode":Z
    .restart local v10    # "seqValue":I
    :catch_0
    move-exception v6

    .line 2694
    .local v6, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "fail to get property from Settings"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2695
    const/4 v7, 0x0

    goto :goto_0

    .end local v6    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    move v9, v3

    .line 2697
    goto :goto_1

    .line 2710
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # invokes: Lcom/android/internal/telephony/cat/CatService;->checkSetupWizardInstalled()Z
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$1800(Lcom/android/internal/telephony/cat/CatService;)Z

    move-result v1

    if-ne v1, v0, :cond_3

    .line 2711
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # invokes: Lcom/android/internal/telephony/cat/CatService;->resetPowerOnSequenceFlag()V
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$1500(Lcom/android/internal/telephony/cat/CatService;)V

    .line 2712
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$1300(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    # invokes: Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->access$1600(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2714
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # setter for: Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cat/CatService;->access$1302(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2715
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # invokes: Lcom/android/internal/telephony/cat/CatService;->unregisterPowerOnSequenceObserver()V
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$1700(Lcom/android/internal/telephony/cat/CatService;)V

    goto :goto_2

    .line 2720
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->isIvsrBootUp:Z
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$800(Lcom/android/internal/telephony/cat/CatService;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2721
    const-string v0, "[IVSR send TR directly"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2722
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # invokes: Lcom/android/internal/telephony/cat/CatService;->resetPowerOnSequenceFlag()V
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$1500(Lcom/android/internal/telephony/cat/CatService;)V

    .line 2723
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$1300(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    # invokes: Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->access$1600(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2724
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # setter for: Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cat/CatService;->access$1302(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2725
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # invokes: Lcom/android/internal/telephony/cat/CatService;->unregisterPowerOnSequenceObserver()V
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$1700(Lcom/android/internal/telephony/cat/CatService;)V

    goto :goto_2

    .line 2729
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->isDisplayTextDisabled:Z
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$600(Lcom/android/internal/telephony/cat/CatService;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2730
    const-string v0, "[SIM Recovery send TR directly"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2731
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # invokes: Lcom/android/internal/telephony/cat/CatService;->resetPowerOnSequenceFlag()V
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$1500(Lcom/android/internal/telephony/cat/CatService;)V

    .line 2732
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$1300(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    # invokes: Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->access$1600(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2733
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # setter for: Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cat/CatService;->access$1302(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2734
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # invokes: Lcom/android/internal/telephony/cat/CatService;->unregisterPowerOnSequenceObserver()V
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$1700(Lcom/android/internal/telephony/cat/CatService;)V

    goto/16 :goto_2

    .line 2737
    :cond_5
    const-string v0, "send DISPLAY_TEXT to app"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2738
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$1300(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/cat/CatService;->broadcastCatCmdIntent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->access$1900(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 2739
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # setter for: Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cat/CatService;->access$1302(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2743
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # invokes: Lcom/android/internal/telephony/cat/CatService;->unregisterPowerOnSequenceObserver()V
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$1700(Lcom/android/internal/telephony/cat/CatService;)V

    goto/16 :goto_2

    .line 2745
    .end local v7    # "flightMode":I
    .end local v8    # "isAlarmState":Z
    .end local v9    # "isFlightMode":Z
    :cond_6
    if-nez v10, :cond_0

    .line 2746
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$1300(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2748
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$1200(Lcom/android/internal/telephony/cat/CatService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dialog_sequence_settings"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2
.end method
