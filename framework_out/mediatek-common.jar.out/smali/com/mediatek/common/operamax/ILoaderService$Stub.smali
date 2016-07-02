.class public abstract Lcom/mediatek/common/operamax/ILoaderService$Stub;
.super Landroid/os/Binder;
.source "ILoaderService.java"

# interfaces
.implements Lcom/mediatek/common/operamax/ILoaderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/operamax/ILoaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.operamax.ILoaderService"

.field static final TRANSACTION_addDirectedApp:I = 0x8

.field static final TRANSACTION_addDirectedHeaderField:I = 0x12

.field static final TRANSACTION_addDirectedHost:I = 0xd

.field static final TRANSACTION_getCompressLevel:I = 0x18

.field static final TRANSACTION_getDirectedAppList:I = 0xc

.field static final TRANSACTION_getDirectedHeaderFieldList:I = 0x16

.field static final TRANSACTION_getDirectedHostList:I = 0x11

.field static final TRANSACTION_getSavingState:I = 0x4

.field static final TRANSACTION_getTunnelState:I = 0x3

.field static final TRANSACTION_isAppDirected:I = 0xb

.field static final TRANSACTION_isHeaderFieldDirected:I = 0x15

.field static final TRANSACTION_isHostDirected:I = 0x10

.field static final TRANSACTION_launchOperaMAX:I = 0x7

.field static final TRANSACTION_registerStateListener:I = 0x5

.field static final TRANSACTION_removeAllDirectedApps:I = 0xa

.field static final TRANSACTION_removeAllDirectedHeaderFields:I = 0x14

.field static final TRANSACTION_removeAllDirectedHosts:I = 0xf

.field static final TRANSACTION_removeDirectedApp:I = 0x9

.field static final TRANSACTION_removeDirectedHeaderField:I = 0x13

.field static final TRANSACTION_removeDirectedHost:I = 0xe

.field static final TRANSACTION_setCompressLevel:I = 0x17

.field static final TRANSACTION_startSaving:I = 0x1

.field static final TRANSACTION_stopSaving:I = 0x2

.field static final TRANSACTION_unregisterStateListener:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/operamax/ILoaderService;
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
    const-string v1, "com.mediatek.common.operamax.ILoaderService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/operamax/ILoaderService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/mediatek/common/operamax/ILoaderService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 253
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v3, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->startSaving()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 54
    :sswitch_2
    const-string v3, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->stopSaving()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    :sswitch_3
    const-string v3, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getTunnelState()I

    move-result v2

    .line 63
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 69
    .end local v2    # "_result":I
    :sswitch_4
    const-string v3, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getSavingState()I

    move-result v2

    .line 71
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    .end local v2    # "_result":I
    :sswitch_5
    const-string v3, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/operamax/ILoaderStateListener;

    move-result-object v0

    .line 80
    .local v0, "_arg0":Lcom/mediatek/common/operamax/ILoaderStateListener;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->registerStateListener(Lcom/mediatek/common/operamax/ILoaderStateListener;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 86
    .end local v0    # "_arg0":Lcom/mediatek/common/operamax/ILoaderStateListener;
    :sswitch_6
    const-string v3, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/operamax/ILoaderStateListener;

    move-result-object v0

    .line 89
    .restart local v0    # "_arg0":Lcom/mediatek/common/operamax/ILoaderStateListener;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->unregisterStateListener(Lcom/mediatek/common/operamax/ILoaderStateListener;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 95
    .end local v0    # "_arg0":Lcom/mediatek/common/operamax/ILoaderStateListener;
    :sswitch_7
    const-string v3, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->launchOperaMAX()V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 102
    :sswitch_8
    const-string v3, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->addDirectedApp(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 111
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_9
    const-string v3, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->removeDirectedApp(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 120
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string v3, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->removeAllDirectedApps()V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 127
    :sswitch_b
    const-string v5, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->isAppDirected(Ljava/lang/String;)Z

    move-result v2

    .line 131
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 137
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_c
    const-string v3, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDirectedAppList()[Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 145
    .end local v2    # "_result":[Ljava/lang/String;
    :sswitch_d
    const-string v3, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->addDirectedHost(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 154
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string v3, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->removeDirectedHost(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 163
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_f
    const-string v3, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->removeAllDirectedHosts()V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 170
    :sswitch_10
    const-string v5, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->isHostDirected(Ljava/lang/String;)Z

    move-result v2

    .line 174
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 180
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_11
    const-string v3, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDirectedHostList()[Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    .end local v2    # "_result":[Ljava/lang/String;
    :sswitch_12
    const-string v3, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->addDirectedHeaderField(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 199
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_13
    const-string v3, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 204
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->removeDirectedHeaderField(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 210
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_14
    const-string v3, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->removeAllDirectedHeaderFields()V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 217
    :sswitch_15
    const-string v5, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 221
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 222
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->isHeaderFieldDirected(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 223
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 229
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_16
    const-string v3, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDirectedHeaderFieldList()[Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 237
    .end local v2    # "_result":[Ljava/lang/String;
    :sswitch_17
    const-string v3, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 240
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->setCompressLevel(I)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 246
    .end local v0    # "_arg0":I
    :sswitch_18
    const-string v3, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getCompressLevel()I

    move-result v2

    .line 248
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
