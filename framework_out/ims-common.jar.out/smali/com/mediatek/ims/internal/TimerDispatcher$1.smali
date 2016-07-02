.class Lcom/mediatek/ims/internal/TimerDispatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "TimerDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/TimerDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/TimerDispatcher;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/TimerDispatcher;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mediatek/ims/internal/TimerDispatcher$1;->this$0:Lcom/mediatek/ims/internal/TimerDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.internal.telephony.volte_timer_alarm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 83
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 84
    const-string v3, "timer_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 85
    .local v1, "timer_id":I
    const-string v3, "user_data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 87
    .local v2, "user_data":I
    iget-object v3, p0, Lcom/mediatek/ims/internal/TimerDispatcher$1;->this$0:Lcom/mediatek/ims/internal/TimerDispatcher;

    const v4, 0x18834

    # invokes: Lcom/mediatek/ims/internal/TimerDispatcher;->sendResponse(III)V
    invoke-static {v3, v4, v1, v2}, Lcom/mediatek/ims/internal/TimerDispatcher;->access$000(Lcom/mediatek/ims/internal/TimerDispatcher;III)V

    .line 89
    iget-object v3, p0, Lcom/mediatek/ims/internal/TimerDispatcher$1;->this$0:Lcom/mediatek/ims/internal/TimerDispatcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timer timeout, timer_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", user_data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/TimerDispatcher;->log(Ljava/lang/String;)V

    .line 100
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "timer_id":I
    .end local v2    # "user_data":I
    :goto_0
    return-void

    .line 92
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-object v3, p0, Lcom/mediatek/ims/internal/TimerDispatcher$1;->this$0:Lcom/mediatek/ims/internal/TimerDispatcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive intent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/TimerDispatcher;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ims/internal/TimerDispatcher$1;->this$0:Lcom/mediatek/ims/internal/TimerDispatcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive intent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/TimerDispatcher;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v3, p0, Lcom/mediatek/ims/internal/TimerDispatcher$1;->this$0:Lcom/mediatek/ims/internal/TimerDispatcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive intent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/TimerDispatcher;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
