.class Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;
.super Ljava/lang/Thread;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DataDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DhcpThread"
.end annotation


# instance fields
.field mApnType:Ljava/lang/String;

.field mDhcpResult:Landroid/net/DhcpResults;

.field mIntfName:Ljava/lang/String;

.field mIpType:I

.field mPhoneId:I

.field final synthetic this$0:Lcom/mediatek/ims/internal/DataDispatcher;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "intfName"    # Ljava/lang/String;
    .param p4, "ipType"    # I
    .param p5, "phoneId"    # I

    .prologue
    .line 3044
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3045
    iput-object p2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->mApnType:Ljava/lang/String;

    .line 3046
    iput p4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->mIpType:I

    .line 3047
    iput-object p3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->mIntfName:Ljava/lang/String;

    .line 3048
    iput p5, p0, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->mPhoneId:I

    .line 3049
    return-void
.end method

.method private startDhcp()Landroid/net/DhcpResults;
    .locals 4

    .prologue
    .line 3073
    const/4 v0, 0x0

    .line 3074
    .local v0, "bRet":Z
    new-instance v1, Landroid/net/DhcpResults;

    invoke-direct {v1}, Landroid/net/DhcpResults;-><init>()V

    .line 3076
    .local v1, "dhcpResult":Landroid/net/DhcpResults;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DhcpThread] startDhcp, ipType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->mIpType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 3077
    iget v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->mIpType:I

    packed-switch v2, :pswitch_data_0

    .line 3087
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DhcpThread] unknown ip type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->mIpType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for startDhcp!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$700(Ljava/lang/String;)V

    .line 3091
    :goto_0
    if-nez v0, :cond_0

    .line 3092
    const-string v2, "[DhcpThread] startDhcp failed!!"

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$700(Ljava/lang/String;)V

    .line 3093
    const/4 v1, 0x0

    .line 3096
    :cond_0
    return-object v1

    .line 3079
    :pswitch_0
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->mIntfName:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpResults;)Z

    move-result v0

    .line 3080
    goto :goto_0

    .line 3083
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->mIntfName:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/net/NetworkUtils;->runDhcpv6(Ljava/lang/String;Landroid/net/DhcpResults;)Z

    move-result v0

    .line 3084
    goto :goto_0

    .line 3077
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private stopDhcp()Z
    .locals 3

    .prologue
    .line 3052
    const/4 v0, 0x0

    .line 3053
    .local v0, "bRet":Z
    const-string v1, "[DhcpThread] stopDhcp"

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 3055
    iget v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->mIpType:I

    packed-switch v1, :pswitch_data_0

    .line 3065
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DhcpThread] unknown ip type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->mIpType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for stopDhcp!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$700(Ljava/lang/String;)V

    .line 3069
    :goto_0
    return v0

    .line 3057
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->mIntfName:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v0

    .line 3058
    goto :goto_0

    .line 3061
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->mIntfName:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->stopDhcpv6(Ljava/lang/String;)Z

    move-result v0

    .line 3062
    goto :goto_0

    .line 3055
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 3101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DhcpThread] start, apnType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->mApnType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 3102
    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->mApnType:Ljava/lang/String;

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->isApnIMSorEmergency(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/mediatek/ims/internal/DataDispatcher;->access$300(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    iget-object v6, p0, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->mApnType:Ljava/lang/String;

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->getImsOrEmergencyNetworkInfoDetailState(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v5, v6}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2700(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    if-eq v4, v5, :cond_2

    .line 3105
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->stopDhcp()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3106
    const-string v4, "[DhcpThread] stopDhcp failed!!"

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 3111
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->startDhcp()Landroid/net/DhcpResults;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->mDhcpResult:Landroid/net/DhcpResults;

    .line 3112
    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->mDhcpResult:Landroid/net/DhcpResults;

    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->mIntfName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/DhcpResults;->toLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v1

    .line 3113
    .local v1, "dhcpLp":Landroid/net/LinkProperties;
    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->mDhcpResult:Landroid/net/DhcpResults;

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 3114
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    .line 3115
    .local v0, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 3116
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 3117
    .local v3, "lp":[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    check-cast v4, Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 3118
    .local v2, "inetAddr":Ljava/net/InetAddress;
    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->mApnType:Ljava/lang/String;

    iget v6, p0, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->mPhoneId:I

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->sendGlobalIPAddrToVa(Ljava/net/InetAddress;Ljava/lang/String;Landroid/net/LinkProperties;I)V
    invoke-static {v4, v2, v5, v1, v6}, Lcom/mediatek/ims/internal/DataDispatcher;->access$3000(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/net/InetAddress;Ljava/lang/String;Landroid/net/LinkProperties;I)V

    .line 3124
    .end local v0    # "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    .end local v1    # "dhcpLp":Landroid/net/LinkProperties;
    .end local v2    # "inetAddr":Ljava/net/InetAddress;
    .end local v3    # "lp":[Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 3122
    :cond_2
    const-string v4, "[DhcpThread] apn type is not IMS/Emergency, leave DhcpThread!!"

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$700(Ljava/lang/String;)V

    goto :goto_0
.end method
