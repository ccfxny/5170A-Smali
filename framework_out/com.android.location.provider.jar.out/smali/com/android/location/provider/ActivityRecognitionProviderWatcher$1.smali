.class Lcom/android/location/provider/ActivityRecognitionProviderWatcher$1;
.super Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;
.source "ActivityRecognitionProviderWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/ActivityRecognitionProviderWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/location/provider/ActivityRecognitionProviderWatcher;


# direct methods
.method constructor <init>(Lcom/android/location/provider/ActivityRecognitionProviderWatcher;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher$1;->this$0:Lcom/android/location/provider/ActivityRecognitionProviderWatcher;

    invoke-direct {p0}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstanceChanged(Landroid/hardware/location/IActivityRecognitionHardware;)V
    .locals 5
    .param p1, "instance"    # Landroid/hardware/location/IActivityRecognitionHardware;

    .prologue
    .line 55
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 56
    .local v0, "callingUid":I
    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    .line 57
    const-string v2, "ActivityRecognitionProviderWatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring calls from non-system server. Uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_0
    return-void

    .line 62
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher$1;->this$0:Lcom/android/location/provider/ActivityRecognitionProviderWatcher;

    new-instance v3, Lcom/android/location/provider/ActivityRecognitionProvider;

    invoke-direct {v3, p1}, Lcom/android/location/provider/ActivityRecognitionProvider;-><init>(Landroid/hardware/location/IActivityRecognitionHardware;)V

    # setter for: Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->mActivityRecognitionProvider:Lcom/android/location/provider/ActivityRecognitionProvider;
    invoke-static {v2, v3}, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->access$002(Lcom/android/location/provider/ActivityRecognitionProviderWatcher;Lcom/android/location/provider/ActivityRecognitionProvider;)Lcom/android/location/provider/ActivityRecognitionProvider;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ActivityRecognitionProviderWatcher"

    const-string v3, "Error creating Hardware Activity-Recognition"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
