.class public abstract Lcom/mediatek/common/dm/DmAgent$Stub;
.super Landroid/os/Binder;
.source "DmAgent.java"

# interfaces
.implements Lcom/mediatek/common/dm/DmAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/dm/DmAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/dm/DmAgent$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.dm.DmAgent"

.field static final TRANSACTION_clearLockFlag:I = 0x5

.field static final TRANSACTION_clearOtaResult:I = 0x19

.field static final TRANSACTION_clearRebootFlag:I = 0x11

.field static final TRANSACTION_clearWipeFlag:I = 0x17

.field static final TRANSACTION_getDmSwitchValue:I = 0x1c

.field static final TRANSACTION_getLockType:I = 0xc

.field static final TRANSACTION_getMacAddr:I = 0x26

.field static final TRANSACTION_getOperatorId:I = 0xd

.field static final TRANSACTION_getOperatorName:I = 0xe

.field static final TRANSACTION_getRegisterSwitch:I = 0x9

.field static final TRANSACTION_getSmsRegSwitchValue:I = 0x1e

.field static final TRANSACTION_getSwitchValue:I = 0x1a

.field static final TRANSACTION_getUpgradeStatus:I = 0x13

.field static final TRANSACTION_isBootRecoveryFlag:I = 0x12

.field static final TRANSACTION_isHangMoCallLocking:I = 0xf

.field static final TRANSACTION_isHangMtCallLocking:I = 0x10

.field static final TRANSACTION_isLockFlagSet:I = 0x3

.field static final TRANSACTION_isWipeSet:I = 0x15

.field static final TRANSACTION_readDmTree:I = 0x1

.field static final TRANSACTION_readIccID1:I = 0x29

.field static final TRANSACTION_readIccID2:I = 0x2a

.field static final TRANSACTION_readImsi:I = 0x6

.field static final TRANSACTION_readImsi1:I = 0x24

.field static final TRANSACTION_readImsi2:I = 0x25

.field static final TRANSACTION_readOperatorName:I = 0x8

.field static final TRANSACTION_readOtaResult:I = 0x18

.field static final TRANSACTION_readRegisterFlag:I = 0x21

.field static final TRANSACTION_readSelfRegisterFlag:I = 0x2c

.field static final TRANSACTION_restartAndroid:I = 0x14

.field static final TRANSACTION_setDmSwitchValue:I = 0x1d

.field static final TRANSACTION_setLockFlag:I = 0x4

.field static final TRANSACTION_setRebootFlag:I = 0xb

.field static final TRANSACTION_setRegisterFlag:I = 0x20

.field static final TRANSACTION_setRegisterSwitch:I = 0xa

.field static final TRANSACTION_setSelfRegisterFlag:I = 0x2b

.field static final TRANSACTION_setSmsRegSwitchValue:I = 0x1f

.field static final TRANSACTION_setSwitchValue:I = 0x1b

.field static final TRANSACTION_setWipeFlag:I = 0x16

.field static final TRANSACTION_writeDmTree:I = 0x2

.field static final TRANSACTION_writeIccID1:I = 0x27

.field static final TRANSACTION_writeIccID2:I = 0x28

.field static final TRANSACTION_writeImsi:I = 0x7

.field static final TRANSACTION_writeImsi1:I = 0x22

