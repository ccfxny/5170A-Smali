.class Lcom/android/ims/internal/ImsVideoCallProvider$1;
.super Landroid/os/Handler;
.source "ImsVideoCallProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ImsVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/internal/ImsVideoCallProvider;


# direct methods
.method constructor <init>(Lcom/android/ims/internal/ImsVideoCallProvider;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/internal/IImsVideoCallCallback;

    # setter for: Lcom/android/ims/internal/ImsVideoCallProvider;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;
    invoke-static {v1, v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->access$002(Lcom/android/ims/internal/ImsVideoCallProvider;Lcom/android/ims/internal/IImsVideoCallCallback;)Lcom/android/ims/internal/IImsVideoCallCallback;

    goto :goto_0

    .line 56
    :pswitch_1
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetCamera(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :pswitch_2
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v1, v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 62
    :pswitch_3
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v1, v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetDisplaySurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 65
    :pswitch_4
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetDeviceOrientation(I)V

    goto :goto_0

    .line 68
    :pswitch_5
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetZoom(F)V

    goto :goto_0

    .line 71
    :pswitch_6
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/VideoProfile;

    invoke-virtual {v1, v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 74
    :pswitch_7
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/VideoProfile;

    invoke-virtual {v1, v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 77
    :pswitch_8
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-virtual {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->onRequestCameraCapabilities()V

    goto :goto_0

    .line 80
    :pswitch_9
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-virtual {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->onRequestCallDataUsage()V

    goto :goto_0

    .line 83
    :pswitch_a
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetPauseImage(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
