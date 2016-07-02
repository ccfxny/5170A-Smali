.class Lcom/meizu/app/AccessApplication$8$1;
.super Ljava/lang/Object;
.source "AccessApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/app/AccessApplication$8;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/app/AccessApplication$8;


# direct methods
.method constructor <init>(Lcom/meizu/app/AccessApplication$8;)V
    .locals 0

    .prologue
    .line 679
    iput-object p1, p0, Lcom/meizu/app/AccessApplication$8$1;->this$1:Lcom/meizu/app/AccessApplication$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 683
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$8$1;->this$1:Lcom/meizu/app/AccessApplication$8;

    iget-object v0, v0, Lcom/meizu/app/AccessApplication$8;->this$0:Lcom/meizu/app/AccessApplication;

    # getter for: Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;
    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->access$1000(Lcom/meizu/app/AccessApplication;)Lcom/meizu/widget/SystemLockView;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/app/AccessApplication$8$1;->this$1:Lcom/meizu/app/AccessApplication$8;

    iget-object v1, v1, Lcom/meizu/app/AccessApplication$8;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-virtual {v1}, Lcom/meizu/app/AccessApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xa0a00b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    .line 685
    return-void
.end method
