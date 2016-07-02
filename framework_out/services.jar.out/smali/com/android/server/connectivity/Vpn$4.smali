.class Lcom/android/server/connectivity/Vpn$4;
.super Landroid/os/Handler;
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
    .line 1878
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$4;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1881
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1890
    :goto_0
    return-void

    .line 1883
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$4;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->do_reconnect()V
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$2400(Lcom/android/server/connectivity/Vpn;)V

    goto :goto_0

    .line 1886
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$4;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$2502(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/LegacyVpnInfo;)Lcom/android/internal/net/LegacyVpnInfo;

    .line 1887
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$4;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/connectivity/Vpn;->sendVpnStateChangeBroadcast(I)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$2600(Lcom/android/server/connectivity/Vpn;I)V

    goto :goto_0

    .line 1881
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
