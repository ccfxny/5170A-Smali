.class Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;
.super Landroid/os/Handler;
.source "PerfServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/perfservice/PerfServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerfServiceThreadHandler"
.end annotation


# static fields
.field private static final MESSAGE_BOOST_DISABLE:I = 0x1

.field private static final MESSAGE_BOOST_ENABLE:I = 0x0

.field private static final MESSAGE_BOOST_ENABLE_TIMEOUT:I = 0x2

.field private static final MESSAGE_BOOST_ENABLE_TIMEOUT_MS:I = 0x3

.field private static final MESSAGE_DUMP_ALL:I = 0x22

.field private static final MESSAGE_NOTIFY_APP_STATE:I = 0x4

.field private static final MESSAGE_NOTIFY_FRAME_UPDATE:I = 0x24

.field private static final MESSAGE_SET_FAVOR_PID:I = 0x23

.field private static final MESSAGE_SW_FRAME_UPDATE_TIMEOUT:I = 0x25

.field private static final MESSAGE_TIMEOUT_BENCHMARK_MODE:I = 0x33

.field private static final MESSAGE_TIMEOUT_WIFI_UNSLEEP:I = 0x35

.field private static final MESSAGE_TIMER_DONT_USE1:I = 0xa

.field private static final MESSAGE_TIMER_SCN_APP_LAUNCH:I = 0xd

.field private static final MESSAGE_TIMER_SCN_APP_ROTATE:I = 0x6

.field private static final MESSAGE_TIMER_SCN_APP_SWITCH:I = 0x5

.field private static final MESSAGE_TIMER_SCN_APP_TOUCH:I = 0x9

.field private static final MESSAGE_TIMER_SCN_SW_CODEC:I = 0x7

.field private static final MESSAGE_TIMER_SCN_SW_CODEC_BOOST:I = 0x8

.field private static final MESSAGE_TIMER_SCN_SW_FRAME_UPDATE:I = 0xb

.field private static final MESSAGE_TIMER_SCN_USER_BASE:I = 0x40

.field private static final MESSAGE_TIMER_TOUCH_BOOST_DURATION:I = 0xc

.field private static final MESSAGE_TOUCH_BOOST_DURATION:I = 0x26

.field private static final MESSAGE_USER_BENCHMARK_MODE:I = 0x32

.field private static final MESSAGE_USER_DISABLE:I = 0x1e

.field private static final MESSAGE_USER_DISABLE_ALL:I = 0x20

.field private static final MESSAGE_USER_ENABLE:I = 0x1b

.field private static final MESSAGE_USER_ENABLE_TIMEOUT:I = 0x1c

.field private static final MESSAGE_USER_ENABLE_TIMEOUT_MS:I = 0x1d

.field private static final MESSAGE_USER_GET_CAPABILITY:I = 0x17

.field private static final MESSAGE_USER_REG:I = 0x14

.field private static final MESSAGE_USER_REG_BIG_LITTLE:I = 0x15

.field private static final MESSAGE_USER_REG_SCN:I = 0x18

.field private static final MESSAGE_USER_REG_SCN_CONFIG:I = 0x19

.field private static final MESSAGE_USER_RESET_ALL:I = 0x1f

.field private static final MESSAGE_USER_RESTORE_ALL:I = 0x21

.field private static final MESSAGE_USER_UNREG:I = 0x16

.field private static final MESSAGE_USER_UNREG_SCN:I = 0x1a

.field private static final MESSAGE_USER_USAGE_STATS:I = 0x36

.field private static final MESSAGE_USER_WIFI_UNSLEEP:I = 0x34


# instance fields
.field private mCurrentPowerModeInSetting:I

