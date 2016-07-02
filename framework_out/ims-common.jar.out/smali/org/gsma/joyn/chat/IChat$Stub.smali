.class public abstract Lorg/gsma/joyn/chat/IChat$Stub;
.super Landroid/os/Binder;
.source "IChat.java"

# interfaces
.implements Lorg/gsma/joyn/chat/IChat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/chat/IChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/chat/IChat$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.gsma.joyn.chat.IChat"

.field static final TRANSACTION_addEventListener:I = 0x5

.field static final TRANSACTION_getRemoteContact:I = 0x1

.field static final TRANSACTION_getState:I = 0x13

.field static final TRANSACTION_reSendMultiMessageByPagerMode:I = 0x9

.field static final TRANSACTION_removeEventListener:I = 0x6

.field static final TRANSACTION_resendMessage:I = 0x8

.field static final TRANSACTION_sendBurnDeliveryReport:I = 0x14

.field static final TRANSACTION_sendCloudMessage:I = 0x10

.field static final TRANSACTION_sendCloudMessageByLargeMode:I = 0xb

.field static final TRANSACTION_sendDisplayedDeliveryReport:I = 0x3

.field static final TRANSACTION_sendEmoticonShopMessage:I = 0xf

.field static final TRANSACTION_sendGeoloc:I = 0x7

.field static final TRANSACTION_sendIsComposingEvent:I = 0x4

.field static final TRANSACTION_sendLargeModeBurnMessage:I = 0x12

.field static final TRANSACTION_sendMessage:I = 0x2

.field static final TRANSACTION_sendMessageByLargeMode:I = 0xa

.field static final TRANSACTION_sendMessageByPagerMode:I = 0xd

.field static final TRANSACTION_sendOnetoMultiMessage:I = 0xe

.field static final TRANSACTION_sendPagerModeBurnMessage:I = 0x11

