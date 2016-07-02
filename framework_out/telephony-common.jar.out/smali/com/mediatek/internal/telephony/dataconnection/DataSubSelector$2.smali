.class Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$2;
.super Landroid/os/Handler;
.source "DataSubSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 159
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string v1, "mHandler: should not be here"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string v1, "mHandler: EVENT_RADIO_STATE_CHANGED"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneId:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)I

    move-result v1

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1100(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneId:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)I

    move-result v1

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1200(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
