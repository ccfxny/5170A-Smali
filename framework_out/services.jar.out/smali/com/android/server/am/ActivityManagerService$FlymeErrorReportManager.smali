.class Lcom/android/server/am/ActivityManagerService$FlymeErrorReportManager;
.super Landroid/app/IFlymeErrorReportManager$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlymeErrorReportManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .prologue
    .line 22810
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$FlymeErrorReportManager;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/app/IFlymeErrorReportManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setFlymeErrorListener(Landroid/app/IApplicationErrorListener;)V
    .locals 1
    .param p1, "applicationErrorListener"    # Landroid/app/IApplicationErrorListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 22816
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$FlymeErrorReportManager;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->setErrorListener(Landroid/app/IApplicationErrorListener;)V

    .line 22817
    return-void
.end method
