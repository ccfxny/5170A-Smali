.class Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;
.super Landroid/app/PackageInstallObserver;
.source "Pm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/pm/Pm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalPackageInstallObserver"
.end annotation


# instance fields
.field extraPackage:Ljava/lang/String;

.field extraPermission:Ljava/lang/String;

.field finished:Z

.field result:I

.field final synthetic this$0:Lcom/android/commands/pm/Pm;


# direct methods
.method constructor <init>(Lcom/android/commands/pm/Pm;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;->this$0:Lcom/android/commands/pm/Pm;

    invoke-direct {p0}, Landroid/app/PackageInstallObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 762
    monitor-enter p0

    .line 763
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;->finished:Z

    .line 764
    iput p2, p0, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;->result:I

    .line 765
    const/16 v0, -0x70

    if-ne p2, v0, :cond_0

    .line 766
    const-string v0, "android.content.pm.extra.FAILURE_EXISTING_PERMISSION"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;->extraPermission:Ljava/lang/String;

    .line 768
    const-string v0, "android.content.pm.extra.FAILURE_EXISTING_PACKAGE"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;->extraPackage:Ljava/lang/String;

    .line 771
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 772
    monitor-exit p0

    .line 773
    return-void

    .line 772
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
