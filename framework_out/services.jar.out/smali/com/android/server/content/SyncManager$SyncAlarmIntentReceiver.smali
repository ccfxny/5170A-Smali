.class Lcom/android/server/content/SyncManager$SyncAlarmIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncAlarmIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    .prologue
    .line 990
    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncAlarmIntentReceiver;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncAlarmIntentReceiver;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1100(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 996
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncAlarmIntentReceiver;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->sendSyncAlarmMessage()V
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1200(Lcom/android/server/content/SyncManager;)V

    .line 997
    return-void
.end method
