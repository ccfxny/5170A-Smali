.class Lcom/android/server/connectivity/Vpn$5;
.super Landroid/content/BroadcastReceiver;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Vpn;->initFlymeChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn;)V
    .locals 0

    .prologue
    .line 1894
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$5;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0x65

    .line 1897
    const-string v1, "Vpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1900
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1901
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$5;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$2500(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1914
    :cond_0
    :goto_0
    return-void

    .line 1904
    :cond_1
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$5;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2500(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    if-ne v1, v2, :cond_2

    .line 1905
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$5;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$2500(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 1906
    const-string v1, "Vpn"

    const-string v2, "send VPN reconnect msg"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$5;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mReconnectHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$2700(Lcom/android/server/connectivity/Vpn;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1908
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$5;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mReconnectHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$2700(Lcom/android/server/connectivity/Vpn;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1911
    :cond_2
    const-string v1, "Vpn"

    const-string v2, "VPN reconnect msg is already sended"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