.field final synthetic this$0:Lcom/mediatek/perfservice/PerfServiceManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/perfservice/PerfServiceManager;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    .line 446
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 442
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->mCurrentPowerModeInSetting:I

    .line 447
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTouchBoostTimer()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;
    .param p1, "x1"    # I

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTimer(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;
    .param p1, "x1"    # I

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckTouchBoostTimerMs(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;
    .param p1, "x1"    # I

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckUserTimer(I)V

    return-void
.end method

.method private getScenarioTimer(I)I
    .locals 1
    .param p1, "scenario"    # I

    .prologue
    .line 816
    packed-switch p1, :pswitch_data_0

    .line 839
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 818
    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 821
    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 824
    :pswitch_3
    const/4 v0, 0x7

    goto :goto_0

    .line 827
    :pswitch_4
    const/16 v0, 0x8

    goto :goto_0

    .line 830
    :pswitch_5
    const/16 v0, 0x9

    goto :goto_0

    .line 833
    :pswitch_6
    const/16 v0, 0xb

    goto :goto_0

    .line 836
    :pswitch_7
    const/16 v0, 0xd

    goto :goto_0

    .line 816
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private removeAllUserTimerList()V
    .locals 2

    .prologue
    .line 807
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 808
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 807
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 813
    :cond_0
    return-void
.end method

.method private startBenchMarkTimer(I)V
    .locals 4
    .param p1, "timeout_ms"    # I

    .prologue
    .line 722
    const/16 v1, 0x33

    invoke-virtual {p0, v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 723
    .local v0, "msg":Landroid/os/Message;
    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 724
    return-void
.end method

.method private startCheckTimer(II)V
    .locals 4
    .param p1, "scenario"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 742
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->getScenarioTimer(I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 743
    mul-int/lit16 v1, p2, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 744
    :cond_0
    return-void
.end method

.method private startCheckTimerMs(II)V
    .locals 4
    .param p1, "scenario"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 748
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->getScenarioTimer(I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 749
    int-to-long v2, p2

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 750
    :cond_0
    return-void
.end method

.method private startCheckTouchBoostTimerMs(I)V
    .locals 4
    .param p1, "timeout_ms"    # I

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 760
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 761
    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 762
    return-void
.end method

.method private startCheckUserTimer(II)V
    .locals 4
    .param p1, "handle"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 770
    .local v0, "msg":Landroid/os/Message;
    add-int/lit8 v1, p1, 0x40

    iput v1, v0, Landroid/os/Message;->what:I

    .line 771
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 772
    mul-int/lit16 v1, p2, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 774
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 775
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    :cond_0
    return-void
.end method

.method private startCheckUserTimerMs(II)V
    .locals 4
    .param p1, "handle"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 782
    .local v0, "msg":Landroid/os/Message;
    add-int/lit8 v1, p1, 0x40

    iput v1, v0, Landroid/os/Message;->what:I

    .line 783
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 784
    int-to-long v2, p2

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 786
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 787
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    :cond_0
    return-void
.end method

.method private startWifiUnSleepTimer(I)V
    .locals 4
    .param p1, "timeout_ms"    # I

    .prologue
    .line 731
    const/16 v1, 0x35

    invoke-virtual {p0, v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 732
    .local v0, "msg":Landroid/os/Message;
    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 733
    return-void
.end method

.method private stopAllUserTimer()V
    .locals 4

    .prologue
    .line 798
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v3, v3, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 799
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v3, v3, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 800
    .local v0, "handle":I
    add-int/lit8 v2, v0, 0x40

    .line 801
    .local v2, "timer":I
    invoke-virtual {p0, v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeMessages(I)V

    .line 798
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 804
    .end local v0    # "handle":I
    .end local v2    # "timer":I
    :cond_0
    return-void
.end method

.method private stopBenchMarkTimer()V
    .locals 1

    .prologue
    .line 727
    const/16 v0, 0x33

    invoke-virtual {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeMessages(I)V

    .line 728
    return-void
.end method

.method private stopCheckTimer(I)V
    .locals 2
    .param p1, "scenario"    # I

    .prologue
    .line 753
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->getScenarioTimer(I)I

    move-result v0

    .line 754
    .local v0, "timer":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 755
    invoke-virtual {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeMessages(I)V

    .line 756
    :cond_0
    return-void
.end method

.method private stopCheckTouchBoostTimer()V
    .locals 1

    .prologue
    .line 765
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeMessages(I)V

    .line 766
    return-void
.end method

.method private stopCheckUserTimer(I)V
    .locals 1
    .param p1, "handle"    # I

    .prologue
    .line 793
    add-int/lit8 v0, p1, 0x40

    .line 794
    .local v0, "timer":I
    invoke-virtual {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeMessages(I)V

    .line 795
    return-void
.end method

.method private stopWifiUnSleepTimer()V
    .locals 1

    .prologue
    .line 736
    const/16 v0, 0x35

    invoke-virtual {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeMessages(I)V

    .line 737
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x7

    .line 452
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 708
    :pswitch_0
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MESSAGE_TIMER_SCN_USER_BASE:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 709
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x40

    if-lt v4, v5, :cond_0

    .line 710
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnDisable(I)I

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 456
    :pswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostEnable(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 715
    :catch_0
    move-exception v0

    .line 716
    .local v0, "e":Ljava/lang/NullPointerException;
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in PerfServiceThreadHandler.handleMessage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1700(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    goto :goto_0

    .line 463
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :pswitch_2
    :try_start_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    goto :goto_0

    .line 470
    :pswitch_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostEnable(I)I

    .line 471
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v4, v5}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckTimer(II)V

    goto :goto_0

    .line 477
    :pswitch_4
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_1

    .line 479
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z
    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$400(Lcom/mediatek/perfservice/PerfServiceManager;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 483
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;
    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$500(Lcom/mediatek/perfservice/PerfServiceManager;)Ldalvik/system/VMRuntime;

    move-result-object v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v4, v5}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 488
    :cond_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostEnable(I)I

    .line 489
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v4, v5}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckTimerMs(II)V

    goto :goto_0

    .line 495
    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;

    .line 496
    .local v2, "passedObject":Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v5, "MESSAGE_NOTIFY_APP_STATE"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 497
    # getter for: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->mPackName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->access$700(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;)Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->mClassName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->access$800(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;)Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->mState:I
    invoke-static {v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->access$900(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfNotifyAppState(Ljava/lang/String;Ljava/lang/String;I)I

    .line 498
    const/4 v2, 0x0

    .line 499
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 505
    .end local v2    # "passedObject":Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;
    :pswitch_6
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v5, "MESSAGE_TIMER_SCN_APP_SWITCH"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 506
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    goto/16 :goto_0

    .line 512
    :pswitch_7
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v5, "MESSAGE_TIMER_SCN_APP_ROTATE"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 513
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    goto/16 :goto_0

    .line 519
    :pswitch_8
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v5, "MESSAGE_TIMER_SCN_SW_CODEC"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 520
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    goto/16 :goto_0

    .line 526
    :pswitch_9
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v5, "MESSAGE_TIMER_SCN_SW_CODEC_BOOST"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 527
    const/4 v4, 0x4

    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    goto/16 :goto_0

    .line 533
    :pswitch_a
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v5, "MESSAGE_TIMER_SCN_APP_TOUCH"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 534
    const/4 v4, 0x5

    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    goto/16 :goto_0

    .line 540
    :pswitch_b
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v5, "MESSAGE_TIMER_SCN_SW_FRAME_UPDATE"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 542
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouch:Z
    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1000(Lcom/mediatek/perfservice/PerfServiceManager;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 543
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z
    invoke-static {v4, v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$402(Lcom/mediatek/perfservice/PerfServiceManager;Z)Z

    .line 546
    :cond_2
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;
    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$500(Lcom/mediatek/perfservice/PerfServiceManager;)Ldalvik/system/VMRuntime;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mDefaultUtilization:F
    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1100(Lcom/mediatek/perfservice/PerfServiceManager;)F

    move-result v5

    invoke-virtual {v4, v5}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 547
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;
    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$500(Lcom/mediatek/perfservice/PerfServiceManager;)Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v3

    .line 548
    .local v3, "utilization":F
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set utilization:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 550
    const/4 v4, 0x7

    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    .line 551
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTouchBoostTimer()V

    goto/16 :goto_0

    .line 557
    .end local v3    # "utilization":F
    :pswitch_c
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v5, "MESSAGE_TIMER_TOUCH_BOOST_DURATION"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 558
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z
    invoke-static {v4, v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$402(Lcom/mediatek/perfservice/PerfServiceManager;Z)Z

    .line 559
    const/4 v4, 0x7

    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    goto/16 :goto_0

    .line 565
    :pswitch_d
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MESSAGE_USER_ENABLE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 566
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnEnable(I)I

    goto/16 :goto_0

    .line 572
    :pswitch_e
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MESSAGE_USER_DISABLE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 573
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnDisable(I)I

    goto/16 :goto_0

    .line 579
    :pswitch_f
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MESSAGE_USER_ENABLE_TIMEOUT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 580
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnEnable(I)I

    .line 581
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v4, v5}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckUserTimer(II)V

    goto/16 :goto_0

    .line 587
    :pswitch_10
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MESSAGE_USER_ENABLE_TIMEOUT_MS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 588
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnEnable(I)I

    .line 589
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v4, v5}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckUserTimerMs(II)V

    goto/16 :goto_0

    .line 595
    :pswitch_11
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MESSAGE_USER_UNREG_SCN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 596
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserUnregScn(I)I

    goto/16 :goto_0

    .line 602
    :pswitch_12
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v5, "MESSAGE_USER_RESET_ALL"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 603
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopAllUserTimer()V

    .line 604
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeAllUserTimerList()V

    .line 605
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnResetAll()I

    goto/16 :goto_0

    .line 611
    :pswitch_13
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v5, "MESSAGE_USER_DISABLE_ALL"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 612
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopAllUserTimer()V

    .line 613
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnDisableAll()I

    goto/16 :goto_0

    .line 619
    :pswitch_14
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v5, "MESSAGE_USER_RESTORE_ALL"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 620
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnRestoreAll()I

    goto/16 :goto_0

    .line 626
    :pswitch_15
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v5, "MESSAGE_TIMER_SCN_APP_LAUNCH"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 627
    const/16 v4, 0x8

    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 635
    :pswitch_16
    :try_start_2
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1200(Lcom/mediatek/perfservice/PerfServiceManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "cpu_l"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->mCurrentPowerModeInSetting:I

    .line 638
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->initDcs()V
    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1300(Lcom/mediatek/perfservice/PerfServiceManager;)V

    .line 639
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mDeviceControlService:Lmeizu/os/IDeviceControlService;
    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1400(Lcom/mediatek/perfservice/PerfServiceManager;)Lmeizu/os/IDeviceControlService;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 640
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mDeviceControlService:Lmeizu/os/IDeviceControlService;
    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1400(Lcom/mediatek/perfservice/PerfServiceManager;)Lmeizu/os/IDeviceControlService;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Lmeizu/os/IDeviceControlService;->saveCPUfreq(I)I

    .line 641
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopBenchMarkTimer()V

    .line 642
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v4}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startBenchMarkTimer(I)V
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 643
    :catch_1
    move-exception v0

    .line 644
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    :try_start_3
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 645
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :catch_2
    move-exception v0

    .line 646
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 654
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_17
    :try_start_4
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->initDcs()V
    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1300(Lcom/mediatek/perfservice/PerfServiceManager;)V

    .line 655
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mDeviceControlService:Lmeizu/os/IDeviceControlService;
    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1400(Lcom/mediatek/perfservice/PerfServiceManager;)Lmeizu/os/IDeviceControlService;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 656
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mDeviceControlService:Lmeizu/os/IDeviceControlService;
    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1400(Lcom/mediatek/perfservice/PerfServiceManager;)Lmeizu/os/IDeviceControlService;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->mCurrentPowerModeInSetting:I

    invoke-interface {v4, v5}, Lmeizu/os/IDeviceControlService;->saveCPUfreq(I)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 657
    :catch_3
    move-exception v0

    .line 658
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 666
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_18
    :try_start_6
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->initWfm()V
    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1500(Lcom/mediatek/perfservice/PerfServiceManager;)V

    .line 667
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mWifiManager:Landroid/net/wifi/IWifiManager;
    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1600(Lcom/mediatek/perfservice/PerfServiceManager;)Landroid/net/wifi/IWifiManager;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 668
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mWifiManager:Landroid/net/wifi/IWifiManager;
    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1600(Lcom/mediatek/perfservice/PerfServiceManager;)Landroid/net/wifi/IWifiManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/net/wifi/IWifiManager;->setWifiPowerSave(Z)V

    .line 669
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopWifiUnSleepTimer()V

    .line 670
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v4}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startWifiUnSleepTimer(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 671
    :catch_4
    move-exception v0

    .line 672
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_7
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 680
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_19
    :try_start_8
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->initWfm()V
    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1500(Lcom/mediatek/perfservice/PerfServiceManager;)V

    .line 681
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mWifiManager:Landroid/net/wifi/IWifiManager;
    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1600(Lcom/mediatek/perfservice/PerfServiceManager;)Landroid/net/wifi/IWifiManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 682
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mWifiManager:Landroid/net/wifi/IWifiManager;
    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1600(Lcom/mediatek/perfservice/PerfServiceManager;)Landroid/net/wifi/IWifiManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/net/wifi/IWifiManager;->setWifiPowerSave(Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 683
    :catch_5
    move-exception v0

    .line 684
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_9
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 691
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1a
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 692
    .local v1, "map":Ljava/util/Map;
    const-string v4, "redpackets_accelerate_source"

    const-string v5, "Wechat"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1200(Lcom/mediatek/perfservice/PerfServiceManager;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/meizu/statsos/UsageStatsProxy;->getInstance(Landroid/content/Context;Z)Lcom/meizu/statsos/UsageStatsProxy;

    move-result-object v4

    const-string v5, "redpackets_accelerate"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1}, Lcom/meizu/statsos/UsageStatsProxy;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 452
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_e
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method
