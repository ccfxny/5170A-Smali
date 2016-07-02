.class public abstract Lorg/gsma/joyn/ft/IFileTransferService$Stub;
.super Landroid/os/Binder;
.source "IFileTransferService.java"

# interfaces
.implements Lorg/gsma/joyn/ft/IFileTransferService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/ft/IFileTransferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/ft/IFileTransferService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.gsma.joyn.ft.IFileTransferService"

.field static final TRANSACTION_addFileSpamReportListener:I = 0x15

.field static final TRANSACTION_addNewFileTransferListener:I = 0x11

.field static final TRANSACTION_addServiceRegistrationListener:I = 0x2

.field static final TRANSACTION_getConfiguration:I = 0x4

.field static final TRANSACTION_getFileTransfer:I = 0x6

.field static final TRANSACTION_getFileTransfers:I = 0x5

.field static final TRANSACTION_getMaxFileTransfers:I = 0x17

.field static final TRANSACTION_getServiceVersion:I = 0x13

.field static final TRANSACTION_initiateFileSpamReport:I = 0x14

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_removeFileSpamReportListener:I = 0x16

.field static final TRANSACTION_removeNewFileTransferListener:I = 0x12

.field static final TRANSACTION_removeServiceRegistrationListener:I = 0x3

.field static final TRANSACTION_resumeFileTransfer:I = 0x8

.field static final TRANSACTION_resumeGroupFileTransfer:I = 0x18

.field static final TRANSACTION_resumePublicFileTransfer:I = 0x19

.field static final TRANSACTION_transferBurnFile:I = 0x9

.field static final TRANSACTION_transferFile:I = 0x7

.field static final TRANSACTION_transferFileToGroup:I = 0xe

.field static final TRANSACTION_transferFileToMultirecepient:I = 0x10

.field static final TRANSACTION_transferGeoLocFile:I = 0xa

.field static final TRANSACTION_transferLargeModeBurnFile:I = 0xd

.field static final TRANSACTION_transferLargeModeFile:I = 0xc

.field static final TRANSACTION_transferMedia:I = 0xf

