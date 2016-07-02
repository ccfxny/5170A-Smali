.class public abstract Lorg/gsma/joyn/gsh/IGeolocSharing$Stub;
.super Landroid/os/Binder;
.source "IGeolocSharing.java"

# interfaces
.implements Lorg/gsma/joyn/gsh/IGeolocSharing;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/gsh/IGeolocSharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/gsh/IGeolocSharing$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.gsma.joyn.gsh.IGeolocSharing"

.field static final TRANSACTION_abortSharing:I = 0x8

.field static final TRANSACTION_acceptInvitation:I = 0x6

.field static final TRANSACTION_addEventListener:I = 0x9

.field static final TRANSACTION_getDirection:I = 0x5

.field static final TRANSACTION_getGeoloc:I = 0x3

.field static final TRANSACTION_getRemoteContact:I = 0x2

.field static final TRANSACTION_getSharingId:I = 0x1

.field static final TRANSACTION_getState:I = 0x4

.field static final TRANSACTION_rejectInvitation:I = 0x7

.field static final TRANSACTION_removeEventListener:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "org.gsma.joyn.gsh.IGeolocSharing"

    invoke-virtual {p0, p0, v0}, Lorg/gsma/joyn/gsh/IGeolocSharing$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/gsh/IGeolocSharing;
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
    const-string v1, "org.gsma.joyn.gsh.IGeolocSharing"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/gsma/joyn/gsh/IGeolocSharing;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lorg/gsma/joyn/gsh/IGeolocSharing;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lorg/gsma/joyn/gsh/IGeolocSharing$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/gsma/joyn/gsh/IGeolocSharing$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4
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
    const/4 v2, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 45
    :sswitch_0
    const-string v3, "org.gsma.joyn.gsh.IGeolocSharing"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "org.gsma.joyn.gsh.IGeolocSharing"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lorg/gsma/joyn/gsh/IGeolocSharing$Stub;->getSharingId()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string v3, "org.gsma.joyn.gsh.IGeolocSharing"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lorg/gsma/joyn/gsh/IGeolocSharing$Stub;->getRemoteContact()Ljava/lang/String;

    move-result-object v1

    .line 60
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string v3, "org.gsma.joyn.gsh.IGeolocSharing"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lorg/gsma/joyn/gsh/IGeolocSharing$Stub;->getGeoloc()Lorg/gsma/joyn/chat/Geoloc;

    move-result-object v1

    .line 68
    .local v1, "_result":Lorg/gsma/joyn/chat/Geoloc;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    invoke-virtual {v1, p3, v2}, Lorg/gsma/joyn/chat/Geoloc;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 74
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 80
    .end local v1    # "_result":Lorg/gsma/joyn/chat/Geoloc;
    :sswitch_4
    const-string v3, "org.gsma.joyn.gsh.IGeolocSharing"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lorg/gsma/joyn/gsh/IGeolocSharing$Stub;->getState()I

    move-result v1

    .line 82
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 88
    .end local v1    # "_result":I
    :sswitch_5
    const-string v3, "org.gsma.joyn.gsh.IGeolocSharing"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lorg/gsma/joyn/gsh/IGeolocSharing$Stub;->getDirection()I

    move-result v1

    .line 90
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    .end local v1    # "_result":I
    :sswitch_6
    const-string v3, "org.gsma.joyn.gsh.IGeolocSharing"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lorg/gsma/joyn/gsh/IGeolocSharing$Stub;->acceptInvitation()V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 103
    :sswitch_7
    const-string v3, "org.gsma.joyn.gsh.IGeolocSharing"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lorg/gsma/joyn/gsh/IGeolocSharing$Stub;->rejectInvitation()V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 110
    :sswitch_8
    const-string v3, "org.gsma.joyn.gsh.IGeolocSharing"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lorg/gsma/joyn/gsh/IGeolocSharing$Stub;->abortSharing()V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 117
    :sswitch_9
    const-string v3, "org.gsma.joyn.gsh.IGeolocSharing"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lorg/gsma/joyn/gsh/IGeolocSharingListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/gsh/IGeolocSharingListener;

    move-result-object v0

    .line 120
    .local v0, "_arg0":Lorg/gsma/joyn/gsh/IGeolocSharingListener;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/gsh/IGeolocSharing$Stub;->addEventListener(Lorg/gsma/joyn/gsh/IGeolocSharingListener;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 126
    .end local v0    # "_arg0":Lorg/gsma/joyn/gsh/IGeolocSharingListener;
    :sswitch_a
    const-string v3, "org.gsma.joyn.gsh.IGeolocSharing"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lorg/gsma/joyn/gsh/IGeolocSharingListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/gsh/IGeolocSharingListener;

    move-result-object v0

    .line 129
    .restart local v0    # "_arg0":Lorg/gsma/joyn/gsh/IGeolocSharingListener;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/gsh/IGeolocSharing$Stub;->removeEventListener(Lorg/gsma/joyn/gsh/IGeolocSharingListener;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
