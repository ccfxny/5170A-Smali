.class Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;
.super Lcom/android/internal/util/State;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreDetachCheckState"
.end annotation


# instance fields
.field mTransactionId:I

.field mUserCnt:I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v1, "PreDetachCheckState: enter"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 357
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v0

    const-string v1, "predetachcheck"

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$600(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mReason:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DctController;->notifyDcSwitchStateChange(Ljava/lang/String;ILjava/lang/String;)V

    .line 359
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v6, 0x44001

    const/4 v4, 0x3

    const/4 v5, 0x1

    .line 365
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 414
    const/4 v1, 0x0

    .line 417
    .local v1, "retVal":Z
    :goto_0
    return v1

    .line 368
    .end local v1    # "retVal":Z
    :sswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v3, "PreDetachCheckState: REQ_CONFIRM_PREDETACH"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$600(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseAllRequests(I)V

    .line 372
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 373
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x4400d

    invoke-virtual {v2, p1, v3, v5}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 375
    const/4 v1, 0x1

    .line 376
    .restart local v1    # "retVal":Z
    goto :goto_0

    .line 379
    .end local v1    # "retVal":Z
    :sswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v3, "PreDetachCheckState: REQ_CONNECT, return fail"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 381
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    invoke-virtual {v2, p1, v6, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 383
    const/4 v1, 0x1

    .line 384
    .restart local v1    # "retVal":Z
    goto :goto_0

    .line 387
    .end local v1    # "retVal":Z
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 389
    .local v0, "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PreDetachCheckState: REQ_DISCONNECT apnRequest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 392
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    .line 393
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    invoke-virtual {v2, p1, v6, v5}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 396
    const/4 v1, 0x1

    .line 397
    .restart local v1    # "retVal":Z
    goto :goto_0

    .line 401
    .end local v0    # "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    .end local v1    # "retVal":Z
    :sswitch_3
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v3, "PreDetachCheckState: REQ_DISCONNECT_ALL, return fail."

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 403
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x44005

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 405
    const/4 v1, 0x1

    .line 406
    .restart local v1    # "retVal":Z
    goto/16 :goto_0

    .line 365
    nop

    :sswitch_data_0
    .sparse-switch
        0x44000 -> :sswitch_1
        0x44002 -> :sswitch_2
        0x44004 -> :sswitch_3
        0x4400c -> :sswitch_0
    .end sparse-switch
.end method