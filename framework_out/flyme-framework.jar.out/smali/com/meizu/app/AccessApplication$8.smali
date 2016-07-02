.class Lcom/meizu/app/AccessApplication$8;
.super Landroid/os/Handler;
.source "AccessApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/app/AccessApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/app/AccessApplication;


# direct methods
.method constructor <init>(Lcom/meizu/app/AccessApplication;)V
    .locals 0

    .prologue
    .line 660
    iput-object p1, p0, Lcom/meizu/app/AccessApplication$8;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 662
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 664
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 665
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$8;->this$0:Lcom/meizu/app/AccessApplication;

    # getter for: Lcom/meizu/app/AccessApplication;->mIsFromFlymeLauncher:Z
    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->access$600(Lcom/meizu/app/AccessApplication;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$8;->this$0:Lcom/meizu/app/AccessApplication;

    # invokes: Lcom/meizu/app/AccessApplication;->startLauncherIdentiedComp()V
    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->access$700(Lcom/meizu/app/AccessApplication;)V

    goto :goto_0

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$8;->this$0:Lcom/meizu/app/AccessApplication;

    # invokes: Lcom/meizu/app/AccessApplication;->startIdentiedComp()V
    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->access$800(Lcom/meizu/app/AccessApplication;)V

    goto :goto_0

    .line 671
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 675
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$8;->this$0:Lcom/meizu/app/AccessApplication;

    # getter for: Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;
    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->access$1000(Lcom/meizu/app/AccessApplication;)Lcom/meizu/widget/SystemLockView;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/app/AccessApplication$8;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-virtual {v1}, Lcom/meizu/app/AccessApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xa0a009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$8;->this$0:Lcom/meizu/app/AccessApplication;

    iget-object v1, p0, Lcom/meizu/app/AccessApplication$8;->this$0:Lcom/meizu/app/AccessApplication;

    # getter for: Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;
    invoke-static {v1}, Lcom/meizu/app/AccessApplication;->access$1000(Lcom/meizu/app/AccessApplication;)Lcom/meizu/widget/SystemLockView;

    move-result-object v1

    const v2, 0xa0f00d1

    invoke-virtual {v1, v2}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/meizu/app/AccessApplication;->startShakeAnim(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/meizu/app/AccessApplication;->access$1100(Lcom/meizu/app/AccessApplication;Landroid/view/View;)V

    .line 679
    new-instance v0, Lcom/meizu/app/AccessApplication$8$1;

    invoke-direct {v0, p0}, Lcom/meizu/app/AccessApplication$8$1;-><init>(Lcom/meizu/app/AccessApplication$8;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/meizu/app/AccessApplication$8;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 662
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
