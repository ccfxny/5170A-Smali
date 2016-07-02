.class Lcom/meizu/app/AccessApplication$7;
.super Ljava/lang/Object;
.source "AccessApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/app/AccessApplication;->verifyThePassword(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/app/AccessApplication;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/app/AccessApplication;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/meizu/app/AccessApplication$7;->this$0:Lcom/meizu/app/AccessApplication;

    iput-object p2, p0, Lcom/meizu/app/AccessApplication$7;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 513
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$7;->this$0:Lcom/meizu/app/AccessApplication;

    iget-object v1, p0, Lcom/meizu/app/AccessApplication$7;->val$password:Ljava/lang/String;

    # invokes: Lcom/meizu/app/AccessApplication;->checkPassword(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/meizu/app/AccessApplication;->access$500(Lcom/meizu/app/AccessApplication;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$7;->this$0:Lcom/meizu/app/AccessApplication;

    # getter for: Lcom/meizu/app/AccessApplication;->mIsFromFlymeLauncher:Z
    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->access$600(Lcom/meizu/app/AccessApplication;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$7;->this$0:Lcom/meizu/app/AccessApplication;

    # invokes: Lcom/meizu/app/AccessApplication;->startLauncherIdentiedComp()V
    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->access$700(Lcom/meizu/app/AccessApplication;)V

    .line 525
    :goto_0
    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$7;->this$0:Lcom/meizu/app/AccessApplication;

    # invokes: Lcom/meizu/app/AccessApplication;->startIdentiedComp()V
    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->access$800(Lcom/meizu/app/AccessApplication;)V

    goto :goto_0

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$7;->this$0:Lcom/meizu/app/AccessApplication;

    # invokes: Lcom/meizu/app/AccessApplication;->checkNeedShowForgetPassword()V
    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->access$900(Lcom/meizu/app/AccessApplication;)V

    .line 521
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$7;->this$0:Lcom/meizu/app/AccessApplication;

    # getter for: Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;
    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->access$1000(Lcom/meizu/app/AccessApplication;)Lcom/meizu/widget/SystemLockView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SystemLockView;->clearCell(Z)V

    .line 522
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$7;->this$0:Lcom/meizu/app/AccessApplication;

    # getter for: Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;
    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->access$1000(Lcom/meizu/app/AccessApplication;)Lcom/meizu/widget/SystemLockView;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/app/AccessApplication$7;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-virtual {v1}, Lcom/meizu/app/AccessApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xa0a00b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SystemLockView;->setTipAnimShake(Ljava/lang/String;)V

    goto :goto_0
.end method
