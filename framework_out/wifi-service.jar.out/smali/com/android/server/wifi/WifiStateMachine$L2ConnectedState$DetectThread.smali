.class Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;
.super Ljava/lang/Thread;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetectThread"
.end annotation


# instance fields
.field private runningFlag:Z

.field final synthetic this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

.field private tooken:I


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;I)V
    .locals 1
    .param p2, "t"    # I

    .prologue
    .line 9491
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 9489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->runningFlag:Z

    .line 9492
    iput p2, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->tooken:I

    .line 9493
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 9496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->runningFlag:Z

    .line 9497
    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    .line 9500
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    iget-object v10, v10, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v11, "detectGateWayChange"

    invoke-virtual {v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9501
    const/4 v7, 0x0

    .line 9502
    .local v7, "ret":Z
    const/4 v3, 0x5

    .line 9503
    .local v3, "i":I
    const/4 v2, 0x0

    .line 9504
    .local v2, "gateway":Ljava/net/InetAddress;
    const/4 v1, 0x0

    .line 9506
    .local v1, "gateWayIpStr":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    iget-object v10, v10, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$23600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/RouteInfo;

    .line 9507
    .local v8, "route":Landroid/net/RouteInfo;
    invoke-virtual {v8}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v8}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 9508
    invoke-virtual {v8}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    .line 9509
    instance-of v10, v2, Ljava/net/Inet4Address;

    if-eqz v10, :cond_0

    .line 9510
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$900()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 9511
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    iget-object v10, v10, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "detectGateWayChange found Ipv4 default :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9518
    .end local v8    # "route":Landroid/net/RouteInfo;
    :cond_1
    if-nez v2, :cond_3

    .line 9519
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    iget-object v10, v10, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "gateway is null,mLinkProperties is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    iget-object v12, v12, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$23600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9520
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->runningFlag:Z

    .line 9560
    :cond_2
    :goto_0
    return-void

    .line 9523
    :cond_3
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 9524
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$900()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    iget-object v10, v10, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "gateWayIpStr is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " runningFlag = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->runningFlag:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9526
    :cond_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    .local v9, "runtime":Ljava/lang/Runtime;
    move v4, v3

    .line 9528
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_1
    :try_start_0
    iget-boolean v10, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->runningFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v10, :cond_b

    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    if-lez v4, :cond_c

    .line 9529
    :try_start_1
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$900()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    iget-object v10, v10, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "runningFlag = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->runningFlag:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  i = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->access$27700(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9530
    :cond_5
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$900()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    iget-object v10, v10, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ping gateway str "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->access$27800(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9531
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/system/bin/ping -c 1 -w 1 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 9532
    .local v6, "ping":Ljava/lang/Process;
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    move-result v10

    if-nez v10, :cond_9

    const/4 v10, 0x1

    :goto_2
    or-int/2addr v7, v10

    .line 9533
    iget-boolean v10, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->runningFlag:Z

    if-eqz v10, :cond_a

    if-eqz v7, :cond_a

    .line 9534
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$900()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    iget-object v10, v10, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v11, "ping GW ok"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->access$27900(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9535
    :cond_7
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    iget-object v10, v10, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v11, 0x20109

    const/4 v12, 0x1

    iget v13, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->tooken:I

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 9536
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->runningFlag:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 9552
    .end local v6    # "ping":Ljava/lang/Process;
    :catch_0
    move-exception v0

    .line 9553
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$900()Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    iget-object v10, v10, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ping GW error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->access$28300(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9554
    :cond_8
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    iget-object v10, v10, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v11, 0x20109

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->tooken:I

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 9555
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->runningFlag:Z

    goto/16 :goto_0

    .line 9532
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v6    # "ping":Ljava/lang/Process;
    :cond_9
    const/4 v10, 0x0

    goto :goto_2

    :cond_a
    move v4, v3

    .line 9539
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_1

    .end local v6    # "ping":Ljava/lang/Process;
    :cond_b
    move v3, v4

    .line 9540
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_c
    :try_start_2
    iget-boolean v10, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->runningFlag:Z

    if-nez v10, :cond_d

    .line 9541
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$900()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    iget-object v10, v10, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v11, "ping not finished"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->access$28000(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9544
    :cond_d
    if-eqz v7, :cond_f

    .line 9545
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$900()Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    iget-object v10, v10, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v11, "ping GW ok"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->access$28100(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9546
    :cond_e
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    iget-object v10, v10, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v11, 0x20109

    const/4 v12, 0x1

    iget v13, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->tooken:I

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 9547
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->runningFlag:Z

    goto/16 :goto_0

    .line 9550
    :cond_f
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$900()Z

    move-result v10

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    iget-object v10, v10, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v11, "ping GW Fail"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->access$28200(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 9558
    :cond_10
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    iget-object v10, v10, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v11, 0x20109

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->tooken:I

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 9559
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$DetectThread;->runningFlag:Z

    goto/16 :goto_0

    .line 9552
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :catch_1
    move-exception v0

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_3
.end method
