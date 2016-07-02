.class Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;
.super Landroid/os/Handler;
.source "MtkThermalSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThermalThreadHandler"
.end annotation


# static fields
.field private static final MESSAGE_ACTION_BOOT_COMPLETED:I = 0x4

.field private static final MESSAGE_APP_RESUMED:I = 0x0

.field private static final MESSAGE_BENCHMARK_PREVIOUS:I = 0x5

.field private static final MESSAGE_LOAD_THERMAL:I = 0x8

.field private static final MESSAGE_SETTING_POWERMODE:I = 0x3

.field private static final MESSAGE_SET_BENCHMARK_MODE:I = 0x7

.field private static final MESSAGE_SHOW_DIALOG:I = 0x2

.field private static final MESSAGE_THERMAL_MID:I = 0x9

.field private static final MESSAGE_THERMAL_OFF:I = 0x6

.field private static final MESSAGE_TIMER:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    .line 369
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 370
    return-void
.end method

.method private checkIsDTM()Z
    .locals 12

    .prologue
    const/16 v9, 0x8

    .line 512
    const/4 v7, 0x0

    .line 513
    .local v7, "ret":Z
    new-instance v2, Ljava/io/File;

    const-string v8, "/data/.tp.settings"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 515
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 518
    iget-object v8, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandler:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;
    invoke-static {v8}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1200(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->removeMessages(I)V

    .line 519
    iget-object v8, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandler:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;
    invoke-static {v8}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1200(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 520
    .local v6, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandler:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;
    invoke-static {v8}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1200(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    move-result-object v8

    const-wide/16 v10, 0x1f4

    invoke-virtual {v8, v6, v10, v11}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 524
    .end local v6    # "msg":Landroid/os/Message;
    :cond_0
    new-instance v2, Ljava/io/File;

    .end local v2    # "f":Ljava/io/File;
    const-string v8, "/data/.tp.settings"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 525
    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 528
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 531
    .local v4, "instream":Ljava/io/InputStream;
    if-eqz v4, :cond_2

    .line 533
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 534
    .local v3, "inputReader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 537
    .local v0, "buffReader":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 538
    const-string v8, "/etc/.tp/thermal.conf"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "/etc/.tp/thermal.high.conf"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "/etc/.tp/thermal.mid.conf"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "/etc/.tp/thermal.low.conf"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 545
    :cond_1
    const/4 v7, 0x1

    .line 551
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v3    # "inputReader":Ljava/io/InputStreamReader;
    .end local v5    # "line":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    .end local v4    # "instream":Ljava/io/InputStream;
    :cond_3
    :goto_0
    return v7

    .line 552
    :catch_0
    move-exception v1

    .line 553
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "ThermalSwitchManager"

    const-string v9, "checkIsDTM() IO Exception"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showPowerModeSwitchDialog()V
    .locals 5

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->checkIsDTM()Z

    move-result v0

    .line 563
    .local v0, "dtm":Z
    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mThermalSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1300(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Landroid/app/AlertDialog;

    move-result-object v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    .line 564
    new-instance v2, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;

    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$600(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 565
    .local v2, "mThermalSwitchDialogBuilder":Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;
    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    invoke-virtual {v2}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    # setter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mThermalSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v3, v4}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1302(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 567
    new-instance v1, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler$1;

    invoke-direct {v1, p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler$1;-><init>(Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;)V

    .line 579
    .local v1, "mOnThermalSwitchClickListener":Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnThermalSwitchClickListener;
    invoke-virtual {v2, v1}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->setOnThermalSwitchListener(Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnThermalSwitchClickListener;)V

    .line 580
    iget-object v3, v2, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mDialogBuilderHomeWatcher:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;

    new-instance v4, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler$2;

    invoke-direct {v4, p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler$2;-><init>(Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;)V

    invoke-virtual {v3, v4}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;->setOnHomePressedListener(Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnHomePressedListener;)V

    .line 608
    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mThermalSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1300(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 609
    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mThermalSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1300(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Landroid/app/AlertDialog;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 610
    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mThermalSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1300(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 620
    .end local v1    # "mOnThermalSwitchClickListener":Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnThermalSwitchClickListener;
    .end local v2    # "mThermalSwitchDialogBuilder":Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mThermalSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1300(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 613
    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mThermalSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1300(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 614
    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mThermalSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1300(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 618
    :cond_2
    const-string v3, "ThermalSwitchManager"

    const-string v4, "benchmark Dialog cannot show!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startTimer(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 503
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 504
    .local v0, "msg":Landroid/os/Message;
    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 505
    return-void
.end method

.method private stopTimer()V
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->removeMessages(I)V

    .line 509
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    .line 374
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 378
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->checkIsDTM()Z

    move-result v0

    .line 379
    .local v0, "dtm":Z
    const-string v2, "ThermalSwitchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage app resume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", thermal state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v4}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$000(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dtm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$000(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 382
    if-ne v6, v0, :cond_1

    .line 384
    const-string v2, "ThermalSwitchManager"

    const-string v3, " app resume thermal ready"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # setter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v2, v7}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$002(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)I

    .line 386
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->changeToThermalProtection(I)V
    invoke-static {v2, v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$100(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)V

    .line 387
    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->stopTimer()V

    .line 388
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->startTimer(I)V

    .line 389
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # setter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v2, v5}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$002(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)I

    goto :goto_0

    .line 391
    :cond_1
    const-string v2, "ThermalSwitchManager"

    const-string v3, " app resume thermal is not dtm, still load thermal off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # setter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v2, v7}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$002(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)I

    .line 393
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->changeToThermalProtection(I)V
    invoke-static {v2, v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$100(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)V

    .line 394
    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->stopTimer()V

    .line 395
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->startTimer(I)V

    .line 396
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # setter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v2, v5}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$002(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)I

    goto/16 :goto_0

    .line 399
    :cond_2
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$000(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 400
    if-ne v6, v0, :cond_3

    .line 402
    const-string v2, "ThermalSwitchManager"

    const-string v3, " app resume thermal disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # setter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v2, v7}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$002(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)I

    .line 404
    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->stopTimer()V

    .line 405
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->changeToThermalProtection(I)V
    invoke-static {v2, v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$100(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)V

    .line 406
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->startTimer(I)V

    .line 407
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # setter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v2, v5}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$002(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)I

    goto/16 :goto_0

    .line 411
    :cond_3
    const-string v2, "ThermalSwitchManager"

    const-string v3, " app resume thermal is not dtm, still load thermal off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # setter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v2, v7}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$002(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)I

    .line 413
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->changeToThermalProtection(I)V
    invoke-static {v2, v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$100(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)V

    .line 414
    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->stopTimer()V

    .line 415
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->startTimer(I)V

    .line 416
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # setter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v2, v5}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$002(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)I

    goto/16 :goto_0

    .line 425
    .end local v0    # "dtm":Z
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->checkIsDTM()Z

    move-result v0

    .line 426
    .restart local v0    # "dtm":Z
    const-string v2, "ThermalSwitchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage timer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", thermal state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v4}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$000(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dtm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$000(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 430
    if-ne v6, v0, :cond_5

    .line 432
    const-string v2, "ThermalSwitchManager"

    const-string v3, " timer thermal disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # invokes: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->changeToDynamicThermalManagement()V
    invoke-static {v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$200(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V

    .line 434
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # setter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v2, v6}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$002(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)I

    .line 444
    :cond_4
    :goto_1
    const-string v2, "ThermalSwitchManager"

    const-string v3, "make sure benchmark is restore to previous status"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # invokes: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->changeToDynamicThermalManagement()V
    invoke-static {v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$200(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V

    goto/16 :goto_0

    .line 438
    :cond_5
    const-string v2, "ThermalSwitchManager"

    const-string v3, " timer thermal disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    const/4 v3, 0x4

    # setter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v2, v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$002(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)I

    .line 440
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # invokes: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->changeToDynamicThermalManagement()V
    invoke-static {v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$200(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V

    .line 441
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # setter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v2, v6}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$002(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)I

    goto :goto_1

    .line 451
    .end local v0    # "dtm":Z
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->showPowerModeSwitchDialog()V

    goto/16 :goto_0

    .line 456
    :pswitch_3
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # invokes: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->HandleOnReceiveBootCompleted()V
    invoke-static {v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$300(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V

    goto/16 :goto_0

    .line 463
    :pswitch_4
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->setPowerSavingMode(I)V
    invoke-static {v2, v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$400(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)V

    goto/16 :goto_0

    .line 468
    :pswitch_5
    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mPowerModeBenchmark:Z
    invoke-static {}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$500()Z

    move-result v2

    if-nez v2, :cond_0

    .line 469
    const-string v2, "ThermalSwitchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not in benchmark set previous power status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$600(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mPrevious_SettingsCPU_L:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$700(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , benchmark state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mPowerModeBenchmark:Z
    invoke-static {}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$500()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$600(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mPrevious_SettingsCPU_L:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$700(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 477
    :pswitch_6
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # invokes: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->loadThermalOffMode()V
    invoke-static {v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$800(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V

    goto/16 :goto_0

    .line 482
    :pswitch_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 483
    .local v1, "flag":I
    if-nez v1, :cond_6

    .line 484
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    const/4 v3, 0x0

    # invokes: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->setBenchMarkMode(Z)V
    invoke-static {v2, v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$900(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;Z)V

    goto/16 :goto_0

    .line 485
    :cond_6
    if-ne v1, v6, :cond_0

    .line 486
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # invokes: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->setBenchMarkMode(Z)V
    invoke-static {v2, v6}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$900(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;Z)V

    goto/16 :goto_0

    .line 491
    .end local v1    # "flag":I
    :pswitch_8
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # invokes: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->loadThermal()V
    invoke-static {v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1000(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V

    goto/16 :goto_0

    .line 496
    :pswitch_9
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # invokes: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->loadThermalBalanceMode()V
    invoke-static {v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1100(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V

    goto/16 :goto_0

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
