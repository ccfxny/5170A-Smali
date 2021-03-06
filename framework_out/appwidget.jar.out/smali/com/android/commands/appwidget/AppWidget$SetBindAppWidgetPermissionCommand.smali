.class Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;
.super Ljava/lang/Object;
.source "AppWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/appwidget/AppWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetBindAppWidgetPermissionCommand"
.end annotation


# instance fields
.field final mGranted:Z

.field final mPackageName:Ljava/lang/String;

.field final mUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "granted"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;->mPackageName:Ljava/lang/String;

    .line 144
    iput-boolean p2, p0, Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;->mGranted:Z

    .line 145
    iput p3, p0, Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;->mUserId:I

    .line 146
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 150
    const-string v3, "appwidget"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 151
    .local v1, "binder":Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v0

    .line 153
    .local v0, "appWidgetService":Lcom/android/internal/appwidget/IAppWidgetService;
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;->mUserId:I

    iget-boolean v5, p0, Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;->mGranted:Z

    invoke-interface {v0, v3, v4, v5}, Lcom/android/internal/appwidget/IAppWidgetService;->setBindAppWidgetPermission(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v2

    .line 155
    .local v2, "re":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
