.class public abstract Landroid/telephony/ITelephonyExt$Stub;
.super Landroid/os/Binder;
.source "ITelephonyExt.java"

# interfaces
.implements Landroid/telephony/ITelephonyExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ITelephonyExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ITelephonyExt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.telephony.ITelephonyExt"

.field static final TRANSACTION_answerRingingCallWithAnimate:I = 0xb

.field static final TRANSACTION_cancelAnswerRingCall:I = 0xc

.field static final TRANSACTION_cancelMissedRecordsNotification:I = 0x9

.field static final TRANSACTION_changeIccLockPassword:I = 0x18

.field static final TRANSACTION_changeIccLockPasswordBySlotId:I = 0x1e

.field static final TRANSACTION_generalCall:I = 0x21

.field static final TRANSACTION_generalCallForCallback:I = 0x22

.field static final TRANSACTION_get34GCapabilityPhoneId:I = 0x23

.field static final TRANSACTION_getCellLocation:I = 0x25

.field static final TRANSACTION_getIccLockEnabled:I = 0x16

.field static final TRANSACTION_getIccLockEnabledBySlotId:I = 0x1c

.field static final TRANSACTION_getLastError:I = 0xe

.field static final TRANSACTION_getPhoneName:I = 0x13

.field static final TRANSACTION_getPreferredNetworkType:I = 0x4

.field static final TRANSACTION_getScAddress:I = 0x1a

.field static final TRANSACTION_getServiceState:I = 0x14

.field static final TRANSACTION_getServiceStateBySlot:I = 0x15

.field static final TRANSACTION_getSmscAddress:I = 0x6

.field static final TRANSACTION_getUserPreferredNetwork:I = 0x11

.field static final TRANSACTION_getUserPreferredNetworkName:I = 0x12

.field static final TRANSACTION_initEmergencyCall:I = 0x8

.field static final TRANSACTION_isCapabilitySwitching:I = 0x24

.field static final TRANSACTION_isRealIncomingCallAndFore:I = 0xd

.field static final TRANSACTION_processKeyEvent:I = 0x5

.field static final TRANSACTION_queryLockCount:I = 0x1

.field static final TRANSACTION_queryProductSeqNo:I = 0x2

.field static final TRANSACTION_selectNetworkManually:I = 0xf

.field static final TRANSACTION_setDataRoamingEnabled:I = 0x1f

.field static final TRANSACTION_setIccLockEnabled:I = 0x17

.field static final TRANSACTION_setIccLockEnabledBySlotId:I = 0x1d

.field static final TRANSACTION_setNetworkSelectionModeAutomatic:I = 0x10

.field static final TRANSACTION_setPhoneRat:I = 0x20

.field static final TRANSACTION_setPreferredNetworkType:I = 0x3

.field static final TRANSACTION_setScAddress:I = 0x1b

.field static final TRANSACTION_setSmscAddress:I = 0x7

.field static final TRANSACTION_setVoiceMailNumber:I = 0xa

