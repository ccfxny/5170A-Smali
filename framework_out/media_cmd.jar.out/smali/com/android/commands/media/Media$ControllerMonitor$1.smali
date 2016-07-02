.class Lcom/android/commands/media/Media$ControllerMonitor$1;
.super Landroid/os/HandlerThread;
.source "Media.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/commands/media/Media$ControllerMonitor;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/commands/media/Media$ControllerMonitor;


# direct methods
.method constructor <init>(Lcom/android/commands/media/Media$ControllerMonitor;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/commands/media/Media$ControllerMonitor$1;->this$1:Lcom/android/commands/media/Media$ControllerMonitor;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 3

    .prologue
    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/media/Media$ControllerMonitor$1;->this$1:Lcom/android/commands/media/Media$ControllerMonitor;

    # getter for: Lcom/android/commands/media/Media$ControllerMonitor;->mController:Landroid/media/session/ISessionController;
    invoke-static {v1}, Lcom/android/commands/media/Media$ControllerMonitor;->access$000(Lcom/android/commands/media/Media$ControllerMonitor;)Landroid/media/session/ISessionController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/commands/media/Media$ControllerMonitor$1;->this$1:Lcom/android/commands/media/Media$ControllerMonitor;

    invoke-interface {v1, v2}, Landroid/media/session/ISessionController;->registerCallbackListener(Landroid/media/session/ISessionControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Error registering monitor callback"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