.field static final TRANSACTION_writeImsi2:I = 0x23


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/dm/DmAgent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.mediatek.common.dm.DmAgent"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/dm/DmAgent;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/mediatek/common/dm/DmAgent;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/mediatek/common/dm/DmAgent$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/common/dm/DmAgent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
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

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 440
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 46
    :sswitch_0
    const-string v3, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v3, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->readDmTree()[B

    move-result-object v2

    .line 53
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 59
    .end local v2    # "_result":[B
    :sswitch_2
    const-string v5, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 62
    .local v0, "_arg0":[B
    invoke-virtual {p0, v0}, Lcom/mediatek/common/dm/DmAgent$Stub;->writeDmTree([B)Z

    move-result v2

    .line 63
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 69
    .end local v0    # "_arg0":[B
    .end local v2    # "_result":Z
    :sswitch_3
    const-string v5, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->isLockFlagSet()Z

    move-result v2

    .line 71
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    .end local v2    # "_result":Z
    :sswitch_4
    const-string v5, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 80
    .restart local v0    # "_arg0":[B
    invoke-virtual {p0, v0}, Lcom/mediatek/common/dm/DmAgent$Stub;->setLockFlag([B)Z

    move-result v2

    .line 81
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 87
    .end local v0    # "_arg0":[B
    .end local v2    # "_result":Z
    :sswitch_5
    const-string v5, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->clearLockFlag()Z

    move-result v2

    .line 89
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 95
    .end local v2    # "_result":Z
    :sswitch_6
    const-string v3, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->readImsi()[B

    move-result-object v2

    .line 97
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 103
    .end local v2    # "_result":[B
    :sswitch_7
    const-string v5, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 106
    .restart local v0    # "_arg0":[B
    invoke-virtual {p0, v0}, Lcom/mediatek/common/dm/DmAgent$Stub;->writeImsi([B)Z

    move-result v2

    .line 107
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v2, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 113
    .end local v0    # "_arg0":[B
    .end local v2    # "_result":Z
    :sswitch_8
    const-string v3, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->readOperatorName()[B

    move-result-object v2

    .line 115
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 121
    .end local v2    # "_result":[B
    :sswitch_9
    const-string v3, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->getRegisterSwitch()[B

    move-result-object v2

    .line 123
    .restart local v2    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 129
    .end local v2    # "_result":[B
    :sswitch_a
    const-string v5, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 132
    .restart local v0    # "_arg0":[B
    invoke-virtual {p0, v0}, Lcom/mediatek/common/dm/DmAgent$Stub;->setRegisterSwitch([B)Z

    move-result v2

    .line 133
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v2, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 139
    .end local v0    # "_arg0":[B
    .end local v2    # "_result":Z
    :sswitch_b
    const-string v5, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->setRebootFlag()Z

    move-result v2

    .line 141
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    if-eqz v2, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 147
    .end local v2    # "_result":Z
    :sswitch_c
    const-string v3, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->getLockType()I

    move-result v2

    .line 149
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 155
    .end local v2    # "_result":I
    :sswitch_d
    const-string v3, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->getOperatorId()I

    move-result v2

    .line 157
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 163
    .end local v2    # "_result":I
    :sswitch_e
    const-string v3, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->getOperatorName()[B

    move-result-object v2

    .line 165
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 171
    .end local v2    # "_result":[B
    :sswitch_f
    const-string v5, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->isHangMoCallLocking()Z

    move-result v2

    .line 173
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v2, :cond_7

    move v3, v4

    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 179
    .end local v2    # "_result":Z
    :sswitch_10
    const-string v5, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->isHangMtCallLocking()Z

    move-result v2

    .line 181
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    if-eqz v2, :cond_8

    move v3, v4

    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 187
    .end local v2    # "_result":Z
    :sswitch_11
    const-string v5, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->clearRebootFlag()Z

    move-result v2

    .line 189
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v2, :cond_9

    move v3, v4

    :cond_9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 195
    .end local v2    # "_result":Z
    :sswitch_12
    const-string v5, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->isBootRecoveryFlag()Z

    move-result v2

    .line 197
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v2, :cond_a

    move v3, v4

    :cond_a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 203
    .end local v2    # "_result":Z
    :sswitch_13
    const-string v3, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->getUpgradeStatus()I

    move-result v2

    .line 205
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 211
    .end local v2    # "_result":I
    :sswitch_14
    const-string v3, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->restartAndroid()I

    move-result v2

    .line 213
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 219
    .end local v2    # "_result":I
    :sswitch_15
    const-string v5, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->isWipeSet()Z

    move-result v2

    .line 221
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    if-eqz v2, :cond_b

    move v3, v4

    :cond_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 227
    .end local v2    # "_result":Z
    :sswitch_16
    const-string v5, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->setWipeFlag()Z

    move-result v2

    .line 229
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    if-eqz v2, :cond_c

    move v3, v4

    :cond_c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 235
    .end local v2    # "_result":Z
    :sswitch_17
    const-string v5, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->clearWipeFlag()Z

    move-result v2

    .line 237
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    if-eqz v2, :cond_d

    move v3, v4

    :cond_d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 243
    .end local v2    # "_result":Z
    :sswitch_18
    const-string v3, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->readOtaResult()I

    move-result v2

    .line 245
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 251
    .end local v2    # "_result":I
    :sswitch_19
    const-string v3, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->clearOtaResult()I

    move-result v2

    .line 253
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 259
    .end local v2    # "_result":I
    :sswitch_1a
    const-string v3, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->getSwitchValue()[B

    move-result-object v2

    .line 261
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 267
    .end local v2    # "_result":[B
    :sswitch_1b
    const-string v5, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 270
    .restart local v0    # "_arg0":[B
    invoke-virtual {p0, v0}, Lcom/mediatek/common/dm/DmAgent$Stub;->setSwitchValue([B)Z

    move-result v2

    .line 271
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    if-eqz v2, :cond_e

    move v3, v4

    :cond_e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 277
    .end local v0    # "_arg0":[B
    .end local v2    # "_result":Z
    :sswitch_1c
    const-string v3, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->getDmSwitchValue()[B

    move-result-object v2

    .line 279
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 285
    .end local v2    # "_result":[B
    :sswitch_1d
    const-string v5, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 288
    .restart local v0    # "_arg0":[B
    invoke-virtual {p0, v0}, Lcom/mediatek/common/dm/DmAgent$Stub;->setDmSwitchValue([B)Z

    move-result v2

    .line 289
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    if-eqz v2, :cond_f

    move v3, v4

    :cond_f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 295
    .end local v0    # "_arg0":[B
    .end local v2    # "_result":Z
    :sswitch_1e
    const-string v3, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->getSmsRegSwitchValue()[B

    move-result-object v2

    .line 297
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 303
    .end local v2    # "_result":[B
    :sswitch_1f
    const-string v5, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 306
    .restart local v0    # "_arg0":[B
    invoke-virtual {p0, v0}, Lcom/mediatek/common/dm/DmAgent$Stub;->setSmsRegSwitchValue([B)Z

    move-result v2

    .line 307
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    if-eqz v2, :cond_10

    move v3, v4

    :cond_10
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 313
    .end local v0    # "_arg0":[B
    .end local v2    # "_result":Z
    :sswitch_20
    const-string v5, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 317
    .restart local v0    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 318
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/dm/DmAgent$Stub;->setRegisterFlag([BI)Z

    move-result v2

    .line 319
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    if-eqz v2, :cond_11

    move v3, v4

    :cond_11
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 325
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :sswitch_21
    const-string v3, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->readRegisterFlag()[B

    move-result-object v2

    .line 327
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 333
    .end local v2    # "_result":[B
    :sswitch_22
    const-string v5, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 337
    .restart local v0    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 338
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/dm/DmAgent$Stub;->writeImsi1([BI)Z

    move-result v2

    .line 339
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    if-eqz v2, :cond_12

    move v3, v4

    :cond_12
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 345
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :sswitch_23
    const-string v5, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 349
    .restart local v0    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 350
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/dm/DmAgent$Stub;->writeImsi2([BI)Z

    move-result v2

    .line 351
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    if-eqz v2, :cond_13

    move v3, v4

    :cond_13
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 357
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :sswitch_24
    const-string v3, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->readImsi1()[B

    move-result-object v2

    .line 359
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 365
    .end local v2    # "_result":[B
    :sswitch_25
    const-string v3, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->readImsi2()[B

    move-result-object v2

    .line 367
    .restart local v2    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 373
    .end local v2    # "_result":[B
    :sswitch_26
    const-string v3, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->getMacAddr()[B

    move-result-object v2

    .line 375
    .restart local v2    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 381
    .end local v2    # "_result":[B
    :sswitch_27
    const-string v5, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 385
    .restart local v0    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 386
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/dm/DmAgent$Stub;->writeIccID1([BI)Z

    move-result v2

    .line 387
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    if-eqz v2, :cond_14

    move v3, v4

    :cond_14
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 393
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :sswitch_28
    const-string v5, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 397
    .restart local v0    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 398
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/dm/DmAgent$Stub;->writeIccID2([BI)Z

    move-result v2

    .line 399
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    if-eqz v2, :cond_15

    move v3, v4

    :cond_15
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 405
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :sswitch_29
    const-string v3, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->readIccID1()[B

    move-result-object v2

    .line 407
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 413
    .end local v2    # "_result":[B
    :sswitch_2a
    const-string v3, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->readIccID2()[B

    move-result-object v2

    .line 415
    .restart local v2    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 421
    .end local v2    # "_result":[B
    :sswitch_2b
    const-string v5, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 425
    .restart local v0    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 426
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/dm/DmAgent$Stub;->setSelfRegisterFlag([BI)Z

    move-result v2

    .line 427
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    if-eqz v2, :cond_16

    move v3, v4

    :cond_16
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 433
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :sswitch_2c
    const-string v3, "com.mediatek.common.dm.DmAgent"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DmAgent$Stub;->readSelfRegisterFlag()[B

    move-result-object v2

    .line 435
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 42
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
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
