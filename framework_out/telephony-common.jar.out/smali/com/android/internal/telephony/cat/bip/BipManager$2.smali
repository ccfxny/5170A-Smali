.class Lcom/android/internal/telephony/cat/bip/BipManager$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "BipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cat/bip/BipManager;->newRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/bip/BipManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/bip/BipManager;)V
    .locals 0

    .prologue
    .line 792
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    const/4 v4, 0x1

    .line 795
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 797
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$400(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I
    invoke-static {v2}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$300(Lcom/android/internal/telephony/cat/bip/BipManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v0

    .line 798
    .local v0, "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkCallbackListener.onAvailable, mChannelId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I
    invoke-static {v3}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$300(Lcom/android/internal/telephony/cat/bip/BipManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mIsOpenInProgress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z
    invoke-static {v3}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$000(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mIsNetworkAvailableReceived: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mIsNetworkAvailableReceived:Z
    invoke-static {v3}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$800(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    if-nez v0, :cond_0

    .line 802
    const-string v1, "[BIP]"

    const-string v2, "Channel is null."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z
    invoke-static {v1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$000(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v1

    if-ne v4, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mIsNetworkAvailableReceived:Z
    invoke-static {v1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$800(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 805
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # setter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mIsNetworkAvailableReceived:Z
    invoke-static {v1, v4}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$802(Lcom/android/internal/telephony/cat/bip/BipManager;Z)Z

    .line 806
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # setter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mNetwork:Landroid/net/Network;
    invoke-static {v1, p1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$902(Lcom/android/internal/telephony/cat/bip/BipManager;Landroid/net/Network;)Landroid/net/Network;

    .line 807
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # invokes: Lcom/android/internal/telephony/cat/bip/BipManager;->connect()V
    invoke-static {v1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1000(Lcom/android/internal/telephony/cat/bip/BipManager;)V

    .line 811
    :goto_0
    return-void

    .line 809
    :cond_1
    const-string v1, "[BIP]"

    const-string v2, "Bip channel has been established."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 815
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 816
    const/4 v1, 0x0

    .line 817
    .local v1, "ret":I
    const/4 v0, 0x0

    .line 819
    .local v0, "response":Landroid/os/Message;
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetworkCallbackListener.onLost: network="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # invokes: Lcom/android/internal/telephony/cat/bip/BipManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V
    invoke-static {v2, p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1100(Lcom/android/internal/telephony/cat/bip/BipManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 821
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1200(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 822
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # invokes: Lcom/android/internal/telephony/cat/bip/BipManager;->resetLocked()V
    invoke-static {v2}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1300(Lcom/android/internal/telephony/cat/bip/BipManager;)V

    .line 824
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # invokes: Lcom/android/internal/telephony/cat/bip/BipManager;->disconnect()V
    invoke-static {v2}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1400(Lcom/android/internal/telephony/cat/bip/BipManager;)V

    .line 825
    return-void
.end method

.method public onUnavailable()V
    .locals 2

    .prologue
    .line 829
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 830
    const-string v0, "[BIP]"

    const-string v1, "NetworkCallbackListener.onUnavailable"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # invokes: Lcom/android/internal/telephony/cat/bip/BipManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V
    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1100(Lcom/android/internal/telephony/cat/bip/BipManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 832
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1200(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # invokes: Lcom/android/internal/telephony/cat/bip/BipManager;->resetLocked()V
    invoke-static {v0}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1300(Lcom/android/internal/telephony/cat/bip/BipManager;)V

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/BipManager$2;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # invokes: Lcom/android/internal/telephony/cat/bip/BipManager;->disconnect()V
    invoke-static {v0}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1400(Lcom/android/internal/telephony/cat/bip/BipManager;)V

    .line 836
    return-void
.end method
