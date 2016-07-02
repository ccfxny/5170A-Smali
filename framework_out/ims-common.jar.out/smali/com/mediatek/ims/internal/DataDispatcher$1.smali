.class Lcom/mediatek/ims/internal/DataDispatcher$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 187
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$1;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 190
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.ANY_DEDICATE_DATA_STATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 193
    const-string v5, "onReceive, intent action is android.intent.action.ANY_DEDICATE_DATA_STATE"

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 195
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$1;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # getter for: Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->access$100(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ims/internal/DataDispatcher$1;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # getter for: Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/mediatek/ims/internal/DataDispatcher;->access$100(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0xfa0

    invoke-virtual {v6, v7, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const-string v5, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 197
    const-string v5, "apnType"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "apnType":Ljava/lang/String;
    const-string v5, "imsDataChanged"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 199
    .local v3, "imsChanged":I
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$1;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->isMsgAllowed(Ljava/lang/String;I)Z
    invoke-static {v5, v1, v3}, Lcom/mediatek/ims/internal/DataDispatcher;->access$200(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive, apnType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " intent action is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 202
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$1;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # getter for: Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->access$100(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ims/internal/DataDispatcher$1;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # getter for: Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/mediatek/ims/internal/DataDispatcher;->access$100(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x1770

    invoke-virtual {v6, v7, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 204
    .end local v1    # "apnType":Ljava/lang/String;
    .end local v3    # "imsChanged":I
    :cond_2
    const-string v5, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 205
    const-string v5, "apnType"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .restart local v1    # "apnType":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$1;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->isApnIMSorEmergency(Ljava/lang/String;)Z
    invoke-static {v5, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$300(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive, apnType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " intent action is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 209
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$1;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # getter for: Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->access$100(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ims/internal/DataDispatcher$1;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # getter for: Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/mediatek/ims/internal/DataDispatcher;->access$100(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x17d4

    invoke-virtual {v6, v7, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 211
    .end local v1    # "apnType":Ljava/lang/String;
    :cond_3
    const-string v5, "android.intent.action.NOTIFY_GLOBAL_ADDR"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 212
    const-string v5, "apnType"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .restart local v1    # "apnType":Ljava/lang/String;
    const-string v5, "lte_global_ip_addr"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 216
    .local v4, "inetAddr":Ljava/net/InetAddress;
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$1;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->isApnIMSorEmergency(Ljava/lang/String;)Z
    invoke-static {v5, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$300(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$1;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->isIpAddressReceived(Ljava/lang/String;Ljava/net/InetAddress;)Z
    invoke-static {v5, v1, v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$400(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;Ljava/net/InetAddress;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 217
    const-string v5, "onReceive, intent action is android.intent.action.NOTIFY_GLOBAL_ADDR"

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 219
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$1;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # getter for: Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->access$100(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ims/internal/DataDispatcher$1;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # getter for: Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/mediatek/ims/internal/DataDispatcher;->access$100(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x1b58

    invoke-virtual {v6, v7, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 221
    .end local v1    # "apnType":Ljava/lang/String;
    .end local v4    # "inetAddr":Ljava/net/InetAddress;
    :cond_4
    const-string v5, "android.intent.action.NOTIFY_USE_DHCP_IP_ADDR"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 222
    const-string v5, "apnType"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .restart local v1    # "apnType":Ljava/lang/String;
    const-string v5, "lte_global_ip_addr"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 226
    .restart local v4    # "inetAddr":Ljava/net/InetAddress;
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$1;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->isApnIMSorEmergency(Ljava/lang/String;)Z
    invoke-static {v5, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$300(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$1;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->isIpAddressReceived(Ljava/lang/String;Ljava/net/InetAddress;)Z
    invoke-static {v5, v1, v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$400(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;Ljava/net/InetAddress;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 227
    const-string v5, "onReceive, intent action is android.intent.action.NOTIFY_USE_DHCP_IP_ADDR"

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 229
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$1;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # getter for: Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->access$100(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ims/internal/DataDispatcher$1;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # getter for: Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/mediatek/ims/internal/DataDispatcher;->access$100(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x1bbc

    invoke-virtual {v6, v7, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 231
    .end local v1    # "apnType":Ljava/lang/String;
    .end local v4    # "inetAddr":Ljava/net/InetAddress;
    :cond_5
    const-string v5, "android.intent.action.NOTIFY_IMS_DEACTIVATED_CIDS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 232
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive, intent action is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 233
    const-string v5, "apnType"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .restart local v1    # "apnType":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$1;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->isApnIMSorEmergency(Ljava/lang/String;)Z
    invoke-static {v5, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$300(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 235
    const-string v5, "ims_deactivate_cids"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    .line 236
    .local v2, "cidArray":[I
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$1;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->setDeactivateCid([ILjava/lang/String;)V
    invoke-static {v5, v2, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$500(Lcom/mediatek/ims/internal/DataDispatcher;[ILjava/lang/String;)V

    goto/16 :goto_0

    .line 238
    .end local v1    # "apnType":Ljava/lang/String;
    .end local v2    # "cidArray":[I
    :cond_6
    const-string v5, "android.intent.action.NOTIFY_IMS_DEFAULT_PDN_MODIFICATION"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 239
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive, intent action is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 240
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$1;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # getter for: Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->access$100(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ims/internal/DataDispatcher$1;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    # getter for: Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/mediatek/ims/internal/DataDispatcher;->access$100(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x1838

    invoke-virtual {v6, v7, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 243
    :cond_7
    const-string v5, "unhandled action!!"

    # invokes: Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
