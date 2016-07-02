.class Lcom/android/server/storage/DeviceStorageMonitorService$1$1;
.super Ljava/lang/Object;
.source "DeviceStorageMonitorService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/storage/DeviceStorageMonitorService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/storage/DeviceStorageMonitorService$1;


# direct methods
.method constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService$1;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1$1;->this$1:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 220
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1$1;->this$1:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    iget-object v2, v2, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;
    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$300(Lcom/android/server/storage/DeviceStorageMonitorService;)Lcom/android/server/storage/DeviceStorageMonitorInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->createIntent()Landroid/content/Intent;

    move-result-object v1

    .line 221
    .local v1, "mIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 223
    :try_start_0
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1$1;->this$1:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    iget-object v2, v2, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
