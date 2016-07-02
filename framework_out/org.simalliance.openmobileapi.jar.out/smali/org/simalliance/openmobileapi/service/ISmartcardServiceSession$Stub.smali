.class public abstract Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub;
.super Landroid/os/Binder;
.source "ISmartcardServiceSession.java"

# interfaces
.implements Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.simalliance.openmobileapi.service.ISmartcardServiceSession"

.field static final TRANSACTION_close:I = 0x3

.field static final TRANSACTION_closeChannels:I = 0x4

.field static final TRANSACTION_getAtr:I = 0x2

.field static final TRANSACTION_getReader:I = 0x1

.field static final TRANSACTION_isClosed:I = 0x5

.field static final TRANSACTION_openBasicChannel:I = 0x6

.field static final TRANSACTION_openBasicChannelAid:I = 0x7

.field static final TRANSACTION_openLogicalChannel:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardServiceSession"

    invoke-virtual {p0, p0, v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;
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
    const-string v1, "org.simalliance.openmobileapi.service.ISmartcardServiceSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 163
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v4, "org.simalliance.openmobileapi.service.ISmartcardServiceSession"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "org.simalliance.openmobileapi.service.ISmartcardServiceSession"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub;->getReader()Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    move-result-object v3

    .line 49
    .local v3, "_result":Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 55
    .end local v3    # "_result":Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    :sswitch_2
    const-string v4, "org.simalliance.openmobileapi.service.ISmartcardServiceSession"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub;->getAtr()[B

    move-result-object v3

    .line 57
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 63
    .end local v3    # "_result":[B
    :sswitch_3
    const-string v4, "org.simalliance.openmobileapi.service.ISmartcardServiceSession"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    new-instance v0, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 66
    .local v0, "_arg0":Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub;->close(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    invoke-virtual {v0, p3, v5}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 79
    .end local v0    # "_arg0":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :sswitch_4
    const-string v4, "org.simalliance.openmobileapi.service.ISmartcardServiceSession"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    new-instance v0, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 82
    .restart local v0    # "_arg0":Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub;->closeChannels(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    invoke-virtual {v0, p3, v5}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 95
    .end local v0    # "_arg0":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :sswitch_5
    const-string v4, "org.simalliance.openmobileapi.service.ISmartcardServiceSession"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub;->isClosed()Z

    move-result v3

    .line 97
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v3, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_3
    move v4, v6

    goto :goto_1

    .line 103
    .end local v3    # "_result":Z
    :sswitch_6
    const-string v7, "org.simalliance.openmobileapi.service.ISmartcardServiceSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    move-result-object v0

    .line 107
    .local v0, "_arg0":Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 108
    .local v1, "_arg1":Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v0, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub;->openBasicChannel(Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    move-result-object v3

    .line 109
    .local v3, "_result":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v3, :cond_4

    invoke-interface {v3}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 111
    if-eqz v1, :cond_5

    .line 112
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    invoke-virtual {v1, p3, v5}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 116
    :cond_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 122
    .end local v0    # "_arg0":Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    .end local v1    # "_arg1":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v3    # "_result":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    :sswitch_7
    const-string v7, "org.simalliance.openmobileapi.service.ISmartcardServiceSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 126
    .local v0, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    move-result-object v1

    .line 128
    .local v1, "_arg1":Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    new-instance v2, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v2}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 129
    .local v2, "_arg2":Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v0, v1, v2}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub;->openBasicChannelAid([BLorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    move-result-object v3

    .line 130
    .restart local v3    # "_result":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v3, :cond_6

    invoke-interface {v3}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :cond_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 132
    if-eqz v2, :cond_7

    .line 133
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    invoke-virtual {v2, p3, v5}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 137
    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 143
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    .end local v2    # "_arg2":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v3    # "_result":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    :sswitch_8
    const-string v7, "org.simalliance.openmobileapi.service.ISmartcardServiceSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 147
    .restart local v0    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    move-result-object v1

    .line 149
    .restart local v1    # "_arg1":Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    new-instance v2, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v2}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 150
    .restart local v2    # "_arg2":Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v0, v1, v2}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub;->openLogicalChannel([BLorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    move-result-object v3

    .line 151
    .restart local v3    # "_result":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v3, :cond_8

    invoke-interface {v3}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :cond_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 153
    if-eqz v2, :cond_9

    .line 154
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    invoke-virtual {v2, p3, v5}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 158
    :cond_9
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
