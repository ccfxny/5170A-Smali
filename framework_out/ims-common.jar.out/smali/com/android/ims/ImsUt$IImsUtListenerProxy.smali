.class Lcom/android/ims/ImsUt$IImsUtListenerProxy;
.super Lcom/android/ims/internal/IImsUtListener$Stub;
.source "ImsUt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsUt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IImsUtListenerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/ImsUt;


# direct methods
.method private constructor <init>(Lcom/android/ims/ImsUt;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsUtListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/ImsUt;Lcom/android/ims/ImsUt$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/ims/ImsUt;
    .param p2, "x1"    # Lcom/android/ims/ImsUt$1;

    .prologue
    .line 586
    invoke-direct {p0, p1}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;-><init>(Lcom/android/ims/ImsUt;)V

    return-void
.end method


# virtual methods
.method public utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V
    .locals 4
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "cbInfo"    # [Lcom/android/ims/ImsSsInfo;

    .prologue
    .line 639
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 641
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    # getter for: Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/ims/ImsUt;->access$100(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 642
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    # getter for: Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/ims/ImsUt;->access$200(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    # invokes: Lcom/android/ims/ImsUt;->sendSuccessReport(Landroid/os/Message;Ljava/lang/Object;)V
    invoke-static {v3, v1, p3}, Lcom/android/ims/ImsUt;->access$500(Lcom/android/ims/ImsUt;Landroid/os/Message;Ljava/lang/Object;)V

    .line 643
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    # getter for: Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/ims/ImsUt;->access$200(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    monitor-exit v2

    .line 645
    return-void

    .line 644
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public utConfigurationCallForwardInTimeSlotQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsCallForwardInfoEx;)V
    .locals 4
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "cfInfo"    # [Lcom/android/ims/ImsCallForwardInfoEx;

    .prologue
    .line 682
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 684
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    # getter for: Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/ims/ImsUt;->access$100(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 685
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    # getter for: Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/ims/ImsUt;->access$200(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    # invokes: Lcom/android/ims/ImsUt;->sendSuccessReport(Landroid/os/Message;Ljava/lang/Object;)V
    invoke-static {v3, v1, p3}, Lcom/android/ims/ImsUt;->access$500(Lcom/android/ims/ImsUt;Landroid/os/Message;Ljava/lang/Object;)V

    .line 686
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    # getter for: Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/ims/ImsUt;->access$200(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    monitor-exit v2

    .line 688
    return-void

    .line 687
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsCallForwardInfo;)V
    .locals 4
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "cfInfo"    # [Lcom/android/ims/ImsCallForwardInfo;

    .prologue
    .line 653
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 655
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    # getter for: Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/ims/ImsUt;->access$100(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 656
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    # getter for: Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/ims/ImsUt;->access$200(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    # invokes: Lcom/android/ims/ImsUt;->sendSuccessReport(Landroid/os/Message;Ljava/lang/Object;)V
    invoke-static {v3, v1, p3}, Lcom/android/ims/ImsUt;->access$500(Lcom/android/ims/ImsUt;Landroid/os/Message;Ljava/lang/Object;)V

    .line 657
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    # getter for: Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/ims/ImsUt;->access$200(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    monitor-exit v2

    .line 659
    return-void

    .line 658
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V
    .locals 4
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "cwInfo"    # [Lcom/android/ims/ImsSsInfo;

    .prologue
    .line 667
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 669
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    # getter for: Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/ims/ImsUt;->access$100(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 670
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    # getter for: Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/ims/ImsUt;->access$200(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    # invokes: Lcom/android/ims/ImsUt;->sendSuccessReport(Landroid/os/Message;Ljava/lang/Object;)V
    invoke-static {v3, v1, p3}, Lcom/android/ims/ImsUt;->access$500(Lcom/android/ims/ImsUt;Landroid/os/Message;Ljava/lang/Object;)V

    .line 671
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    # getter for: Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/ims/ImsUt;->access$200(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    monitor-exit v2

    .line 673
    return-void

    .line 672
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "ssInfo"    # Landroid/os/Bundle;

    .prologue
    .line 615
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 617
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    # getter for: Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/ims/ImsUt;->access$100(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 618
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    # getter for: Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/ims/ImsUt;->access$200(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    # invokes: Lcom/android/ims/ImsUt;->sendSuccessReport(Landroid/os/Message;Ljava/lang/Object;)V
    invoke-static {v3, v1, p3}, Lcom/android/ims/ImsUt;->access$500(Lcom/android/ims/ImsUt;Landroid/os/Message;Ljava/lang/Object;)V

    .line 619
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    # getter for: Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/ims/ImsUt;->access$200(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    monitor-exit v2

    .line 621
    return-void

    .line 620
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "error"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 625
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 627
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    # getter for: Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/ims/ImsUt;->access$100(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 628
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    # getter for: Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/ims/ImsUt;->access$200(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    # invokes: Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    invoke-static {v3, v1, p3}, Lcom/android/ims/ImsUt;->access$400(Lcom/android/ims/ImsUt;Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V

    .line 629
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    # getter for: Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/ims/ImsUt;->access$200(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    monitor-exit v2

    .line 631
    return-void

    .line 630
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "error"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 602
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 604
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    # getter for: Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/ims/ImsUt;->access$100(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 605
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    # getter for: Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/ims/ImsUt;->access$200(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    # invokes: Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    invoke-static {v3, v1, p3}, Lcom/android/ims/ImsUt;->access$400(Lcom/android/ims/ImsUt;Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V

    .line 606
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    # getter for: Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/ims/ImsUt;->access$200(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    monitor-exit v2

    .line 608
    return-void

    .line 607
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V
    .locals 4
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I

    .prologue
    .line 592
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 594
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    # getter for: Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/ims/ImsUt;->access$100(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 595
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    # getter for: Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/ims/ImsUt;->access$200(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    # invokes: Lcom/android/ims/ImsUt;->sendSuccessReport(Landroid/os/Message;)V
    invoke-static {v3, v1}, Lcom/android/ims/ImsUt;->access$300(Lcom/android/ims/ImsUt;Landroid/os/Message;)V

    .line 596
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    # getter for: Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/ims/ImsUt;->access$200(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    monitor-exit v2

    .line 598
    return-void

    .line 597
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
