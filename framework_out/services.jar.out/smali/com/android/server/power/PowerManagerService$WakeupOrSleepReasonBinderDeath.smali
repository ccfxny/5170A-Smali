.class final Lcom/android/server/power/PowerManagerService$WakeupOrSleepReasonBinderDeath;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WakeupOrSleepReasonBinderDeath"
.end annotation


# instance fields
.field private mListener:Lcom/android/server/power/PowerManagerService$PowerManagerWakeupOrSleepReasonListener;

.field private mTag:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;ILcom/android/server/power/PowerManagerService$PowerManagerWakeupOrSleepReasonListener;)V
    .locals 0
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "listener"    # Lcom/android/server/power/PowerManagerService$PowerManagerWakeupOrSleepReasonListener;

    .prologue
    .line 4433
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$WakeupOrSleepReasonBinderDeath;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4434
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$WakeupOrSleepReasonBinderDeath;->mTag:Ljava/lang/String;

    .line 4435
    iput p3, p0, Lcom/android/server/power/PowerManagerService$WakeupOrSleepReasonBinderDeath;->mUid:I

    .line 4436
    iput-object p4, p0, Lcom/android/server/power/PowerManagerService$WakeupOrSleepReasonBinderDeath;->mListener:Lcom/android/server/power/PowerManagerService$PowerManagerWakeupOrSleepReasonListener;

    .line 4437
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 4440
    monitor-enter p0

    .line 4441
    :try_start_0
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Death received from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$WakeupOrSleepReasonBinderDeath;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/PowerManagerService$WakeupOrSleepReasonBinderDeath;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4442
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeupOrSleepReasonBinderDeath;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeupOrSleepListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$7600(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeupOrSleepReasonBinderDeath;->mListener:Lcom/android/server/power/PowerManagerService$PowerManagerWakeupOrSleepReasonListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4443
    monitor-exit p0

    .line 4444
    return-void

    .line 4443
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
