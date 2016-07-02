.class public Lcom/meizu/server/FlymePermissionService;
.super Lmeizu/security/IFlymePermissionService$Stub;
.source "FlymePermissionService.java"


# static fields
.field public static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PermissionControl"


# instance fields
.field appOpsHandle:Lcom/meizu/server/AppOpsHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/meizu/server/FlymePermissionService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Lmeizu/security/IFlymePermissionService$Stub;-><init>()V

    .line 26
    sget-boolean v0, Lcom/meizu/server/FlymePermissionService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PermissionControl"

    const-string v1, "PermissionControlService construct"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    new-instance v0, Lcom/meizu/server/AppOpsHandle;

    invoke-direct {v0, p1}, Lcom/meizu/server/AppOpsHandle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/server/FlymePermissionService;->appOpsHandle:Lcom/meizu/server/AppOpsHandle;

    .line 29
    return-void
.end method


# virtual methods
.method checkComponentPermission(Ljava/lang/String;)I
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 65
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 67
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 68
    const/4 v2, 0x0

    .line 71
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v2

    goto :goto_0
.end method

.method public connectSocketService(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 56
    sget-boolean v1, Lcom/meizu/server/FlymePermissionService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "PermissionControl"

    const-string v2, "connectSocketService in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    new-instance v0, Lcom/meizu/server/SocketService;

    invoke-direct {v0}, Lcom/meizu/server/SocketService;-><init>()V

    .line 58
    .local v0, "service":Lcom/meizu/server/SocketService;
    invoke-virtual {v0, p1}, Lcom/meizu/server/SocketService;->handleMessage(Landroid/os/Message;)V

    .line 59
    return-void
.end method

.method public forceKillProcess(I)V
    .locals 4
    .param p1, "pid"    # I

    .prologue
    .line 41
    const-string v1, "android.permission.FORCE_KILL_PROCESS"

    invoke-virtual {p0, v1}, Lcom/meizu/server/FlymePermissionService;->checkComponentPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: forceStopPackage() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires android.permission.FORCE_KILL_PROCESS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "PermissionControl"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    const-string v1, "PermissionControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force kill process pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " by AMS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 52
    return-void
.end method

.method public noteIntentOperation(IILjava/lang/String;Landroid/content/Intent;)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    sget-boolean v0, Lcom/meizu/server/FlymePermissionService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PermissionControl"

    const-string v1, "noteIntentOperation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/meizu/server/FlymePermissionService;->appOpsHandle:Lcom/meizu/server/AppOpsHandle;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/server/AppOpsHandle;->handleIntentOperation(IILjava/lang/String;Lcom/meizu/server/FlymePermissionService;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method
