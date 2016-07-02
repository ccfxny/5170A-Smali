.class public Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;
.super Landroid/os/Handler;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/ExternalSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VsimEvenHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;
    }
.end annotation


# instance fields
.field private mHasNotifyEnableEvnetToModem:Z

.field private mNoResponseTimer:Ljava/util/Timer;

.field private mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

.field private mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

.field private mWaitingEvent:Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

.field final synthetic this$0:Lcom/mediatek/telephony/ExternalSimManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/telephony/ExternalSimManager;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 856
    iput-object p1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 857
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 858
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 859
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mHasNotifyEnableEvnetToModem:Z

    .line 861
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:Ljava/util/Timer;

    .line 862
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .line 900
    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;
    .param p1, "x1"    # Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;
    .param p2, "x2"    # Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .prologue
    .line 856
    invoke-direct {p0, p1, p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setDataStream(Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;)Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    .prologue
    .line 856
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;
    .param p1, "x1"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    .line 856
    iput-object p1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;
    .param p1, "x1"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    .line 856
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->sendNoResponseError(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    return-void
.end method

.method private dispatchCallback(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1202
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v1

    .line 1204
    .local v1, "msgId":I
    const-string v2, "ExternalSimManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VsimEvenHandler handleMessage: msgId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    sparse-switch v1, :sswitch_data_0

    .line 1301
    const-string v2, "ExternalSimManager"

    const-string v3, "VsimEvenHandler handleMessage: default"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1218
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->handleGetPlatformCapability(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    goto :goto_0

    .line 1222
    :sswitch_2
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getInt()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->handleEventRequest(ILcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    goto :goto_0

    .line 1230
    :sswitch_3
    invoke-direct {p0, v6, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(ZLcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    .line 1234
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    const-string v3, "gsm.external.sim.inserted"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1238
    .local v0, "inserted":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1239
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    goto :goto_0

    .line 1244
    .end local v0    # "inserted":Ljava/lang/String;
    :sswitch_4
    invoke-direct {p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->getMdWaitingFlag()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1251
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1252
    invoke-direct {p0, v5}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(Z)V

    goto :goto_0

    .line 1257
    :sswitch_5
    invoke-direct {p0, v6, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(ZLcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    .line 1260
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    const-string v3, "gsm.external.sim.inserted"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1264
    .restart local v0    # "inserted":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1265
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    goto :goto_0

    .line 1270
    .end local v0    # "inserted":Ljava/lang/String;
    :sswitch_6
    invoke-direct {p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->getMdWaitingFlag()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1277
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1278
    invoke-direct {p0, v5}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(Z)V

    goto :goto_0

    .line 1284
    :sswitch_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    const-string v3, "gsm.external.sim.inserted"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1288
    .restart local v0    # "inserted":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1289
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    goto/16 :goto_0

    .line 1294
    .end local v0    # "inserted":Ljava/lang/String;
    :sswitch_8
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    goto/16 :goto_0

    .line 1298
    :sswitch_9
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->handleServiceStateRequest(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    goto/16 :goto_0

    .line 1206
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_6
        0x5 -> :sswitch_4
        0x6 -> :sswitch_8
        0x7 -> :sswitch_9
        0x8 -> :sswitch_0
        0x3eb -> :sswitch_0
        0x3ec -> :sswitch_5
        0x3ed -> :sswitch_3
        0x3ee -> :sswitch_7
    .end sparse-switch
.end method

.method private getMdWaitingFlag()Z
    .locals 3

    .prologue
    .line 959
    const-string v0, "ExternalSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMdWaitingFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/ExternalSimManager;->isMdWaitingResponse:Z
    invoke-static {v2}, Lcom/mediatek/telephony/ExternalSimManager;->access$500(Lcom/mediatek/telephony/ExternalSimManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/ExternalSimManager;->isMdWaitingResponse:Z
    invoke-static {v0}, Lcom/mediatek/telephony/ExternalSimManager;->access$500(Lcom/mediatek/telephony/ExternalSimManager;)Z

    move-result v0

    return v0
.end method

.method private getRspMessageId(I)I
    .locals 3
    .param p1, "requestMsgId"    # I

    .prologue
    .line 876
    sparse-switch p1, :sswitch_data_0

    .line 894
    const-string v0, "ExternalSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRspMessageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "no support."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 878
    :sswitch_0
    const/16 v0, 0x3e9

    goto :goto_0

    .line 880
    :sswitch_1
    const/16 v0, 0x3eb

    goto :goto_0

    .line 882
    :sswitch_2
    const/16 v0, 0x3ea

    goto :goto_0

    .line 884
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 886
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 888
    :sswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 890
    :sswitch_6
    const/16 v0, 0x3ef

    goto :goto_0

    .line 892
    :sswitch_7
    const/16 v0, 0x3f0

    goto :goto_0

    .line 876
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x3ec -> :sswitch_3
        0x3ed -> :sswitch_4
        0x3ee -> :sswitch_5
    .end sparse-switch
.end method

.method private handleEventRequest(ILcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    const/4 v10, 0x0

    .line 964
    const-string v7, "ExternalSimManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VsimEvenHandler eventHandlerByType: type["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] start"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-virtual {p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v5

    .line 969
    .local v5, "slotId":I
    invoke-virtual {p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getInt()I

    move-result v4

    .line 971
    .local v4, "simType":I
    const/4 v3, 0x0

    .line 973
    .local v3, "result":I
    const-string v7, "ExternalSimManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VsimEvenHandler First slotId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", simType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    packed-switch p1, :pswitch_data_0

    .line 1063
    :goto_0
    new-instance v1, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    invoke-virtual {p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v7

    const/16 v8, 0x3eb

    invoke-virtual {p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v9

    invoke-direct {v1, v7, v8, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 1066
    .local v1, "eventResponse":Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    invoke-virtual {v1, v3}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1067
    iget-object v7, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v7, v1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1069
    const-string v7, "ExternalSimManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VsimEvenHandler eventHandlerByType: type["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] end"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    return-void

    .line 978
    .end local v1    # "eventResponse":Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    :pswitch_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionController;->isReady()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 979
    const/4 v3, 0x0

    .line 985
    :goto_1
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v6

    .line 986
    .local v6, "subId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 988
    .local v0, "ctrl":Lcom/android/internal/telephony/SubscriptionController;
    const/4 v7, 0x1

    if-eq v4, v7, :cond_0

    .line 989
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubIdWithoutCapabilitySwitch(I)V

    .line 991
    const-string v7, "ExternalSimManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VsimEvenHandler set default data to subId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v7, "gsm.external.sim.enabled"

    const-string v8, "1"

    invoke-static {v5, v7, v8}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 981
    .end local v0    # "ctrl":Lcom/android/internal/telephony/SubscriptionController;
    .end local v6    # "subId":I
    :cond_1
    const/4 v3, -0x2

    goto :goto_1

    .line 1000
    :pswitch_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v7, "gsm.external.sim.enabled"

    const-string v8, "0"

    invoke-static {v5, v7, v8}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1002
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v7, "gsm.external.sim.inserted"

    const-string v8, "0"

    invoke-static {v5, v7, v8}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1012
    invoke-direct {p0, v10}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(Z)V

    .line 1014
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 1015
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccController;->resetRadioForVsim()V

    goto/16 :goto_0

    .line 1020
    :pswitch_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v7, "gsm.external.sim.inserted"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1023
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v7, "persist.radio.external.sim"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1027
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 1028
    .restart local v0    # "ctrl":Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v2

    .line 1029
    .local v2, "mCPhoneId":I
    if-ne v5, v2, :cond_2

    .line 1031
    const-string v7, "ExternalSimManager"

    const-string v8, "VsimEvenHandler no need to do capablity switch"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 1034
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccController;->resetRadioForVsim()V

    goto/16 :goto_0

    .line 1037
    :cond_2
    const-string v7, "ExternalSimManager"

    const-string v8, "VsimEvenHandler need to do capablity switch"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionController;->isReady()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1040
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v6

    .line 1041
    .restart local v6    # "subId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 1042
    const/4 v3, 0x0

    .line 1043
    goto/16 :goto_0

    .line 1044
    .end local v6    # "subId":I
    :cond_3
    const/4 v3, -0x2

    .line 1047
    goto/16 :goto_0

    .line 1051
    .end local v0    # "ctrl":Lcom/android/internal/telephony/SubscriptionController;
    .end local v2    # "mCPhoneId":I
    :pswitch_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v7, "gsm.external.sim.inserted"

    const-string v8, "0"

    invoke-static {v5, v7, v8}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1054
    iget-object v7, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v7, p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1058
    invoke-direct {p0, v10}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(Z)V

    goto/16 :goto_0

    .line 975
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private handleGetPlatformCapability(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    .locals 14
    .param p1, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1073
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getInt()I

    move-result v2

    .line 1074
    .local v2, "eventId":I
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getInt()I

    move-result v8

    .line 1076
    .local v8, "simType":I
    new-instance v6, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v9

    const/16 v10, 0x3ea

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v11

    invoke-direct {v6, v9, v10, v11}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 1081
    .local v6, "response":Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/SubscriptionController;->isReady()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1082
    invoke-virtual {v6, v12}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1088
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v1

    .line 1089
    .local v1, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    sget-object v9, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v1, v9, :cond_1

    .line 1090
    invoke-virtual {v6, v13}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1100
    :goto_1
    const-string v9, "ro.mtk_external_sim_support"

    invoke-static {v9, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1106
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v7

    .line 1108
    .local v7, "simCount":I
    const-string v9, "ExternalSimManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleGetPlatformCapability simType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", simCount: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    if-ne v8, v13, :cond_4

    .line 1112
    shl-int v9, v13, v7

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1152
    :goto_2
    iget-object v9, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v9, v6}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1153
    return-void

    .line 1084
    .end local v1    # "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    .end local v7    # "simCount":I
    :cond_0
    const/4 v9, -0x2

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_0

    .line 1091
    .restart local v1    # "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    :cond_1
    sget-object v9, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v1, v9, :cond_2

    .line 1092
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_1

    .line 1093
    :cond_2
    sget-object v9, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v1, v9, :cond_3

    .line 1094
    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_1

    .line 1096
    :cond_3
    invoke-virtual {v6, v12}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_1

    .line 1114
    .restart local v7    # "simCount":I
    :cond_4
    sget-object v9, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v1, v9, :cond_b

    .line 1115
    const/4 v4, 0x0

    .line 1116
    .local v4, "isCdmaCard":I
    const/4 v5, 0x0

    .line 1118
    .local v5, "isHasCard":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v7, :cond_8

    .line 1119
    sget-object v9, Lcom/mediatek/telephony/ExternalSimManager;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v9, v9, v3

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1120
    .local v0, "cardType":Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1121
    shl-int v9, v13, v3

    or-int/2addr v5, v9

    .line 1124
    :cond_5
    const-string v9, "CSIM"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "RUIM"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "UIM"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1126
    :cond_6
    shl-int v9, v13, v3

    or-int/2addr v4, v9

    .line 1118
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1130
    .end local v0    # "cardType":Ljava/lang/String;
    :cond_8
    const-string v9, "ExternalSimManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleGetPlatformCapability isCdmaCard: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isHasCard: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    if-nez v5, :cond_9

    .line 1135
    invoke-virtual {v6, v12}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto/16 :goto_2

    .line 1136
    :cond_9
    if-nez v4, :cond_a

    .line 1138
    invoke-virtual {v6, v12}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto/16 :goto_2

    .line 1141
    :cond_a
    shl-int v9, v13, v7

    add-int/lit8 v9, v9, -0x1

    xor-int/2addr v9, v4

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto/16 :goto_2

    .line 1147
    .end local v3    # "i":I
    .end local v4    # "isCdmaCard":I
    .end local v5    # "isHasCard":I
    :cond_b
    invoke-virtual {v6, v12}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto/16 :goto_2
.end method

.method private handleServiceStateRequest(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    .line 1156
    const/4 v2, 0x0

    .line 1157
    .local v2, "result":I
    const/4 v3, -0x1

    .line 1158
    .local v3, "voiceRejectCause":I
    const/4 v0, -0x1

    .line 1160
    .local v0, "dataRejectCause":I
    new-instance v1, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v4

    const/16 v5, 0x3ef

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v6

    invoke-direct {v1, v4, v5, v6}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 1190
    .local v1, "response":Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    invoke-virtual {v1, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1192
    invoke-virtual {v1, v3}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1194
    invoke-virtual {v1, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1196
    iget-object v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v4, v1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1197
    return-void
.end method

.method private sendNoResponseError(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    const/4 v4, 0x0

    .line 910
    new-instance v0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v1

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->getRspMessageId(I)I

    move-result v2

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 916
    .local v0, "response":Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 919
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 920
    invoke-virtual {v0, v4}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putByte(I)I

    .line 921
    invoke-virtual {v0, v4}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putByte(I)I

    .line 923
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    if-eqz v1, :cond_0

    .line 924
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v1, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 926
    :cond_0
    return-void
.end method

.method private setDataStream(Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;)V
    .locals 2
    .param p1, "vsimAdpatorIo"    # Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;
    .param p2, "vsimRilIo"    # Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .prologue
    .line 870
    iput-object p1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 871
    iput-object p2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 872
    const-string v0, "ExternalSimManager"

    const-string v1, "VsimEvenHandler setDataStream done."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    return-void
.end method

.method private setMdWaitingFlag(Z)V
    .locals 1
    .param p1, "isWaiting"    # Z

    .prologue
    .line 929
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(ZLcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    .line 930
    return-void
.end method

.method private setMdWaitingFlag(ZLcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    .locals 5
    .param p1, "isWaiting"    # Z
    .param p2, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 933
    const-string v0, "ExternalSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMdWaitingFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    # setter for: Lcom/mediatek/telephony/ExternalSimManager;->isMdWaitingResponse:Z
    invoke-static {v0, p1}, Lcom/mediatek/telephony/ExternalSimManager;->access$502(Lcom/mediatek/telephony/ExternalSimManager;Z)Z

    .line 936
    if-ne p1, v3, :cond_2

    .line 937
    iput-object p2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .line 939
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 940
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v3}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:Ljava/util/Timer;

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;

    invoke-direct {v1, p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;-><init>(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 956
    :cond_1
    :goto_0
    return-void

    .line 946
    :cond_2
    iput-object v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .line 949
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 950
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 951
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 952
    iput-object v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mNoResponseTimer:Ljava/util/Timer;

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 866
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->dispatchCallback(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    .line 867
    return-void
.end method
