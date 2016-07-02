.class Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;
.super Landroid/os/Handler;
.source "UsageStatsManagerServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/statsos/UsageStatsManagerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsos/UsageStatsManagerServer;


# direct methods
.method public constructor <init>(Lcom/meizu/statsos/UsageStatsManagerServer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    .line 176
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 177
    return-void
.end method

.method private insertEvent(Lcom/meizu/statsos/UsageStatsProxy$Event;)V
    .locals 4
    .param p1, "event"    # Lcom/meizu/statsos/UsageStatsProxy$Event;

    .prologue
    .line 322
    const-string v1, "UsageStatsManagerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert Event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/statsos/UsageStatsProxy$Event;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/statsos/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mUsageStatsProviderHelper:Lcom/meizu/statsos/UsageStatsProviderHelper;
    invoke-static {v1}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$1200(Lcom/meizu/statsos/UsageStatsManagerServer;)Lcom/meizu/statsos/UsageStatsProviderHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/meizu/statsos/UsageStatsProviderHelper;->insertEvent(Lcom/meizu/statsos/UsageStatsProxy$Event;)V

    .line 325
    iget-object v1, p0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mOnline:Z
    invoke-static {v1}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$400(Lcom/meizu/statsos/UsageStatsManagerServer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mUsageStatsUploader:Lcom/meizu/statsos/UsageStatsUploader;
    invoke-static {v1}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$500(Lcom/meizu/statsos/UsageStatsManagerServer;)Lcom/meizu/statsos/UsageStatsUploader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/statsos/UsageStatsUploader;->eventComein()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setSessionId(Lcom/meizu/statsos/UsageStatsProxy$Event;)V
    .locals 5
    .param p1, "event"    # Lcom/meizu/statsos/UsageStatsProxy$Event;

    .prologue
    .line 306
    const/4 v2, 0x0

    .line 307
    .local v2, "sessionid":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mPackageSession:Ljava/util/Map;
    invoke-static {v3}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$000(Lcom/meizu/statsos/UsageStatsManagerServer;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/statsos/UsageStatsProxy$Event;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 308
    invoke-static {v2}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 310
    iget-object v3, p0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mPackageSession:Ljava/util/Map;
    invoke-static {v3}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$000(Lcom/meizu/statsos/UsageStatsManagerServer;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/statsos/UsageStatsProxy$Event;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_0
    invoke-virtual {p1, v2}, Lcom/meizu/statsos/UsageStatsProxy$Event;->setSessionid(Ljava/lang/String;)V

    .line 313
    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/meizu/statsos/UsageStatsProxy$Event;->getType()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 314
    const-string v3, "com.meizu.uxip.log"

    invoke-virtual {p1, v3}, Lcom/meizu/statsos/UsageStatsProxy$Event;->setPackageName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_1
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 182
    :try_start_0
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 184
    :pswitch_0
    const-string v4, "UsageStatsManagerServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ON_EVENT, mRecording="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mRecording:Z
    invoke-static {v6}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$100(Lcom/meizu/statsos/UsageStatsManagerServer;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", event="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/statsos/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mRecording:Z
    invoke-static {v4}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$100(Lcom/meizu/statsos/UsageStatsManagerServer;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/meizu/statsos/UsageStatsProxy$Event;

    .line 189
    .local v3, "event":Lcom/meizu/statsos/UsageStatsProxy$Event;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mChannelNum:I
    invoke-static {v4}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$200(Lcom/meizu/statsos/UsageStatsManagerServer;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/meizu/statsos/UsageStatsProxy$Event;->setChannelNum(J)V

    .line 190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mNetworkStatus:Ljava/lang/String;
    invoke-static {v4}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$300(Lcom/meizu/statsos/UsageStatsManagerServer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meizu/statsos/UsageStatsProxy$Event;->setNetwork(Ljava/lang/String;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mOnline:Z
    invoke-static {v4}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$400(Lcom/meizu/statsos/UsageStatsManagerServer;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mPackageSession:Ljava/util/Map;
    invoke-static {v4}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$000(Lcom/meizu/statsos/UsageStatsManagerServer;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lcom/meizu/statsos/UsageStatsProxy$Event;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 192
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mUsageStatsUploader:Lcom/meizu/statsos/UsageStatsUploader;
    invoke-static {v4}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$500(Lcom/meizu/statsos/UsageStatsManagerServer;)Lcom/meizu/statsos/UsageStatsUploader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/statsos/UsageStatsUploader;->checkUpload()V

    .line 194
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->setSessionId(Lcom/meizu/statsos/UsageStatsProxy$Event;)V

    .line 195
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->insertEvent(Lcom/meizu/statsos/UsageStatsProxy$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 299
    .end local v3    # "event":Lcom/meizu/statsos/UsageStatsProxy$Event;
    :catch_0
    move-exception v16

    .line 300
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 200
    .end local v16    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    const-string v4, "UsageStatsManagerServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ON_EVENT_REALTIME, mRecording="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mRecording:Z
    invoke-static {v6}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$100(Lcom/meizu/statsos/UsageStatsManagerServer;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", event="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/statsos/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mRecording:Z
    invoke-static {v4}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$100(Lcom/meizu/statsos/UsageStatsManagerServer;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 204
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/meizu/statsos/UsageStatsProxy$Event;

    .line 205
    .restart local v3    # "event":Lcom/meizu/statsos/UsageStatsProxy$Event;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mChannelNum:I
    invoke-static {v4}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$200(Lcom/meizu/statsos/UsageStatsManagerServer;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/meizu/statsos/UsageStatsProxy$Event;->setChannelNum(J)V

    .line 206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mNetworkStatus:Ljava/lang/String;
    invoke-static {v4}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$300(Lcom/meizu/statsos/UsageStatsManagerServer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meizu/statsos/UsageStatsProxy$Event;->setNetwork(Ljava/lang/String;)V

    .line 207
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->setSessionId(Lcom/meizu/statsos/UsageStatsProxy$Event;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 209
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mUsageStatsUploader:Lcom/meizu/statsos/UsageStatsUploader;
    invoke-static {v4}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$500(Lcom/meizu/statsos/UsageStatsManagerServer;)Lcom/meizu/statsos/UsageStatsUploader;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$600(Lcom/meizu/statsos/UsageStatsManagerServer;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/experiencedatasync/util/Utils;->isWiFiWorking(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/meizu/statsos/UsageStatsUploader;->uploadEvent(Lcom/meizu/statsos/UsageStatsProxy$Event;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 210
    const-string v4, "UsageStatsManagerServer"

    const-string v5, "ON_EVENT_REALTIME, uploadEvent unsuccessfully, store event."

    invoke-static {v4, v5}, Lcom/meizu/statsos/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->insertEvent(Lcom/meizu/statsos/UsageStatsProxy$Event;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 213
    :catch_1
    move-exception v16

    .line 214
    .restart local v16    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 220
    .end local v3    # "event":Lcom/meizu/statsos/UsageStatsProxy$Event;
    .end local v16    # "e":Ljava/lang/Exception;
    :pswitch_2
    const-string v4, "UsageStatsManagerServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ON_PAGE_START, mRecording="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mRecording:Z
    invoke-static {v6}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$100(Lcom/meizu/statsos/UsageStatsManagerServer;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", page="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/statsos/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mRecording:Z
    invoke-static {v4}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$100(Lcom/meizu/statsos/UsageStatsManagerServer;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 224
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/meizu/statsos/UsageStatsManagerServer$Page;

    .line 225
    .local v19, "startPage":Lcom/meizu/statsos/UsageStatsManagerServer$Page;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mPages:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$700(Lcom/meizu/statsos/UsageStatsManagerServer;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 226
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mHandler:Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;
    invoke-static {v4}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$900(Lcom/meizu/statsos/UsageStatsManagerServer;)Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mClearPackageSessionTask:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$800(Lcom/meizu/statsos/UsageStatsManagerServer;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mPackageSession:Ljava/util/Map;
    invoke-static {v4}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$000(Lcom/meizu/statsos/UsageStatsManagerServer;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/statsos/UsageStatsManagerServer$Page;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 230
    const-string v4, "UsageStatsManagerServer"

    const-string v5, "ON_PAGE_START, app boot, new session."

    invoke-static {v4, v5}, Lcom/meizu/statsos/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mPackageSession:Ljava/util/Map;
    invoke-static {v4}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$000(Lcom/meizu/statsos/UsageStatsManagerServer;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/statsos/UsageStatsManagerServer$Page;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mOnline:Z
    invoke-static {v4}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$400(Lcom/meizu/statsos/UsageStatsManagerServer;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 233
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mUsageStatsUploader:Lcom/meizu/statsos/UsageStatsUploader;
    invoke-static {v4}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$500(Lcom/meizu/statsos/UsageStatsManagerServer;)Lcom/meizu/statsos/UsageStatsUploader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/statsos/UsageStatsUploader;->checkUpload()V

    .line 243
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mPages:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$700(Lcom/meizu/statsos/UsageStatsManagerServer;)Ljava/util/LinkedList;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 248
    .end local v19    # "startPage":Lcom/meizu/statsos/UsageStatsManagerServer$Page;
    :pswitch_3
    const-string v4, "UsageStatsManagerServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ON_PAGE_STOP, mRecording="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mRecording:Z
    invoke-static {v6}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$100(Lcom/meizu/statsos/UsageStatsManagerServer;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", page="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/statsos/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mRecording:Z
    invoke-static {v4}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$100(Lcom/meizu/statsos/UsageStatsManagerServer;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 252
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/meizu/statsos/UsageStatsManagerServer$Page;

    .line 253
    .local v20, "stopPage":Lcom/meizu/statsos/UsageStatsManagerServer$Page;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mPages:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$700(Lcom/meizu/statsos/UsageStatsManagerServer;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 254
    .local v18, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/meizu/statsos/UsageStatsManagerServer$Page;>;"
    if-eqz v18, :cond_0

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 258
    .local v14, "currentTime":J
    :cond_3
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 259
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/meizu/statsos/UsageStatsManagerServer$Page;

    .line 260
    .restart local v19    # "startPage":Lcom/meizu/statsos/UsageStatsManagerServer$Page;
    invoke-virtual/range {v20 .. v20}, Lcom/meizu/statsos/UsageStatsManagerServer$Page;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/statsos/UsageStatsManagerServer$Page;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 261
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->remove()V

    .line 262
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 263
    .local v11, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "start_time"

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer$Page;->time:J
    invoke-static/range {v19 .. v19}, Lcom/meizu/statsos/UsageStatsManagerServer$Page;->access$1000(Lcom/meizu/statsos/UsageStatsManagerServer$Page;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v4, "stop_time"

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer$Page;->time:J
    invoke-static/range {v20 .. v20}, Lcom/meizu/statsos/UsageStatsManagerServer$Page;->access$1000(Lcom/meizu/statsos/UsageStatsManagerServer$Page;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    new-instance v3, Lcom/meizu/statsos/UsageStatsProxy$Event;

    invoke-virtual/range {v20 .. v20}, Lcom/meizu/statsos/UsageStatsManagerServer$Page;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual/range {v20 .. v20}, Lcom/meizu/statsos/UsageStatsManagerServer$Page;->getTime()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/meizu/statsos/UsageStatsManagerServer$Page;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    sget-object v12, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Lcom/meizu/statsos/UsageStatsManagerServer$Page;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    move-object/from16 v21, v0

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$600(Lcom/meizu/statsos/UsageStatsManagerServer;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v13, v0}, Lcom/meizu/experiencedatasync/util/Utils;->getPackageVersion(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v3 .. v13}, Lcom/meizu/statsos/UsageStatsProxy$Event;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .restart local v3    # "event":Lcom/meizu/statsos/UsageStatsProxy$Event;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mChannelNum:I
    invoke-static {v4}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$200(Lcom/meizu/statsos/UsageStatsManagerServer;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/meizu/statsos/UsageStatsProxy$Event;->setChannelNum(J)V

    .line 270
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mNetworkStatus:Ljava/lang/String;
    invoke-static {v4}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$300(Lcom/meizu/statsos/UsageStatsManagerServer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meizu/statsos/UsageStatsProxy$Event;->setNetwork(Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->setSessionId(Lcom/meizu/statsos/UsageStatsProxy$Event;)V

    .line 272
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->insertEvent(Lcom/meizu/statsos/UsageStatsProxy$Event;)V

    .line 279
    .end local v3    # "event":Lcom/meizu/statsos/UsageStatsProxy$Event;
    .end local v11    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "startPage":Lcom/meizu/statsos/UsageStatsManagerServer$Page;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mPages:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$700(Lcom/meizu/statsos/UsageStatsManagerServer;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-gtz v4, :cond_5

    .line 280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer$Page;->time:J
    invoke-static/range {v20 .. v20}, Lcom/meizu/statsos/UsageStatsManagerServer$Page;->access$1000(Lcom/meizu/statsos/UsageStatsManagerServer$Page;)J

    move-result-wide v6

    # setter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mLastSwitchToBackground:J
    invoke-static {v4, v6, v7}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$1102(Lcom/meizu/statsos/UsageStatsManagerServer;J)J

    .line 281
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mHandler:Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;
    invoke-static {v4}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$900(Lcom/meizu/statsos/UsageStatsManagerServer;)Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mClearPackageSessionTask:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$800(Lcom/meizu/statsos/UsageStatsManagerServer;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x7530

    invoke-virtual {v4, v5, v6, v7}, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    const-string v4, "UsageStatsManagerServer"

    const-string v5, "ON_PAGE_STOP, switch to background."

    invoke-static {v4, v5}, Lcom/meizu/statsos/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mPages:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$700(Lcom/meizu/statsos/UsageStatsManagerServer;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x64

    .line 285
    .local v2, "delCount":I
    if-lez v2, :cond_0

    .line 286
    const-string v4, "UsageStatsManagerServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ON_PAGE_STOP, too many pages in stack, delete pages "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/statsos/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    move/from16 v0, v17

    if-ge v0, v2, :cond_0

    .line 288
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mPages:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$700(Lcom/meizu/statsos/UsageStatsManagerServer;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 287
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 274
    .end local v2    # "delCount":I
    .end local v17    # "i":I
    .restart local v19    # "startPage":Lcom/meizu/statsos/UsageStatsManagerServer$Page;
    :cond_6
    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer$Page;->time:J
    invoke-static/range {v19 .. v19}, Lcom/meizu/statsos/UsageStatsManagerServer$Page;->access$1000(Lcom/meizu/statsos/UsageStatsManagerServer$Page;)J

    move-result-wide v4

    sub-long v4, v14, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x2932e00

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 275
    const-string v4, "UsageStatsManagerServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ON_PAGE_STOP, page time out :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/statsos/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 295
    .end local v14    # "currentTime":J
    .end local v18    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/meizu/statsos/UsageStatsManagerServer$Page;>;"
    .end local v19    # "startPage":Lcom/meizu/statsos/UsageStatsManagerServer$Page;
    .end local v20    # "stopPage":Lcom/meizu/statsos/UsageStatsManagerServer$Page;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mPages:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$700(Lcom/meizu/statsos/UsageStatsManagerServer;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 296
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    const-wide/16 v6, 0x0

    # setter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mLastSwitchToBackground:J
    invoke-static {v4, v6, v7}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$1102(Lcom/meizu/statsos/UsageStatsManagerServer;J)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
