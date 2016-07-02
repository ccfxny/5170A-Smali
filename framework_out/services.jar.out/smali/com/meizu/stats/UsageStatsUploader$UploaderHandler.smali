.class Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;
.super Landroid/os/Handler;
.source "UsageStatsUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/stats/UsageStatsUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploaderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/stats/UsageStatsUploader;


# direct methods
.method public constructor <init>(Lcom/meizu/stats/UsageStatsUploader;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 827
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    .line 828
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 829
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 834
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 935
    :cond_0
    :goto_0
    return-void

    .line 836
    :pswitch_0
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # invokes: Lcom/meizu/stats/UsageStatsUploader;->isNetworkWorking()Z
    invoke-static {v5}, Lcom/meizu/stats/UsageStatsUploader;->access$400(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 837
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mNetworkConnected:Z
    invoke-static {v5}, Lcom/meizu/stats/UsageStatsUploader;->access$500(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 838
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    const/4 v6, 0x1

    # setter for: Lcom/meizu/stats/UsageStatsUploader;->mNetworkConnected:Z
    invoke-static {v5, v6}, Lcom/meizu/stats/UsageStatsUploader;->access$502(Lcom/meizu/stats/UsageStatsUploader;Z)Z

    .line 839
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-virtual {v5}, Lcom/meizu/stats/UsageStatsUploader;->checkUpload()V

    .line 844
    :cond_1
    :goto_1
    const-string v5, "UsageStatsUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NETWORK_STATE_CHANGED, mNetworkConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mNetworkConnected:Z
    invoke-static {v7}, Lcom/meizu/stats/UsageStatsUploader;->access$500(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 932
    :catch_0
    move-exception v1

    .line 933
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 841
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mNetworkConnected:Z
    invoke-static {v5}, Lcom/meizu/stats/UsageStatsUploader;->access$500(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 842
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    const/4 v6, 0x0

    # setter for: Lcom/meizu/stats/UsageStatsUploader;->mNetworkConnected:Z
    invoke-static {v5, v6}, Lcom/meizu/stats/UsageStatsUploader;->access$502(Lcom/meizu/stats/UsageStatsUploader;Z)Z

    goto :goto_1

    .line 850
    :pswitch_1
    const-string v5, "UsageStatsUploader"

    const-string v6, "UPLOAD_TIME_ALARM"

    invoke-static {v5, v6}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-virtual {v5}, Lcom/meizu/stats/UsageStatsUploader;->checkUpload()V

    .line 852
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    # invokes: Lcom/meizu/stats/UsageStatsUploader;->sendOfflineUploadAlarm(J)V
    invoke-static {v5, v6, v7}, Lcom/meizu/stats/UsageStatsUploader;->access$600(Lcom/meizu/stats/UsageStatsUploader;J)V

    goto :goto_0

    .line 856
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 857
    .local v2, "now":J
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mLastAlarmTime:J
    invoke-static {v5}, Lcom/meizu/stats/UsageStatsUploader;->access$700(Lcom/meizu/stats/UsageStatsUploader;)J

    move-result-wide v6

    cmp-long v5, v2, v6

    if-gez v5, :cond_0

    .line 858
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-virtual {v5}, Lcom/meizu/stats/UsageStatsUploader;->checkUpload()V

    .line 859
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # invokes: Lcom/meizu/stats/UsageStatsUploader;->sendOfflineUploadAlarm(J)V
    invoke-static {v5, v2, v3}, Lcom/meizu/stats/UsageStatsUploader;->access$600(Lcom/meizu/stats/UsageStatsUploader;J)V

    goto :goto_0

    .line 864
    .end local v2    # "now":J
    :pswitch_3
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-virtual {v5}, Lcom/meizu/stats/UsageStatsUploader;->checkUpload()V

    goto/16 :goto_0

    .line 868
    :pswitch_4
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # invokes: Lcom/meizu/stats/UsageStatsUploader;->checkOnlineResetConditions()V
    invoke-static {v5}, Lcom/meizu/stats/UsageStatsUploader;->access$800(Lcom/meizu/stats/UsageStatsUploader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 870
    :try_start_2
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;
    invoke-static {v5}, Lcom/meizu/stats/UsageStatsUploader;->access$900(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->removeMessages(I)V

    .line 872
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;
    invoke-static {v5}, Lcom/meizu/stats/UsageStatsUploader;->access$000(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsProviderHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/stats/UsageStatsProviderHelper;->getEventsCount()I

    move-result v5

    if-lez v5, :cond_6

    .line 873
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;
    invoke-static {v5}, Lcom/meizu/stats/UsageStatsUploader;->access$000(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsProviderHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/stats/UsageStatsProviderHelper;->clearOldData()I

    .line 874
    const/4 v4, 0x0

    .line 875
    .local v4, "uploaded":Z
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/meizu/stats/UsageStatsUploader;->access$1000(Lcom/meizu/stats/UsageStatsUploader;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/experiencedatasync/util/Utils;->isWiFiWorking(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 876
    const-string v5, "UsageStatsUploader"

    const-string v6, "upload by wifi"

    invoke-static {v5, v6}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # invokes: Lcom/meizu/stats/UsageStatsUploader;->parcelEvents()Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/meizu/stats/UsageStatsUploader;->access$1100(Lcom/meizu/stats/UsageStatsUploader;)Lorg/json/JSONObject;

    move-result-object v0

    .line 878
    .local v0, "data":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    const/4 v6, 0x1

    # invokes: Lcom/meizu/stats/UsageStatsUploader;->uploadEvents(Lorg/json/JSONObject;Z)Z
    invoke-static {v5, v0, v6}, Lcom/meizu/stats/UsageStatsUploader;->access$1200(Lcom/meizu/stats/UsageStatsUploader;Lorg/json/JSONObject;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 879
    if-nez v4, :cond_3

    .line 880
    const/4 v4, 0x1

    .line 906
    .end local v0    # "data":Lorg/json/JSONObject;
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z
    invoke-static {v5}, Lcom/meizu/stats/UsageStatsUploader;->access$1300(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 907
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 908
    .restart local v2    # "now":J
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # invokes: Lcom/meizu/stats/UsageStatsUploader;->setLastUploadTime(J)V
    invoke-static {v5, v2, v3}, Lcom/meizu/stats/UsageStatsUploader;->access$1600(Lcom/meizu/stats/UsageStatsUploader;J)V

    .line 909
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # invokes: Lcom/meizu/stats/UsageStatsUploader;->sendOfflineUploadAlarm(J)V
    invoke-static {v5, v2, v3}, Lcom/meizu/stats/UsageStatsUploader;->access$600(Lcom/meizu/stats/UsageStatsUploader;J)V

    .line 912
    .end local v2    # "now":J
    :cond_4
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z
    invoke-static {v5}, Lcom/meizu/stats/UsageStatsUploader;->access$1300(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mIsUploadByEventCome:Z
    invoke-static {v5}, Lcom/meizu/stats/UsageStatsUploader;->access$1700(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 913
    if-nez v4, :cond_5

    .line 914
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mRatio:I
    invoke-static {v6}, Lcom/meizu/stats/UsageStatsUploader;->access$1800(Lcom/meizu/stats/UsageStatsUploader;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    # setter for: Lcom/meizu/stats/UsageStatsUploader;->mRatio:I
    invoke-static {v5, v6}, Lcom/meizu/stats/UsageStatsUploader;->access$1802(Lcom/meizu/stats/UsageStatsUploader;I)I

    .line 915
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/meizu/stats/UsageStatsUploader;->access$300(Lcom/meizu/stats/UsageStatsUploader;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "ratio"

    iget-object v7, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mRatio:I
    invoke-static {v7}, Lcom/meizu/stats/UsageStatsUploader;->access$1800(Lcom/meizu/stats/UsageStatsUploader;)I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 917
    :cond_5
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    const/4 v6, 0x0

    # setter for: Lcom/meizu/stats/UsageStatsUploader;->mEventCome:I
    invoke-static {v5, v6}, Lcom/meizu/stats/UsageStatsUploader;->access$1902(Lcom/meizu/stats/UsageStatsUploader;I)I

    .line 918
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    const/4 v6, 0x0

    # setter for: Lcom/meizu/stats/UsageStatsUploader;->mIsUploadByEventCome:Z
    invoke-static {v5, v6}, Lcom/meizu/stats/UsageStatsUploader;->access$1702(Lcom/meizu/stats/UsageStatsUploader;Z)Z

    .line 921
    .end local v4    # "uploaded":Z
    :cond_6
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;
    invoke-static {v5}, Lcom/meizu/stats/UsageStatsUploader;->access$2000(Lcom/meizu/stats/UsageStatsUploader;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 925
    :goto_3
    :try_start_3
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z
    invoke-static {v5}, Lcom/meizu/stats/UsageStatsUploader;->access$1300(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 926
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;
    invoke-static {v5}, Lcom/meizu/stats/UsageStatsUploader;->access$900(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    move-result-object v5

    const/4 v6, 0x1

    const-wide/32 v8, 0x1b7740

    invoke-virtual {v5, v6, v8, v9}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 890
    .restart local v4    # "uploaded":Z
    :cond_7
    :try_start_4
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/meizu/stats/UsageStatsUploader;->access$1000(Lcom/meizu/stats/UsageStatsUploader;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/experiencedatasync/util/Utils;->isWiFiWorking(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/meizu/stats/UsageStatsUploader;->access$1000(Lcom/meizu/stats/UsageStatsUploader;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/experiencedatasync/util/Utils;->isNetworkWorking(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 891
    const-string v5, "UsageStatsUploader"

    const-string v6, "upload by mobile"

    invoke-static {v5, v6}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z
    invoke-static {v5}, Lcom/meizu/stats/UsageStatsUploader;->access$1300(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 893
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # invokes: Lcom/meizu/stats/UsageStatsUploader;->parcelEvents()Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/meizu/stats/UsageStatsUploader;->access$1100(Lcom/meizu/stats/UsageStatsUploader;)Lorg/json/JSONObject;

    move-result-object v0

    .line 894
    .restart local v0    # "data":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    const/4 v6, 0x0

    # invokes: Lcom/meizu/stats/UsageStatsUploader;->uploadEvents(Lorg/json/JSONObject;Z)Z
    invoke-static {v5, v0, v6}, Lcom/meizu/stats/UsageStatsUploader;->access$1200(Lcom/meizu/stats/UsageStatsUploader;Lorg/json/JSONObject;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v4, :cond_3

    .line 895
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 898
    .end local v0    # "data":Lorg/json/JSONObject;
    :cond_8
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # invokes: Lcom/meizu/stats/UsageStatsUploader;->parcelSimpleEvents()Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/meizu/stats/UsageStatsUploader;->access$1400(Lcom/meizu/stats/UsageStatsUploader;)Lorg/json/JSONObject;

    move-result-object v0

    .line 899
    .restart local v0    # "data":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    const/4 v6, 0x0

    # invokes: Lcom/meizu/stats/UsageStatsUploader;->uploadEvents(Lorg/json/JSONObject;Z)Z
    invoke-static {v5, v0, v6}, Lcom/meizu/stats/UsageStatsUploader;->access$1200(Lcom/meizu/stats/UsageStatsUploader;Lorg/json/JSONObject;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v4, :cond_3

    .line 900
    const/4 v4, 0x1

    .line 901
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    const/4 v6, 0x0

    # invokes: Lcom/meizu/stats/UsageStatsUploader;->setTodayAllowUpload(Z)V
    invoke-static {v5, v6}, Lcom/meizu/stats/UsageStatsUploader;->access$1500(Lcom/meizu/stats/UsageStatsUploader;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 922
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v4    # "uploaded":Z
    :catch_1
    move-exception v1

    .line 923
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 834
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
