.class final Lcom/android/server/dreams/DreamManagerService$BinderService;
.super Landroid/service/dreams/IDreamManager$Stub;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Landroid/service/dreams/IDreamManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/dreams/DreamManagerService;
    .param p2, "x1"    # Lcom/android/server/dreams/DreamManagerService$1;

    .prologue
    .line 491
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService$BinderService;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    return-void
.end method


# virtual methods
.method public awaken()V
    .locals 4

    .prologue
    .line 599
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v3, "android.permission.WRITE_DREAM_STATE"

    # invokes: Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/dreams/DreamManagerService;->access$900(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 601
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 603
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # invokes: Lcom/android/server/dreams/DreamManagerService;->requestAwakenInternal()V
    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->access$1600(Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 607
    return-void

    .line 605
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public dream()V
    .locals 4

    .prologue
    .line 563
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v3, "android.permission.WRITE_DREAM_STATE"

    # invokes: Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/dreams/DreamManagerService;->access$900(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 565
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 567
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # invokes: Lcom/android/server/dreams/DreamManagerService;->requestDreamInternal()V
    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->access$1400(Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 571
    return-void

    .line 569
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 494
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # getter for: Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->access$700(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump DreamManager from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 508
    :goto_0
    return-void

    .line 502
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 504
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # invokes: Lcom/android/server/dreams/DreamManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
    invoke-static {v2, p2}, Lcom/android/server/dreams/DreamManagerService;->access$800(Lcom/android/server/dreams/DreamManagerService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public finishSelf(Landroid/os/IBinder;Z)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "immediate"    # Z

    .prologue
    .line 612
    if-nez p1, :cond_0

    .line 613
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "token must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 616
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 618
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # invokes: Lcom/android/server/dreams/DreamManagerService;->finishSelfInternal(Landroid/os/IBinder;Z)V
    invoke-static {v2, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->access$1700(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 622
    return-void

    .line 620
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getDefaultDreamComponent()Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 538
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v4, "android.permission.READ_DREAM_STATE"

    # invokes: Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/dreams/DreamManagerService;->access$900(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 540
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 541
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 543
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # invokes: Lcom/android/server/dreams/DreamManagerService;->getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;
    invoke-static {v3, v2}, Lcom/android/server/dreams/DreamManagerService;->access$1200(Lcom/android/server/dreams/DreamManagerService;I)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 545
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getDreamComponents()[Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 512
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v4, "android.permission.READ_DREAM_STATE"

    # invokes: Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/dreams/DreamManagerService;->access$900(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 514
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 515
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 517
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # invokes: Lcom/android/server/dreams/DreamManagerService;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;
    invoke-static {v3, v2}, Lcom/android/server/dreams/DreamManagerService;->access$1000(Lcom/android/server/dreams/DreamManagerService;I)[Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 519
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isDreaming()Z
    .locals 4

    .prologue
    .line 551
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v3, "android.permission.READ_DREAM_STATE"

    # invokes: Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/dreams/DreamManagerService;->access$900(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 553
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 555
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # invokes: Lcom/android/server/dreams/DreamManagerService;->isDreamingInternal()Z
    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->access$1300(Lcom/android/server/dreams/DreamManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 557
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public removeToken(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 632
    if-nez p1, :cond_0

    .line 633
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "token must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 636
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 638
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # invokes: Lcom/android/server/dreams/DreamManagerService;->removeTokenInternal(Landroid/os/IBinder;)V
    invoke-static {v2, p1}, Lcom/android/server/dreams/DreamManagerService;->access$1800(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 642
    return-void

    .line 640
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setDreamComponents([Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "componentNames"    # [Landroid/content/ComponentName;

    .prologue
    .line 525
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v4, "android.permission.WRITE_DREAM_STATE"

    # invokes: Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/dreams/DreamManagerService;->access$900(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 527
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 528
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 530
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # invokes: Lcom/android/server/dreams/DreamManagerService;->setDreamComponentsForUser(I[Landroid/content/ComponentName;)V
    invoke-static {v3, v2, p1}, Lcom/android/server/dreams/DreamManagerService;->access$1100(Lcom/android/server/dreams/DreamManagerService;I[Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 534
    return-void

    .line 532
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public startDozing(Landroid/os/IBinder;II)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "screenState"    # I
    .param p3, "screenBrightness"    # I

    .prologue
    .line 648
    if-nez p1, :cond_0

    .line 649
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "token must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 652
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 654
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # invokes: Lcom/android/server/dreams/DreamManagerService;->startDozingInternal(Landroid/os/IBinder;II)V
    invoke-static {v2, p1, p2, p3}, Lcom/android/server/dreams/DreamManagerService;->access$1900(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 658
    return-void

    .line 656
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public stopDozing(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 663
    if-nez p1, :cond_0

    .line 664
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "token must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 667
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 669
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # invokes: Lcom/android/server/dreams/DreamManagerService;->stopDozingInternal(Landroid/os/IBinder;)V
    invoke-static {v2, p1}, Lcom/android/server/dreams/DreamManagerService;->access$2000(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 673
    return-void

    .line 671
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public testDream(Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "dream"    # Landroid/content/ComponentName;

    .prologue
    .line 575
    if-nez p1, :cond_0

    .line 576
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "dream must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 578
    :cond_0
    iget-object v4, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v5, "android.permission.WRITE_DREAM_STATE"

    # invokes: Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/dreams/DreamManagerService;->access$900(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 580
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 581
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 582
    .local v1, "currentUserId":I
    if-eq v0, v1, :cond_1

    .line 584
    const-string v4, "DreamManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Aborted attempt to start a test dream while a different  user is active: callingUserId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", currentUserId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :goto_0
    return-void

    .line 589
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 591
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # invokes: Lcom/android/server/dreams/DreamManagerService;->testDreamInternal(Landroid/content/ComponentName;I)V
    invoke-static {v4, p1, v0}, Lcom/android/server/dreams/DreamManagerService;->access$1500(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
