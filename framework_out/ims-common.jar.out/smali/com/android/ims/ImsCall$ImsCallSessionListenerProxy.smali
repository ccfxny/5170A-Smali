.class Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;
.super Lcom/android/ims/internal/ImsCallSession$Listener;
.source "ImsCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsCallSessionListenerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/ImsCall;


# direct methods
.method private constructor <init>(Lcom/android/ims/ImsCall;)V
    .locals 0

    .prologue
    .line 2013
    iput-object p1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-direct {p0}, Lcom/android/ims/internal/ImsCallSession$Listener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/ims/ImsCall;
    .param p2, "x1"    # Lcom/android/ims/ImsCall$1;

    .prologue
    .line 2013
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;-><init>(Lcom/android/ims/ImsCall;)V

    return-void
.end method


# virtual methods
.method public callSessionConferenceExtendFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 2601
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2602
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionConferenceExtendFailed :: not supported for transient conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2626
    :cond_0
    :goto_0
    return-void

    .line 2607
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$1600()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2608
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionConferenceExtendFailed :: imsCall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reasonInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2614
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2615
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2616
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v4, 0x0

    # setter for: Lcom/android/ims/ImsCall;->mUpdateRequest:I
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->access$1302(Lcom/android/ims/ImsCall;I)I

    .line 2617
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2619
    if-eqz v0, :cond_0

    .line 2621
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtendFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2622
    :catch_0
    move-exception v1

    .line 2623
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionConferenceExtendFailed :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2617
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionConferenceExtendReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 6
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 2631
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v3, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2632
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callSessionConferenceExtendReceived :: not supported for transient conference session"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2662
    :cond_0
    :goto_0
    return-void

    .line 2637
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->VDBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2638
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callSessionConferenceExtendReceived :: newSession="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", profile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2642
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->createNewCall(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;
    invoke-static {v3, p2, p3}, Lcom/android/ims/ImsCall;->access$2300(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;

    move-result-object v1

    .line 2644
    .local v1, "newCall":Lcom/android/ims/ImsCall;
    if-eqz v1, :cond_0

    .line 2651
    iget-object v4, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v4

    .line 2652
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v3}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2653
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2655
    if-eqz v0, :cond_0

    .line 2657
    :try_start_1
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v3, v1}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtendReceived(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2658
    :catch_0
    move-exception v2

    .line 2659
    .local v2, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v4, "callSessionConferenceExtendReceived :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v2}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2653
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public callSessionConferenceExtended(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 6
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 2564
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v3, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2565
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callSessionConferenceExtended :: not supported for transient conference session="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2596
    :cond_0
    :goto_0
    return-void

    .line 2570
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->VDBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2571
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callSessionConferenceExtended :: session="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newSession="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", profile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2575
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->createNewCall(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;
    invoke-static {v3, p2, p3}, Lcom/android/ims/ImsCall;->access$2300(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;

    move-result-object v1

    .line 2577
    .local v1, "newCall":Lcom/android/ims/ImsCall;
    if-nez v1, :cond_3

    .line 2578
    new-instance v3, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v3}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {p0, p1, v3}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->callSessionConferenceExtendFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 2584
    :cond_3
    iget-object v4, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v4

    .line 2585
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v3}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2586
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v5, 0x0

    # setter for: Lcom/android/ims/ImsCall;->mUpdateRequest:I
    invoke-static {v3, v5}, Lcom/android/ims/ImsCall;->access$1302(Lcom/android/ims/ImsCall;I)I

    .line 2587
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2589
    if-eqz v0, :cond_0

    .line 2591
    :try_start_1
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v3, v1}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtended(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2592
    :catch_0
    move-exception v2

    .line 2593
    .local v2, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v4, "callSessionConferenceExtended :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v2}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2587
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public callSessionConferenceStateUpdated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsConferenceState;)V
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "state"    # Lcom/android/ims/ImsConferenceState;

    .prologue
    .line 2787
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2788
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceStateUpdated :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2798
    :goto_0
    return-void

    .line 2793
    :cond_0
    # getter for: Lcom/android/ims/ImsCall;->VDBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2794
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceStateUpdated :: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2797
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p2}, Lcom/android/ims/ImsCall;->conferenceStateUpdated(Lcom/android/ims/ImsConferenceState;)V

    goto :goto_0
.end method

