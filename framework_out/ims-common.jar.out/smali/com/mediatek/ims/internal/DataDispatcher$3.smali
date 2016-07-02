.class Lcom/mediatek/ims/internal/DataDispatcher$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DataDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/DataDispatcher;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher;)V
    .locals 0

    .prologue
    .line 2594
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$3;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 2612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAvailable: networInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$3;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2600(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 2613
    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "maxMsToLive"    # I

    .prologue
    .line 2602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLosing: networInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$3;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2600(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maxMsToLive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 2608
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 2617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLost: networInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$3;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2600(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 2618
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$3;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2600(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$3;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    iget-object v1, v1, Lcom/mediatek/ims/internal/DataDispatcher;->mImsNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 2619
    return-void
.end method

.method public onPreCheck(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 2597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrecheck: networInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$3;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2600(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 2598
    return-void
.end method

.method public onUnavailable()V
    .locals 2

    .prologue
    .line 2623
    const-string v0, "onUnavailable: "

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 2624
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$3;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2600(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$3;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    iget-object v1, v1, Lcom/mediatek/ims/internal/DataDispatcher;->mImsNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 2625
    return-void
.end method
