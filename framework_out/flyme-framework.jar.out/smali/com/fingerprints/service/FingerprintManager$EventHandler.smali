.class Lcom/fingerprints/service/FingerprintManager$EventHandler;
.super Landroid/os/Handler;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingerprints/service/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fingerprints/service/FingerprintManager;


# direct methods
.method public constructor <init>(Lcom/fingerprints/service/FingerprintManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    .line 341
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 342
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v5, 0x14

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 346
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 469
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 348
    :pswitch_1
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$000(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 349
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$000(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/fingerprints/service/FingerprintManager$CaptureCallback;->onWaitingForInput()V

    goto :goto_0

    .line 352
    :pswitch_2
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$000(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 353
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$000(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/fingerprints/service/FingerprintManager$CaptureCallback;->onInput()V

    .line 355
    :cond_1
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 356
    invoke-virtual {p0, v5}, Lcom/fingerprints/service/FingerprintManager$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v2, v4, v5}, Lcom/fingerprints/service/FingerprintManager$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 357
    const-string v2, "FingerprintManager"

    const-string v3, "sendMessageDelayed    "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 361
    :pswitch_3
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$000(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 362
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$000(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/fingerprints/service/FingerprintManager$CaptureCallback;->onCaptureCompleted()V

    .line 363
    :cond_2
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 364
    invoke-virtual {p0, v5}, Lcom/fingerprints/service/FingerprintManager$EventHandler;->removeMessages(I)V

    .line 365
    const-string v2, "FingerprintManager"

    const-string v3, "removeMessages      "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 369
    :pswitch_4
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$000(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 370
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$000(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/fingerprints/service/FingerprintManager$CaptureCallback;->onCaptureFailed(I)V

    goto :goto_0

    .line 373
    :pswitch_5
    iget-object v4, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v4}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 374
    iget-object v4, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v4}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v2, :cond_3

    :goto_1
    invoke-interface {v4, v5, v2}, Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;->onIdentified(IZ)V

    goto/16 :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    .line 377
    :pswitch_6
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 378
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/fingerprints/service/FingerprintManager$EnrolCallback;->onEnrolled(I)V

    .line 379
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mReadyToStore:Z
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$300(Lcom/fingerprints/service/FingerprintManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # setter for: Lcom/fingerprints/service/FingerprintManager;->mReadyToStore:Z
    invoke-static {v2, v3}, Lcom/fingerprints/service/FingerprintManager;->access$302(Lcom/fingerprints/service/FingerprintManager;Z)Z

    .line 381
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    const/4 v3, 0x0

    # setter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2, v3}, Lcom/fingerprints/service/FingerprintManager;->access$102(Lcom/fingerprints/service/FingerprintManager;Lcom/fingerprints/service/FingerprintManager$EnrolCallback;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    goto/16 :goto_0

    .line 386
    :pswitch_7
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 390
    :pswitch_8
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 391
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # invokes: Lcom/fingerprints/service/FingerprintManager;->PackGuidedData()V
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$400(Lcom/fingerprints/service/FingerprintManager;)V

    goto/16 :goto_0

    .line 395
    :pswitch_9
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 396
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 397
    .local v1, "tmpBundle":Landroid/os/Bundle;
    const-string v2, "lastTouch"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 398
    .local v0, "tmpArray":[I
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$500()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "lastTouch"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 403
    .end local v0    # "tmpArray":[I
    .end local v1    # "tmpBundle":Landroid/os/Bundle;
    :pswitch_a
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 404
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 405
    .restart local v1    # "tmpBundle":Landroid/os/Bundle;
    const-string v2, "nextTouch"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 406
    .restart local v0    # "tmpArray":[I
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$500()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "nextTouch"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 411
    .end local v0    # "tmpArray":[I
    .end local v1    # "tmpBundle":Landroid/os/Bundle;
    :pswitch_b
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 412
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 413
    .restart local v1    # "tmpBundle":Landroid/os/Bundle;
    const-string v2, "maskList"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 414
    .restart local v0    # "tmpArray":[I
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$500()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "maskList"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 415
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$500()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "maskNumber"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 420
    .end local v0    # "tmpArray":[I
    .end local v1    # "tmpBundle":Landroid/os/Bundle;
    :pswitch_c
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 421
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$500()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "acceptance"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 422
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$500()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "reject_reason"

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 426
    :pswitch_d
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 427
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$500()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "stitched"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 431
    :pswitch_e
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 432
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$500()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "immobile"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 436
    :pswitch_f
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 437
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$500()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "next_direction"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 441
    :pswitch_10
    iget-object v3, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v3}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 442
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$500()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "progress"

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 443
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_0

    .line 444
    iget-object v3, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # setter for: Lcom/fingerprints/service/FingerprintManager;->mReadyToStore:Z
    invoke-static {v3, v2}, Lcom/fingerprints/service/FingerprintManager;->access$302(Lcom/fingerprints/service/FingerprintManager;Z)Z

    goto/16 :goto_0

    .line 448
    :pswitch_11
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 449
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;->onNoMatch()V

    goto/16 :goto_0

    .line 452
    :pswitch_12
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 453
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/fingerprints/service/FingerprintManager$EnrolCallback;->onEnrollmentFailed()V

    goto/16 :goto_0

    .line 456
    :pswitch_13
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 457
    const-string v2, "FingerprintManager"

    const-string v3, "onFingerDownTimeOut     "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/fingerprints/service/FingerprintManager$EnrolCallback;->onFingerDownTimeOut()V

    goto/16 :goto_0

    .line 463
    :pswitch_14
    iget-object v4, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mDeleteTemplateCallback:Lcom/fingerprints/service/FingerprintManager$DeleteTemplateCallback;
    invoke-static {v4}, Lcom/fingerprints/service/FingerprintManager;->access$600(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$DeleteTemplateCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 464
    const-string v4, "FingerprintManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " MSG_DELETE_RESULT    msg.arg1:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v4, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mDeleteTemplateCallback:Lcom/fingerprints/service/FingerprintManager$DeleteTemplateCallback;
    invoke-static {v4}, Lcom/fingerprints/service/FingerprintManager;->access$600(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$DeleteTemplateCallback;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v2, :cond_4

    :goto_2
    invoke-interface {v4, v2}, Lcom/fingerprints/service/FingerprintManager$DeleteTemplateCallback;->onDeleteResult(Z)V

    goto/16 :goto_0

    :cond_4
    move v2, v3

    goto :goto_2

    .line 346
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_d
        :pswitch_4
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
    .end packed-switch
.end method
