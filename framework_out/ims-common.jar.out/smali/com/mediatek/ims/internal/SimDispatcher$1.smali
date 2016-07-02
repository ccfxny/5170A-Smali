.class Lcom/mediatek/ims/internal/SimDispatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "SimDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/SimDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/SimDispatcher;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/SimDispatcher;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/mediatek/ims/internal/SimDispatcher$1;->this$0:Lcom/mediatek/ims/internal/SimDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    .line 116
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "action":Ljava/lang/String;
    const/4 v6, 0x0

    .line 118
    .local v6, "slotId":I
    const/4 v4, 0x0

    .line 119
    .local v4, "phoneId":I
    const/4 v5, 0x0

    .line 120
    .local v5, "simType":I
    const/4 v2, 0x0

    .line 121
    .local v2, "eventId":I
    const/4 v3, 0x0

    .line 123
    .local v3, "needToNotify":Z
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 124
    const-string v7, "slot"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 125
    const-string v7, "phone"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 126
    iget-object v7, p0, Lcom/mediatek/ims/internal/SimDispatcher$1;->this$0:Lcom/mediatek/ims/internal/SimDispatcher;

    # getter for: Lcom/mediatek/ims/internal/SimDispatcher;->mSimState:[Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/ims/internal/SimDispatcher;->access$000(Lcom/mediatek/ims/internal/SimDispatcher;)[Ljava/lang/String;

    move-result-object v7

    const-string v8, "ss"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    .line 127
    iget-object v7, p0, Lcom/mediatek/ims/internal/SimDispatcher$1;->this$0:Lcom/mediatek/ims/internal/SimDispatcher;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[BroadcastReceiver] receving ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/ims/internal/SimDispatcher$1;->this$0:Lcom/mediatek/ims/internal/SimDispatcher;

    # getter for: Lcom/mediatek/ims/internal/SimDispatcher;->mSimState:[Ljava/lang/String;
    invoke-static {v9}, Lcom/mediatek/ims/internal/SimDispatcher;->access$000(Lcom/mediatek/ims/internal/SimDispatcher;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 129
    iget-object v7, p0, Lcom/mediatek/ims/internal/SimDispatcher$1;->this$0:Lcom/mediatek/ims/internal/SimDispatcher;

    # getter for: Lcom/mediatek/ims/internal/SimDispatcher;->mSimState:[Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/ims/internal/SimDispatcher;->access$000(Lcom/mediatek/ims/internal/SimDispatcher;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v6

    const-string v8, "LOADED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 130
    const v2, 0x187d2

    .line 131
    const/4 v5, 0x1

    .line 132
    const/4 v3, 0x1

    .line 155
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/mediatek/ims/internal/SimDispatcher$1;->this$0:Lcom/mediatek/ims/internal/SimDispatcher;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[BroadcastReceiver] eventId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", phoneId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", simType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", needToNotify:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 160
    if-eqz v3, :cond_1

    .line 161
    new-instance v1, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    invoke-direct {v1, v4, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 164
    .local v1, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    invoke-virtual {v1, v5}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 167
    invoke-virtual {v1, v10}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 170
    invoke-virtual {v1, v10}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 171
    invoke-virtual {v1, v10}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 173
    iget-object v7, p0, Lcom/mediatek/ims/internal/SimDispatcher$1;->this$0:Lcom/mediatek/ims/internal/SimDispatcher;

    const-string v8, "[BroadcastReceiver] Notify VA for SIM state."

    invoke-virtual {v7, v8}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 176
    iget-object v7, p0, Lcom/mediatek/ims/internal/SimDispatcher$1;->this$0:Lcom/mediatek/ims/internal/SimDispatcher;

    # getter for: Lcom/mediatek/ims/internal/SimDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;
    invoke-static {v7}, Lcom/mediatek/ims/internal/SimDispatcher;->access$200(Lcom/mediatek/ims/internal/SimDispatcher;)Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)I

    .line 178
    .end local v1    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    :cond_1
    return-void

    .line 133
    :cond_2
    iget-object v7, p0, Lcom/mediatek/ims/internal/SimDispatcher$1;->this$0:Lcom/mediatek/ims/internal/SimDispatcher;

    # getter for: Lcom/mediatek/ims/internal/SimDispatcher;->mSimState:[Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/ims/internal/SimDispatcher;->access$000(Lcom/mediatek/ims/internal/SimDispatcher;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v6

    const-string v8, "ABSENT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 134
    const v2, 0x187d3

    .line 135
    const/4 v5, 0x0

    .line 136
    const/4 v3, 0x1

    goto :goto_0

    .line 138
    :cond_3
    const-string v7, "mediatek.intent.action.ACTION_SIM_STATE_CHANGED_MULTI_APPLICATION"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 139
    const-string v7, "slot"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 140
    const-string v7, "phone"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 141
    iget-object v7, p0, Lcom/mediatek/ims/internal/SimDispatcher$1;->this$0:Lcom/mediatek/ims/internal/SimDispatcher;

    # getter for: Lcom/mediatek/ims/internal/SimDispatcher;->mIsimState:[Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/ims/internal/SimDispatcher;->access$100(Lcom/mediatek/ims/internal/SimDispatcher;)[Ljava/lang/String;

    move-result-object v7

    const-string v8, "ss"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    .line 142
    iget-object v7, p0, Lcom/mediatek/ims/internal/SimDispatcher$1;->this$0:Lcom/mediatek/ims/internal/SimDispatcher;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[BroadcastReceiver] receving ACTION_SIM_STATE_CHANGED_MULTI_APPLICATION "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/ims/internal/SimDispatcher$1;->this$0:Lcom/mediatek/ims/internal/SimDispatcher;

    # getter for: Lcom/mediatek/ims/internal/SimDispatcher;->mIsimState:[Ljava/lang/String;
    invoke-static {v9}, Lcom/mediatek/ims/internal/SimDispatcher;->access$100(Lcom/mediatek/ims/internal/SimDispatcher;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 144
    iget-object v7, p0, Lcom/mediatek/ims/internal/SimDispatcher$1;->this$0:Lcom/mediatek/ims/internal/SimDispatcher;

    # getter for: Lcom/mediatek/ims/internal/SimDispatcher;->mIsimState:[Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/ims/internal/SimDispatcher;->access$100(Lcom/mediatek/ims/internal/SimDispatcher;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v6

    const-string v8, "LOADED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 145
    const v2, 0x187d2

    .line 146
    const/4 v5, 0x4

    .line 147
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 148
    :cond_4
    iget-object v7, p0, Lcom/mediatek/ims/internal/SimDispatcher$1;->this$0:Lcom/mediatek/ims/internal/SimDispatcher;

    # getter for: Lcom/mediatek/ims/internal/SimDispatcher;->mIsimState:[Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/ims/internal/SimDispatcher;->access$100(Lcom/mediatek/ims/internal/SimDispatcher;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v6

    const-string v8, "ABSENT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 149
    const v2, 0x187d2

    .line 150
    const/4 v5, 0x3

    .line 151
    const/4 v3, 0x1

    goto/16 :goto_0
.end method
