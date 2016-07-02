.class public abstract Lorg/gsma/joyn/ipcall/IIPCall$Stub;
.super Landroid/os/Binder;
.source "IIPCall.java"

# interfaces
.implements Lorg/gsma/joyn/ipcall/IIPCall;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/ipcall/IIPCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/ipcall/IIPCall$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.gsma.joyn.ipcall.IIPCall"

.field static final TRANSACTION_abortCall:I = 0x7

.field static final TRANSACTION_acceptInvitation:I = 0x5

.field static final TRANSACTION_addEventListener:I = 0xe

.field static final TRANSACTION_addVideo:I = 0x9

.field static final TRANSACTION_continueCall:I = 0xd

.field static final TRANSACTION_getCallId:I = 0x1

.field static final TRANSACTION_getDirection:I = 0x4

.field static final TRANSACTION_getRemoteContact:I = 0x2

.field static final TRANSACTION_getState:I = 0x3

.field static final TRANSACTION_holdCall:I = 0xc

.field static final TRANSACTION_isOnHold:I = 0xb

.field static final TRANSACTION_isVideo:I = 0x8

.field static final TRANSACTION_rejectInvitation:I = 0x6

.field static final TRANSACTION_removeEventListener:I = 0xf

.field static final TRANSACTION_removeVideo:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "org.gsma.joyn.ipcall.IIPCall"

    invoke-virtual {p0, p0, v0}, Lorg/gsma/joyn/ipcall/IIPCall$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ipcall/IIPCall;
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
    const-string v1, "org.gsma.joyn.ipcall.IIPCall"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/gsma/joyn/ipcall/IIPCall;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lorg/gsma/joyn/ipcall/IIPCall;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lorg/gsma/joyn/ipcall/IIPCall$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/gsma/joyn/ipcall/IIPCall$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v3, "org.gsma.joyn.ipcall.IIPCall"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "org.gsma.joyn.ipcall.IIPCall"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/IIPCall$Stub;->getCallId()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string v3, "org.gsma.joyn.ipcall.IIPCall"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/IIPCall$Stub;->getRemoteContact()Ljava/lang/String;

    move-result-object v2

    .line 60
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string v3, "org.gsma.joyn.ipcall.IIPCall"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/IIPCall$Stub;->getState()I

    move-result v2

    .line 68
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v2    # "_result":I
    :sswitch_4
    const-string v3, "org.gsma.joyn.ipcall.IIPCall"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/IIPCall$Stub;->getDirection()I

    move-result v2

    .line 76
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 82
    .end local v2    # "_result":I
    :sswitch_5
    const-string v3, "org.gsma.joyn.ipcall.IIPCall"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lorg/gsma/joyn/ipcall/IIPCallPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ipcall/IIPCallPlayer;

    move-result-object v0

    .line 86
    .local v0, "_arg0":Lorg/gsma/joyn/ipcall/IIPCallPlayer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lorg/gsma/joyn/ipcall/IIPCallRenderer$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ipcall/IIPCallRenderer;

    move-result-object v1

    .line 87
    .local v1, "_arg1":Lorg/gsma/joyn/ipcall/IIPCallRenderer;
    invoke-virtual {p0, v0, v1}, Lorg/gsma/joyn/ipcall/IIPCall$Stub;->acceptInvitation(Lorg/gsma/joyn/ipcall/IIPCallPlayer;Lorg/gsma/joyn/ipcall/IIPCallRenderer;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 93
    .end local v0    # "_arg0":Lorg/gsma/joyn/ipcall/IIPCallPlayer;
    .end local v1    # "_arg1":Lorg/gsma/joyn/ipcall/IIPCallRenderer;
    :sswitch_6
    const-string v3, "org.gsma.joyn.ipcall.IIPCall"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/IIPCall$Stub;->rejectInvitation()V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 100
    :sswitch_7
    const-string v3, "org.gsma.joyn.ipcall.IIPCall"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/IIPCall$Stub;->abortCall()V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 107
    :sswitch_8
    const-string v5, "org.gsma.joyn.ipcall.IIPCall"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/IIPCall$Stub;->isVideo()Z

    move-result v2

    .line 109
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 115
    .end local v2    # "_result":Z
    :sswitch_9
    const-string v3, "org.gsma.joyn.ipcall.IIPCall"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/IIPCall$Stub;->addVideo()V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 122
    :sswitch_a
    const-string v3, "org.gsma.joyn.ipcall.IIPCall"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/IIPCall$Stub;->removeVideo()V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 129
    :sswitch_b
    const-string v5, "org.gsma.joyn.ipcall.IIPCall"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/IIPCall$Stub;->isOnHold()Z

    move-result v2

    .line 131
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 137
    .end local v2    # "_result":Z
    :sswitch_c
    const-string v3, "org.gsma.joyn.ipcall.IIPCall"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/IIPCall$Stub;->holdCall()V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 144
    :sswitch_d
    const-string v3, "org.gsma.joyn.ipcall.IIPCall"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/IIPCall$Stub;->continueCall()V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 151
    :sswitch_e
    const-string v3, "org.gsma.joyn.ipcall.IIPCall"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lorg/gsma/joyn/ipcall/IIPCallListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ipcall/IIPCallListener;

    move-result-object v0

    .line 154
    .local v0, "_arg0":Lorg/gsma/joyn/ipcall/IIPCallListener;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/ipcall/IIPCall$Stub;->addEventListener(Lorg/gsma/joyn/ipcall/IIPCallListener;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 160
    .end local v0    # "_arg0":Lorg/gsma/joyn/ipcall/IIPCallListener;
    :sswitch_f
    const-string v3, "org.gsma.joyn.ipcall.IIPCall"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lorg/gsma/joyn/ipcall/IIPCallListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ipcall/IIPCallListener;

    move-result-object v0

    .line 163
    .restart local v0    # "_arg0":Lorg/gsma/joyn/ipcall/IIPCallListener;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/ipcall/IIPCall$Stub;->removeEventListener(Lorg/gsma/joyn/ipcall/IIPCallListener;)V

    .line 164
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
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
