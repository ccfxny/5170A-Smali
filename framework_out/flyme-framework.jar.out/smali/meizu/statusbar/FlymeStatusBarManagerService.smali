.class public Lmeizu/statusbar/FlymeStatusBarManagerService;
.super Lmeizu/statusbar/IFlymeStatusBarService$Stub;
.source "FlymeStatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlymeStatusBarManagerService"


# instance fields
.field private volatile mBar:Lmeizu/statusbar/IFlymeStatusBar;

.field private final mNotificationReplyClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lmeizu/statusbar/IFlymeStatusBarService$Stub;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mNotificationReplyClients:Ljava/util/HashMap;

    .line 19
    return-void
.end method

.method static synthetic access$000(Lmeizu/statusbar/FlymeStatusBarManagerService;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lmeizu/statusbar/FlymeStatusBarManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lmeizu/statusbar/FlymeStatusBarManagerService;->setNotificationReplyingInfoLocked(Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method private setNotificationReplyingInfoLocked(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 78
    if-eqz p2, :cond_0

    invoke-interface {p1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-nez v3, :cond_3

    .line 79
    :cond_0
    iget-object v3, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mNotificationReplyClients:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;

    .line 80
    .local v0, "client":Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;
    if-eqz v0, :cond_1

    .line 81
    iget-object v3, v0, Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;->token:Landroid/os/IBinder;

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 98
    :cond_1
    :goto_0
    iget-object v3, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mBar:Lmeizu/statusbar/IFlymeStatusBar;

    if-eqz v3, :cond_2

    .line 100
    :try_start_0
    iget-object v3, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mBar:Lmeizu/statusbar/IFlymeStatusBar;

    invoke-interface {v3, p2}, Lmeizu/statusbar/IFlymeStatusBar;->setNotificationReplyingInfo(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    :cond_2
    :goto_1
    return-void

    .line 84
    .end local v0    # "client":Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;
    :cond_3
    iget-object v3, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mNotificationReplyClients:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;

    .line 85
    .restart local v0    # "client":Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;
    if-nez v0, :cond_1

    .line 86
    new-instance v0, Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;

    .end local v0    # "client":Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;
    invoke-direct {v0, p0, p1, p2}, Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;-><init>(Lmeizu/statusbar/FlymeStatusBarManagerService;Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 88
    .restart local v0    # "client":Lmeizu/statusbar/FlymeStatusBarManagerService$NotificationReplyClient;
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {p1, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    iget-object v3, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mNotificationReplyClients:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 90
    :catch_0
    move-exception v2

    .line 91
    .local v2, "ex":Landroid/os/RemoteException;
    goto :goto_1

    .line 101
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public registerStatusBar(Lmeizu/statusbar/IFlymeStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lmeizu/statusbar/IFlymeStatusBar;

    .prologue
    .line 35
    iput-object p1, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mBar:Lmeizu/statusbar/IFlymeStatusBar;

    .line 36
    return-void
.end method

.method public releaseAndCloseHeadsUp()V
    .locals 2

    .prologue
    .line 60
    iget-object v1, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mBar:Lmeizu/statusbar/IFlymeStatusBar;

    if-eqz v1, :cond_0

    .line 62
    :try_start_0
    iget-object v1, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mBar:Lmeizu/statusbar/IFlymeStatusBar;

    invoke-interface {v1}, Lmeizu/statusbar/IFlymeStatusBar;->releaseAndCloseHeadsUp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setNotificationReplyingInfo(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/os/Bundle;

    .prologue
    .line 71
    iget-object v1, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mNotificationReplyClients:Ljava/util/HashMap;

    monitor-enter v1

    .line 72
    :try_start_0
    invoke-direct {p0, p1, p2}, Lmeizu/statusbar/FlymeStatusBarManagerService;->setNotificationReplyingInfoLocked(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 73
    monitor-exit v1

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStatusBarColorTheme(IZ)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 49
    iget-object v1, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mBar:Lmeizu/statusbar/IFlymeStatusBar;

    if-eqz v1, :cond_0

    .line 51
    :try_start_0
    iget-object v1, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mBar:Lmeizu/statusbar/IFlymeStatusBar;

    invoke-interface {v1, p1, p2}, Lmeizu/statusbar/IFlymeStatusBar;->setStatusBarColorTheme(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setStatusBarDarkTheme(ZZ)V
    .locals 2
    .param p1, "dark"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 38
    iget-object v1, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mBar:Lmeizu/statusbar/IFlymeStatusBar;

    if-eqz v1, :cond_0

    .line 40
    :try_start_0
    iget-object v1, p0, Lmeizu/statusbar/FlymeStatusBarManagerService;->mBar:Lmeizu/statusbar/IFlymeStatusBar;

    invoke-interface {v1, p1, p2}, Lmeizu/statusbar/IFlymeStatusBar;->setStatusBarDarkTheme(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
