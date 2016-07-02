.class Lcom/android/server/am/AppErrorDialog$1;
.super Landroid/os/Handler;
.source "AppErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppErrorDialog;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 161
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 162
    const-class v2, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 163
    .local v0, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->createIntent()Landroid/content/Intent;

    move-result-object v1

    .line 165
    .local v1, "mIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 166
    iget-object v2, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/AppErrorDialog;->access$000(Lcom/android/server/am/AppErrorDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 176
    .end local v0    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    iget v3, p1, Landroid/os/Message;->what:I

    # setter for: Lcom/android/server/am/AppErrorDialog;->mResultType:I
    invoke-static {v2, v3}, Lcom/android/server/am/AppErrorDialog;->access$102(Lcom/android/server/am/AppErrorDialog;I)I

    .line 179
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/am/AppErrorDialog$1;->removeMessages(I)V

    .line 183
    iget-object v2, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-virtual {v2}, Lcom/android/server/am/AppErrorDialog;->dismiss()V

    .line 184
    return-void
.end method
