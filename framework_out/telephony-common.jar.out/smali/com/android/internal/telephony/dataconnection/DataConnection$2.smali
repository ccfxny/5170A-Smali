.class Lcom/android/internal/telephony/dataconnection/DataConnection$2;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0

    .prologue
    .line 3484
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .prologue
    .line 3487
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addressRemoved, mIsReadyToRecieveIPChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-boolean v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mIsReadyToRecieveIPChanged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3488
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-boolean v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mIsReadyToRecieveIPChanged:Z

    if-eqz v1, :cond_0

    .line 3489
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 v2, 0x0

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->getEventByAddress(ZLandroid/net/LinkAddress;)I
    invoke-static {v1, v2, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$10100(Lcom/android/internal/telephony/dataconnection/DataConnection;ZLandroid/net/LinkAddress;)I

    move-result v0

    .line 3491
    .local v0, "event":I
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessageForSM(ILjava/lang/String;Landroid/net/LinkAddress;)V
    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$10200(Lcom/android/internal/telephony/dataconnection/DataConnection;ILjava/lang/String;Landroid/net/LinkAddress;)V

    .line 3493
    .end local v0    # "event":I
    :cond_0
    return-void
.end method

.method public addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .prologue
    .line 3498
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addressUpdated, mIsReadyToRecieveIPChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-boolean v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mIsReadyToRecieveIPChanged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3499
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-boolean v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mIsReadyToRecieveIPChanged:Z

    if-eqz v1, :cond_0

    .line 3500
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 v2, 0x1

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->getEventByAddress(ZLandroid/net/LinkAddress;)I
    invoke-static {v1, v2, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$10100(Lcom/android/internal/telephony/dataconnection/DataConnection;ZLandroid/net/LinkAddress;)I

    move-result v0

    .line 3502
    .local v0, "event":I
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mIpv4V6UpdatedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3503
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessageForSM(ILjava/lang/String;Landroid/net/LinkAddress;)V
    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$10200(Lcom/android/internal/telephony/dataconnection/DataConnection;ILjava/lang/String;Landroid/net/LinkAddress;)V

    .line 3508
    .end local v0    # "event":I
    :cond_0
    :goto_0
    return-void

    .line 3505
    .restart local v0    # "event":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been already updated to registers!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
