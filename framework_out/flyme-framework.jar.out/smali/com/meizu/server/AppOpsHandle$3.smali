.class Lcom/meizu/server/AppOpsHandle$3;
.super Ljava/lang/Object;
.source "AppOpsHandle.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/server/AppOpsHandle;->showSettingDialog(Landroid/content/Context;ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/server/AppOpsHandle;

.field final synthetic val$remember:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/meizu/server/AppOpsHandle;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/meizu/server/AppOpsHandle$3;->this$0:Lcom/meizu/server/AppOpsHandle;

    iput-object p2, p0, Lcom/meizu/server/AppOpsHandle$3;->val$remember:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v2, 0x0

    .line 253
    iget-object v0, p0, Lcom/meizu/server/AppOpsHandle$3;->val$remember:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/meizu/server/AppOpsHandle$3;->this$0:Lcom/meizu/server/AppOpsHandle;

    const/4 v1, 0x1

    # invokes: Lcom/meizu/server/AppOpsHandle;->update(Landroid/content/DialogInterface;ZZZ)V
    invoke-static {v0, p1, v2, v2, v1}, Lcom/meizu/server/AppOpsHandle;->access$300(Lcom/meizu/server/AppOpsHandle;Landroid/content/DialogInterface;ZZZ)V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/meizu/server/AppOpsHandle$3;->this$0:Lcom/meizu/server/AppOpsHandle;

    # invokes: Lcom/meizu/server/AppOpsHandle;->update(Landroid/content/DialogInterface;ZZZ)V
    invoke-static {v0, p1, v2, v2, v2}, Lcom/meizu/server/AppOpsHandle;->access$300(Lcom/meizu/server/AppOpsHandle;Landroid/content/DialogInterface;ZZZ)V

    goto :goto_0
.end method
