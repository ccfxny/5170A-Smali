.class public abstract Lorg/gsma/joyn/ft/IFileTransfer$Stub;
.super Landroid/os/Binder;
.source "IFileTransfer.java"

# interfaces
.implements Lorg/gsma/joyn/ft/IFileTransfer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/ft/IFileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/ft/IFileTransfer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.gsma.joyn.ft.IFileTransfer"

.field static final TRANSACTION_abortTransfer:I = 0xd

.field static final TRANSACTION_acceptInvitation:I = 0xb

.field static final TRANSACTION_addEventListener:I = 0x10

.field static final TRANSACTION_getDirection:I = 0x8

.field static final TRANSACTION_getFileIconName:I = 0x6

.field static final TRANSACTION_getFileName:I = 0x3

.field static final TRANSACTION_getFileSize:I = 0x4

.field static final TRANSACTION_getFileType:I = 0x5

.field static final TRANSACTION_getRemoteContact:I = 0x2

.field static final TRANSACTION_getState:I = 0x7

.field static final TRANSACTION_getTransferDuration:I = 0xa

.field static final TRANSACTION_getTransferId:I = 0x1

.field static final TRANSACTION_isHttpFileTransfer:I = 0x9

.field static final TRANSACTION_pauseTransfer:I = 0xe

.field static final TRANSACTION_rejectInvitation:I = 0xc

.field static final TRANSACTION_removeEventListener:I = 0x11

.field static final TRANSACTION_resumeTransfer:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "org.gsma.joyn.ft.IFileTransfer"

    invoke-virtual {p0, p0, v0}, Lorg/gsma/joyn/ft/IFileTransfer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ft/IFileTransfer;
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
    const-string v1, "org.gsma.joyn.ft.IFileTransfer"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/gsma/joyn/ft/IFileTransfer;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lorg/gsma/joyn/ft/IFileTransfer;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lorg/gsma/joyn/ft/IFileTransfer$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/gsma/joyn/ft/IFileTransfer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 182
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v1, "org.gsma.joyn.ft.IFileTransfer"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v1, "org.gsma.joyn.ft.IFileTransfer"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lorg/gsma/joyn/ft/IFileTransfer$Stub;->getTransferId()Ljava/lang/String;

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
    const-string v1, "org.gsma.joyn.ft.IFileTransfer"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lorg/gsma/joyn/ft/IFileTransfer$Stub;->getRemoteContact()Ljava/lang/String;

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
    const-string v1, "org.gsma.joyn.ft.IFileTransfer"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lorg/gsma/joyn/ft/IFileTransfer$Stub;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 68
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string v1, "org.gsma.joyn.ft.IFileTransfer"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lorg/gsma/joyn/ft/IFileTransfer$Stub;->getFileSize()J

    move-result-wide v2

    .line 76
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 82
    .end local v2    # "_result":J
    :sswitch_5
    const-string v1, "org.gsma.joyn.ft.IFileTransfer"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lorg/gsma/joyn/ft/IFileTransfer$Stub;->getFileType()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string v1, "org.gsma.joyn.ft.IFileTransfer"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lorg/gsma/joyn/ft/IFileTransfer$Stub;->getFileIconName()Ljava/lang/String;

    move-result-object v2

    .line 92
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string v1, "org.gsma.joyn.ft.IFileTransfer"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lorg/gsma/joyn/ft/IFileTransfer$Stub;->getState()I

    move-result v2

    .line 100
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 106
    .end local v2    # "_result":I
    :sswitch_8
    const-string v1, "org.gsma.joyn.ft.IFileTransfer"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lorg/gsma/joyn/ft/IFileTransfer$Stub;->getDirection()I

    move-result v2

    .line 108
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 114
    .end local v2    # "_result":I
    :sswitch_9
    const-string v1, "org.gsma.joyn.ft.IFileTransfer"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lorg/gsma/joyn/ft/IFileTransfer$Stub;->isHttpFileTransfer()Z

    move-result v2

    .line 116
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v2, :cond_0

    move v1, v4

    :goto_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 122
    .end local v2    # "_result":Z
    :sswitch_a
    const-string v1, "org.gsma.joyn.ft.IFileTransfer"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lorg/gsma/joyn/ft/IFileTransfer$Stub;->getTransferDuration()I

    move-result v2

    .line 124
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 130
    .end local v2    # "_result":I
    :sswitch_b
    const-string v1, "org.gsma.joyn.ft.IFileTransfer"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lorg/gsma/joyn/ft/IFileTransfer$Stub;->acceptInvitation()V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 137
    :sswitch_c
    const-string v1, "org.gsma.joyn.ft.IFileTransfer"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lorg/gsma/joyn/ft/IFileTransfer$Stub;->rejectInvitation()V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 144
    :sswitch_d
    const-string v1, "org.gsma.joyn.ft.IFileTransfer"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lorg/gsma/joyn/ft/IFileTransfer$Stub;->abortTransfer()V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 151
    :sswitch_e
    const-string v1, "org.gsma.joyn.ft.IFileTransfer"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lorg/gsma/joyn/ft/IFileTransfer$Stub;->pauseTransfer()V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 158
    :sswitch_f
    const-string v1, "org.gsma.joyn.ft.IFileTransfer"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lorg/gsma/joyn/ft/IFileTransfer$Stub;->resumeTransfer()V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 165
    :sswitch_10
    const-string v1, "org.gsma.joyn.ft.IFileTransfer"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/gsma/joyn/ft/IFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ft/IFileTransferListener;

    move-result-object v0

    .line 168
    .local v0, "_arg0":Lorg/gsma/joyn/ft/IFileTransferListener;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/ft/IFileTransfer$Stub;->addEventListener(Lorg/gsma/joyn/ft/IFileTransferListener;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 174
    .end local v0    # "_arg0":Lorg/gsma/joyn/ft/IFileTransferListener;
    :sswitch_11
    const-string v1, "org.gsma.joyn.ft.IFileTransfer"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/gsma/joyn/ft/IFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ft/IFileTransferListener;

    move-result-object v0

    .line 177
    .restart local v0    # "_arg0":Lorg/gsma/joyn/ft/IFileTransferListener;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/ft/IFileTransfer$Stub;->removeEventListener(Lorg/gsma/joyn/ft/IFileTransferListener;)V

    .line 178
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
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
