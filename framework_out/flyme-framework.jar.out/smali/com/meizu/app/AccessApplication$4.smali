.class Lcom/meizu/app/AccessApplication$4;
.super Ljava/lang/Object;
.source "AccessApplication.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/app/AccessApplication;->handleForgetPasswordClick()V
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
    .line 263
    iput-object p1, p0, Lcom/meizu/app/AccessApplication$4;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 266
    const-string v3, "AccessApplication"

    const-string v4, "onServiceConntected.."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-static {p2}, Lcom/meizu/account/validate/IMzAccountBusiness$Stub;->asInterface(Landroid/os/IBinder;)Lcom/meizu/account/validate/IMzAccountBusiness;

    move-result-object v2

    .line 269
    .local v2, "iMzAccountBusiness":Lcom/meizu/account/validate/IMzAccountBusiness;
    if-eqz v2, :cond_0

    .line 270
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 271
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "BUSINESS_NAME"

    const-string v4, "validate_password"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v3, "PACKAGE_NAME"

    iget-object v4, p0, Lcom/meizu/app/AccessApplication$4;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-virtual {v4}, Lcom/meizu/app/AccessApplication;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v3, "Validate_Title"

    iget-object v4, p0, Lcom/meizu/app/AccessApplication$4;->this$0:Lcom/meizu/app/AccessApplication;

    # invokes: Lcom/meizu/app/AccessApplication;->getFlymeAccountName()Ljava/lang/String;
    invoke-static {v4}, Lcom/meizu/app/AccessApplication;->access$100(Lcom/meizu/app/AccessApplication;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :try_start_0
    new-instance v3, Lcom/meizu/app/AccessApplication$4$1;

    invoke-direct {v3, p0}, Lcom/meizu/app/AccessApplication$4$1;-><init>(Lcom/meizu/app/AccessApplication$4;)V

    invoke-interface {v2, v0, v3}, Lcom/meizu/account/validate/IMzAccountBusiness;->doBusiness(Landroid/os/Bundle;Lcom/meizu/account/validate/IMzAccountBusinessResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 293
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 301
    const-string v0, "AccessApplication"

    const-string v1, "onServiceDisconntected.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$4;->this$0:Lcom/meizu/app/AccessApplication;

    const/4 v1, 0x0

    # setter for: Lcom/meizu/app/AccessApplication;->mFlymeAccountServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v0, v1}, Lcom/meizu/app/AccessApplication;->access$302(Lcom/meizu/app/AccessApplication;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 303
    return-void
.end method
