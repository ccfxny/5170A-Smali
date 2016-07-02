.class public abstract Lorg/gsma/joyn/gsh/IGeolocSharingService$Stub;
.super Landroid/os/Binder;
.source "IGeolocSharingService.java"

# interfaces
.implements Lorg/gsma/joyn/gsh/IGeolocSharingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/gsh/IGeolocSharingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/gsh/IGeolocSharingService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.gsma.joyn.gsh.IGeolocSharingService"

.field static final TRANSACTION_addNewGeolocSharingListener:I = 0x7

.field static final TRANSACTION_addServiceRegistrationListener:I = 0x2

.field static final TRANSACTION_getGeolocSharing:I = 0x5

.field static final TRANSACTION_getGeolocSharings:I = 0x4

.field static final TRANSACTION_getServiceVersion:I = 0x9

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_removeNewGeolocSharingListener:I = 0x8

.field static final TRANSACTION_removeServiceRegistrationListener:I = 0x3

.field static final TRANSACTION_shareGeoloc:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "org.gsma.joyn.gsh.IGeolocSharingService"

    invoke-virtual {p0, p0, v0}, Lorg/gsma/joyn/gsh/IGeolocSharingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/gsh/IGeolocSharingService;
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
    const-string v1, "org.gsma.joyn.gsh.IGeolocSharingService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/gsma/joyn/gsh/IGeolocSharingService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lorg/gsma/joyn/gsh/IGeolocSharingService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lorg/gsma/joyn/gsh/IGeolocSharingService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/gsma/joyn/gsh/IGeolocSharingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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

    const/4 v6, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 45
    :sswitch_0
    const-string v5, "org.gsma.joyn.gsh.IGeolocSharingService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v5, "org.gsma.joyn.gsh.IGeolocSharingService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lorg/gsma/joyn/gsh/IGeolocSharingService$Stub;->isServiceRegistered()Z

    move-result v3

    .line 52
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v3, :cond_0

    move v5, v6

    :goto_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 58
    .end local v3    # "_result":Z
    :sswitch_2
    const-string v5, "org.gsma.joyn.gsh.IGeolocSharingService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lorg/gsma/joyn/IJoynServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/IJoynServiceRegistrationListener;

    move-result-object v0

    .line 61
    .local v0, "_arg0":Lorg/gsma/joyn/IJoynServiceRegistrationListener;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/gsh/IGeolocSharingService$Stub;->addServiceRegistrationListener(Lorg/gsma/joyn/IJoynServiceRegistrationListener;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    .end local v0    # "_arg0":Lorg/gsma/joyn/IJoynServiceRegistrationListener;
    :sswitch_3
    const-string v5, "org.gsma.joyn.gsh.IGeolocSharingService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lorg/gsma/joyn/IJoynServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/IJoynServiceRegistrationListener;

    move-result-object v0

    .line 70
    .restart local v0    # "_arg0":Lorg/gsma/joyn/IJoynServiceRegistrationListener;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/gsh/IGeolocSharingService$Stub;->removeServiceRegistrationListener(Lorg/gsma/joyn/IJoynServiceRegistrationListener;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 76
    .end local v0    # "_arg0":Lorg/gsma/joyn/IJoynServiceRegistrationListener;
    :sswitch_4
    const-string v5, "org.gsma.joyn.gsh.IGeolocSharingService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lorg/gsma/joyn/gsh/IGeolocSharingService$Stub;->getGeolocSharings()Ljava/util/List;

    move-result-object v4

    .line 78
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    goto :goto_0

    .line 84
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_5
    const-string v7, "org.gsma.joyn.gsh.IGeolocSharingService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/gsh/IGeolocSharingService$Stub;->getGeolocSharing(Ljava/lang/String;)Lorg/gsma/joyn/gsh/IGeolocSharing;

    move-result-object v3

    .line 88
    .local v3, "_result":Lorg/gsma/joyn/gsh/IGeolocSharing;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lorg/gsma/joyn/gsh/IGeolocSharing;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 94
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lorg/gsma/joyn/gsh/IGeolocSharing;
    :sswitch_6
    const-string v7, "org.gsma.joyn.gsh.IGeolocSharingService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    .line 99
    sget-object v7, Lorg/gsma/joyn/chat/Geoloc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gsma/joyn/chat/Geoloc;

    .line 105
    .local v1, "_arg1":Lorg/gsma/joyn/chat/Geoloc;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lorg/gsma/joyn/gsh/IGeolocSharingListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/gsh/IGeolocSharingListener;

    move-result-object v2

    .line 106
    .local v2, "_arg2":Lorg/gsma/joyn/gsh/IGeolocSharingListener;
    invoke-virtual {p0, v0, v1, v2}, Lorg/gsma/joyn/gsh/IGeolocSharingService$Stub;->shareGeoloc(Ljava/lang/String;Lorg/gsma/joyn/chat/Geoloc;Lorg/gsma/joyn/gsh/IGeolocSharingListener;)Lorg/gsma/joyn/gsh/IGeolocSharing;

    move-result-object v3

    .line 107
    .restart local v3    # "_result":Lorg/gsma/joyn/gsh/IGeolocSharing;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/gsma/joyn/gsh/IGeolocSharing;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 102
    .end local v1    # "_arg1":Lorg/gsma/joyn/chat/Geoloc;
    .end local v2    # "_arg2":Lorg/gsma/joyn/gsh/IGeolocSharingListener;
    .end local v3    # "_result":Lorg/gsma/joyn/gsh/IGeolocSharing;
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lorg/gsma/joyn/chat/Geoloc;
    goto :goto_2

    .line 113
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lorg/gsma/joyn/chat/Geoloc;
    :sswitch_7
    const-string v5, "org.gsma.joyn.gsh.IGeolocSharingService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lorg/gsma/joyn/gsh/INewGeolocSharingListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/gsh/INewGeolocSharingListener;

    move-result-object v0

    .line 116
    .local v0, "_arg0":Lorg/gsma/joyn/gsh/INewGeolocSharingListener;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/gsh/IGeolocSharingService$Stub;->addNewGeolocSharingListener(Lorg/gsma/joyn/gsh/INewGeolocSharingListener;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 122
    .end local v0    # "_arg0":Lorg/gsma/joyn/gsh/INewGeolocSharingListener;
    :sswitch_8
    const-string v5, "org.gsma.joyn.gsh.IGeolocSharingService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lorg/gsma/joyn/gsh/INewGeolocSharingListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/gsh/INewGeolocSharingListener;

    move-result-object v0

    .line 125
    .restart local v0    # "_arg0":Lorg/gsma/joyn/gsh/INewGeolocSharingListener;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/gsh/IGeolocSharingService$Stub;->removeNewGeolocSharingListener(Lorg/gsma/joyn/gsh/INewGeolocSharingListener;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 131
    .end local v0    # "_arg0":Lorg/gsma/joyn/gsh/INewGeolocSharingListener;
    :sswitch_9
    const-string v5, "org.gsma.joyn.gsh.IGeolocSharingService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lorg/gsma/joyn/gsh/IGeolocSharingService$Stub;->getServiceVersion()I

    move-result v3

    .line 133
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 41
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
