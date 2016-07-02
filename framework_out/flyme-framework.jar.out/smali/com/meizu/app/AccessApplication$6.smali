.class Lcom/meizu/app/AccessApplication$6;
.super Landroid/content/BroadcastReceiver;
.source "AccessApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/app/AccessApplication;->registerAccessControlReceiver()V
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
    .line 461
    iput-object p1, p0, Lcom/meizu/app/AccessApplication$6;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 463
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACCESS_CONTROL_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$6;->this$0:Lcom/meizu/app/AccessApplication;

    # invokes: Lcom/meizu/app/AccessApplication;->checkAppAccesstrol()V
    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->access$400(Lcom/meizu/app/AccessApplication;)V

    .line 467
    :cond_0
    return-void
.end method
