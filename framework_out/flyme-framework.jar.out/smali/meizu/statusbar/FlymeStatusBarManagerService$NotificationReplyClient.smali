.class Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;
.super Ljava/lang/Object;
.source "FlymeStatusBarManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu/statusbar/FlymeStatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationReplyClient"
.end annotation


# instance fields
.field info:Landroid/os/Bundle;

.field final synthetic this$0:Lmeizu/statusbar/FlymeStatusBarManagerService;

.field token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lmeizu/statusbar/FlymeStatusBarManagerService;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "info"    # Landroid/os/Bundle;

    .prologue
    .line 23
    iput-object p1, p0, Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;->this$0:Lmeizu/statusbar/FlymeStatusBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;->token:Landroid/os/IBinder;

    .line 25
    iput-object p3, p0, Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;->info:Landroid/os/Bundle;

    .line 26
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;->this$0:Lmeizu/statusbar/FlymeStatusBarManagerService;

    iget-object v1, p0, Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    # invokes: Lmeizu/statusbar/FlymeStatusBarManagerService;->setNotificationReplyingInfoLocked(Landroid/os/IBinder;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2}, Lmeizu/statusbar/FlymeStatusBarManagerService;->access$000(Lmeizu/statusbar/FlymeStatusBarManagerService;Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 30
    iget-object v0, p0, Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 31
    return-void
.end method
