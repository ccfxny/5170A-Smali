.class Lorg/gsma/joyn/gsh/GeolocSharingService$1;
.super Ljava/lang/Object;
.source "GeolocSharingService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/gsh/GeolocSharingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gsma/joyn/gsh/GeolocSharingService;


# direct methods
.method constructor <init>(Lorg/gsma/joyn/gsh/GeolocSharingService;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lorg/gsma/joyn/gsh/GeolocSharingService$1;->this$0:Lorg/gsma/joyn/gsh/GeolocSharingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 111
    const-string v3, "TAPI-GeolocSharingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceConnected entry "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {p2}, Lorg/gsma/joyn/ICoreServiceWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ICoreServiceWrapper;

    move-result-object v2

    .line 113
    .local v2, "mCoreServiceWrapperBinder":Lorg/gsma/joyn/ICoreServiceWrapper;
    const/4 v0, 0x0

    .line 115
    .local v0, "binder":Landroid/os/IBinder;
    :try_start_0
    invoke-interface {v2}, Lorg/gsma/joyn/ICoreServiceWrapper;->getGeolocServiceBinder()Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 119
    :goto_0
    iget-object v3, p0, Lorg/gsma/joyn/gsh/GeolocSharingService$1;->this$0:Lorg/gsma/joyn/gsh/GeolocSharingService;

    invoke-static {v0}, Lorg/gsma/joyn/gsh/IGeolocSharingService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/gsh/IGeolocSharingService;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/gsma/joyn/gsh/GeolocSharingService;->setApi(Landroid/os/IInterface;)V

    .line 120
    iget-object v3, p0, Lorg/gsma/joyn/gsh/GeolocSharingService$1;->this$0:Lorg/gsma/joyn/gsh/GeolocSharingService;

    # getter for: Lorg/gsma/joyn/gsh/GeolocSharingService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;
    invoke-static {v3}, Lorg/gsma/joyn/gsh/GeolocSharingService;->access$000(Lorg/gsma/joyn/gsh/GeolocSharingService;)Lorg/gsma/joyn/JoynServiceListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 121
    iget-object v3, p0, Lorg/gsma/joyn/gsh/GeolocSharingService$1;->this$0:Lorg/gsma/joyn/gsh/GeolocSharingService;

    # getter for: Lorg/gsma/joyn/gsh/GeolocSharingService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;
    invoke-static {v3}, Lorg/gsma/joyn/gsh/GeolocSharingService;->access$100(Lorg/gsma/joyn/gsh/GeolocSharingService;)Lorg/gsma/joyn/JoynServiceListener;

    move-result-object v3

    invoke-interface {v3}, Lorg/gsma/joyn/JoynServiceListener;->onServiceConnected()V

    .line 123
    :cond_0
    return-void

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e1":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 126
    const-string v0, "TAPI-GeolocSharingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lorg/gsma/joyn/gsh/GeolocSharingService$1;->this$0:Lorg/gsma/joyn/gsh/GeolocSharingService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/gsma/joyn/gsh/GeolocSharingService;->setApi(Landroid/os/IInterface;)V

    .line 128
    iget-object v0, p0, Lorg/gsma/joyn/gsh/GeolocSharingService$1;->this$0:Lorg/gsma/joyn/gsh/GeolocSharingService;

    # getter for: Lorg/gsma/joyn/gsh/GeolocSharingService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;
    invoke-static {v0}, Lorg/gsma/joyn/gsh/GeolocSharingService;->access$200(Lorg/gsma/joyn/gsh/GeolocSharingService;)Lorg/gsma/joyn/JoynServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/gsma/joyn/gsh/GeolocSharingService$1;->this$0:Lorg/gsma/joyn/gsh/GeolocSharingService;

    # getter for: Lorg/gsma/joyn/gsh/GeolocSharingService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;
    invoke-static {v0}, Lorg/gsma/joyn/gsh/GeolocSharingService;->access$300(Lorg/gsma/joyn/gsh/GeolocSharingService;)Lorg/gsma/joyn/JoynServiceListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lorg/gsma/joyn/JoynServiceListener;->onServiceDisconnected(I)V

    .line 131
    :cond_0
    return-void
.end method
