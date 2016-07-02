.class Lcom/mediatek/ims/ImsAdapter$EnableImsRunnable;
.super Ljava/lang/Object;
.source "ImsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnableImsRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsAdapter;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/ImsAdapter;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/mediatek/ims/ImsAdapter$EnableImsRunnable;->this$0:Lcom/mediatek/ims/ImsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/ImsAdapter;Lcom/mediatek/ims/ImsAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/ims/ImsAdapter;
    .param p2, "x1"    # Lcom/mediatek/ims/ImsAdapter$1;

    .prologue
    .line 539
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsAdapter$EnableImsRunnable;-><init>(Lcom/mediatek/ims/ImsAdapter;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 543
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter$EnableImsRunnable;->this$0:Lcom/mediatek/ims/ImsAdapter;

    # getter for: Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;
    invoke-static {v0}, Lcom/mediatek/ims/ImsAdapter;->access$300(Lcom/mediatek/ims/ImsAdapter;)Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->connectSocket()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 544
    const-string v0, "ImsAdapter"

    const-string v1, "EnableImsRunnable(): connectSocket success"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    # getter for: Lcom/mediatek/ims/ImsAdapter;->mImsEventDispatcher:Lcom/mediatek/ims/ImsEventDispatcher;
    invoke-static {}, Lcom/mediatek/ims/ImsAdapter;->access$100()Lcom/mediatek/ims/ImsEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsEventDispatcher;->enableRequest()V

    .line 549
    # setter for: Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:Z
    invoke-static {v2}, Lcom/mediatek/ims/ImsAdapter;->access$002(Z)Z

    .line 550
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter$EnableImsRunnable;->this$0:Lcom/mediatek/ims/ImsAdapter;

    # getter for: Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;
    invoke-static {v0}, Lcom/mediatek/ims/ImsAdapter;->access$300(Lcom/mediatek/ims/ImsAdapter;)Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    move-result-object v0

    iget-object v1, v0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->VaSocketIOThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 551
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter$EnableImsRunnable;->this$0:Lcom/mediatek/ims/ImsAdapter;

    # getter for: Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;
    invoke-static {v0}, Lcom/mediatek/ims/ImsAdapter;->access$300(Lcom/mediatek/ims/ImsAdapter;)Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->VaSocketIOThreadLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 552
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    const/4 v0, 0x0

    # setter for: Lcom/mediatek/ims/ImsAdapter;->misImsAdapterInit:Z
    invoke-static {v0}, Lcom/mediatek/ims/ImsAdapter;->access$402(Z)Z

    .line 560
    :goto_0
    return-void

    .line 552
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 555
    :cond_0
    const-string v0, "ImsAdapter"

    const-string v1, "EnableImsRunnable(): connectSocket error"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter$EnableImsRunnable;->this$0:Lcom/mediatek/ims/ImsAdapter;

    # invokes: Lcom/mediatek/ims/ImsAdapter;->stopVaProcess()V
    invoke-static {v0}, Lcom/mediatek/ims/ImsAdapter;->access$500(Lcom/mediatek/ims/ImsAdapter;)V

    .line 558
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter$EnableImsRunnable;->this$0:Lcom/mediatek/ims/ImsAdapter;

    # invokes: Lcom/mediatek/ims/ImsAdapter;->enableImsAdapter2ndStage()V
    invoke-static {v0}, Lcom/mediatek/ims/ImsAdapter;->access$600(Lcom/mediatek/ims/ImsAdapter;)V

    goto :goto_0
.end method
