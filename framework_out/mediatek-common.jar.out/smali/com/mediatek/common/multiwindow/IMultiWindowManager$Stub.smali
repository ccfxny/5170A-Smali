.class public abstract Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;
.super Landroid/os/Binder;
.source "IMultiWindowManager.java"

# interfaces
.implements Lcom/mediatek/common/multiwindow/IMultiWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/multiwindow/IMultiWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.multiwindow.IMultiWindowManager"

.field static final TRANSACTION_activityCreated:I = 0x1e

.field static final TRANSACTION_addConfigNotChangePkg:I = 0x1a

.field static final TRANSACTION_addDisableFloatPkg:I = 0x19

.field static final TRANSACTION_addMiniMaxRestartPkg:I = 0x1b

.field static final TRANSACTION_appErrorHandling:I = 0x1c

.field static final TRANSACTION_closeWindow:I = 0x2

.field static final TRANSACTION_enableFocusedFrame:I = 0xe

.field static final TRANSACTION_getDisableFloatComponentList:I = 0x16

.field static final TRANSACTION_getDisableFloatPkgList:I = 0x15

.field static final TRANSACTION_isFloatingStack:I = 0x7

.field static final TRANSACTION_isInMiniMax:I = 0xb

.field static final TRANSACTION_isStickStack:I = 0xa

.field static final TRANSACTION_isSticky:I = 0x1d

.field static final TRANSACTION_matchConfigChangeList:I = 0x18

.field static final TRANSACTION_matchConfigNotChangeList:I = 0x11

.field static final TRANSACTION_matchDisableFloatActivityList:I = 0x13

.field static final TRANSACTION_matchDisableFloatPkgList:I = 0x12

.field static final TRANSACTION_matchDisableFloatWinList:I = 0x14

.field static final TRANSACTION_matchMinimaxRestartList:I = 0x17

.field static final TRANSACTION_miniMaxTask:I = 0xf

.field static final TRANSACTION_moveActivityTaskToFront:I = 0x1

.field static final TRANSACTION_moveFloatingWindow:I = 0xc

.field static final TRANSACTION_resizeFloatingWindow:I = 0xd

.field static final TRANSACTION_restoreWindow:I = 0x3

.field static final TRANSACTION_setAMSCallback:I = 0x4

.field static final TRANSACTION_setFloatingStack:I = 0x8

.field static final TRANSACTION_setSystemUiCallback:I = 0x5

.field static final TRANSACTION_setWMSCallback:I = 0x9

.field static final TRANSACTION_showRestoreButton:I = 0x10

.field static final TRANSACTION_stickWindow:I = 0x6

.field static final TRANSACTION_taskAdded:I = 0x1f

