.class Lorg/gsma/joyn/ish/ImageSharingService$1;
.super Ljava/lang/Object;
.source "ImageSharingService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/ish/ImageSharingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gsma/joyn/ish/ImageSharingService;


# direct methods
.method constructor <init>(Lorg/gsma/joyn/ish/ImageSharingService;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lorg/gsma/joyn/ish/ImageSharingService$1;->this$0:Lorg/gsma/joyn/ish/ImageSharingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 110
    invoke-static {p2}, Lorg/gsma/joyn/ICoreServiceWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ICoreServiceWrapper;

    move-result-object v2

    .line 111
    .local v2, "mCoreServiceWrapperBinder":Lorg/gsma/joyn/ICoreServiceWrapper;
    const/4 v0, 0x0

    .line 113
    .local v0, "binder":Landroid/os/IBinder;
    :try_start_0
    invoke-interface {v2}, Lorg/gsma/joyn/ICoreServiceWrapper;->getImageSharingServiceBinder()Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 117
    :goto_0
    iget-object v3, p0, Lorg/gsma/joyn/ish/ImageSharingService$1;->this$0:Lorg/gsma/joyn/ish/ImageSharingService;

    invoke-static {v0}, Lorg/gsma/joyn/ish/IImageSharingService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ish/IImageSharingService;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/gsma/joyn/ish/ImageSharingService;->setApi(Landroid/os/IInterface;)V

    .line 118
    iget-object v3, p0, Lorg/gsma/joyn/ish/ImageSharingService$1;->this$0:Lorg/gsma/joyn/ish/ImageSharingService;

    # getter for: Lorg/gsma/joyn/ish/ImageSharingService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;
    invoke-static {v3}, Lorg/gsma/joyn/ish/ImageSharingService;->access$000(Lorg/gsma/joyn/ish/ImageSharingService;)Lorg/gsma/joyn/JoynServiceListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 119
    iget-object v3, p0, Lorg/gsma/joyn/ish/ImageSharingService$1;->this$0:Lorg/gsma/joyn/ish/ImageSharingService;

    # getter for: Lorg/gsma/joyn/ish/ImageSharingService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;
    invoke-static {v3}, Lorg/gsma/joyn/ish/ImageSharingService;->access$100(Lorg/gsma/joyn/ish/ImageSharingService;)Lorg/gsma/joyn/JoynServiceListener;

    move-result-object v3

    invoke-interface {v3}, Lorg/gsma/joyn/JoynServiceListener;->onServiceConnected()V

    .line 121
    :cond_0
    return-void

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e1":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 124
    iget-object v0, p0, Lorg/gsma/joyn/ish/ImageSharingService$1;->this$0:Lorg/gsma/joyn/ish/ImageSharingService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/gsma/joyn/ish/ImageSharingService;->setApi(Landroid/os/IInterface;)V

    .line 125
    iget-object v0, p0, Lorg/gsma/joyn/ish/ImageSharingService$1;->this$0:Lorg/gsma/joyn/ish/ImageSharingService;

    # getter for: Lorg/gsma/joyn/ish/ImageSharingService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;
    invoke-static {v0}, Lorg/gsma/joyn/ish/ImageSharingService;->access$200(Lorg/gsma/joyn/ish/ImageSharingService;)Lorg/gsma/joyn/JoynServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lorg/gsma/joyn/ish/ImageSharingService$1;->this$0:Lorg/gsma/joyn/ish/ImageSharingService;

    # getter for: Lorg/gsma/joyn/ish/ImageSharingService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;
    invoke-static {v0}, Lorg/gsma/joyn/ish/ImageSharingService;->access$300(Lorg/gsma/joyn/ish/ImageSharingService;)Lorg/gsma/joyn/JoynServiceListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lorg/gsma/joyn/JoynServiceListener;->onServiceDisconnected(I)V

    .line 128
    :cond_0
    return-void
.end method