.method public callSessionHeld(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 6
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    const/4 v5, 0x1

    .line 2153
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2155
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionHeld :: not supported for transient conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2207
    :cond_0
    :goto_0
    return-void

    .line 2159
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->VDBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2160
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionHeld :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2165
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2172
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # setter for: Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->access$502(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;

    .line 2174
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mUpdateRequest:I
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$1300(Lcom/android/ims/ImsCall;)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 2176
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->mergeInternal()V
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$1400(Lcom/android/ims/ImsCall;)V

    .line 2177
    monitor-exit v3

    goto :goto_0

    .line 2198
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2189
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mUpdateRequest:I
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$1300(Lcom/android/ims/ImsCall;)I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 2190
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v4, 0x0

    # setter for: Lcom/android/ims/ImsCall;->mUpdateRequest:I
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->access$1302(Lcom/android/ims/ImsCall;I)I

    .line 2193
    :cond_4
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2195
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v4, 0x1

    # setter for: Lcom/android/ims/ImsCall;->mHold:Z
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->access$1502(Lcom/android/ims/ImsCall;Z)Z

    .line 2198
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2200
    if-eqz v0, :cond_0

    .line 2202
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallHeld(Lcom/android/ims/ImsCall;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2203
    :catch_0
    move-exception v1

    .line 2204
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionHeld :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public callSessionHoldFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 6
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 2211
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v3, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2213
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callSessionHoldFailed :: not supported for transient conference session="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2244
    :cond_0
    :goto_0
    return-void

    .line 2218
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->VDBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2219
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callSessionHoldFailed :: session"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "reasonInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2222
    :cond_2
    const/4 v0, 0x0

    .line 2225
    .local v0, "isHoldForMerge":Z
    iget-object v4, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v4

    .line 2226
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mUpdateRequest:I
    invoke-static {v3}, Lcom/android/ims/ImsCall;->access$1300(Lcom/android/ims/ImsCall;)I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 2227
    const/4 v0, 0x1

    .line 2230
    :cond_3
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v5, 0x0

    # setter for: Lcom/android/ims/ImsCall;->mUpdateRequest:I
    invoke-static {v3, v5}, Lcom/android/ims/ImsCall;->access$1302(Lcom/android/ims/ImsCall;I)I

    .line 2231
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v3}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 2233
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v5, 0x0

    # setter for: Lcom/android/ims/ImsCall;->mHold:Z
    invoke-static {v3, v5}, Lcom/android/ims/ImsCall;->access$1502(Lcom/android/ims/ImsCall;Z)Z

    .line 2235
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2237
    if-eqz v1, :cond_0

    .line 2239
    :try_start_1
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v3, p2}, Lcom/android/ims/ImsCall$Listener;->onCallHoldFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2240
    :catch_0
    move-exception v2

    .line 2241
    .local v2, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v4, "callSessionHoldFailed :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v2}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2235
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public callSessionHoldReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 2248
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2250
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionHoldReceived :: not supported for transient conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2273
    :cond_0
    :goto_0
    return-void

    .line 2255
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->VDBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2256
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionHoldReceived :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2261
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2262
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2263
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # setter for: Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->access$502(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;

    .line 2264
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2266
    if-eqz v0, :cond_0

    .line 2268
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallHoldReceived(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2269
    :catch_0
    move-exception v1

    .line 2270
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionHoldReceived :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2264
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 2666
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2667
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionInviteParticipantsRequestDelivered :: not supported for conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2695
    :cond_0
    :goto_0
    return-void

    .line 2672
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->VDBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2673
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionInviteParticipantsRequestDelivered ::"

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2678
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2680
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mIsConferenceMerging:Z
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$2400(Lcom/android/ims/ImsCall;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2682
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v4, 0x0

    # setter for: Lcom/android/ims/ImsCall;->mIsConferenceMerging:Z
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->access$2402(Lcom/android/ims/ImsCall;Z)Z

    .line 2685
    :cond_3
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2686
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2688
    if-eqz v0, :cond_0

    .line 2690
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallInviteParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2691
    :catch_0
    move-exception v1

    .line 2692
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionInviteParticipantsRequestDelivered :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2686
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 2700
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2701
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionInviteParticipantsRequestFailed :: not supported for conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2727
    :cond_0
    :goto_0
    return-void

    .line 2706
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->VDBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2707
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionInviteParticipantsRequestFailed :: reasonInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2712
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2713
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2716
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v4, 0x0

    # setter for: Lcom/android/ims/ImsCall;->mIsConferenceMerging:Z
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->access$2402(Lcom/android/ims/ImsCall;Z)Z

    .line 2718
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2720
    if-eqz v0, :cond_0

    .line 2722
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallInviteParticipantsRequestFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2723
    :catch_0
    move-exception v1

    .line 2724
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionInviteParticipantsRequestFailed :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2718
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionMergeComplete(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 2431
    # getter for: Lcom/android/ims/ImsCall;->VDBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2432
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMergeComplete :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2435
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v1, 0x0

    # invokes: Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V
    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->access$700(Lcom/android/ims/ImsCall;Z)V

    .line 2439
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->tryProcessConferenceResult()V
    invoke-static {v0}, Lcom/android/ims/ImsCall;->access$800(Lcom/android/ims/ImsCall;)V

    .line 2440
    return-void
.end method

.method public callSessionMergeFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 2444
    # getter for: Lcom/android/ims/ImsCall;->VDBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2445
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMergeFailed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2450
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v1

    .line 2451
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z
    invoke-static {v0}, Lcom/android/ims/ImsCall;->access$1100(Lcom/android/ims/ImsCall;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2453
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v2, "callSessionMergeFailed :: no merge in progress."

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2454
    monitor-exit v1

    .line 2468
    :goto_0
    return-void

    .line 2460
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isMergeHost()Z
    invoke-static {v0}, Lcom/android/ims/ImsCall;->access$1900(Lcom/android/ims/ImsCall;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2461
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->processMergeFailed(Lcom/android/ims/ImsReasonInfo;)V
    invoke-static {v0, p2}, Lcom/android/ims/ImsCall;->access$1000(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    .line 2467
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2462
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;
    invoke-static {v0}, Lcom/android/ims/ImsCall;->access$2000(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2463
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;
    invoke-static {v0}, Lcom/android/ims/ImsCall;->access$2000(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v0

    # invokes: Lcom/android/ims/ImsCall;->processMergeFailed(Lcom/android/ims/ImsReasonInfo;)V
    invoke-static {v0, p2}, Lcom/android/ims/ImsCall;->access$1000(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    goto :goto_1

    .line 2465
    :cond_3
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v2, "callSessionMergeFailed :: No merge host for this conference!"

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/ims/ImsCall;->access$2100(Lcom/android/ims/ImsCall;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public callSessionMergeStarted(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 2387
    # getter for: Lcom/android/ims/ImsCall;->VDBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2388
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMergeStarted :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newSession="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2392
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z
    invoke-static {v0}, Lcom/android/ims/ImsCall;->access$1100(Lcom/android/ims/ImsCall;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2394
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v1, "callSessionMergeStarted :: no merge in progress."

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2426
    :cond_1
    :goto_0
    return-void

    .line 2402
    :cond_2
    if-nez p1, :cond_3

    .line 2406
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2407
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v1, "callSessionMergeStarted :: merging into existing ImsCallSession"

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    goto :goto_0

    .line 2412
    :cond_3
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2413
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v1, "callSessionMergeStarted ::  setting our transient ImsCallSession"

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2419
    :cond_4
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v1

    .line 2422
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # setter for: Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;
    invoke-static {v0, p2}, Lcom/android/ims/ImsCall;->access$1702(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession;

    .line 2423
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;
    invoke-static {v0}, Lcom/android/ims/ImsCall;->access$1700(Lcom/android/ims/ImsCall;)Lcom/android/ims/internal/ImsCallSession;

    move-result-object v0

    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->createCallSessionListener()Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$1800(Lcom/android/ims/ImsCall;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    .line 2424
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public callSessionProgressing(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 2016
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2018
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionProgressing :: not supported for transient conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2041
    :cond_0
    :goto_0
    return-void

    .line 2023
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->VDBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2024
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionProgressing :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2029
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2030
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2031
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$500(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    invoke-virtual {v2, p2}, Lcom/android/ims/ImsStreamMediaProfile;->copyFrom(Lcom/android/ims/ImsStreamMediaProfile;)V

    .line 2032
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2034
    if-eqz v0, :cond_0

    .line 2036
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallProgressing(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2037
    :catch_0
    move-exception v1

    .line 2038
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionProgressing :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2032
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 2731
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2732
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionRemoveParticipantsRequestDelivered :: not supported for conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2754
    :cond_0
    :goto_0
    return-void

    .line 2737
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->VDBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2738
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRemoveParticipantsRequestDelivered ::"

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2743
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2744
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2745
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2747
    if-eqz v0, :cond_0

    .line 2749
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallRemoveParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2750
    :catch_0
    move-exception v1

    .line 2751
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRemoveParticipantsRequestDelivered :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2745
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 2759
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2760
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionRemoveParticipantsRequestFailed :: not supported for conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2782
    :cond_0
    :goto_0
    return-void

    .line 2765
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->VDBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2766
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionRemoveParticipantsRequestFailed :: reasonInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2771
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2772
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2773
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2775
    if-eqz v0, :cond_0

    .line 2777
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallRemoveParticipantsRequestFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2778
    :catch_0
    move-exception v1

    .line 2779
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRemoveParticipantsRequestFailed :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2773
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionResumeFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 2330
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2331
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionResumeFailed :: not supported for transient conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2354
    :cond_0
    :goto_0
    return-void

    .line 2336
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->VDBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2337
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionResumeFailed :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "reasonInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2342
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2343
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2344
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v4, 0x0

    # setter for: Lcom/android/ims/ImsCall;->mUpdateRequest:I
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->access$1302(Lcom/android/ims/ImsCall;I)I

    .line 2345
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2347
    if-eqz v0, :cond_0

    .line 2349
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallResumeFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2350
    :catch_0
    move-exception v1

    .line 2351
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionResumeFailed :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2345
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionResumeReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 2358
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2359
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionResumeReceived :: not supported for transient conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2382
    :cond_0
    :goto_0
    return-void

    .line 2364
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->VDBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2365
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionResumeReceived :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2370
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2371
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2372
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # setter for: Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->access$502(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;

    .line 2373
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2375
    if-eqz v0, :cond_0

    .line 2377
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallResumeReceived(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2378
    :catch_0
    move-exception v1

    .line 2379
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionResumeReceived :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2373
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionResumed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 2277
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2278
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionResumed :: not supported for transient conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2326
    :cond_0
    :goto_0
    return-void

    .line 2283
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->VDBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2284
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionResumed :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2307
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2308
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2309
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # setter for: Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->access$502(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;

    .line 2312
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mUpdateRequest:I
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$1300(Lcom/android/ims/ImsCall;)I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 2313
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v4, 0x0

    # setter for: Lcom/android/ims/ImsCall;->mUpdateRequest:I
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->access$1302(Lcom/android/ims/ImsCall;I)I

    .line 2316
    :cond_3
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v4, 0x0

    # setter for: Lcom/android/ims/ImsCall;->mHold:Z
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->access$1502(Lcom/android/ims/ImsCall;Z)Z

    .line 2317
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2319
    if-eqz v0, :cond_0

    .line 2321
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallResumed(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2322
    :catch_0
    move-exception v1

    .line 2323
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionResumed :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2317
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionStartFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 2088
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2090
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionStartFailed :: not supported for transient conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2113
    :cond_0
    :goto_0
    return-void

    .line 2095
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->VDBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2096
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionStartFailed :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reasonInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2101
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2102
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2103
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # setter for: Lcom/android/ims/ImsCall;->mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->access$902(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)Lcom/android/ims/ImsReasonInfo;

    .line 2104
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2106
    if-eqz v0, :cond_0

    .line 2108
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallStartFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2109
    :catch_0
    move-exception v1

    .line 2110
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionStarted :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2104
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionStarted(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 2045
    # getter for: Lcom/android/ims/ImsCall;->VDBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2046
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionStarted :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2049
    :cond_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2053
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v3, 0x0

    # invokes: Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$700(Lcom/android/ims/ImsCall;Z)V

    .line 2063
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->tryProcessConferenceResult()V
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$800(Lcom/android/ims/ImsCall;)V

    .line 2065
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2084
    :cond_1
    :goto_0
    return-void

    .line 2055
    :cond_2
    # getter for: Lcom/android/ims/ImsCall;->VDBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2056
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionStarted :: on transient session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    goto :goto_0

    .line 2072
    :cond_3
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2073
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2074
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # setter for: Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->access$502(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;

    .line 2075
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2077
    if-eqz v0, :cond_1

    .line 2079
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallStarted(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2080
    :catch_0
    move-exception v1

    .line 2081
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionStarted :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2075
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionTerminated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2118
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTerminated :: on transient session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2122
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->processMergeFailed(Lcom/android/ims/ImsReasonInfo;)V
    invoke-static {v0, p2}, Lcom/android/ims/ImsCall;->access$1000(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    .line 2149
    :goto_0
    return-void

    .line 2126
    :cond_0
    # getter for: Lcom/android/ims/ImsCall;->VDBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2127
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTerminated :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2132
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z
    invoke-static {v0}, Lcom/android/ims/ImsCall;->access$1100(Lcom/android/ims/ImsCall;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2133
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v1, "this is a conference host during merging, and is disconnected.."

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2134
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->processMergeFailed(Lcom/android/ims/ImsReasonInfo;)V
    invoke-static {v0, p2}, Lcom/android/ims/ImsCall;->access$1000(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    .line 2141
    :cond_2
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->processCallTerminated(Lcom/android/ims/ImsReasonInfo;)V
    invoke-static {v0, p2}, Lcom/android/ims/ImsCall;->access$1200(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    .line 2144
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v1, 0x0

    # invokes: Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V
    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->access$700(Lcom/android/ims/ImsCall;Z)V

    .line 2148
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->tryProcessConferenceResult()V
    invoke-static {v0}, Lcom/android/ims/ImsCall;->access$800(Lcom/android/ims/ImsCall;)V

    goto :goto_0
.end method

.method public callSessionTtyModeReceived(Lcom/android/ims/internal/ImsCallSession;I)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "mode"    # I

    .prologue
    .line 2831
    # getter for: Lcom/android/ims/ImsCall;->VDBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2832
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionTtyModeReceived :: mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2837
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2838
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2839
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2841
    if-eqz v0, :cond_1

    .line 2843
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSessionTtyModeReceived(Lcom/android/ims/ImsCall;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2848
    :cond_1
    :goto_0
    return-void

    .line 2839
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2844
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    .line 2845
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionTtyModeReceived :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public callSessionUpdateFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 2506
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2507
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionUpdateFailed :: not supported for transient conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2530
    :cond_0
    :goto_0
    return-void

    .line 2512
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->VDBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2513
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionUpdateFailed :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reasonInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2518
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2519
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2520
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v4, 0x0

    # setter for: Lcom/android/ims/ImsCall;->mUpdateRequest:I
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->access$1302(Lcom/android/ims/ImsCall;I)I

    .line 2521
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2523
    if-eqz v0, :cond_0

    .line 2525
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallUpdateFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2526
    :catch_0
    move-exception v1

    .line 2527
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionUpdateFailed :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2521
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionUpdateReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 2534
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2535
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionUpdateReceived :: not supported for transient conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2559
    :cond_0
    :goto_0
    return-void

    .line 2540
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->VDBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2541
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionUpdateReceived :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2546
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2547
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2548
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # setter for: Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->access$2202(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;

    .line 2549
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v4, 0x6

    # setter for: Lcom/android/ims/ImsCall;->mUpdateRequest:I
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->access$1302(Lcom/android/ims/ImsCall;I)I

    .line 2550
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2552
    if-eqz v0, :cond_0

    .line 2554
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallUpdateReceived(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2555
    :catch_0
    move-exception v1

    .line 2556
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionUpdateReceived :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2550
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionUpdated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 2472
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2473
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionUpdated :: not supported for transient conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2502
    :cond_0
    :goto_0
    return-void

    .line 2478
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->VDBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2479
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionUpdated :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2484
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2485
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2486
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # setter for: Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->access$502(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;

    .line 2489
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mUpdateRequest:I
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$1300(Lcom/android/ims/ImsCall;)I

    move-result v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_3

    .line 2490
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v4, 0x0

    # setter for: Lcom/android/ims/ImsCall;->mUpdateRequest:I
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->access$1302(Lcom/android/ims/ImsCall;I)I

    .line 2493
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2495
    if-eqz v0, :cond_0

    .line 2497
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallUpdated(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2498
    :catch_0
    move-exception v1

    .line 2499
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionUpdated :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2493
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionUssdMessageReceived(Lcom/android/ims/internal/ImsCallSession;ILjava/lang/String;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "mode"    # I
    .param p3, "ussdMessage"    # Ljava/lang/String;

    .prologue
    .line 2803
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2804
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionUssdMessageReceived :: not supported for transient conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2827
    :cond_0
    :goto_0
    return-void

    .line 2809
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->VDBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2810
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionUssdMessageReceived :: mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ussdMessage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2816
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2817
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2818
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2820
    if-eqz v0, :cond_0

    .line 2822
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2, p2, p3}, Lcom/android/ims/ImsCall$Listener;->onCallUssdMessageReceived(Lcom/android/ims/ImsCall;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2823
    :catch_0
    move-exception v1

    .line 2824
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionUssdMessageReceived :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2818
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
