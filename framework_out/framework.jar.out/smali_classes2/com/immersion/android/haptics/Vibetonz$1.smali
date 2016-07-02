.class Lcom/immersion/android/haptics/Vibetonz$1;
.super Landroid/os/Handler;
.source "Vibetonz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/immersion/android/haptics/Vibetonz;->initThreadHandler(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/immersion/android/haptics/Vibetonz;


# direct methods
.method constructor <init>(Lcom/immersion/android/haptics/Vibetonz;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/immersion/android/haptics/Vibetonz$1;->this$0:Lcom/immersion/android/haptics/Vibetonz;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 197
    const-string v0, "HapticFeedbackManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 213
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 214
    return-void

    .line 200
    :pswitch_1
    iget-object v0, p0, Lcom/immersion/android/haptics/Vibetonz$1;->this$0:Lcom/immersion/android/haptics/Vibetonz;

    # invokes: Lcom/immersion/android/haptics/Vibetonz;->playEffect()V
    invoke-static {v0}, Lcom/immersion/android/haptics/Vibetonz;->access$000(Lcom/immersion/android/haptics/Vibetonz;)V

    goto :goto_0

    .line 203
    :pswitch_2
    # getter for: Lcom/immersion/android/haptics/Vibetonz;->sDevice:Lcom/immersion/Device;
    invoke-static {}, Lcom/immersion/android/haptics/Vibetonz;->access$100()Lcom/immersion/Device;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    # getter for: Lcom/immersion/android/haptics/Vibetonz;->sDevice:Lcom/immersion/Device;
    invoke-static {}, Lcom/immersion/android/haptics/Vibetonz;->access$100()Lcom/immersion/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/immersion/Device;->stopAllPlayingEffects()V

    goto :goto_0

    .line 208
    :pswitch_3
    iget-object v0, p0, Lcom/immersion/android/haptics/Vibetonz$1;->this$0:Lcom/immersion/android/haptics/Vibetonz;

    # invokes: Lcom/immersion/android/haptics/Vibetonz;->release()V
    invoke-static {v0}, Lcom/immersion/android/haptics/Vibetonz;->access$200(Lcom/immersion/android/haptics/Vibetonz;)V

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
