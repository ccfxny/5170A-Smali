.class Lcom/meizu/app/AccessApplication$4$1;
.super Lcom/meizu/account/validate/IMzAccountBusinessResponse$Stub;
.source "AccessApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/app/AccessApplication$4;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/app/AccessApplication$4;


# direct methods
.method constructor <init>(Lcom/meizu/app/AccessApplication$4;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/meizu/app/AccessApplication$4$1;->this$1:Lcom/meizu/app/AccessApplication$4;

    invoke-direct {p0}, Lcom/meizu/account/validate/IMzAccountBusinessResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public handleAccountNotLogin(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 285
    const-string v0, "AccessApplication"

    const-string v1, "handleAccountNotLogin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "ErrorMsg"    # Ljava/lang/String;

    .prologue
    .line 290
    const-string v0, "AccessApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 279
    const-string v0, "AccessApplication"

    const-string v1, "onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$4$1;->this$1:Lcom/meizu/app/AccessApplication$4;

    iget-object v0, v0, Lcom/meizu/app/AccessApplication$4;->this$0:Lcom/meizu/app/AccessApplication;

    # invokes: Lcom/meizu/app/AccessApplication;->startVerifyFlymeAccount(Landroid/os/Bundle;)V
    invoke-static {v0, p1}, Lcom/meizu/app/AccessApplication;->access$200(Lcom/meizu/app/AccessApplication;Landroid/os/Bundle;)V

    .line 281
    return-void
.end method