.field static final TRANSACTION_supplySimlock:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "android.telephony.ITelephonyExt"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ITelephonyExt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/ITelephonyExt;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "android.telephony.ITelephonyExt"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/ITelephonyExt;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Landroid/telephony/ITelephonyExt;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Landroid/telephony/ITelephonyExt$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/telephony/ITelephonyExt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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

    const/4 v5, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 453
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 49
    :sswitch_0
    const-string v4, "android.telephony.ITelephonyExt"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v4, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Landroid/telephony/ITelephonyExt$Stub;->queryLockCount()[I

    move-result-object v3

    .line 56
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 62
    .end local v3    # "_result":[I
    :sswitch_2
    const-string v4, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Landroid/telephony/ITelephonyExt$Stub;->queryProductSeqNo()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string v6, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 74
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 75
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/telephony/ITelephonyExt$Stub;->setPreferredNetworkType(II)Z

    move-result v3

    .line 76
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 82
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":Z
    :sswitch_4
    const-string v4, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/telephony/ITelephonyExt$Stub;->getPreferredNetworkType()I

    move-result v3

    .line 84
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 90
    .end local v3    # "_result":I
    :sswitch_5
    const-string v4, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 93
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/telephony/ITelephonyExt$Stub;->processKeyEvent(I)I

    move-result v3

    .line 94
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 100
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_6
    const-string v4, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Landroid/telephony/ITelephonyExt$Stub;->getSmscAddress()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string v4, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/telephony/ITelephonyExt$Stub;->setSmscAddress(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 117
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string v4, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/telephony/ITelephonyExt$Stub;->initEmergencyCall(Ljava/lang/String;)I

    move-result v3

    .line 121
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 127
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_9
    const-string v4, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Landroid/telephony/ITelephonyExt$Stub;->cancelMissedRecordsNotification()V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 134
    :sswitch_a
    const-string v6, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 139
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/telephony/ITelephonyExt$Stub;->setVoiceMailNumber(Ljava/lang/String;I)Z

    move-result v3

    .line 140
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 146
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v3    # "_result":Z
    :sswitch_b
    const-string v6, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/telephony/ITelephonyExt$Stub;->answerRingingCallWithAnimate()Z

    move-result v3

    .line 148
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v3, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 154
    .end local v3    # "_result":Z
    :sswitch_c
    const-string v4, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Landroid/telephony/ITelephonyExt$Stub;->cancelAnswerRingCall()V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 161
    :sswitch_d
    const-string v6, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Landroid/telephony/ITelephonyExt$Stub;->isRealIncomingCallAndFore()Z

    move-result v3

    .line 163
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v3, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 169
    .end local v3    # "_result":Z
    :sswitch_e
    const-string v4, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Landroid/telephony/ITelephonyExt$Stub;->getLastError()I

    move-result v3

    .line 171
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 177
    .end local v3    # "_result":I
    :sswitch_f
    const-string v6, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    .line 180
    sget-object v6, Lcom/android/internal/telephony/OperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OperatorInfo;

    .line 185
    .local v0, "_arg0":Lcom/android/internal/telephony/OperatorInfo;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/telephony/ITelephonyExt$Stub;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;)Z

    move-result v3

    .line 186
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v3, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 183
    .end local v0    # "_arg0":Lcom/android/internal/telephony/OperatorInfo;
    .end local v3    # "_result":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/android/internal/telephony/OperatorInfo;
    goto :goto_1

    .line 192
    .end local v0    # "_arg0":Lcom/android/internal/telephony/OperatorInfo;
    :sswitch_10
    const-string v6, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Landroid/telephony/ITelephonyExt$Stub;->setNetworkSelectionModeAutomatic()Z

    move-result v3

    .line 194
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    if-eqz v3, :cond_6

    move v4, v5

    :cond_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 200
    .end local v3    # "_result":Z
    :sswitch_11
    const-string v4, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Landroid/telephony/ITelephonyExt$Stub;->getUserPreferredNetwork()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 208
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_12
    const-string v4, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Landroid/telephony/ITelephonyExt$Stub;->getUserPreferredNetworkName()Ljava/lang/String;

    move-result-object v3

    .line 210
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 216
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_13
    const-string v4, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Landroid/telephony/ITelephonyExt$Stub;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    .line 218
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 224
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_14
    const-string v6, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Landroid/telephony/ITelephonyExt$Stub;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    .line 226
    .local v3, "_result":Landroid/telephony/ServiceState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    if-eqz v3, :cond_7

    .line 228
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    invoke-virtual {v3, p3, v5}, Landroid/telephony/ServiceState;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 232
    :cond_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 238
    .end local v3    # "_result":Landroid/telephony/ServiceState;
    :sswitch_15
    const-string v6, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 241
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/telephony/ITelephonyExt$Stub;->getServiceStateBySlot(I)Landroid/telephony/ServiceState;

    move-result-object v3

    .line 242
    .restart local v3    # "_result":Landroid/telephony/ServiceState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    if-eqz v3, :cond_8

    .line 244
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    invoke-virtual {v3, p3, v5}, Landroid/telephony/ServiceState;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 248
    :cond_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 254
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Landroid/telephony/ServiceState;
    :sswitch_16
    const-string v6, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Landroid/telephony/ITelephonyExt$Stub;->getIccLockEnabled()Z

    move-result v3

    .line 256
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    if-eqz v3, :cond_9

    move v4, v5

    :cond_9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 262
    .end local v3    # "_result":Z
    :sswitch_17
    const-string v6, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    move v0, v5

    .line 266
    .local v0, "_arg0":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/telephony/ITelephonyExt$Stub;->setIccLockEnabled(ZLjava/lang/String;)Z

    move-result v3

    .line 268
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    if-eqz v3, :cond_a

    move v4, v5

    :cond_a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :cond_b
    move v0, v4

    .line 264
    goto :goto_2

    .line 274
    :sswitch_18
    const-string v6, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 279
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/telephony/ITelephonyExt$Stub;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 280
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    if-eqz v3, :cond_c

    move v4, v5

    :cond_c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 286
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_19
    const-string v6, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 289
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/telephony/ITelephonyExt$Stub;->supplySimlock(Ljava/lang/String;)Z

    move-result v3

    .line 290
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    if-eqz v3, :cond_d

    move v4, v5

    :cond_d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 296
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_1a
    const-string v4, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 299
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/telephony/ITelephonyExt$Stub;->getScAddress(I)Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 306
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string v4, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 311
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/telephony/ITelephonyExt$Stub;->setScAddress(Ljava/lang/String;I)V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 317
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_1c
    const-string v6, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 320
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/telephony/ITelephonyExt$Stub;->getIccLockEnabledBySlotId(I)Z

    move-result v3

    .line 321
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    if-eqz v3, :cond_e

    move v4, v5

    :cond_e
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 327
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_1d
    const-string v6, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    move v0, v5

    .line 331
    .local v0, "_arg0":Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 334
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/telephony/ITelephonyExt$Stub;->setIccLockEnabledBySlotId(ZLjava/lang/String;I)Z

    move-result v3

    .line 335
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    if-eqz v3, :cond_f

    move v4, v5

    :cond_f
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :cond_10
    move v0, v4

    .line 329
    goto :goto_3

    .line 341
    :sswitch_1e
    const-string v6, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 347
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 348
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/telephony/ITelephonyExt$Stub;->changeIccLockPasswordBySlotId(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 349
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    if-eqz v3, :cond_11

    move v4, v5

    :cond_11
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 355
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :sswitch_1f
    const-string v6, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    move v0, v5

    .line 359
    .local v0, "_arg0":Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 360
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/telephony/ITelephonyExt$Stub;->setDataRoamingEnabled(ZI)V

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :cond_12
    move v0, v4

    .line 357
    goto :goto_4

    .line 366
    :sswitch_20
    const-string v6, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 369
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/telephony/ITelephonyExt$Stub;->setPhoneRat(I)Z

    move-result v3

    .line 370
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    if-eqz v3, :cond_13

    move v4, v5

    :cond_13
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 376
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_21
    const-string v6, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14

    .line 381
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 386
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/telephony/ITelephonyExt$Stub;->generalCall(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 387
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    if-eqz v3, :cond_15

    .line 389
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    invoke-virtual {v3, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 384
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_result":Landroid/os/Bundle;
    :cond_14
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_5

    .line 393
    .restart local v3    # "_result":Landroid/os/Bundle;
    :cond_15
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 399
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_result":Landroid/os/Bundle;
    :sswitch_22
    const-string v6, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/ITelephonyExtCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ITelephonyExtCallback;

    move-result-object v0

    .line 403
    .local v0, "_arg0":Landroid/telephony/ITelephonyExtCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_16

    .line 404
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 409
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_6
    invoke-virtual {p0, v0, v1}, Landroid/telephony/ITelephonyExt$Stub;->generalCallForCallback(Landroid/telephony/ITelephonyExtCallback;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 410
    .restart local v3    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    if-eqz v3, :cond_17

    .line 412
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    invoke-virtual {v3, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 407
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_result":Landroid/os/Bundle;
    :cond_16
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_6

    .line 416
    .restart local v3    # "_result":Landroid/os/Bundle;
    :cond_17
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 422
    .end local v0    # "_arg0":Landroid/telephony/ITelephonyExtCallback;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_result":Landroid/os/Bundle;
    :sswitch_23
    const-string v4, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Landroid/telephony/ITelephonyExt$Stub;->get34GCapabilityPhoneId()I

    move-result v3

    .line 424
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 430
    .end local v3    # "_result":I
    :sswitch_24
    const-string v6, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Landroid/telephony/ITelephonyExt$Stub;->isCapabilitySwitching()Z

    move-result v3

    .line 432
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    if-eqz v3, :cond_18

    move v4, v5

    :cond_18
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 438
    .end local v3    # "_result":Z
    :sswitch_25
    const-string v6, "android.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 441
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/telephony/ITelephonyExt$Stub;->getCellLocation(I)Landroid/os/Bundle;

    move-result-object v3

    .line 442
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    if-eqz v3, :cond_19

    .line 444
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    invoke-virtual {v3, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 448
    :cond_19
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 45
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