.field static final TRANSACTION_taskRemoved:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 362
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 47
    :sswitch_0
    const-string v6, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v6, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 55
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->moveActivityTaskToFront(Landroid/os/IBinder;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_2
    const-string v6, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 64
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->closeWindow(Landroid/os/IBinder;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 70
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_3
    const-string v7, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 74
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    move v1, v5

    .line 75
    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->restoreWindow(Landroid/os/IBinder;Z)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1    # "_arg1":Z
    :cond_0
    move v1, v6

    .line 74
    goto :goto_1

    .line 81
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_4
    const-string v6, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/common/multiwindow/IMWAmsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/multiwindow/IMWAmsCallback;

    move-result-object v0

    .line 84
    .local v0, "_arg0":Lcom/mediatek/common/multiwindow/IMWAmsCallback;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->setAMSCallback(Lcom/mediatek/common/multiwindow/IMWAmsCallback;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 90
    .end local v0    # "_arg0":Lcom/mediatek/common/multiwindow/IMWAmsCallback;
    :sswitch_5
    const-string v6, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/common/multiwindow/IMWSystemUiCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;

    move-result-object v0

    .line 93
    .local v0, "_arg0":Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->setSystemUiCallback(Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 99
    .end local v0    # "_arg0":Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;
    :sswitch_6
    const-string v7, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 103
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    move v1, v5

    .line 104
    .restart local v1    # "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->stickWindow(Landroid/os/IBinder;Z)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1    # "_arg1":Z
    :cond_1
    move v1, v6

    .line 103
    goto :goto_2

    .line 110
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_7
    const-string v7, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->isFloatingStack(I)Z

    move-result v3

    .line 114
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v3, :cond_2

    move v6, v5

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 120
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_8
    const-string v6, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 123
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->setFloatingStack(I)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 129
    .end local v0    # "_arg0":I
    :sswitch_9
    const-string v6, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/common/multiwindow/IMWWmsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/multiwindow/IMWWmsCallback;

    move-result-object v0

    .line 132
    .local v0, "_arg0":Lcom/mediatek/common/multiwindow/IMWWmsCallback;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->setWMSCallback(Lcom/mediatek/common/multiwindow/IMWWmsCallback;)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 138
    .end local v0    # "_arg0":Lcom/mediatek/common/multiwindow/IMWWmsCallback;
    :sswitch_a
    const-string v7, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 141
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->isStickStack(I)Z

    move-result v3

    .line 142
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v3, :cond_3

    move v6, v5

    :cond_3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 148
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_b
    const-string v7, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->isInMiniMax(I)Z

    move-result v3

    .line 152
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v3, :cond_4

    move v6, v5

    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 158
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_c
    const-string v6, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 162
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 163
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->moveFloatingWindow(II)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 169
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_d
    const-string v6, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 173
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 175
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 176
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->resizeFloatingWindow(III)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 182
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_e
    const-string v7, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    move v0, v5

    .line 185
    .local v0, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->enableFocusedFrame(Z)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_5
    move v0, v6

    .line 184
    goto :goto_3

    .line 191
    :sswitch_f
    const-string v6, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 194
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->miniMaxTask(I)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 200
    .end local v0    # "_arg0":I
    :sswitch_10
    const-string v7, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6

    move v0, v5

    .line 203
    .local v0, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->showRestoreButton(Z)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_6
    move v0, v6

    .line 202
    goto :goto_4

    .line 209
    :sswitch_11
    const-string v7, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->matchConfigNotChangeList(Ljava/lang/String;)Z

    move-result v3

    .line 213
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-eqz v3, :cond_7

    move v6, v5

    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 219
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_12
    const-string v7, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 222
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->matchDisableFloatPkgList(Ljava/lang/String;)Z

    move-result v3

    .line 223
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    if-eqz v3, :cond_8

    move v6, v5

    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 229
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_13
    const-string v7, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->matchDisableFloatActivityList(Ljava/lang/String;)Z

    move-result v3

    .line 233
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    if-eqz v3, :cond_9

    move v6, v5

    :cond_9
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 239
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_14
    const-string v7, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 242
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->matchDisableFloatWinList(Ljava/lang/String;)Z

    move-result v3

    .line 243
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v3, :cond_a

    move v6, v5

    :cond_a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 249
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_15
    const-string v6, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->getDisableFloatPkgList()Ljava/util/List;

    move-result-object v4

    .line 251
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 257
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_16
    const-string v6, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->getDisableFloatComponentList()Ljava/util/List;

    move-result-object v4

    .line 259
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 265
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_17
    const-string v7, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->matchMinimaxRestartList(Ljava/lang/String;)Z

    move-result v3

    .line 269
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    if-eqz v3, :cond_b

    move v6, v5

    :cond_b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 275
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_18
    const-string v7, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 278
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->matchConfigChangeList(Ljava/lang/String;)Z

    move-result v3

    .line 279
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    if-eqz v3, :cond_c

    move v6, v5

    :cond_c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 285
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_19
    const-string v6, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->addDisableFloatPkg(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 294
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_1a
    const-string v6, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 297
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->addConfigNotChangePkg(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 303
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_1b
    const-string v6, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 306
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->addMiniMaxRestartPkg(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 312
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_1c
    const-string v7, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 316
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_d

    move v1, v5

    .line 318
    .local v1, "_arg1":Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_e

    move v2, v5

    .line 319
    .local v2, "_arg2":Z
    :goto_6
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->appErrorHandling(Ljava/lang/String;ZZ)I

    move-result v3

    .line 320
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":I
    :cond_d
    move v1, v6

    .line 316
    goto :goto_5

    .restart local v1    # "_arg1":Z
    :cond_e
    move v2, v6

    .line 318
    goto :goto_6

    .line 326
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :sswitch_1d
    const-string v7, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 329
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->isSticky(Landroid/os/IBinder;)Z

    move-result v3

    .line 330
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    if-eqz v3, :cond_f

    move v6, v5

    :cond_f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 336
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :sswitch_1e
    const-string v6, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 339
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->activityCreated(Landroid/os/IBinder;)V

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 345
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_1f
    const-string v6, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 348
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->taskAdded(I)V

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 354
    .end local v0    # "_arg0":I
    :sswitch_20
    const-string v6, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 357
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->taskRemoved(I)V

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
