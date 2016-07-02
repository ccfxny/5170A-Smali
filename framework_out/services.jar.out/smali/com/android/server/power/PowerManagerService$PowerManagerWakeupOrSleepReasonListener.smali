.class final Lcom/android/server/power/PowerManagerService$PowerManagerWakeupOrSleepReasonListener;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerManagerWakeupOrSleepReasonListener"
.end annotation


# instance fields
.field public mCallback:Landroid/os/IPowerManagerWakeupOrSleepReasonCallback;

.field public mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IPowerManagerWakeupOrSleepReasonCallback;Ljava/lang/String;)V
    .locals 0
    .param p2, "callback"    # Landroid/os/IPowerManagerWakeupOrSleepReasonCallback;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 4419
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerWakeupOrSleepReasonListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4420
    iput-object p3, p0, Lcom/android/server/power/PowerManagerService$PowerManagerWakeupOrSleepReasonListener;->mTag:Ljava/lang/String;

    .line 4421
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$PowerManagerWakeupOrSleepReasonListener;->mCallback:Landroid/os/IPowerManagerWakeupOrSleepReasonCallback;

    .line 4422
    return-void
.end method
