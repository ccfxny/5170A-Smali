.class public abstract Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$Stub;
.super Landroid/os/Binder;
.source "ISmartcardServiceChannel.java"

# interfaces
.implements Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.simalliance.openmobileapi.service.ISmartcardServiceChannel"

.field static final TRANSACTION_close:I = 0x1

.field static final TRANSACTION_getSelectResponse:I = 0x4

.field static final TRANSACTION_getSession:I = 0x5

.field static final TRANSACTION_isBasicChannel:I = 0x3

.field static final TRANSACTION_isClosed:I = 0x2

.field static final TRANSACTION_selectNext:I = 0x7

.field static final TRANSACTION_transmit:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardServiceChannel"

    invoke-virtual {p0, p0, v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
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
    const-string v1, "org.simalliance.openmobileapi.service.ISmartcardServiceChannel"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v3, "org.simalliance.openmobileapi.service.ISmartcardServiceChannel"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "org.simalliance.openmobileapi.service.ISmartcardServiceChannel"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    new-instance v0, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 50
    .local v0, "_arg0":Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$Stub;->close(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    invoke-virtual {v0, p3, v4}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v0    # "_arg0":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :sswitch_2
    const-string v5, "org.simalliance.openmobileapi.service.ISmartcardServiceChannel"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$Stub;->isClosed()Z

    move-result v2

    .line 65
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v2    # "_result":Z
    :sswitch_3
    const-string v5, "org.simalliance.openmobileapi.service.ISmartcardServiceChannel"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$Stub;->isBasicChannel()Z

    move-result v2

    .line 73
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 79
    .end local v2    # "_result":Z
    :sswitch_4
    const-string v3, "org.simalliance.openmobileapi.service.ISmartcardServiceChannel"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$Stub;->getSelectResponse()[B

    move-result-object v2

    .line 81
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 87
    .end local v2    # "_result":[B
    :sswitch_5
    const-string v3, "org.simalliance.openmobileapi.service.ISmartcardServiceChannel"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$Stub;->getSession()Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    move-result-object v2

    .line 89
    .local v2, "_result":Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 95
    .end local v2    # "_result":Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;
    :sswitch_6
    const-string v5, "org.simalliance.openmobileapi.service.ISmartcardServiceChannel"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 99
    .local v0, "_arg0":[B
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 100
    .local v1, "_arg1":Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v0, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$Stub;->transmit([BLorg/simalliance/openmobileapi/service/SmartcardError;)[B

    move-result-object v2

    .line 101
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 103
    if-eqz v1, :cond_4

    .line 104
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {v1, p3, v4}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 108
    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 114
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v2    # "_result":[B
    :sswitch_7
    const-string v5, "org.simalliance.openmobileapi.service.ISmartcardServiceChannel"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    new-instance v0, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 117
    .local v0, "_arg0":Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$Stub;->selectNext(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v2

    .line 118
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v2, :cond_5

    move v5, v4

    :goto_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    if-eqz v0, :cond_6

    .line 121
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {v0, p3, v4}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_5
    move v5, v3

    .line 119
    goto :goto_2

    .line 125
    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
