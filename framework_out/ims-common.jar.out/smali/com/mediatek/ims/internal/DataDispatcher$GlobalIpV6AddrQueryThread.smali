.class Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;
.super Ljava/lang/Thread;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DataDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlobalIpV6AddrQueryThread"
.end annotation


# instance fields
.field mApnType:Ljava/lang/String;

.field mLp:Landroid/net/LinkProperties;

.field mPhoneId:I

.field mThreadRunning:Z

.field final synthetic this$0:Lcom/mediatek/ims/internal/DataDispatcher;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;Landroid/net/LinkProperties;I)V
    .locals 1
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "lp"    # Landroid/net/LinkProperties;
    .param p4, "phoneId"    # I

    .prologue
    .line 2901
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2899
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->mThreadRunning:Z

    .line 2902
    iput-object p2, p0, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->mApnType:Ljava/lang/String;

    .line 2903
    iput-object p3, p0, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->mLp:Landroid/net/LinkProperties;

    .line 2904
    iput p4, p0, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->mPhoneId:I

    .line 2905
    return-void
.end method

.method private getRaGlobalIpAddress(Ljava/lang/String;Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 16
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 2908
    const-string v2, "RaFail"

    .line 2909
    .local v2, "address":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 2910
    const-string v14, "getRaGlobalIpAddress but no LinkProperties"

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/ims/internal/DataDispatcher;->access$700(Ljava/lang/String;)V

    .line 2993
    .end local v2    # "address":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 2914
    .restart local v2    # "address":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    .line 2915
    .local v6, "interfaceName":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 2916
    const-string v14, "getRaGlobalIpAddress but interface name is null"

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/ims/internal/DataDispatcher;->access$700(Ljava/lang/String;)V

    goto :goto_0

    .line 2921
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    move-object/from16 v0, p1

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->getImsOrEmergencyNetworkInfoDetailState(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v14, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2700(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    .line 2922
    .local v10, "state":Landroid/net/NetworkInfo$DetailedState;
    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v10, v14, :cond_3

    .line 2923
    const/4 v11, 0x3

    .line 2924
    .local v11, "tryCnt":I
    const/16 v3, 0x1f4

    .line 2925
    .local v3, "delayMsSec":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/4 v14, 0x3

    if-ge v5, v14, :cond_3

    .line 2926
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    add-int/lit8 v15, v5, 0x1

    mul-int/2addr v15, v3

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->delayForSeconds(I)V
    invoke-static {v14, v15}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1900(Lcom/mediatek/ims/internal/DataDispatcher;I)V

    .line 2927
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    move-object/from16 v0, p1

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->getImsOrEmergencyNetworkInfoDetailState(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v14, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2700(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    .line 2928
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "network detailed state: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 2929
    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v10, v14, :cond_4

    .line 2935
    .end local v3    # "delayMsSec":I
    .end local v5    # "i":I
    .end local v11    # "tryCnt":I
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "i":I
    # getter for: Lcom/mediatek/ims/internal/DataDispatcher;->RA_POLLING_TIMER:[I
    invoke-static {}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2800()[I

    move-result-object v14

    array-length v7, v14

    .local v7, "length":I
    :goto_2
    if-ge v5, v7, :cond_0

    .line 2936
    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v10, v14, :cond_5

    .line 2937
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getRaGlobalIpAddress but data state is not connected ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/ims/internal/DataDispatcher;->access$700(Ljava/lang/String;)V

    goto :goto_0

    .line 2925
    .end local v7    # "length":I
    .restart local v3    # "delayMsSec":I
    .restart local v11    # "tryCnt":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2941
    .end local v3    # "delayMsSec":I
    .end local v11    # "tryCnt":I
    .restart local v7    # "length":I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->mThreadRunning:Z

    if-nez v14, :cond_6

    .line 2942
    const-string v14, "getRaGlobalIpAddress thread stop!!"

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/ims/internal/DataDispatcher;->access$700(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2947
    :cond_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "net.ipv6."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".prefix"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2949
    .local v8, "prefix":Ljava/lang/String;
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_7

    .line 2952
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getRaGlobalIpAddress get prefix ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 2953
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    move-object/from16 v0, p2

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->getRaResultAddress(Ljava/lang/String;Landroid/net/LinkProperties;)Ljava/lang/String;
    invoke-static {v14, v8, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2900(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 2955
    :cond_7
    invoke-static {v6}, Landroid/net/NetworkUtils;->getRaFlags(Ljava/lang/String;)I

    move-result v9

    .line 2961
    .local v9, "raResult":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getRaGlobalIpAddress get raResult ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 2964
    const/4 v14, 0x1

    if-eq v9, v14, :cond_8

    const/4 v14, 0x4

    if-ne v9, v14, :cond_9

    .line 2965
    :cond_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "net.ipv6."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".prefix"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2967
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getRaGlobalIpAddress get prefix after RA result ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 2969
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    move-object/from16 v0, p2

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->getRaResultAddress(Ljava/lang/String;Landroid/net/LinkProperties;)Ljava/lang/String;
    invoke-static {v14, v8, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2900(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 2970
    :cond_9
    const/4 v14, 0x2

    if-ne v9, v14, :cond_a

    .line 2972
    const-string v14, "getRaGlobalIpAddress need to do DHCP, return null"

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 2973
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2976
    :cond_a
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getRaGlobalIpAddress keep polling ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 2980
    monitor-enter p0

    .line 2982
    :try_start_0
    # getter for: Lcom/mediatek/ims/internal/DataDispatcher;->RA_POLLING_TIMER:[I
    invoke-static {}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2800()[I

    move-result-object v14

    aget v14, v14, v5

    mul-int/lit16 v14, v14, 0x3e8

    int-to-long v12, v14

    .line 2983
    .local v12, "waitTime":J
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] getRaGlobalIpAddress no RA result found, wait for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " seconds"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 2985
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2991
    .end local v12    # "waitTime":J
    :goto_3
    :try_start_1
    monitor-exit p0

    .line 2935
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 2986
    :catch_0
    move-exception v4

    .line 2987
    .local v4, "e":Ljava/lang/InterruptedException;
    const-string v14, "thread interrupted!!"

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    goto :goto_3

    .line 2991
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v14

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v14

    .line 2988
    :catch_1
    move-exception v4

    .line 2989
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .prologue
    .line 2998
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->mThreadRunning:Z

    .line 2999
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 3000
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    .line 3004
    const-class v9, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;

    monitor-enter v9

    .line 3006
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->mApnType:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->mLp:Landroid/net/LinkProperties;

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->getRaGlobalIpAddress(Ljava/lang/String;Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v6

    .line 3008
    .local v6, "address":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 3009
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->mApnType:Ljava/lang/String;

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->getImsOrEmergencyNetworkInfoDetailState(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v2, v3}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2700(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 3011
    iget-boolean v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->mThreadRunning:Z

    if-eqz v1, :cond_0

    .line 3012
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->mApnType:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->mLp:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    iget v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->mPhoneId:I

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;-><init>(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;Ljava/lang/String;II)V

    .line 3014
    .local v0, "dhcpThread":Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->start()V

    .line 3030
    .end local v0    # "dhcpThread":Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->mThreadRunning:Z

    if-nez v1, :cond_1

    .line 3031
    const-string v1, "GlobalIpV6AddrQueryThread thread stop (do nothing)!!"

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$700(Ljava/lang/String;)V

    .line 3033
    :cond_1
    monitor-exit v9

    .line 3034
    return-void

    .line 3017
    :cond_2
    const-string v1, "RaFail"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3018
    const-string v1, "get ra address failed, no broadcast the address back!!"

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$700(Ljava/lang/String;)V

    goto :goto_0

    .line 3033
    .end local v6    # "address":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3020
    .restart local v6    # "address":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-boolean v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->mThreadRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 3022
    :try_start_2
    invoke-static {v6}, Ljava/net/Inet6Address;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    .line 3023
    .local v8, "inetAddr":Ljava/net/InetAddress;
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->mApnType:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->mLp:Landroid/net/LinkProperties;

    iget v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->mPhoneId:I

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->sendGlobalIPAddrToVa(Ljava/net/InetAddress;Ljava/lang/String;Landroid/net/LinkProperties;I)V
    invoke-static {v1, v8, v2, v3, v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$3000(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/net/InetAddress;Ljava/lang/String;Landroid/net/LinkProperties;I)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3024
    .end local v8    # "inetAddr":Ljava/net/InetAddress;
    :catch_0
    move-exception v7

    .line 3025
    .local v7, "ex":Ljava/net/UnknownHostException;
    :try_start_3
    const-string v1, "Inet6Address getByName error"

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$700(Ljava/lang/String;)V

    .line 3026
    invoke-virtual {v7}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
