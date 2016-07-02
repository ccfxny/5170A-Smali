.class final Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;
.super Lcom/android/ims/internal/IImsVideoCallProvider$Stub;
.source "ImsVideoCallProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ImsVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImsVideoCallProviderBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/internal/ImsVideoCallProvider;


# direct methods
.method private constructor <init>(Lcom/android/ims/internal/ImsVideoCallProvider;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/internal/ImsVideoCallProvider;Lcom/android/ims/internal/ImsVideoCallProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/ims/internal/ImsVideoCallProvider;
    .param p2, "x1"    # Lcom/android/ims/internal/ImsVideoCallProvider$1;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;-><init>(Lcom/android/ims/internal/ImsVideoCallProvider;)V

    return-void
.end method


# virtual methods
.method public requestCallDataUsage()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    # getter for: Lcom/android/ims/internal/ImsVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->access$100(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    return-void
.end method

.method public requestCameraCapabilities()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    # getter for: Lcom/android/ims/internal/ImsVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->access$100(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 131
    return-void
.end method

.method public sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "requestProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    # getter for: Lcom/android/ims/internal/ImsVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->access$100(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 122
    return-void
.end method

.method public sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    # getter for: Lcom/android/ims/internal/ImsVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->access$100(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 127
    return-void
.end method

.method public setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/ims/internal/IImsVideoCallCallback;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    # getter for: Lcom/android/ims/internal/ImsVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->access$100(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 97
    return-void
.end method

.method public setCamera(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    # getter for: Lcom/android/ims/internal/ImsVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->access$100(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 101
    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    # getter for: Lcom/android/ims/internal/ImsVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->access$100(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 113
    return-void
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    # getter for: Lcom/android/ims/internal/ImsVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->access$100(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 109
    return-void
.end method

.method public setPauseImage(Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    # getter for: Lcom/android/ims/internal/ImsVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->access$100(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 139
    return-void
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    # getter for: Lcom/android/ims/internal/ImsVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->access$100(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 105
    return-void
.end method

.method public setZoom(F)V
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    # getter for: Lcom/android/ims/internal/ImsVideoCallProvider;->mProviderHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->access$100(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 117
    return-void
.end method
