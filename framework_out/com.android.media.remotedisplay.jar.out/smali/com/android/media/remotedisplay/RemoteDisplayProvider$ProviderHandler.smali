.class final Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "RemoteDisplayProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/media/remotedisplay/RemoteDisplayProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;


# direct methods
.method public constructor <init>(Lcom/android/media/remotedisplay/RemoteDisplayProvider;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    .line 362
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 363
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 367
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 369
    :pswitch_0
    iget-object v2, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/IRemoteDisplayCallback;

    invoke-virtual {v2, v1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->setCallback(Landroid/media/IRemoteDisplayCallback;)V

    goto :goto_0

    .line 373
    :pswitch_1
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->setDiscoveryMode(I)V

    goto :goto_0

    .line 377
    :pswitch_2
    iget-object v2, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->findRemoteDisplay(Ljava/lang/String;)Lcom/android/media/remotedisplay/RemoteDisplay;

    move-result-object v0

    .line 378
    .local v0, "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    if-eqz v0, :cond_0

    .line 379
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    invoke-virtual {v1, v0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->onConnect(Lcom/android/media/remotedisplay/RemoteDisplay;)V

    goto :goto_0

    .line 384
    .end local v0    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    :pswitch_3
    iget-object v2, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->findRemoteDisplay(Ljava/lang/String;)Lcom/android/media/remotedisplay/RemoteDisplay;

    move-result-object v0

    .line 385
    .restart local v0    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    if-eqz v0, :cond_0

    .line 386
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    invoke-virtual {v1, v0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->onDisconnect(Lcom/android/media/remotedisplay/RemoteDisplay;)V

    goto :goto_0

    .line 391
    .end local v0    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    :pswitch_4
    iget-object v2, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->findRemoteDisplay(Ljava/lang/String;)Lcom/android/media/remotedisplay/RemoteDisplay;

    move-result-object v0

    .line 392
    .restart local v0    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    if-eqz v0, :cond_0

    .line 393
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->onSetVolume(Lcom/android/media/remotedisplay/RemoteDisplay;I)V

    goto :goto_0

    .line 398
    .end local v0    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    :pswitch_5
    iget-object v2, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->findRemoteDisplay(Ljava/lang/String;)Lcom/android/media/remotedisplay/RemoteDisplay;

    move-result-object v0

    .line 399
    .restart local v0    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    if-eqz v0, :cond_0

    .line 400
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->onAdjustVolume(Lcom/android/media/remotedisplay/RemoteDisplay;I)V

    goto :goto_0

    .line 367
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
