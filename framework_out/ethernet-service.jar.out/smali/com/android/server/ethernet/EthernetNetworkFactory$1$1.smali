.class Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;
.super Landroid/net/NetworkAgent;
.source "EthernetNetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ethernet/EthernetNetworkFactory$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ethernet/EthernetNetworkFactory$1;


# direct methods
.method constructor <init>(Lcom/android/server/ethernet/EthernetNetworkFactory$1;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V
    .locals 8
    .param p2, "x0"    # Landroid/os/Looper;
    .param p3, "x1"    # Landroid/content/Context;
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # Landroid/net/NetworkInfo;
    .param p6, "x4"    # Landroid/net/NetworkCapabilities;
    .param p7, "x5"    # Landroid/net/LinkProperties;
    .param p8, "x6"    # I

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;->this$1:Lcom/android/server/ethernet/EthernetNetworkFactory$1;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V

    return-void
.end method


# virtual methods
.method public unwanted()V
    .locals 6

    .prologue
    .line 318
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;->this$1:Lcom/android/server/ethernet/EthernetNetworkFactory$1;

    iget-object v2, v1, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    monitor-enter v2

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;->this$1:Lcom/android/server/ethernet/EthernetNetworkFactory$1;

    iget-object v1, v1, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    # getter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$1000(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkAgent;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 320
    # getter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    .line 322
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;->this$1:Lcom/android/server/ethernet/EthernetNetworkFactory$1;

    iget-object v1, v1, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    # getter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$1100(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/LinkProperties;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LinkProperties;->clear()V

    .line 323
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;->this$1:Lcom/android/server/ethernet/EthernetNetworkFactory$1;

    iget-object v1, v1, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    # getter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$400(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkInfo;

    move-result-object v1

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;->this$1:Lcom/android/server/ethernet/EthernetNetworkFactory$1;

    iget-object v5, v5, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    # getter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mHwAddr:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$700(Lcom/android/server/ethernet/EthernetNetworkFactory;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;->this$1:Lcom/android/server/ethernet/EthernetNetworkFactory$1;

    iget-object v1, v1, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    invoke-virtual {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->updateAgent()V

    .line 326
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;->this$1:Lcom/android/server/ethernet/EthernetNetworkFactory$1;

    iget-object v1, v1, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v1, v3}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$1002(Lcom/android/server/ethernet/EthernetNetworkFactory;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;->this$1:Lcom/android/server/ethernet/EthernetNetworkFactory$1;

    iget-object v1, v1, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    # getter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$1300(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/os/INetworkManagementService;

    move-result-object v1

    # getter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$300()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 337
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EthernetNetworkFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to clear addresses or disable ipv6"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 336
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 333
    :cond_0
    :try_start_3
    const-string v1, "EthernetNetworkFactory"

    const-string v3, "Ignoring unwanted as we have a more modern instance"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
