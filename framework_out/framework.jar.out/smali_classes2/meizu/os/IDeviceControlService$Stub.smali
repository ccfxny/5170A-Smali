.class public abstract Lmeizu/os/IDeviceControlService$Stub;
.super Landroid/os/Binder;
.source "IDeviceControlService.java"

# interfaces
.implements Lmeizu/os/IDeviceControlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu/os/IDeviceControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu/os/IDeviceControlService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "meizu.os.IDeviceControlService"

.field static final TRANSACTION_calibrateAcceAndGyroSensor:I = 0xc

.field static final TRANSACTION_calibrateGp2ap:I = 0x5

.field static final TRANSACTION_countAsRestart:I = 0x10

.field static final TRANSACTION_readCPUfreq:I = 0x2

.field static final TRANSACTION_readCfgParam:I = 0x4

.field static final TRANSACTION_readEarpodAdjustData:I = 0xb

.field static final TRANSACTION_readEarpodAdjustState:I = 0xa

.field static final TRANSACTION_readGp2apValue:I = 0x6

.field static final TRANSACTION_resumeSystemControl:I = 0xf

.field static final TRANSACTION_saveCPUfreq:I = 0x1

.field static final TRANSACTION_setNotificationLightEnable:I = 0xd

.field static final TRANSACTION_set_hdmi_cable_status:I = 0x8

.field static final TRANSACTION_writeByteToControl:I = 0xe

.field static final TRANSACTION_writeCfgParam:I = 0x3

.field static final TRANSACTION_writeEarpodAdjustCmd:I = 0x9

.field static final TRANSACTION_writeGp2apValue:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "meizu.os.IDeviceControlService"

    invoke-virtual {p0, p0, v0}, Lmeizu/os/IDeviceControlService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmeizu/os/IDeviceControlService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v1, "meizu.os.IDeviceControlService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmeizu/os/IDeviceControlService;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lmeizu/os/IDeviceControlService;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lmeizu/os/IDeviceControlService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lmeizu/os/IDeviceControlService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
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
    const/4 v3, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 205
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 48
    :sswitch_0
    const-string v4, "meizu.os.IDeviceControlService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v4, "meizu.os.IDeviceControlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lmeizu/os/IDeviceControlService$Stub;->saveCPUfreq(I)I

    move-result v2

    .line 57
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_2
    const-string v4, "meizu.os.IDeviceControlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lmeizu/os/IDeviceControlService$Stub;->readCPUfreq()I

    move-result v2

    .line 65
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v2    # "_result":I
    :sswitch_3
    const-string v4, "meizu.os.IDeviceControlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 76
    .local v1, "_arg1":[I
    invoke-virtual {p0, v0, v1}, Lmeizu/os/IDeviceControlService$Stub;->writeCfgParam(I[I)I

    move-result v2

    .line 77
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v2    # "_result":I
    :sswitch_4
    const-string v4, "meizu.os.IDeviceControlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 88
    .restart local v1    # "_arg1":[I
    invoke-virtual {p0, v0, v1}, Lmeizu/os/IDeviceControlService$Stub;->readCfgParam(I[I)I

    move-result v2

    .line 89
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 95
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v2    # "_result":I
    :sswitch_5
    const-string v4, "meizu.os.IDeviceControlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lmeizu/os/IDeviceControlService$Stub;->calibrateGp2ap()I

    move-result v2

    .line 97
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 103
    .end local v2    # "_result":I
    :sswitch_6
    const-string v4, "meizu.os.IDeviceControlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lmeizu/os/IDeviceControlService$Stub;->readGp2apValue()I

    move-result v2

    .line 105
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 111
    .end local v2    # "_result":I
    :sswitch_7
    const-string v4, "meizu.os.IDeviceControlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 114
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lmeizu/os/IDeviceControlService$Stub;->writeGp2apValue(I)I

    move-result v2

    .line 115
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 121
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_8
    const-string v4, "meizu.os.IDeviceControlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lmeizu/os/IDeviceControlService$Stub;->set_hdmi_cable_status(I)I

    move-result v2

    .line 125
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 131
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_9
    const-string v4, "meizu.os.IDeviceControlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmeizu/os/IDeviceControlService$Stub;->writeEarpodAdjustCmd(Ljava/lang/String;)I

    move-result v2

    .line 135
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 141
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_a
    const-string v4, "meizu.os.IDeviceControlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lmeizu/os/IDeviceControlService$Stub;->readEarpodAdjustState()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_b
    const-string v4, "meizu.os.IDeviceControlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lmeizu/os/IDeviceControlService$Stub;->readEarpodAdjustData()I

    move-result v2

    .line 151
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 157
    .end local v2    # "_result":I
    :sswitch_c
    const-string v4, "meizu.os.IDeviceControlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lmeizu/os/IDeviceControlService$Stub;->calibrateAcceAndGyroSensor()I

    move-result v2

    .line 159
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 165
    .end local v2    # "_result":I
    :sswitch_d
    const-string v4, "meizu.os.IDeviceControlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 168
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lmeizu/os/IDeviceControlService$Stub;->setNotificationLightEnable(I)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 174
    .end local v0    # "_arg0":I
    :sswitch_e
    const-string v4, "meizu.os.IDeviceControlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 178
    .local v0, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 179
    .local v1, "_arg1":B
    invoke-virtual {p0, v0, v1}, Lmeizu/os/IDeviceControlService$Stub;->writeByteToControl(BB)I

    move-result v2

    .line 180
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 186
    .end local v0    # "_arg0":B
    .end local v1    # "_arg1":B
    .end local v2    # "_result":I
    :sswitch_f
    const-string v4, "meizu.os.IDeviceControlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 189
    .restart local v0    # "_arg0":B
    invoke-virtual {p0, v0}, Lmeizu/os/IDeviceControlService$Stub;->resumeSystemControl(B)I

    move-result v2

    .line 190
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 196
    .end local v0    # "_arg0":B
    .end local v2    # "_result":I
    :sswitch_10
    const-string v4, "meizu.os.IDeviceControlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 199
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lmeizu/os/IDeviceControlService$Stub;->countAsRestart(I)I

    move-result v2

    .line 200
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 44
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
