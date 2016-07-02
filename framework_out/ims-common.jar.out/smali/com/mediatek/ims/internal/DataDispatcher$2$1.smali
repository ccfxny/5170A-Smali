.class Lcom/mediatek/ims/internal/DataDispatcher$2$1;
.super Landroid/os/Handler;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/internal/DataDispatcher$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher$2;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$2$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 30
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcher$2$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;

    iget-object v1, v1, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # getter for: Lcom/mediatek/ims/internal/DataDispatcher;->mIsEnable:Z
    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$600(Lcom/mediatek/ims/internal/DataDispatcher;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "receives message ["

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "] but DataDispatcher is not enabled, ignore"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$700(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    :goto_0
    monitor-exit p0

    return-void

    .line 261
    :cond_0
    :try_start_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    if-eqz v1, :cond_1

    .line 262
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 263
    .local v22, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "receives request ["

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v22 .. v22}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDataLen()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", phoneId: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v22 .. v22}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "]"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 265
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "receives unhandled message ["

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "]"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 256
    .end local v22    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 267
    .restart local v22    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    :sswitch_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcher$2$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;

    iget-object v1, v1, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    move-object/from16 v0, v22

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->handleDedicateBearerActivationRequest(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    invoke-static {v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->access$800(Lcom/mediatek/ims/internal/DataDispatcher;Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    goto/16 :goto_0

    .line 270
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcher$2$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;

    iget-object v1, v1, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    move-object/from16 v0, v22

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->handleBearerDeactivationRequest(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    invoke-static {v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->access$900(Lcom/mediatek/ims/internal/DataDispatcher;Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    goto/16 :goto_0

    .line 273
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcher$2$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;

    iget-object v1, v1, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    move-object/from16 v0, v22

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->handleDedicateBearerModificationRequest(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    invoke-static {v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1000(Lcom/mediatek/ims/internal/DataDispatcher;Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    goto/16 :goto_0

    .line 276
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcher$2$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;

    iget-object v1, v1, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    move-object/from16 v0, v22

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->handlePcscfDiscoveryRequest(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    invoke-static {v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1100(Lcom/mediatek/ims/internal/DataDispatcher;Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    goto/16 :goto_0

    .line 279
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcher$2$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;

    iget-object v1, v1, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    move-object/from16 v0, v22

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->handleDefaultBearerActivationRequest(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    invoke-static {v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1200(Lcom/mediatek/ims/internal/DataDispatcher;Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    goto/16 :goto_0

    .line 285
    .end local v22    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "receives request ["

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "]"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 286
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_1

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "receives unhandled message ["

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "]"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$700(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 288
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/content/Intent;

    .line 289
    .local v24, "intent":Landroid/content/Intent;
    const-string v1, "DdcId"

    const/4 v8, -0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 290
    .local v2, "ddcId":I
    const-string v1, "linkProperties"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    .line 291
    .local v4, "property":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    const-string v1, "state"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/DctConstants$State;

    .line 293
    .local v3, "state":Lcom/android/internal/telephony/DctConstants$State;
    const-string v1, "cause"

    const/4 v8, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 294
    .local v5, "nfailCause":I
    const-string v1, "reason"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 295
    .local v7, "reason":Ljava/lang/String;
    const-string v1, "phone"

    const/4 v8, -0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 298
    .local v6, "nPhoneId":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcher$2$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;

    iget-object v1, v1, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->onDedicateDataConnectionStateChanged(ILcom/android/internal/telephony/DctConstants$State;Lcom/mediatek/internal/telephony/DedicateBearerProperties;IILjava/lang/String;)V
    invoke-static/range {v1 .. v7}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1300(Lcom/mediatek/ims/internal/DataDispatcher;ILcom/android/internal/telephony/DctConstants$State;Lcom/mediatek/internal/telephony/DedicateBearerProperties;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 303
    .end local v2    # "ddcId":I
    .end local v3    # "state":Lcom/android/internal/telephony/DctConstants$State;
    .end local v4    # "property":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .end local v5    # "nfailCause":I
    .end local v6    # "nPhoneId":I
    .end local v7    # "reason":Ljava/lang/String;
    .end local v24    # "intent":Landroid/content/Intent;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 304
    .local v19, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    .line 305
    .local v28, "transactionId":I
    move-object/from16 v0, v19

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 306
    move-object/from16 v0, v19

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 307
    const-string v1, "receives MSG_PCSCF_DISCOVERY_PCO_DONE but no PcscfInfo"

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$700(Ljava/lang/String;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcher$2$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;

    iget-object v1, v1, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    const/4 v8, 0x1

    move/from16 v0, v28

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->rejectPcscfDiscovery(II)V
    invoke-static {v1, v0, v8}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1400(Lcom/mediatek/ims/internal/DataDispatcher;II)V

    .line 316
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcher$2$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;

    iget-object v1, v1, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    move/from16 v0, v28

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->removeTransaction(I)V

    goto/16 :goto_0

    .line 310
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcher$2$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;

    iget-object v8, v1, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    move-object/from16 v0, v19

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/internal/telephony/PcscfInfo;

    move/from16 v0, v28

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->responsePcscfDiscovery(ILcom/mediatek/internal/telephony/PcscfInfo;)V
    invoke-static {v8, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1500(Lcom/mediatek/ims/internal/DataDispatcher;ILcom/mediatek/internal/telephony/PcscfInfo;)V

    goto :goto_1

    .line 313
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "receives MSG_PCSCF_DISCOVERY_PCO_DONE but exception ["

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "]"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$700(Ljava/lang/String;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcher$2$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;

    iget-object v1, v1, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    const/4 v8, 0x1

    move/from16 v0, v28

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->rejectPcscfDiscovery(II)V
    invoke-static {v1, v0, v8}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1400(Lcom/mediatek/ims/internal/DataDispatcher;II)V

    goto :goto_1

    .line 320
    .end local v19    # "ar":Landroid/os/AsyncResult;
    .end local v28    # "transactionId":I
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/content/Intent;

    .line 321
    .restart local v24    # "intent":Landroid/content/Intent;
    const-string v1, "apnType"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 322
    .local v10, "apnType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcher$2$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;

    iget-object v1, v1, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    move-object/from16 v0, v24

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->onDefaultBearerDataConnStateChanged(Landroid/content/Intent;Ljava/lang/String;)V
    invoke-static {v1, v0, v10}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1600(Lcom/mediatek/ims/internal/DataDispatcher;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 326
    .end local v10    # "apnType":Ljava/lang/String;
    .end local v24    # "intent":Landroid/content/Intent;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/content/Intent;

    .line 327
    .restart local v24    # "intent":Landroid/content/Intent;
    const-string v1, "apnType"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 328
    .restart local v10    # "apnType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcher$2$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;

    iget-object v1, v1, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    move-object/from16 v0, v24

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->onDefaultBearerDataConnFail(Landroid/content/Intent;Ljava/lang/String;)V
    invoke-static {v1, v0, v10}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1700(Lcom/mediatek/ims/internal/DataDispatcher;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 332
    .end local v10    # "apnType":Ljava/lang/String;
    .end local v24    # "intent":Landroid/content/Intent;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/content/Intent;

    .line 333
    .restart local v24    # "intent":Landroid/content/Intent;
    const-string v1, "apnType"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 335
    .restart local v10    # "apnType":Ljava/lang/String;
    const-string v1, "iface"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 337
    .local v11, "intfName":Ljava/lang/String;
    const-string v1, "lte_global_ip_addr"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/net/InetAddress;

    .line 339
    .local v9, "inetAddr":Ljava/net/InetAddress;
    const-string v1, "phone"

    const/4 v8, -0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 344
    .local v12, "phoneId":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcher$2$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;

    iget-object v1, v1, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->getImsOrEmergencyNetworkInfoState(Ljava/lang/String;)Landroid/net/NetworkInfo$State;
    invoke-static {v1, v10}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1800(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;)Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 346
    .local v3, "state":Landroid/net/NetworkInfo$State;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "networkInfo state: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " apnType("

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ")"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 347
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v1, :cond_4

    .line 348
    const/16 v29, 0x3

    .line 349
    .local v29, "tryCnt":I
    const/16 v21, 0x1f4

    .line 350
    .local v21, "delayMsSec":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_2
    const/4 v1, 0x3

    move/from16 v0, v23

    if-ge v0, v1, :cond_4

    .line 351
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcher$2$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;

    iget-object v1, v1, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    add-int/lit8 v8, v23, 0x1

    mul-int v8, v8, v21

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->delayForSeconds(I)V
    invoke-static {v1, v8}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1900(Lcom/mediatek/ims/internal/DataDispatcher;I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcher$2$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;

    iget-object v1, v1, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->getImsOrEmergencyNetworkInfoState(Ljava/lang/String;)Landroid/net/NetworkInfo$State;
    invoke-static {v1, v10}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1800(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;)Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "network state: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " apnType("

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ")"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 355
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v1, :cond_5

    .line 362
    .end local v21    # "delayMsSec":I
    .end local v23    # "i":I
    .end local v29    # "tryCnt":I
    :cond_4
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v3, :cond_7

    .line 363
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcher$2$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;

    iget-object v1, v1, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->getIpKeyIdx(Ljava/lang/String;Ljava/net/InetAddress;)I
    invoke-static {v1, v10, v9}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2000(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;Ljava/net/InetAddress;)I

    move-result v27

    .line 364
    .local v27, "keyIdx":I
    const/4 v1, -0x1

    move/from16 v0, v27

    if-ne v0, v1, :cond_6

    .line 365
    const-string v1, "invalid key idx"

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$700(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 350
    .end local v27    # "keyIdx":I
    .restart local v21    # "delayMsSec":I
    .restart local v23    # "i":I
    .restart local v29    # "tryCnt":I
    :cond_5
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 369
    .end local v21    # "delayMsSec":I
    .end local v23    # "i":I
    .end local v29    # "tryCnt":I
    .restart local v27    # "keyIdx":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcher$2$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;

    iget-object v1, v1, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # getter for: Lcom/mediatek/ims/internal/DataDispatcher;->mAddressStatus:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2100(Lcom/mediatek/ims/internal/DataDispatcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    sget-object v8, Lcom/mediatek/ims/internal/DataDispatcher;->IP_KEY:[Ljava/lang/String;

    aget-object v8, v8, v27

    invoke-virtual {v1, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcher$2$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;

    iget-object v8, v1, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    sget-object v1, Lcom/mediatek/ims/internal/DataDispatcher;->IP_KEY:[Ljava/lang/String;

    aget-object v13, v1, v27

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->onNotifyGlobalIpAddr(Ljava/net/InetAddress;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    invoke-static/range {v8 .. v13}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2200(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/net/InetAddress;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 372
    .end local v27    # "keyIdx":I
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no notify ip to va, due to state not connected!! state ("

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ")"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 378
    .end local v3    # "state":Landroid/net/NetworkInfo$State;
    .end local v9    # "inetAddr":Ljava/net/InetAddress;
    .end local v10    # "apnType":Ljava/lang/String;
    .end local v11    # "intfName":Ljava/lang/String;
    .end local v12    # "phoneId":I
    .end local v24    # "intent":Landroid/content/Intent;
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/content/Intent;

    .line 379
    .restart local v24    # "intent":Landroid/content/Intent;
    const-string v1, "apnType"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 381
    .restart local v10    # "apnType":Ljava/lang/String;
    const-string v1, "iface"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 383
    .restart local v11    # "intfName":Ljava/lang/String;
    const-string v1, "lte_global_ip_addr"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/net/InetAddress;

    .line 385
    .restart local v9    # "inetAddr":Ljava/net/InetAddress;
    const-string v1, "phone"

    const/4 v8, -0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 389
    .restart local v12    # "phoneId":I
    const-string v26, ""

    .line 390
    .local v26, "keyApn":Ljava/lang/String;
    const-string v1, "ims"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 391
    const-string v26, "_IMS"

    .line 396
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcher$2$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;

    iget-object v1, v1, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->getImsOrEmergencyNetworkInfoState(Ljava/lang/String;)Landroid/net/NetworkInfo$State;
    invoke-static {v1, v10}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1800(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;)Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 398
    .restart local v3    # "state":Landroid/net/NetworkInfo$State;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "networkInfo state: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " apnType("

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ")"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 399
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v1, :cond_8

    .line 400
    const/16 v29, 0x3

    .line 401
    .restart local v29    # "tryCnt":I
    const/16 v21, 0x1f4

    .line 402
    .restart local v21    # "delayMsSec":I
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_4
    const/4 v1, 0x3

    move/from16 v0, v23

    if-ge v0, v1, :cond_8

    .line 403
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcher$2$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;

    iget-object v1, v1, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    add-int/lit8 v8, v23, 0x1

    mul-int v8, v8, v21

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->delayForSeconds(I)V
    invoke-static {v1, v8}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1900(Lcom/mediatek/ims/internal/DataDispatcher;I)V

    .line 404
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcher$2$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;

    iget-object v1, v1, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->getImsOrEmergencyNetworkInfoState(Ljava/lang/String;)Landroid/net/NetworkInfo$State;
    invoke-static {v1, v10}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1800(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;)Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "network state: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " apnType("

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ")"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 407
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v1, :cond_b

    .line 413
    .end local v21    # "delayMsSec":I
    .end local v23    # "i":I
    .end local v29    # "tryCnt":I
    :cond_8
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v3, :cond_d

    .line 414
    const/16 v17, 0x0

    .line 415
    .local v17, "ipType":I
    const-string v25, "unknown type ip"

    .line 416
    .local v25, "ipKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcher$2$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;

    iget-object v1, v1, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->isIpAddressV4(Ljava/net/InetAddress;)Z
    invoke-static {v1, v9}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2300(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/net/InetAddress;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 417
    const/16 v17, 0x1

    .line 418
    const-string v25, "IPV4"

    .line 424
    :cond_9
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dhcp ipType: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " address"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 426
    new-instance v13, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcher$2$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;

    iget-object v14, v1, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    move-object v15, v10

    move-object/from16 v16, v11

    move/from16 v18, v12

    invoke-direct/range {v13 .. v18}, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;-><init>(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;Ljava/lang/String;II)V

    .line 427
    .local v13, "dhcpThread":Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;
    invoke-virtual {v13}, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->start()V

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcher$2$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;

    iget-object v1, v1, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # getter for: Lcom/mediatek/ims/internal/DataDispatcher;->mAddressStatus:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2100(Lcom/mediatek/ims/internal/DataDispatcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 393
    .end local v3    # "state":Landroid/net/NetworkInfo$State;
    .end local v13    # "dhcpThread":Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;
    .end local v17    # "ipType":I
    .end local v25    # "ipKey":Ljava/lang/String;
    :cond_a
    const-string v26, "_EIMS"

    goto/16 :goto_3

    .line 402
    .restart local v3    # "state":Landroid/net/NetworkInfo$State;
    .restart local v21    # "delayMsSec":I
    .restart local v23    # "i":I
    .restart local v29    # "tryCnt":I
    :cond_b
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_4

    .line 419
    .end local v21    # "delayMsSec":I
    .end local v23    # "i":I
    .end local v29    # "tryCnt":I
    .restart local v17    # "ipType":I
    .restart local v25    # "ipKey":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcher$2$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;

    iget-object v1, v1, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->isIpAddressV6(Ljava/net/InetAddress;)Z
    invoke-static {v1, v9}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2400(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/net/InetAddress;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 420
    const/16 v17, 0x2

    .line 421
    const-string v25, "IPV6"

    goto :goto_5

    .line 430
    .end local v17    # "ipType":I
    .end local v25    # "ipKey":Ljava/lang/String;
    :cond_d
    const-string v1, "NetworkInfo state not connected!!"

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 435
    .end local v3    # "state":Landroid/net/NetworkInfo$State;
    .end local v9    # "inetAddr":Ljava/net/InetAddress;
    .end local v10    # "apnType":Ljava/lang/String;
    .end local v11    # "intfName":Ljava/lang/String;
    .end local v12    # "phoneId":I
    .end local v24    # "intent":Landroid/content/Intent;
    .end local v26    # "keyApn":Ljava/lang/String;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/content/Intent;

    .line 436
    .restart local v24    # "intent":Landroid/content/Intent;
    const-string v1, "ims_default_response_data_call"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    .line 439
    .local v20, "defaultBearerProperties":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    const-string v1, "phone"

    const/4 v8, -0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 442
    .restart local v12    # "phoneId":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcher$2$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$2;

    iget-object v1, v1, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    move-object/from16 v0, v20

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->onNotifyDefaultBearerModification(Lcom/mediatek/internal/telephony/DedicateBearerProperties;I)V
    invoke-static {v1, v0, v12}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2500(Lcom/mediatek/ims/internal/DataDispatcher;Lcom/mediatek/internal/telephony/DedicateBearerProperties;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 265
    nop

    :sswitch_data_0
    .sparse-switch
        0x187dc -> :sswitch_4
        0x187df -> :sswitch_0
        0x187e3 -> :sswitch_1
        0x187e7 -> :sswitch_2
        0x187ed -> :sswitch_3
    .end sparse-switch

    .line 286
    :sswitch_data_1
    .sparse-switch
        0xfa0 -> :sswitch_5
        0x1388 -> :sswitch_6
        0x1770 -> :sswitch_7
        0x17d4 -> :sswitch_8
        0x1838 -> :sswitch_b
        0x1b58 -> :sswitch_9
        0x1bbc -> :sswitch_a
    .end sparse-switch
.end method
