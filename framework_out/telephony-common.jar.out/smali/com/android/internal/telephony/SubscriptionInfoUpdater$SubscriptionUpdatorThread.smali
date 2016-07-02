.class Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
.super Ljava/lang/Thread;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscriptionUpdatorThread"
.end annotation


# static fields
.field public static final SIM_ABSENT:I = 0x0

.field public static final SIM_LOADED:I = 0x1

.field public static final SIM_LOCKED:I = 0x2

.field public static final SIM_NO_CHANGED:I = 0x4

.field public static final SIM_READY:I = 0x3


# instance fields
.field private mEventId:I

.field private mUserObj:Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;I)V
    .locals 0
    .param p2, "userObj"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;
    .param p3, "eventId"    # I

    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 481
    iput-object p2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->mUserObj:Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    .line 482
    iput p3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->mEventId:I

    .line 483
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 487
    iget v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->mEventId:I

    packed-switch v0, :pswitch_data_0

    .line 516
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string v1, "SubscriptionUpdatorThread run with invalid event id."

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 519
    :cond_1
    :goto_1
    return-void

    .line 489
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->mUserObj:Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget v1, v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->slotId:I

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimAbsent(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$900(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V

    goto :goto_1

    .line 493
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->mUserObj:Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget v1, v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->slotId:I

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimLoaded(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V

    goto :goto_1

    .line 497
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z
    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 498
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V
    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    .line 500
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->mUserObj:Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget v1, v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->slotId:I

    const-string v2, "LOCKED"

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->mUserObj:Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget-object v3, v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->reason:Ljava/lang/String;

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1200(Lcom/android/internal/telephony/SubscriptionInfoUpdater;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 504
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->checkAllIccIdReady()Z
    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1300(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoIfNeed()V
    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1400(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    goto :goto_1

    .line 510
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string v1, "[Common Slot]SubscriptionUpdatorThread run for SIM_NO_CHANGED."

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 511
    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCollectSimState:[I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1500()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->mUserObj:Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget v1, v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->slotId:I

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 512
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z
    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V
    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    goto :goto_0

    .line 487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
