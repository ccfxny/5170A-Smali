.class public abstract Lorg/gsma/joyn/ICoreServiceWrapper$Stub;
.super Landroid/os/Binder;
.source "ICoreServiceWrapper.java"

# interfaces
.implements Lorg/gsma/joyn/ICoreServiceWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/ICoreServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/ICoreServiceWrapper$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.gsma.joyn.ICoreServiceWrapper"

.field static final TRANSACTION_getCapabilitiesServiceBinder:I = 0x3

.field static final TRANSACTION_getChatServiceBinder:I = 0x1

.field static final TRANSACTION_getContactsServiceBinder:I = 0x4

.field static final TRANSACTION_getFileTransferServiceBinder:I = 0x2

.field static final TRANSACTION_getGeolocServiceBinder:I = 0x5

.field static final TRANSACTION_getIPCallServiceBinder:I = 0x8

.field static final TRANSACTION_getImageSharingServiceBinder:I = 0x7

.field static final TRANSACTION_getMultimediaSessionServiceBinder:I = 0x9

.field static final TRANSACTION_getNetworkConnectivityApiBinder:I = 0xa

.field static final TRANSACTION_getVideoSharingServiceBinder:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "org.gsma.joyn.ICoreServiceWrapper"

    invoke-virtual {p0, p0, v0}, Lorg/gsma/joyn/ICoreServiceWrapper$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ICoreServiceWrapper;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "org.gsma.joyn.ICoreServiceWrapper"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/gsma/joyn/ICoreServiceWrapper;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lorg/gsma/joyn/ICoreServiceWrapper;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lorg/gsma/joyn/ICoreServiceWrapper$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/gsma/joyn/ICoreServiceWrapper$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    const/4 v1, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 45
    :sswitch_0
    const-string v2, "org.gsma.joyn.ICoreServiceWrapper"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v2, "org.gsma.joyn.ICoreServiceWrapper"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lorg/gsma/joyn/ICoreServiceWrapper$Stub;->getChatServiceBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 52
    .local v0, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 58
    .end local v0    # "_result":Landroid/os/IBinder;
    :sswitch_2
    const-string v2, "org.gsma.joyn.ICoreServiceWrapper"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lorg/gsma/joyn/ICoreServiceWrapper$Stub;->getFileTransferServiceBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 60
    .restart local v0    # "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 66
    .end local v0    # "_result":Landroid/os/IBinder;
    :sswitch_3
    const-string v2, "org.gsma.joyn.ICoreServiceWrapper"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lorg/gsma/joyn/ICoreServiceWrapper$Stub;->getCapabilitiesServiceBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 68
    .restart local v0    # "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 74
    .end local v0    # "_result":Landroid/os/IBinder;
    :sswitch_4
    const-string v2, "org.gsma.joyn.ICoreServiceWrapper"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lorg/gsma/joyn/ICoreServiceWrapper$Stub;->getContactsServiceBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 76
    .restart local v0    # "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 82
    .end local v0    # "_result":Landroid/os/IBinder;
    :sswitch_5
    const-string v2, "org.gsma.joyn.ICoreServiceWrapper"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lorg/gsma/joyn/ICoreServiceWrapper$Stub;->getGeolocServiceBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 84
    .restart local v0    # "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 90
    .end local v0    # "_result":Landroid/os/IBinder;
    :sswitch_6
    const-string v2, "org.gsma.joyn.ICoreServiceWrapper"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lorg/gsma/joyn/ICoreServiceWrapper$Stub;->getVideoSharingServiceBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 92
    .restart local v0    # "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 98
    .end local v0    # "_result":Landroid/os/IBinder;
    :sswitch_7
    const-string v2, "org.gsma.joyn.ICoreServiceWrapper"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lorg/gsma/joyn/ICoreServiceWrapper$Stub;->getImageSharingServiceBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 100
    .restart local v0    # "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 106
    .end local v0    # "_result":Landroid/os/IBinder;
    :sswitch_8
    const-string v2, "org.gsma.joyn.ICoreServiceWrapper"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lorg/gsma/joyn/ICoreServiceWrapper$Stub;->getIPCallServiceBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 108
    .restart local v0    # "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 114
    .end local v0    # "_result":Landroid/os/IBinder;
    :sswitch_9
    const-string v2, "org.gsma.joyn.ICoreServiceWrapper"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lorg/gsma/joyn/ICoreServiceWrapper$Stub;->getMultimediaSessionServiceBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 116
    .restart local v0    # "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 122
    .end local v0    # "_result":Landroid/os/IBinder;
    :sswitch_a
    const-string v2, "org.gsma.joyn.ICoreServiceWrapper"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lorg/gsma/joyn/ICoreServiceWrapper$Stub;->getNetworkConnectivityApiBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 124
    .restart local v0    # "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