.field static final TRANSACTION_transferPublicChatFile:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "org.gsma.joyn.ft.IFileTransferService"

    invoke-virtual {p0, p0, v0}, Lorg/gsma/joyn/ft/IFileTransferService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ft/IFileTransferService;
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
    const-string v1, "org.gsma.joyn.ft.IFileTransferService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/gsma/joyn/ft/IFileTransferService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lorg/gsma/joyn/ft/IFileTransferService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lorg/gsma/joyn/ft/IFileTransferService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/gsma/joyn/ft/IFileTransferService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 23
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 364
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 45
    :sswitch_0
    const-string v2, "org.gsma.joyn.ft.IFileTransferService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v2, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v2, "org.gsma.joyn.ft.IFileTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Lorg/gsma/joyn/ft/IFileTransferService$Stub;->isServiceRegistered()Z

    move-result v21

    .line 52
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v21, :cond_0

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    const/4 v2, 0x1

    goto :goto_0

    .line 53
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 58
    .end local v21    # "_result":Z
    :sswitch_2
    const-string v2, "org.gsma.joyn.ft.IFileTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/gsma/joyn/IJoynServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/IJoynServiceRegistrationListener;

    move-result-object v3

    .line 61
    .local v3, "_arg0":Lorg/gsma/joyn/IJoynServiceRegistrationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/gsma/joyn/ft/IFileTransferService$Stub;->addServiceRegistrationListener(Lorg/gsma/joyn/IJoynServiceRegistrationListener;)V

    .line 62
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    const/4 v2, 0x1

    goto :goto_0

    .line 67
    .end local v3    # "_arg0":Lorg/gsma/joyn/IJoynServiceRegistrationListener;
    :sswitch_3
    const-string v2, "org.gsma.joyn.ft.IFileTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/gsma/joyn/IJoynServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/IJoynServiceRegistrationListener;

    move-result-object v3

    .line 70
    .restart local v3    # "_arg0":Lorg/gsma/joyn/IJoynServiceRegistrationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/gsma/joyn/ft/IFileTransferService$Stub;->removeServiceRegistrationListener(Lorg/gsma/joyn/IJoynServiceRegistrationListener;)V

    .line 71
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    const/4 v2, 0x1

    goto :goto_0

    .line 76
    .end local v3    # "_arg0":Lorg/gsma/joyn/IJoynServiceRegistrationListener;
    :sswitch_4
    const-string v2, "org.gsma.joyn.ft.IFileTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lorg/gsma/joyn/ft/IFileTransferService$Stub;->getConfiguration()Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;

    move-result-object v21

    .line 78
    .local v21, "_result":Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v21, :cond_1

    .line 80
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    const/4 v2, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 86
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 84
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 90
    .end local v21    # "_result":Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;
    :sswitch_5
    const-string v2, "org.gsma.joyn.ft.IFileTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lorg/gsma/joyn/ft/IFileTransferService$Stub;->getFileTransfers()Ljava/util/List;

    move-result-object v22

    .line 92
    .local v22, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 94
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 98
    .end local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_6
    const-string v2, "org.gsma.joyn.ft.IFileTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/gsma/joyn/ft/IFileTransferService$Stub;->getFileTransfer(Ljava/lang/String;)Lorg/gsma/joyn/ft/IFileTransfer;

    move-result-object v21

    .line 102
    .local v21, "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v21, :cond_2

    invoke-interface/range {v21 .. v21}, Lorg/gsma/joyn/ft/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 104
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 103
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 108
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    :sswitch_7
    const-string v2, "org.gsma.joyn.ft.IFileTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 112
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/gsma/joyn/ft/IFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ft/IFileTransferListener;

    move-result-object v6

    .line 117
    .local v6, "_arg3":Lorg/gsma/joyn/ft/IFileTransferListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/gsma/joyn/ft/IFileTransferService$Stub;->transferFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/gsma/joyn/ft/IFileTransferListener;)Lorg/gsma/joyn/ft/IFileTransfer;

    move-result-object v21

    .line 118
    .restart local v21    # "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v21, :cond_3

    invoke-interface/range {v21 .. v21}, Lorg/gsma/joyn/ft/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 120
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 119
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 124
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Lorg/gsma/joyn/ft/IFileTransferListener;
    .end local v21    # "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    :sswitch_8
    const-string v2, "org.gsma.joyn.ft.IFileTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 128
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/gsma/joyn/ft/IFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ft/IFileTransferListener;

    move-result-object v4

    .line 129
    .local v4, "_arg1":Lorg/gsma/joyn/ft/IFileTransferListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/gsma/joyn/ft/IFileTransferService$Stub;->resumeFileTransfer(Ljava/lang/String;Lorg/gsma/joyn/ft/IFileTransferListener;)Lorg/gsma/joyn/ft/IFileTransfer;

    move-result-object v21

    .line 130
    .restart local v21    # "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v21, :cond_4

    invoke-interface/range {v21 .. v21}, Lorg/gsma/joyn/ft/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 132
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 131
    :cond_4
    const/4 v2, 0x0

    goto :goto_5

    .line 136
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Lorg/gsma/joyn/ft/IFileTransferListener;
    .end local v21    # "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    :sswitch_9
    const-string v2, "org.gsma.joyn.ft.IFileTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 144
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/gsma/joyn/ft/IFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ft/IFileTransferListener;

    move-result-object v6

    .line 145
    .restart local v6    # "_arg3":Lorg/gsma/joyn/ft/IFileTransferListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/gsma/joyn/ft/IFileTransferService$Stub;->transferBurnFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/gsma/joyn/ft/IFileTransferListener;)Lorg/gsma/joyn/ft/IFileTransfer;

    move-result-object v21

    .line 146
    .restart local v21    # "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v21, :cond_5

    invoke-interface/range {v21 .. v21}, Lorg/gsma/joyn/ft/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 148
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 147
    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .line 152
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Lorg/gsma/joyn/ft/IFileTransferListener;
    .end local v21    # "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    :sswitch_a
    const-string v2, "org.gsma.joyn.ft.IFileTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 156
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 158
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 160
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/gsma/joyn/ft/IFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ft/IFileTransferListener;

    move-result-object v6

    .line 161
    .restart local v6    # "_arg3":Lorg/gsma/joyn/ft/IFileTransferListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/gsma/joyn/ft/IFileTransferService$Stub;->transferGeoLocFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/gsma/joyn/ft/IFileTransferListener;)Lorg/gsma/joyn/ft/IFileTransfer;

    move-result-object v21

    .line 162
    .restart local v21    # "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v21, :cond_6

    invoke-interface/range {v21 .. v21}, Lorg/gsma/joyn/ft/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 164
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 163
    :cond_6
    const/4 v2, 0x0

    goto :goto_7

    .line 168
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Lorg/gsma/joyn/ft/IFileTransferListener;
    .end local v21    # "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    :sswitch_b
    const-string v2, "org.gsma.joyn.ft.IFileTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 172
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 174
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 176
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/gsma/joyn/ft/IFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ft/IFileTransferListener;

    move-result-object v6

    .line 178
    .restart local v6    # "_arg3":Lorg/gsma/joyn/ft/IFileTransferListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg4":I
    move-object/from16 v2, p0

    .line 179
    invoke-virtual/range {v2 .. v7}, Lorg/gsma/joyn/ft/IFileTransferService$Stub;->transferPublicChatFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/gsma/joyn/ft/IFileTransferListener;I)Lorg/gsma/joyn/ft/IFileTransfer;

    move-result-object v21

    .line 180
    .restart local v21    # "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    if-eqz v21, :cond_7

    invoke-interface/range {v21 .. v21}, Lorg/gsma/joyn/ft/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 182
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 181
    :cond_7
    const/4 v2, 0x0

    goto :goto_8

    .line 186
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Lorg/gsma/joyn/ft/IFileTransferListener;
    .end local v7    # "_arg4":I
    .end local v21    # "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    :sswitch_c
    const-string v2, "org.gsma.joyn.ft.IFileTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 190
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 192
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 194
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/gsma/joyn/ft/IFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ft/IFileTransferListener;

    move-result-object v6

    .line 195
    .restart local v6    # "_arg3":Lorg/gsma/joyn/ft/IFileTransferListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/gsma/joyn/ft/IFileTransferService$Stub;->transferLargeModeFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/gsma/joyn/ft/IFileTransferListener;)Lorg/gsma/joyn/ft/IFileTransfer;

    move-result-object v21

    .line 196
    .restart local v21    # "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    if-eqz v21, :cond_8

    invoke-interface/range {v21 .. v21}, Lorg/gsma/joyn/ft/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 198
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 197
    :cond_8
    const/4 v2, 0x0

    goto :goto_9

    .line 202
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Lorg/gsma/joyn/ft/IFileTransferListener;
    .end local v21    # "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    :sswitch_d
    const-string v2, "org.gsma.joyn.ft.IFileTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 206
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 208
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 210
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/gsma/joyn/ft/IFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ft/IFileTransferListener;

    move-result-object v6

    .line 211
    .restart local v6    # "_arg3":Lorg/gsma/joyn/ft/IFileTransferListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/gsma/joyn/ft/IFileTransferService$Stub;->transferLargeModeBurnFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/gsma/joyn/ft/IFileTransferListener;)Lorg/gsma/joyn/ft/IFileTransfer;

    move-result-object v21

    .line 212
    .restart local v21    # "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    if-eqz v21, :cond_9

    invoke-interface/range {v21 .. v21}, Lorg/gsma/joyn/ft/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 214
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 213
    :cond_9
    const/4 v2, 0x0

    goto :goto_a

    .line 218
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Lorg/gsma/joyn/ft/IFileTransferListener;
    .end local v21    # "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    :sswitch_e
    const-string v2, "org.gsma.joyn.ft.IFileTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 222
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 224
    .local v10, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 226
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 228
    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 230
    .restart local v7    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/gsma/joyn/ft/IFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ft/IFileTransferListener;

    move-result-object v14

    .local v14, "_arg5":Lorg/gsma/joyn/ft/IFileTransferListener;
    move-object/from16 v8, p0

    move-object v9, v3

    move-object v11, v5

    move-object v12, v6

    move v13, v7

    .line 231
    invoke-virtual/range {v8 .. v14}, Lorg/gsma/joyn/ft/IFileTransferService$Stub;->transferFileToGroup(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILorg/gsma/joyn/ft/IFileTransferListener;)Lorg/gsma/joyn/ft/IFileTransfer;

    move-result-object v21

    .line 232
    .restart local v21    # "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    if-eqz v21, :cond_a

    invoke-interface/range {v21 .. v21}, Lorg/gsma/joyn/ft/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 234
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 233
    :cond_a
    const/4 v2, 0x0

    goto :goto_b

    .line 238
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":I
    .end local v10    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "_arg5":Lorg/gsma/joyn/ft/IFileTransferListener;
    .end local v21    # "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    :sswitch_f
    const-string v2, "org.gsma.joyn.ft.IFileTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 242
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 244
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 246
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/gsma/joyn/ft/IFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ft/IFileTransferListener;

    move-result-object v6

    .line 248
    .local v6, "_arg3":Lorg/gsma/joyn/ft/IFileTransferListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg4":I
    move-object/from16 v2, p0

    .line 249
    invoke-virtual/range {v2 .. v7}, Lorg/gsma/joyn/ft/IFileTransferService$Stub;->transferMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/gsma/joyn/ft/IFileTransferListener;I)Lorg/gsma/joyn/ft/IFileTransfer;

    move-result-object v21

    .line 250
    .restart local v21    # "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    if-eqz v21, :cond_b

    invoke-interface/range {v21 .. v21}, Lorg/gsma/joyn/ft/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 252
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 251
    :cond_b
    const/4 v2, 0x0

    goto :goto_c

    .line 256
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Lorg/gsma/joyn/ft/IFileTransferListener;
    .end local v7    # "_arg4":I
    .end local v21    # "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    :sswitch_10
    const-string v2, "org.gsma.joyn.ft.IFileTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 260
    .local v16, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 262
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    const/4 v5, 0x1

    .line 264
    .local v5, "_arg2":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/gsma/joyn/ft/IFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ft/IFileTransferListener;

    move-result-object v6

    .line 266
    .restart local v6    # "_arg3":Lorg/gsma/joyn/ft/IFileTransferListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg4":I
    move-object/from16 v15, p0

    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    move/from16 v20, v7

    .line 267
    invoke-virtual/range {v15 .. v20}, Lorg/gsma/joyn/ft/IFileTransferService$Stub;->transferFileToMultirecepient(Ljava/util/List;Ljava/lang/String;ZLorg/gsma/joyn/ft/IFileTransferListener;I)Lorg/gsma/joyn/ft/IFileTransfer;

    move-result-object v21

    .line 268
    .restart local v21    # "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    if-eqz v21, :cond_d

    invoke-interface/range {v21 .. v21}, Lorg/gsma/joyn/ft/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 270
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 262
    .end local v5    # "_arg2":Z
    .end local v6    # "_arg3":Lorg/gsma/joyn/ft/IFileTransferListener;
    .end local v7    # "_arg4":I
    .end local v21    # "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    :cond_c
    const/4 v5, 0x0

    goto :goto_d

    .line 269
    .restart local v5    # "_arg2":Z
    .restart local v6    # "_arg3":Lorg/gsma/joyn/ft/IFileTransferListener;
    .restart local v7    # "_arg4":I
    .restart local v21    # "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    :cond_d
    const/4 v2, 0x0

    goto :goto_e

    .line 274
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Z
    .end local v6    # "_arg3":Lorg/gsma/joyn/ft/IFileTransferListener;
    .end local v7    # "_arg4":I
    .end local v16    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    :sswitch_11
    const-string v2, "org.gsma.joyn.ft.IFileTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/gsma/joyn/ft/INewFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ft/INewFileTransferListener;

    move-result-object v3

    .line 277
    .local v3, "_arg0":Lorg/gsma/joyn/ft/INewFileTransferListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/gsma/joyn/ft/IFileTransferService$Stub;->addNewFileTransferListener(Lorg/gsma/joyn/ft/INewFileTransferListener;)V

    .line 278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 283
    .end local v3    # "_arg0":Lorg/gsma/joyn/ft/INewFileTransferListener;
    :sswitch_12
    const-string v2, "org.gsma.joyn.ft.IFileTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/gsma/joyn/ft/INewFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ft/INewFileTransferListener;

    move-result-object v3

    .line 286
    .restart local v3    # "_arg0":Lorg/gsma/joyn/ft/INewFileTransferListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/gsma/joyn/ft/IFileTransferService$Stub;->removeNewFileTransferListener(Lorg/gsma/joyn/ft/INewFileTransferListener;)V

    .line 287
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 292
    .end local v3    # "_arg0":Lorg/gsma/joyn/ft/INewFileTransferListener;
    :sswitch_13
    const-string v2, "org.gsma.joyn.ft.IFileTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p0 .. p0}, Lorg/gsma/joyn/ft/IFileTransferService$Stub;->getServiceVersion()I

    move-result v21

    .line 294
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 300
    .end local v21    # "_result":I
    :sswitch_14
    const-string v2, "org.gsma.joyn.ft.IFileTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 305
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/gsma/joyn/ft/IFileTransferService$Stub;->initiateFileSpamReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 311
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_15
    const-string v2, "org.gsma.joyn.ft.IFileTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/gsma/joyn/ft/IFileSpamReportListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ft/IFileSpamReportListener;

    move-result-object v3

    .line 314
    .local v3, "_arg0":Lorg/gsma/joyn/ft/IFileSpamReportListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/gsma/joyn/ft/IFileTransferService$Stub;->addFileSpamReportListener(Lorg/gsma/joyn/ft/IFileSpamReportListener;)V

    .line 315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 320
    .end local v3    # "_arg0":Lorg/gsma/joyn/ft/IFileSpamReportListener;
    :sswitch_16
    const-string v2, "org.gsma.joyn.ft.IFileTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/gsma/joyn/ft/IFileSpamReportListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ft/IFileSpamReportListener;

    move-result-object v3

    .line 323
    .restart local v3    # "_arg0":Lorg/gsma/joyn/ft/IFileSpamReportListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/gsma/joyn/ft/IFileTransferService$Stub;->removeFileSpamReportListener(Lorg/gsma/joyn/ft/IFileSpamReportListener;)V

    .line 324
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 329
    .end local v3    # "_arg0":Lorg/gsma/joyn/ft/IFileSpamReportListener;
    :sswitch_17
    const-string v2, "org.gsma.joyn.ft.IFileTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {p0 .. p0}, Lorg/gsma/joyn/ft/IFileTransferService$Stub;->getMaxFileTransfers()I

    move-result v21

    .line 331
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 337
    .end local v21    # "_result":I
    :sswitch_18
    const-string v2, "org.gsma.joyn.ft.IFileTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 343
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/gsma/joyn/ft/IFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ft/IFileTransferListener;

    move-result-object v5

    .line 344
    .local v5, "_arg2":Lorg/gsma/joyn/ft/IFileTransferListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lorg/gsma/joyn/ft/IFileTransferService$Stub;->resumeGroupFileTransfer(Ljava/lang/String;Ljava/lang/String;Lorg/gsma/joyn/ft/IFileTransferListener;)Lorg/gsma/joyn/ft/IFileTransfer;

    move-result-object v21

    .line 345
    .local v21, "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    if-eqz v21, :cond_e

    invoke-interface/range {v21 .. v21}, Lorg/gsma/joyn/ft/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 347
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 346
    :cond_e
    const/4 v2, 0x0

    goto :goto_f

    .line 351
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Lorg/gsma/joyn/ft/IFileTransferListener;
    .end local v21    # "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    :sswitch_19
    const-string v2, "org.gsma.joyn.ft.IFileTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 355
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/gsma/joyn/ft/IFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ft/IFileTransferListener;

    move-result-object v4

    .line 357
    .local v4, "_arg1":Lorg/gsma/joyn/ft/IFileTransferListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 358
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lorg/gsma/joyn/ft/IFileTransferService$Stub;->resumePublicFileTransfer(Ljava/lang/String;Lorg/gsma/joyn/ft/IFileTransferListener;I)Lorg/gsma/joyn/ft/IFileTransfer;

    move-result-object v21

    .line 359
    .restart local v21    # "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    if-eqz v21, :cond_f

    invoke-interface/range {v21 .. v21}, Lorg/gsma/joyn/ft/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 361
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 360
    :cond_f
    const/4 v2, 0x0

    goto :goto_10

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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
