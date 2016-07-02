.class Lcom/meizu/camera/MeizuCamera$EventHandler;
.super Landroid/os/Handler;
.source "MeizuCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/camera/MeizuCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mCamera:Lcom/meizu/camera/MeizuCamera;

.field final synthetic this$0:Lcom/meizu/camera/MeizuCamera;


# direct methods
.method public constructor <init>(Lcom/meizu/camera/MeizuCamera;Lcom/meizu/camera/MeizuCamera;Landroid/os/Looper;)V
    .locals 0
    .param p2, "c"    # Lcom/meizu/camera/MeizuCamera;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/meizu/camera/MeizuCamera$EventHandler;->this$0:Lcom/meizu/camera/MeizuCamera;

    .line 151
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 152
    iput-object p2, p0, Lcom/meizu/camera/MeizuCamera$EventHandler;->mCamera:Lcom/meizu/camera/MeizuCamera;

    .line 153
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 157
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 184
    const-string v0, "MeizuCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "arg1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "arg2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 159
    :sswitch_0
    iget-object v1, p0, Lcom/meizu/camera/MeizuCamera$EventHandler;->this$0:Lcom/meizu/camera/MeizuCamera;

    # getter for: Lcom/meizu/camera/MeizuCamera;->mFlashLightListener:Lcom/meizu/camera/MeizuCamera$FlashLightListener;
    invoke-static {v1}, Lcom/meizu/camera/MeizuCamera;->access$000(Lcom/meizu/camera/MeizuCamera;)Lcom/meizu/camera/MeizuCamera$FlashLightListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/meizu/camera/MeizuCamera$EventHandler;->this$0:Lcom/meizu/camera/MeizuCamera;

    # getter for: Lcom/meizu/camera/MeizuCamera;->mFlashLightListener:Lcom/meizu/camera/MeizuCamera$FlashLightListener;
    invoke-static {v1}, Lcom/meizu/camera/MeizuCamera;->access$000(Lcom/meizu/camera/MeizuCamera;)Lcom/meizu/camera/MeizuCamera$FlashLightListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_1

    :goto_1
    invoke-interface {v1, v0}, Lcom/meizu/camera/MeizuCamera$FlashLightListener;->onFlashLight(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 164
    :sswitch_1
    iget-object v0, p0, Lcom/meizu/camera/MeizuCamera$EventHandler;->this$0:Lcom/meizu/camera/MeizuCamera;

    # getter for: Lcom/meizu/camera/MeizuCamera;->mMeizuCameraErrorCb:Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;
    invoke-static {v0}, Lcom/meizu/camera/MeizuCamera;->access$100(Lcom/meizu/camera/MeizuCamera;)Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/meizu/camera/MeizuCamera$EventHandler;->this$0:Lcom/meizu/camera/MeizuCamera;

    # getter for: Lcom/meizu/camera/MeizuCamera;->mMeizuCameraErrorCb:Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;
    invoke-static {v0}, Lcom/meizu/camera/MeizuCamera;->access$100(Lcom/meizu/camera/MeizuCamera;)Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;->onError(I)V

    goto :goto_0

    .line 169
    :sswitch_2
    iget-object v0, p0, Lcom/meizu/camera/MeizuCamera$EventHandler;->this$0:Lcom/meizu/camera/MeizuCamera;

    # getter for: Lcom/meizu/camera/MeizuCamera;->mRefocusCallback:Lcom/meizu/camera/MeizuCamera$MeizuCameraRefocusCallback;
    invoke-static {v0}, Lcom/meizu/camera/MeizuCamera;->access$200(Lcom/meizu/camera/MeizuCamera;)Lcom/meizu/camera/MeizuCamera$MeizuCameraRefocusCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/meizu/camera/MeizuCamera$EventHandler;->this$0:Lcom/meizu/camera/MeizuCamera;

    # getter for: Lcom/meizu/camera/MeizuCamera;->mRefocusCallback:Lcom/meizu/camera/MeizuCamera$MeizuCameraRefocusCallback;
    invoke-static {v0}, Lcom/meizu/camera/MeizuCamera;->access$200(Lcom/meizu/camera/MeizuCamera;)Lcom/meizu/camera/MeizuCamera$MeizuCameraRefocusCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p0, Lcom/meizu/camera/MeizuCamera$EventHandler;->mCamera:Lcom/meizu/camera/MeizuCamera;

    invoke-interface {v0, v1, v2, v3}, Lcom/meizu/camera/MeizuCamera$MeizuCameraRefocusCallback;->onRefocusNotify(IILcom/meizu/camera/MeizuCamera;)V

    goto :goto_0

    .line 174
    :sswitch_3
    iget-object v0, p0, Lcom/meizu/camera/MeizuCamera$EventHandler;->this$0:Lcom/meizu/camera/MeizuCamera;

    # getter for: Lcom/meizu/camera/MeizuCamera;->mContinuousCallback:Lcom/meizu/camera/MeizuCamera$MeizuCameraContinuousCallback;
    invoke-static {v0}, Lcom/meizu/camera/MeizuCamera;->access$300(Lcom/meizu/camera/MeizuCamera;)Lcom/meizu/camera/MeizuCamera$MeizuCameraContinuousCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/meizu/camera/MeizuCamera$EventHandler;->this$0:Lcom/meizu/camera/MeizuCamera;

    # getter for: Lcom/meizu/camera/MeizuCamera;->mContinuousCallback:Lcom/meizu/camera/MeizuCamera$MeizuCameraContinuousCallback;
    invoke-static {v0}, Lcom/meizu/camera/MeizuCamera;->access$300(Lcom/meizu/camera/MeizuCamera;)Lcom/meizu/camera/MeizuCamera$MeizuCameraContinuousCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/meizu/camera/MeizuCamera$MeizuCameraContinuousCallback;->onContinuousNotify(II)V

    goto :goto_0

    .line 179
    :sswitch_4
    iget-object v0, p0, Lcom/meizu/camera/MeizuCamera$EventHandler;->this$0:Lcom/meizu/camera/MeizuCamera;

    # getter for: Lcom/meizu/camera/MeizuCamera;->mSecureDetectionCallback:Lcom/meizu/camera/MeizuCamera$MeizuSecureDetectionCallback;
    invoke-static {v0}, Lcom/meizu/camera/MeizuCamera;->access$400(Lcom/meizu/camera/MeizuCamera;)Lcom/meizu/camera/MeizuCamera$MeizuSecureDetectionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/meizu/camera/MeizuCamera$EventHandler;->this$0:Lcom/meizu/camera/MeizuCamera;

    # getter for: Lcom/meizu/camera/MeizuCamera;->mSecureDetectionCallback:Lcom/meizu/camera/MeizuCamera$MeizuSecureDetectionCallback;
    invoke-static {v0}, Lcom/meizu/camera/MeizuCamera;->access$400(Lcom/meizu/camera/MeizuCamera;)Lcom/meizu/camera/MeizuCamera$MeizuSecureDetectionCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/meizu/camera/MeizuCamera$MeizuSecureDetectionCallback;->onSecureDetection(II)V

    goto :goto_0

    .line 157
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x4 -> :sswitch_4
        0x8 -> :sswitch_0
        0x10 -> :sswitch_2
    .end sparse-switch
.end method
