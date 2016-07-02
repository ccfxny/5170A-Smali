.class public abstract Lmeizu/statusbar/IFlymeStatusBarService$Stub;
.super Landroid/os/Binder;
.source "IFlymeStatusBarService.java"

# interfaces
.implements Lmeizu/statusbar/IFlymeStatusBarService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu/statusbar/IFlymeStatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu/statusbar/IFlymeStatusBarService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "meizu.statusbar.IFlymeStatusBarService"

.field static final TRANSACTION_registerStatusBar:I = 0x3

.field static final TRANSACTION_releaseAndCloseHeadsUp:I = 0x4

.field static final TRANSACTION_setNotificationReplyingInfo:I = 0x5

.field static final TRANSACTION_setStatusBarColorTheme:I = 0x2

.field static final TRANSACTION_setStatusBarDarkTheme:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "meizu.statusbar.IFlymeStatusBarService"

    invoke-virtual {p0, p0, v0}, Lmeizu/statusbar/IFlymeStatusBarService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmeizu/statusbar/IFlymeStatusBarService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "meizu.statusbar.IFlymeStatusBarService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmeizu/statusbar/IFlymeStatusBarService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lmeizu/statusbar/IFlymeStatusBarService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lmeizu/statusbar/IFlymeStatusBarService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lmeizu/statusbar/IFlymeStatusBarService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v3, "meizu.statusbar.IFlymeStatusBarService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "meizu.statusbar.IFlymeStatusBarService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 51
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 52
    .local v1, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Lmeizu/statusbar/IFlymeStatusBarService$Stub;->setStatusBarDarkTheme(ZZ)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :cond_0
    move v0, v3

    .line 49
    goto :goto_1

    .restart local v0    # "_arg0":Z
    :cond_1
    move v1, v3

    .line 51
    goto :goto_2

    .line 58
    .end local v0    # "_arg0":Z
    :sswitch_2
    const-string v4, "meizu.statusbar.IFlymeStatusBarService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 63
    .restart local v1    # "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Lmeizu/statusbar/IFlymeStatusBarService$Stub;->setStatusBarColorTheme(IZ)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1    # "_arg1":Z
    :cond_2
    move v1, v3

    .line 62
    goto :goto_3

    .line 69
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string v3, "meizu.statusbar.IFlymeStatusBarService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmeizu/statusbar/IFlymeStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/statusbar/IFlymeStatusBar;

    move-result-object v0

    .line 72
    .local v0, "_arg0":Lmeizu/statusbar/IFlymeStatusBar;
    invoke-virtual {p0, v0}, Lmeizu/statusbar/IFlymeStatusBarService$Stub;->registerStatusBar(Lmeizu/statusbar/IFlymeStatusBar;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 78
    .end local v0    # "_arg0":Lmeizu/statusbar/IFlymeStatusBar;
    :sswitch_4
    const-string v3, "meizu.statusbar.IFlymeStatusBarService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lmeizu/statusbar/IFlymeStatusBarService$Stub;->releaseAndCloseHeadsUp()V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 85
    :sswitch_5
    const-string v3, "meizu.statusbar.IFlymeStatusBarService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 89
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 90
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 95
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_4
    invoke-virtual {p0, v0, v1}, Lmeizu/statusbar/IFlymeStatusBarService$Stub;->setNotificationReplyingInfo(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 93
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_4

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
