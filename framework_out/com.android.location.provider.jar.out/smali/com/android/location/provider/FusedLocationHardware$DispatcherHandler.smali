.class Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;
.super Landroid/os/Handler;
.source "FusedLocationHardware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/FusedLocationHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DispatcherHandler"
.end annotation


# static fields
.field public static final DISPATCH_DIAGNOSTIC_DATA:I = 0x2

.field public static final DISPATCH_LOCATION:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/location/provider/FusedLocationHardware;


# direct methods
.method public constructor <init>(Lcom/android/location/provider/FusedLocationHardware;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;->this$0:Lcom/android/location/provider/FusedLocationHardware;

    .line 209
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 210
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 214
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;

    .line 215
    .local v0, "command":Lcom/android/location/provider/FusedLocationHardware$MessageCommand;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 222
    :goto_0
    const-string v1, "FusedLocationHardware"

    const-string v2, "Invalid dispatch message"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_1
    return-void

    .line 217
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;->dispatchLocation()V

    goto :goto_1

    .line 220
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;->dispatchDiagnosticData()V

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