.field static final TRANSACTION_sendPublicAccountMessageByLargeMode:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "org.gsma.joyn.chat.IChat"

    invoke-virtual {p0, p0, v0}, Lorg/gsma/joyn/chat/IChat$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/chat/IChat;
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
    const-string v1, "org.gsma.joyn.chat.IChat"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/gsma/joyn/chat/IChat;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lorg/gsma/joyn/chat/IChat;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lorg/gsma/joyn/chat/IChat$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/gsma/joyn/chat/IChat$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 259
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 45
    :sswitch_0
    const-string v0, "org.gsma.joyn.chat.IChat"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "org.gsma.joyn.chat.IChat"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lorg/gsma/joyn/chat/IChat$Stub;->getRemoteContact()Ljava/lang/String;

    move-result-object v8

    .line 52
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string v0, "org.gsma.joyn.chat.IChat"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/gsma/joyn/chat/IChat$Stub;->sendMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 62
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string v0, "org.gsma.joyn.chat.IChat"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/gsma/joyn/chat/IChat$Stub;->sendDisplayedDeliveryReport(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 77
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string v10, "org.gsma.joyn.chat.IChat"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    move v1, v9

    .line 80
    .local v1, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v1}, Lorg/gsma/joyn/chat/IChat$Stub;->sendIsComposingEvent(Z)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1    # "_arg0":Z
    :cond_0
    move v1, v0

    .line 79
    goto :goto_1

    .line 86
    :sswitch_5
    const-string v0, "org.gsma.joyn.chat.IChat"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/gsma/joyn/chat/IChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/chat/IChatListener;

    move-result-object v1

    .line 89
    .local v1, "_arg0":Lorg/gsma/joyn/chat/IChatListener;
    invoke-virtual {p0, v1}, Lorg/gsma/joyn/chat/IChat$Stub;->addEventListener(Lorg/gsma/joyn/chat/IChatListener;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 95
    .end local v1    # "_arg0":Lorg/gsma/joyn/chat/IChatListener;
    :sswitch_6
    const-string v0, "org.gsma.joyn.chat.IChat"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/gsma/joyn/chat/IChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/chat/IChatListener;

    move-result-object v1

    .line 98
    .restart local v1    # "_arg0":Lorg/gsma/joyn/chat/IChatListener;
    invoke-virtual {p0, v1}, Lorg/gsma/joyn/chat/IChat$Stub;->removeEventListener(Lorg/gsma/joyn/chat/IChatListener;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 104
    .end local v1    # "_arg0":Lorg/gsma/joyn/chat/IChatListener;
    :sswitch_7
    const-string v0, "org.gsma.joyn.chat.IChat"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    sget-object v0, Lorg/gsma/joyn/chat/Geoloc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gsma/joyn/chat/Geoloc;

    .line 112
    .local v1, "_arg0":Lorg/gsma/joyn/chat/Geoloc;
    :goto_2
    invoke-virtual {p0, v1}, Lorg/gsma/joyn/chat/IChat$Stub;->sendGeoloc(Lorg/gsma/joyn/chat/Geoloc;)Ljava/lang/String;

    move-result-object v8

    .line 113
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    .end local v1    # "_arg0":Lorg/gsma/joyn/chat/Geoloc;
    .end local v8    # "_result":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lorg/gsma/joyn/chat/Geoloc;
    goto :goto_2

    .line 119
    .end local v1    # "_arg0":Lorg/gsma/joyn/chat/Geoloc;
    :sswitch_8
    const-string v0, "org.gsma.joyn.chat.IChat"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/gsma/joyn/chat/IChat$Stub;->resendMessage(Ljava/lang/String;)I

    move-result v8

    .line 123
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 129
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":I
    :sswitch_9
    const-string v0, "org.gsma.joyn.chat.IChat"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/gsma/joyn/chat/IChat$Stub;->reSendMultiMessageByPagerMode(Ljava/lang/String;)I

    move-result v8

    .line 133
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 139
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":I
    :sswitch_a
    const-string v0, "org.gsma.joyn.chat.IChat"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/gsma/joyn/chat/IChat$Stub;->sendMessageByLargeMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 143
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_b
    const-string v0, "org.gsma.joyn.chat.IChat"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 152
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/gsma/joyn/chat/IChat$Stub;->sendCloudMessageByLargeMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 153
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string v0, "org.gsma.joyn.chat.IChat"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 162
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/gsma/joyn/chat/IChat$Stub;->sendPublicAccountMessageByLargeMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 163
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string v10, "org.gsma.joyn.chat.IChat"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 173
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    move v2, v9

    .line 175
    .local v2, "_arg1":Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    move v3, v9

    .line 177
    .local v3, "_arg2":Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    move v4, v9

    .line 179
    .local v4, "_arg3":Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_5

    move v5, v9

    .line 181
    .local v5, "_arg4":Z
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .local v6, "_arg5":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    .line 182
    invoke-virtual/range {v0 .. v6}, Lorg/gsma/joyn/chat/IChat$Stub;->sendMessageByPagerMode(Ljava/lang/String;ZZZZLjava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 183
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "_result":Ljava/lang/String;
    :cond_2
    move v2, v0

    .line 173
    goto :goto_3

    .restart local v2    # "_arg1":Z
    :cond_3
    move v3, v0

    .line 175
    goto :goto_4

    .restart local v3    # "_arg2":Z
    :cond_4
    move v4, v0

    .line 177
    goto :goto_5

    .restart local v4    # "_arg3":Z
    :cond_5
    move v5, v0

    .line 179
    goto :goto_6

    .line 189
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    :sswitch_e
    const-string v0, "org.gsma.joyn.chat.IChat"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 193
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 194
    .local v7, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v7}, Lorg/gsma/joyn/chat/IChat$Stub;->sendOnetoMultiMessage(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 195
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 201
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string v0, "org.gsma.joyn.chat.IChat"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 204
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/gsma/joyn/chat/IChat$Stub;->sendEmoticonShopMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 205
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 211
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_10
    const-string v0, "org.gsma.joyn.chat.IChat"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 214
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/gsma/joyn/chat/IChat$Stub;->sendCloudMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 215
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_11
    const-string v0, "org.gsma.joyn.chat.IChat"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 224
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/gsma/joyn/chat/IChat$Stub;->sendPagerModeBurnMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 225
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 231
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_12
    const-string v0, "org.gsma.joyn.chat.IChat"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 234
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/gsma/joyn/chat/IChat$Stub;->sendLargeModeBurnMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 235
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 241
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_13
    const-string v0, "org.gsma.joyn.chat.IChat"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 244
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/gsma/joyn/chat/IChat$Stub;->getState(Ljava/lang/String;)I

    move-result v8

    .line 245
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 251
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":I
    :sswitch_14
    const-string v0, "org.gsma.joyn.chat.IChat"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 254
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/gsma/joyn/chat/IChat$Stub;->sendBurnDeliveryReport(Ljava/lang/String;)V

    .line 255
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
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
