.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;
.super Lcom/android/internal/util/State;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupNegotiationState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0

    .prologue
    .line 2568
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 2571
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enter()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2572
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 18
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 2577
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v14, v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->MsgHandledLog(Ljava/lang/Object;Landroid/os/Message;)V
    invoke-static {v14, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/Object;Landroid/os/Message;)V

    .line 2578
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    sparse-switch v14, :sswitch_data_0

    .line 2777
    const/4 v14, 0x0

    .line 2779
    :goto_0
    return v14

    .line 2583
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " go success"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2779
    :cond_0
    :goto_1
    :sswitch_1
    const/4 v14, 0x1

    goto :goto_0

    .line 2586
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/net/wifi/p2p/WifiP2pGroup;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v15, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1902(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 2587
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " group started"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2591
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v14, v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v14, v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v15, v15, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInterface:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Landroid/os/INetworkManagementService;->enableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2599
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v14

    const/4 v15, -0x2

    if-ne v14, v15, :cond_1

    .line 2603
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->NO_RELOAD:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$13700()Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updatePersistentNetworks(Z)V
    invoke-static {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$13800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V

    .line 2604
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v14

    iget-object v2, v14, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 2605
    .local v2, "devAddr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;
    invoke-static {v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    .line 2609
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v14, v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMiracastMode:I
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$7000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->WFD_DONGLE_USE_P2P_INVITE:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$7800()Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_1

    .line 2611
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "wfd source case: Network ID = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2612
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/net/wifi/p2p/WifiP2pGroupList;->remove(I)V

    .line 2617
    .end local v2    # "devAddr":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 2627
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v14, v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAutonomousGroup:Z
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$7600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 2628
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0xa

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/wifi/WifiNative;->setP2pGroupIdle(Ljava/lang/String;I)Z

    .line 2630
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->startDhcpServer(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$13900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)V

    .line 2698
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;
    invoke-static {v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$14200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    move-result-object v15

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$14300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2592
    :catch_0
    move-exception v11

    .line 2593
    .local v11, "re":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " RemoteException: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2594
    .end local v11    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .line 2595
    .local v6, "ie":Ljava/lang/IllegalStateException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " IllegalStateException: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2633
    .end local v6    # "ie":Ljava/lang/IllegalStateException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v14, v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGcFastConnectEnaled:Z
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$2800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 2634
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v14, v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$3400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v14

    iget-object v4, v14, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->gcIpAddress:Ljava/lang/String;

    .line 2635
    .local v4, "gcIp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v8

    .line 2637
    .local v8, "intf":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v14, v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v14, v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v14, v8}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v7

    .line 2638
    .local v7, "ifcg":Landroid/net/InterfaceConfiguration;
    new-instance v14, Landroid/net/LinkAddress;

    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v15

    const/16 v16, 0x18

    invoke-direct/range {v14 .. v16}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v7, v14}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 2639
    invoke-virtual {v7}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 2640
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v14, v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v14, v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v14, v8, v7}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 2642
    new-instance v12, Landroid/net/StaticIpConfiguration;

    invoke-direct {v12}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 2643
    .local v12, "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    new-instance v14, Landroid/net/LinkAddress;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v15, v15, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$3400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->gcIpAddress:Ljava/lang/String;

    invoke-static {v15}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v15

    const/16 v16, 0x18

    invoke-direct/range {v14 .. v16}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v14, v12, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 2645
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const-string v15, "fast connect feature, do addInterfaceToLocalNetwork() for Android L version"

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2646
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v14, v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v14, v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-virtual {v12, v8}, Landroid/net/StaticIpConfiguration;->getRoutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v14, v8, v15}, Landroid/os/INetworkManagementService;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2681
    .end local v4    # "gcIp":Ljava/lang/String;
    .end local v7    # "ifcg":Landroid/net/InterfaceConfiguration;
    .end local v8    # "intf":Ljava/lang/String;
    .end local v12    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/wifi/WifiNative;->setP2pPowerSaveMtk(Ljava/lang/String;I)Z

    .line 2683
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v5

    .line 2684
    .local v5, "groupOwner":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v14

    iget-object v15, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v10

    .line 2685
    .local v10, "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v10, :cond_6

    .line 2687
    invoke-virtual {v5, v10}, Landroid/net/wifi/p2p/WifiP2pDevice;->updateSupplicantDetails(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 2688
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v14

    iget-object v15, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 2689
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendPeersChangedBroadcast()V
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    goto/16 :goto_3

    .line 2648
    .end local v5    # "groupOwner":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v10    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    .restart local v4    # "gcIp":Ljava/lang/String;
    .restart local v8    # "intf":Ljava/lang/String;
    :catch_2
    move-exception v11

    .line 2649
    .restart local v11    # "re":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "fast connect feature, Error configuring interface "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_4

    .line 2653
    .end local v4    # "gcIp":Ljava/lang/String;
    .end local v8    # "intf":Ljava/lang/String;
    .end local v11    # "re":Landroid/os/RemoteException;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mTmpGcIp:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTmpGcIp:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$4400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mTmpGoIp:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTmpGoIp:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$4500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2654
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600()Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v14, v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTmpGcIp:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$4400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v14, v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTmpGoIp:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$4500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 2656
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v14, v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v14, v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v7

    .line 2657
    .restart local v7    # "ifcg":Landroid/net/InterfaceConfiguration;
    new-instance v14, Landroid/net/LinkAddress;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v15, v15, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTmpGcIp:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$4400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v15

    const/16 v16, 0x18

    invoke-direct/range {v14 .. v16}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v7, v14}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 2658
    invoke-virtual {v7}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 2659
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v14, v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v14, v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15, v7}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 2661
    new-instance v12, Landroid/net/StaticIpConfiguration;

    invoke-direct {v12}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 2662
    .restart local v12    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    new-instance v14, Landroid/net/LinkAddress;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v15, v15, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTmpGcIp:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$4400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v15

    const/16 v16, 0x18

    invoke-direct/range {v14 .. v16}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v14, v12, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 2663
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const-string v15, "NFC Float II feature, do addInterfaceToLocalNetwork() for Android L version"

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2664
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v14, v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v14, v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/net/StaticIpConfiguration;->getRoutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Landroid/os/INetworkManagementService;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_4

    .line 2666
    .end local v7    # "ifcg":Landroid/net/InterfaceConfiguration;
    .end local v12    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :catch_3
    move-exception v3

    .line 2667
    .local v3, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "NFC Float II feature, Error configuring interface "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2671
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0xa

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/wifi/WifiNative;->setP2pGroupIdle(Ljava/lang/String;I)Z

    .line 2672
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v14, v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v15, v15, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Landroid/net/DhcpStateMachine;->makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/DhcpStateMachine;

    move-result-object v15

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$14002(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    .line 2675
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v14, v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$14000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/DhcpStateMachine;

    move-result-object v14

    const v15, 0x30001

    invoke-virtual {v14, v15}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    goto/16 :goto_4

    .line 2695
    .restart local v5    # "groupOwner":Landroid/net/wifi/p2p/WifiP2pDevice;
    .restart local v10    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown group owner "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logw(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$14100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2702
    .end local v5    # "groupOwner":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v10    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_3
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v14, v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pOperFreq:I
    invoke-static {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$11202(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I

    .line 2703
    :cond_7
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 2704
    .local v13, "status":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "go negotiation failed, status = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\tmP2pOperFreq = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pOperFreq:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$11200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 2705
    sget-object v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    if-ne v13, v14, :cond_8

    .line 2706
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mFrequencyConflictState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;
    invoke-static {v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$12400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;

    move-result-object v15

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$14400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2711
    .end local v13    # "status":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    :cond_8
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " go failure"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2712
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->handleGroupCreationFailure()V
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$10600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    .line 2713
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mInactiveState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;
    invoke-static {v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

    move-result-object v15

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$14500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2720
    :sswitch_5
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v14, v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pOperFreq:I
    invoke-static {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$11202(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I

    .line 2721
    :cond_9
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 2722
    .restart local v13    # "status":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "group formation failed, status = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\tmP2pOperFreq = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pOperFreq:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$11200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 2723
    sget-object v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    if-ne v13, v14, :cond_0

    .line 2724
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mFrequencyConflictState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;
    invoke-static {v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$12400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;

    move-result-object v15

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$14600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2729
    .end local v13    # "status":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 2730
    .restart local v13    # "status":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    sget-object v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->SUCCESS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    if-eq v13, v14, :cond_0

    .line 2735
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invitation result "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 2736
    sget-object v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN_P2P_GROUP:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    if-ne v13, v14, :cond_b

    .line 2739
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$8500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v14

    iget v9, v14, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 2740
    .local v9, "netId":I
    if-ltz v9, :cond_a

    .line 2741
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const-string v15, "Remove unknown client from the list"

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2742
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$8500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v15

    iget-object v15, v15, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    const/16 v16, 0x1

    move/from16 v0, v16

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->removeClientFromList(ILjava/lang/String;Z)Z
    invoke-static {v14, v9, v15, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$14700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;ILjava/lang/String;Z)Z

    .line 2746
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$8500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v14

    const/4 v15, -0x2

    iput v15, v14, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 2747
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$8500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v15

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->p2pConnectWithPinDisplay(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    invoke-static {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$9300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    goto/16 :goto_1

    .line 2748
    .end local v9    # "netId":I
    :cond_b
    sget-object v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INFORMATION_IS_CURRENTLY_UNAVAILABLE:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    if-ne v13, v14, :cond_c

    .line 2754
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$8500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v14

    const/4 v15, -0x2

    iput v15, v14, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 2755
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$8500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v15

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->p2pConnectWithPinDisplay(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    invoke-static {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$9300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    goto/16 :goto_1

    .line 2756
    :cond_c
    sget-object v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    if-ne v13, v14, :cond_e

    .line 2758
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v14, v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pOperFreq:I
    invoke-static {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$11202(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I

    .line 2759
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invitation mP2pOperFreq = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pOperFreq:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$11200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2760
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mFrequencyConflictState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;
    invoke-static {v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$12400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;

    move-result-object v15

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$14800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2762
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->handleGroupCreationFailure()V
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$10600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    .line 2763
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mInactiveState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;
    invoke-static {v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

    move-result-object v15

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$14900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2578
    nop

    :sswitch_data_0
    .sparse-switch
        0x2400a -> :sswitch_1
        0x24019 -> :sswitch_0
        0x2401a -> :sswitch_3
        0x2401b -> :sswitch_0
        0x2401c -> :sswitch_5
        0x2401d -> :sswitch_2
        0x2401e -> :sswitch_4
        0x24020 -> :sswitch_6
    .end sparse-switch
.end method
