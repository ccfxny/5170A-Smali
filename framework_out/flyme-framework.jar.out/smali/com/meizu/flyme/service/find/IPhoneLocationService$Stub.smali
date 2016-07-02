.class public abstract Lcom/meizu/flyme/service/find/IPhoneLocationService$Stub;
.super Landroid/os/Binder;
.source "IPhoneLocationService.java"

# interfaces
.implements Lcom/meizu/flyme/service/find/IPhoneLocationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/service/find/IPhoneLocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/service/find/IPhoneLocationService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.meizu.flyme.service.find.IPhoneLocationService"

.field static final TRANSACTION_getUserName:I = 0x3

.field static final TRANSACTION_lockPhone:I = 0x1

.field static final TRANSACTION_unLockPhone:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.meizu.flyme.service.find.IPhoneLocationService"

    invoke-virtual {p0, p0, v0}, Lcom/meizu/flyme/service/find/IPhoneLocationService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/meizu/flyme/service/find/IPhoneLocationService;
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
    const-string v1, "com.meizu.flyme.service.find.IPhoneLocationService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/meizu/flyme/service/find/IPhoneLocationService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/meizu/flyme/service/find/IPhoneLocationService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/meizu/flyme/service/find/IPhoneLocationService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/meizu/flyme/service/find/IPhoneLocationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v4, "com.meizu.flyme.service.find.IPhoneLocationService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.meizu.flyme.service.find.IPhoneLocationService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/meizu/flyme/service/find/IPhoneLocationService$Stub;->lockPhone()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 54
    :sswitch_2
    const-string v4, "com.meizu.flyme.service.find.IPhoneLocationService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/meizu/flyme/service/find/IPhoneLocationService$Stub;->unLockPhone(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/flyme/service/find/FindPhoneData;

    move-result-object v2

    .line 60
    .local v2, "_result":Lcom/meizu/flyme/service/find/FindPhoneData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {v2, p3, v3}, Lcom/meizu/flyme/service/find/FindPhoneData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Lcom/meizu/flyme/service/find/FindPhoneData;
    :sswitch_3
    const-string v4, "com.meizu.flyme.service.find.IPhoneLocationService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/meizu/flyme/service/find/IPhoneLocationService$Stub;->getUserName()Lcom/meizu/flyme/service/find/FindPhoneData;

    move-result-object v2

    .line 74
    .restart local v2    # "_result":Lcom/meizu/flyme/service/find/FindPhoneData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v2, :cond_1

    .line 76
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    invoke-virtual {v2, p3, v3}, Lcom/meizu/flyme/service/find/FindPhoneData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
