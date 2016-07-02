.class public abstract Lorg/gsma/joyn/ipcall/IIPCallService$Stub;
.super Landroid/os/Binder;
.source "IIPCallService.java"

# interfaces
.implements Lorg/gsma/joyn/ipcall/IIPCallService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/ipcall/IIPCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/ipcall/IIPCallService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.gsma.joyn.ipcall.IIPCallService"

.field static final TRANSACTION_addNewIPCallListener:I = 0x9

.field static final TRANSACTION_addServiceRegistrationListener:I = 0x2

.field static final TRANSACTION_getConfiguration:I = 0x4

.field static final TRANSACTION_getIPCall:I = 0x6

.field static final TRANSACTION_getIPCalls:I = 0x5

.field static final TRANSACTION_getServiceVersion:I = 0xb

.field static final TRANSACTION_initiateCall:I = 0x7

.field static final TRANSACTION_initiateVisioCall:I = 0x8

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_removeNewIPCallListener:I = 0xa

.field static final TRANSACTION_removeServiceRegistrationListener:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "org.gsma.joyn.ipcall.IIPCallService"

    invoke-virtual {p0, p0, v0}, Lorg/gsma/joyn/ipcall/IIPCallService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ipcall/IIPCallService;
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
    const-string v1, "org.gsma.joyn.ipcall.IIPCallService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/gsma/joyn/ipcall/IIPCallService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lorg/gsma/joyn/ipcall/IIPCallService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lorg/gsma/joyn/ipcall/IIPCallService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/gsma/joyn/ipcall/IIPCallService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 165
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 45
    :sswitch_0
    const-string v6, "org.gsma.joyn.ipcall.IIPCallService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v8, "org.gsma.joyn.ipcall.IIPCallService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/IIPCallService$Stub;->isServiceRegistered()Z

    move-result v4

    .line 52
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v4, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v4    # "_result":Z
    :sswitch_2
    const-string v6, "org.gsma.joyn.ipcall.IIPCallService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lorg/gsma/joyn/IJoynServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/IJoynServiceRegistrationListener;

    move-result-object v0

    .line 61
    .local v0, "_arg0":Lorg/gsma/joyn/IJoynServiceRegistrationListener;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/ipcall/IIPCallService$Stub;->addServiceRegistrationListener(Lorg/gsma/joyn/IJoynServiceRegistrationListener;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    .end local v0    # "_arg0":Lorg/gsma/joyn/IJoynServiceRegistrationListener;
    :sswitch_3
    const-string v6, "org.gsma.joyn.ipcall.IIPCallService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lorg/gsma/joyn/IJoynServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/IJoynServiceRegistrationListener;

    move-result-object v0

    .line 70
    .restart local v0    # "_arg0":Lorg/gsma/joyn/IJoynServiceRegistrationListener;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/ipcall/IIPCallService$Stub;->removeServiceRegistrationListener(Lorg/gsma/joyn/IJoynServiceRegistrationListener;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 76
    .end local v0    # "_arg0":Lorg/gsma/joyn/IJoynServiceRegistrationListener;
    :sswitch_4
    const-string v8, "org.gsma.joyn.ipcall.IIPCallService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/IIPCallService$Stub;->getConfiguration()Lorg/gsma/joyn/ipcall/IPCallServiceConfiguration;

    move-result-object v4

    .line 78
    .local v4, "_result":Lorg/gsma/joyn/ipcall/IPCallServiceConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v4, :cond_1

    .line 80
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    invoke-virtual {v4, p3, v7}, Lorg/gsma/joyn/ipcall/IPCallServiceConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 90
    .end local v4    # "_result":Lorg/gsma/joyn/ipcall/IPCallServiceConfiguration;
    :sswitch_5
    const-string v6, "org.gsma.joyn.ipcall.IIPCallService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/IIPCallService$Stub;->getIPCalls()Ljava/util/List;

    move-result-object v5

    .line 92
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    goto :goto_0

    .line 98
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_6
    const-string v6, "org.gsma.joyn.ipcall.IIPCallService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/ipcall/IIPCallService$Stub;->getIPCall(Ljava/lang/String;)Lorg/gsma/joyn/ipcall/IIPCall;

    move-result-object v4

    .line 102
    .local v4, "_result":Lorg/gsma/joyn/ipcall/IIPCall;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lorg/gsma/joyn/ipcall/IIPCall;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_2
    move-object v6, v8

    goto :goto_1

    .line 108
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Lorg/gsma/joyn/ipcall/IIPCall;
    :sswitch_7
    const-string v6, "org.gsma.joyn.ipcall.IIPCallService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lorg/gsma/joyn/ipcall/IIPCallPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ipcall/IIPCallPlayer;

    move-result-object v1

    .line 114
    .local v1, "_arg1":Lorg/gsma/joyn/ipcall/IIPCallPlayer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lorg/gsma/joyn/ipcall/IIPCallRenderer$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ipcall/IIPCallRenderer;

    move-result-object v2

    .line 116
    .local v2, "_arg2":Lorg/gsma/joyn/ipcall/IIPCallRenderer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lorg/gsma/joyn/ipcall/IIPCallListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ipcall/IIPCallListener;

    move-result-object v3

    .line 117
    .local v3, "_arg3":Lorg/gsma/joyn/ipcall/IIPCallListener;
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/gsma/joyn/ipcall/IIPCallService$Stub;->initiateCall(Ljava/lang/String;Lorg/gsma/joyn/ipcall/IIPCallPlayer;Lorg/gsma/joyn/ipcall/IIPCallRenderer;Lorg/gsma/joyn/ipcall/IIPCallListener;)Lorg/gsma/joyn/ipcall/IIPCall;

    move-result-object v4

    .line 118
    .restart local v4    # "_result":Lorg/gsma/joyn/ipcall/IIPCall;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v4, :cond_3

    invoke-interface {v4}, Lorg/gsma/joyn/ipcall/IIPCall;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :cond_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 124
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lorg/gsma/joyn/ipcall/IIPCallPlayer;
    .end local v2    # "_arg2":Lorg/gsma/joyn/ipcall/IIPCallRenderer;
    .end local v3    # "_arg3":Lorg/gsma/joyn/ipcall/IIPCallListener;
    .end local v4    # "_result":Lorg/gsma/joyn/ipcall/IIPCall;
    :sswitch_8
    const-string v6, "org.gsma.joyn.ipcall.IIPCallService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lorg/gsma/joyn/ipcall/IIPCallPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ipcall/IIPCallPlayer;

    move-result-object v1

    .line 130
    .restart local v1    # "_arg1":Lorg/gsma/joyn/ipcall/IIPCallPlayer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lorg/gsma/joyn/ipcall/IIPCallRenderer$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ipcall/IIPCallRenderer;

    move-result-object v2

    .line 132
    .restart local v2    # "_arg2":Lorg/gsma/joyn/ipcall/IIPCallRenderer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lorg/gsma/joyn/ipcall/IIPCallListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ipcall/IIPCallListener;

    move-result-object v3

    .line 133
    .restart local v3    # "_arg3":Lorg/gsma/joyn/ipcall/IIPCallListener;
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/gsma/joyn/ipcall/IIPCallService$Stub;->initiateVisioCall(Ljava/lang/String;Lorg/gsma/joyn/ipcall/IIPCallPlayer;Lorg/gsma/joyn/ipcall/IIPCallRenderer;Lorg/gsma/joyn/ipcall/IIPCallListener;)Lorg/gsma/joyn/ipcall/IIPCall;

    move-result-object v4

    .line 134
    .restart local v4    # "_result":Lorg/gsma/joyn/ipcall/IIPCall;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    if-eqz v4, :cond_4

    invoke-interface {v4}, Lorg/gsma/joyn/ipcall/IIPCall;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :cond_4
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 140
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lorg/gsma/joyn/ipcall/IIPCallPlayer;
    .end local v2    # "_arg2":Lorg/gsma/joyn/ipcall/IIPCallRenderer;
    .end local v3    # "_arg3":Lorg/gsma/joyn/ipcall/IIPCallListener;
    .end local v4    # "_result":Lorg/gsma/joyn/ipcall/IIPCall;
    :sswitch_9
    const-string v6, "org.gsma.joyn.ipcall.IIPCallService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lorg/gsma/joyn/ipcall/INewIPCallListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ipcall/INewIPCallListener;

    move-result-object v0

    .line 143
    .local v0, "_arg0":Lorg/gsma/joyn/ipcall/INewIPCallListener;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/ipcall/IIPCallService$Stub;->addNewIPCallListener(Lorg/gsma/joyn/ipcall/INewIPCallListener;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 149
    .end local v0    # "_arg0":Lorg/gsma/joyn/ipcall/INewIPCallListener;
    :sswitch_a
    const-string v6, "org.gsma.joyn.ipcall.IIPCallService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lorg/gsma/joyn/ipcall/INewIPCallListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ipcall/INewIPCallListener;

    move-result-object v0

    .line 152
    .restart local v0    # "_arg0":Lorg/gsma/joyn/ipcall/INewIPCallListener;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/ipcall/IIPCallService$Stub;->removeNewIPCallListener(Lorg/gsma/joyn/ipcall/INewIPCallListener;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 158
    .end local v0    # "_arg0":Lorg/gsma/joyn/ipcall/INewIPCallListener;
    :sswitch_b
    const-string v6, "org.gsma.joyn.ipcall.IIPCallService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/IIPCallService$Stub;->getServiceVersion()I

    move-result v4

    .line 160
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
