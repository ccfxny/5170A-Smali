.class public Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;
.super Ljava/util/TimerTask;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeOutTimerTask"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;


# direct methods
.method public constructor <init>(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;)V
    .locals 0

    .prologue
    .line 900
    iput-object p1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;->this$1:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 903
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;->this$1:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;->this$1:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    # getter for: Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    invoke-static {v1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->access$300(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;)Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    move-result-object v1

    # invokes: Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->sendNoResponseError(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    invoke-static {v0, v1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->access$400(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    .line 904
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler$TimeOutTimerTask;->this$1:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mWaitingEvent:Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    invoke-static {v0, v1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->access$302(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .line 905
    const-string v0, "ExternalSimManager"

    const-string v1, "TimeOutTimerTask time out and send response to modem directly."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    return-void
.end method
