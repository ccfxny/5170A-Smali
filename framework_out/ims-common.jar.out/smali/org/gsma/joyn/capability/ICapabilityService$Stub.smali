.class public abstract Lorg/gsma/joyn/capability/ICapabilityService$Stub;
.super Landroid/os/Binder;
.source "ICapabilityService.java"

# interfaces
.implements Lorg/gsma/joyn/capability/ICapabilityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/capability/ICapabilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/capability/ICapabilityService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.gsma.joyn.capability.ICapabilityService"

.field static final TRANSACTION_addCapabilitiesListener:I = 0x8

.field static final TRANSACTION_addContactCapabilitiesListener:I = 0xa

.field static final TRANSACTION_addServiceRegistrationListener:I = 0x2

.field static final TRANSACTION_getContactCapabilities:I = 0x5

.field static final TRANSACTION_getMyCapabilities:I = 0x4

.field static final TRANSACTION_getServiceVersion:I = 0xc

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_removeCapabilitiesListener:I = 0x9

.field static final TRANSACTION_removeContactCapabilitiesListener:I = 0xb

.field static final TRANSACTION_removeServiceRegistrationListener:I = 0x3

.field static final TRANSACTION_requestAllContactsCapabilities:I = 0x7

.field static final TRANSACTION_requestContactCapabilities:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "org.gsma.joyn.capability.ICapabilityService"

    invoke-virtual {p0, p0, v0}, Lorg/gsma/joyn/capability/ICapabilityService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/capability/ICapabilityService;
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
    const-string v1, "org.gsma.joyn.capability.ICapabilityService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/gsma/joyn/capability/ICapabilityService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lorg/gsma/joyn/capability/ICapabilityService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lorg/gsma/joyn/capability/ICapabilityService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/gsma/joyn/capability/ICapabilityService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v3, "org.gsma.joyn.capability.ICapabilityService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v5, "org.gsma.joyn.capability.ICapabilityService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lorg/gsma/joyn/capability/ICapabilityService$Stub;->isServiceRegistered()Z

    move-result v2

    .line 52
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v2    # "_result":Z
    :sswitch_2
    const-string v3, "org.gsma.joyn.capability.ICapabilityService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lorg/gsma/joyn/IJoynServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/IJoynServiceRegistrationListener;

    move-result-object v0

    .line 61
    .local v0, "_arg0":Lorg/gsma/joyn/IJoynServiceRegistrationListener;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/capability/ICapabilityService$Stub;->addServiceRegistrationListener(Lorg/gsma/joyn/IJoynServiceRegistrationListener;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    .end local v0    # "_arg0":Lorg/gsma/joyn/IJoynServiceRegistrationListener;
    :sswitch_3
    const-string v3, "org.gsma.joyn.capability.ICapabilityService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lorg/gsma/joyn/IJoynServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/IJoynServiceRegistrationListener;

    move-result-object v0

    .line 70
    .restart local v0    # "_arg0":Lorg/gsma/joyn/IJoynServiceRegistrationListener;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/capability/ICapabilityService$Stub;->removeServiceRegistrationListener(Lorg/gsma/joyn/IJoynServiceRegistrationListener;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 76
    .end local v0    # "_arg0":Lorg/gsma/joyn/IJoynServiceRegistrationListener;
    :sswitch_4
    const-string v5, "org.gsma.joyn.capability.ICapabilityService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lorg/gsma/joyn/capability/ICapabilityService$Stub;->getMyCapabilities()Lorg/gsma/joyn/capability/Capabilities;

    move-result-object v2

    .line 78
    .local v2, "_result":Lorg/gsma/joyn/capability/Capabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    invoke-virtual {v2, p3, v4}, Lorg/gsma/joyn/capability/Capabilities;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 90
    .end local v2    # "_result":Lorg/gsma/joyn/capability/Capabilities;
    :sswitch_5
    const-string v5, "org.gsma.joyn.capability.ICapabilityService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/capability/ICapabilityService$Stub;->getContactCapabilities(Ljava/lang/String;)Lorg/gsma/joyn/capability/Capabilities;

    move-result-object v2

    .line 94
    .restart local v2    # "_result":Lorg/gsma/joyn/capability/Capabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v2, :cond_2

    .line 96
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    invoke-virtual {v2, p3, v4}, Lorg/gsma/joyn/capability/Capabilities;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 106
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Lorg/gsma/joyn/capability/Capabilities;
    :sswitch_6
    const-string v3, "org.gsma.joyn.capability.ICapabilityService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/capability/ICapabilityService$Stub;->requestContactCapabilities(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 115
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string v3, "org.gsma.joyn.capability.ICapabilityService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lorg/gsma/joyn/capability/ICapabilityService$Stub;->requestAllContactsCapabilities()V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 122
    :sswitch_8
    const-string v3, "org.gsma.joyn.capability.ICapabilityService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lorg/gsma/joyn/capability/ICapabilitiesListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/capability/ICapabilitiesListener;

    move-result-object v0

    .line 125
    .local v0, "_arg0":Lorg/gsma/joyn/capability/ICapabilitiesListener;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/capability/ICapabilityService$Stub;->addCapabilitiesListener(Lorg/gsma/joyn/capability/ICapabilitiesListener;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 131
    .end local v0    # "_arg0":Lorg/gsma/joyn/capability/ICapabilitiesListener;
    :sswitch_9
    const-string v3, "org.gsma.joyn.capability.ICapabilityService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lorg/gsma/joyn/capability/ICapabilitiesListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/capability/ICapabilitiesListener;

    move-result-object v0

    .line 134
    .restart local v0    # "_arg0":Lorg/gsma/joyn/capability/ICapabilitiesListener;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/capability/ICapabilityService$Stub;->removeCapabilitiesListener(Lorg/gsma/joyn/capability/ICapabilitiesListener;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 140
    .end local v0    # "_arg0":Lorg/gsma/joyn/capability/ICapabilitiesListener;
    :sswitch_a
    const-string v3, "org.gsma.joyn.capability.ICapabilityService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lorg/gsma/joyn/capability/ICapabilitiesListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/capability/ICapabilitiesListener;

    move-result-object v1

    .line 145
    .local v1, "_arg1":Lorg/gsma/joyn/capability/ICapabilitiesListener;
    invoke-virtual {p0, v0, v1}, Lorg/gsma/joyn/capability/ICapabilityService$Stub;->addContactCapabilitiesListener(Ljava/lang/String;Lorg/gsma/joyn/capability/ICapabilitiesListener;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 151
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lorg/gsma/joyn/capability/ICapabilitiesListener;
    :sswitch_b
    const-string v3, "org.gsma.joyn.capability.ICapabilityService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lorg/gsma/joyn/capability/ICapabilitiesListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/capability/ICapabilitiesListener;

    move-result-object v1

    .line 156
    .restart local v1    # "_arg1":Lorg/gsma/joyn/capability/ICapabilitiesListener;
    invoke-virtual {p0, v0, v1}, Lorg/gsma/joyn/capability/ICapabilityService$Stub;->removeContactCapabilitiesListener(Ljava/lang/String;Lorg/gsma/joyn/capability/ICapabilitiesListener;)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 162
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lorg/gsma/joyn/capability/ICapabilitiesListener;
    :sswitch_c
    const-string v3, "org.gsma.joyn.capability.ICapabilityService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lorg/gsma/joyn/capability/ICapabilityService$Stub;->getServiceVersion()I

    move-result v2

    .line 164
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
