.class Lcom/android/server/ethernet/EthernetNetworkFactory$1;
.super Ljava/lang/Object;
.source "EthernetNetworkFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ethernet/EthernetNetworkFactory;->onRequestNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;


# direct methods
.method constructor <init>(Lcom/android/server/ethernet/EthernetNetworkFactory;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v3, 0x0

    .line 264
    const-string v0, "EthernetNetworkFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dhcpThread(+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): mNetworkInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    # getter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$400(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    # getter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mEthernetManager:Landroid/net/EthernetManager;
    invoke-static {v0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$500(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/EthernetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/EthernetManager;->getConfiguration()Landroid/net/IpConfiguration;

    move-result-object v9

    .line 269
    .local v9, "config":Landroid/net/IpConfiguration;
    invoke-virtual {v9}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v0

    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v0, v1, :cond_4

    .line 270
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    invoke-virtual {v9}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    # invokes: Lcom/android/server/ethernet/EthernetNetworkFactory;->setStaticIpAddress(Landroid/net/StaticIpConfiguration;)Z
    invoke-static {v0, v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$600(Lcom/android/server/ethernet/EthernetNetworkFactory;Landroid/net/StaticIpConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-virtual {v9}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    # getter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/StaticIpConfiguration;->toLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v11

    .line 293
    .local v11, "linkProperties":Landroid/net/LinkProperties;
    :goto_1
    invoke-virtual {v9}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v0

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-eq v0, v1, :cond_1

    invoke-virtual {v9}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v0

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v0, v1, :cond_2

    .line 295
    :cond_1
    invoke-virtual {v9}, Landroid/net/IpConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    # getter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$900(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 300
    .local v12, "tcpBufferSizes":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 301
    invoke-virtual {v11, v12}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 304
    :cond_3
    iget-object v13, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    monitor-enter v13

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    # getter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$1000(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkAgent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 306
    const-string v0, "EthernetNetworkFactory"

    const-string v1, "Already have a NetworkAgent - aborting new request"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    monitor-exit v13

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 276
    .end local v11    # "linkProperties":Landroid/net/LinkProperties;
    .end local v12    # "tcpBufferSizes":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    # getter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$400(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkInfo;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    iget-object v2, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    # getter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mHwAddr:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$700(Lcom/android/server/ethernet/EthernetNetworkFactory;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    new-instance v10, Landroid/net/DhcpResults;

    invoke-direct {v10}, Landroid/net/DhcpResults;-><init>()V

    .line 284
    .local v10, "dhcpResults":Landroid/net/DhcpResults;
    # getter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpResults;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 285
    const-string v0, "EthernetNetworkFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DHCP request error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    # getter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mFactory:Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;
    invoke-static {v0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$800(Lcom/android/server/ethernet/EthernetNetworkFactory;)Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;->setScoreFilter(I)V

    goto/16 :goto_0

    .line 291
    :cond_5
    # getter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/net/DhcpResults;->toLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v11

    .restart local v11    # "linkProperties":Landroid/net/LinkProperties;
    goto/16 :goto_1

    .line 309
    .end local v10    # "dhcpResults":Landroid/net/DhcpResults;
    .restart local v12    # "tcpBufferSizes":Ljava/lang/String;
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    # setter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v0, v11}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$1102(Lcom/android/server/ethernet/EthernetNetworkFactory;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 310
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    # getter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$400(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 311
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    # getter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$400(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkInfo;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    # getter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mHwAddr:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$700(Lcom/android/server/ethernet/EthernetNetworkFactory;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v14, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    new-instance v0, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;

    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    # getter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mFactory:Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$800(Lcom/android/server/ethernet/EthernetNetworkFactory;)Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    # getter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$900(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "Ethernet"

    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    # getter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$400(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkInfo;

    move-result-object v5

    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    # getter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$1200(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory$1;->this$0:Lcom/android/server/ethernet/EthernetNetworkFactory;

    # getter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$1100(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/LinkProperties;

    move-result-object v7

    const/16 v8, 0x46

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/ethernet/EthernetNetworkFactory$1$1;-><init>(Lcom/android/server/ethernet/EthernetNetworkFactory$1;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V

    # setter for: Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v14, v0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->access$1002(Lcom/android/server/ethernet/EthernetNetworkFactory;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;

    .line 339
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
