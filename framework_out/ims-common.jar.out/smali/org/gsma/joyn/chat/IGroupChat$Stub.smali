.class public abstract Lorg/gsma/joyn/chat/IGroupChat$Stub;
.super Landroid/os/Binder;
.source "IGroupChat.java"

# interfaces
.implements Lorg/gsma/joyn/chat/IGroupChat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/chat/IGroupChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/chat/IGroupChat$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.gsma.joyn.chat.IGroupChat"

.field static final TRANSACTION_abortConversation:I = 0x1c

.field static final TRANSACTION_acceptInvitation:I = 0x8

.field static final TRANSACTION_addEventListener:I = 0x13

.field static final TRANSACTION_addParticipants:I = 0xe

.field static final TRANSACTION_getAllParticipants:I = 0x7

.field static final TRANSACTION_getChatId:I = 0x1

.field static final TRANSACTION_getChatSessionId:I = 0x2

.field static final TRANSACTION_getDirection:I = 0x3

.field static final TRANSACTION_getMaxParticipants:I = 0xf

.field static final TRANSACTION_getMessageState:I = 0x10

.field static final TRANSACTION_getParticipants:I = 0x6

.field static final TRANSACTION_getRemoteContact:I = 0x15

.field static final TRANSACTION_getState:I = 0x4

.field static final TRANSACTION_getSubject:I = 0x5

.field static final TRANSACTION_isMeChairman:I = 0x1d

.field static final TRANSACTION_modifyMyNickName:I = 0x1a

.field static final TRANSACTION_modifySubject:I = 0x19

.field static final TRANSACTION_quitConversation:I = 0x12

.field static final TRANSACTION_rejectInvitation:I = 0x9

.field static final TRANSACTION_removeEventListener:I = 0x14

.field static final TRANSACTION_removeParticipants:I = 0x1b

.field static final TRANSACTION_resendMessage:I = 0x11

.field static final TRANSACTION_sendDisplayedDeliveryReport:I = 0xd

.field static final TRANSACTION_sendEmoticonsMessage:I = 0xb

.field static final TRANSACTION_sendFile:I = 0x17

.field static final TRANSACTION_sendGeoloc:I = 0x16

.field static final TRANSACTION_sendIsComposingEvent:I = 0xc

.field static final TRANSACTION_sendMessage:I = 0xa

.field static final TRANSACTION_transferChairman:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p0, p0, v0}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/chat/IGroupChat;
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
    const-string v1, "org.gsma.joyn.chat.IGroupChat"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/gsma/joyn/chat/IGroupChat;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lorg/gsma/joyn/chat/IGroupChat;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lorg/gsma/joyn/chat/IGroupChat$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/gsma/joyn/chat/IGroupChat$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 307
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 45
    :sswitch_0
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->getChatId()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->getChatSessionId()Ljava/lang/String;

    move-result-object v4

    .line 60
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->getDirection()I

    move-result v4

    .line 68
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v4    # "_result":I
    :sswitch_4
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->getState()I

    move-result v4

    .line 76
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 82
    .end local v4    # "_result":I
    :sswitch_5
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->getSubject()Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->getParticipants()Ljava/util/List;

    move-result-object v5

    .line 92
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    .line 98
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_7
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->getAllParticipants()Ljava/util/List;

    move-result-object v5

    .line 100
    .restart local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    .line 106
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_8
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->acceptInvitation()V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 113
    :sswitch_9
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->rejectInvitation()V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 120
    :sswitch_a
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->sendMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 124
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_b
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->sendEmoticonsMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    move v0, v6

    .line 143
    .local v0, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->sendIsComposingEvent(Z)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 149
    .end local v0    # "_arg0":Z
    :sswitch_d
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->sendDisplayedDeliveryReport(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 158
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 161
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->addParticipants(Ljava/util/List;)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 167
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_f
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->getMaxParticipants()I

    move-result v4

    .line 169
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 175
    .end local v4    # "_result":I
    :sswitch_10
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->getMessageState(Ljava/lang/String;)I

    move-result v4

    .line 179
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 185
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_11
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->resendMessage(Ljava/lang/String;)I

    move-result v4

    .line 189
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 195
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_12
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->quitConversation()V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 202
    :sswitch_13
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/chat/IGroupChatListener;

    move-result-object v0

    .line 205
    .local v0, "_arg0":Lorg/gsma/joyn/chat/IGroupChatListener;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->addEventListener(Lorg/gsma/joyn/chat/IGroupChatListener;)V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 211
    .end local v0    # "_arg0":Lorg/gsma/joyn/chat/IGroupChatListener;
    :sswitch_14
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/chat/IGroupChatListener;

    move-result-object v0

    .line 214
    .restart local v0    # "_arg0":Lorg/gsma/joyn/chat/IGroupChatListener;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->removeEventListener(Lorg/gsma/joyn/chat/IGroupChatListener;)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 220
    .end local v0    # "_arg0":Lorg/gsma/joyn/chat/IGroupChatListener;
    :sswitch_15
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->getRemoteContact()Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_16
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    .line 231
    sget-object v7, Lorg/gsma/joyn/chat/Geoloc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gsma/joyn/chat/Geoloc;

    .line 236
    .local v0, "_arg0":Lorg/gsma/joyn/chat/Geoloc;
    :goto_1
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->sendGeoloc(Lorg/gsma/joyn/chat/Geoloc;)Ljava/lang/String;

    move-result-object v4

    .line 237
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 234
    .end local v0    # "_arg0":Lorg/gsma/joyn/chat/Geoloc;
    .end local v4    # "_result":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lorg/gsma/joyn/chat/Geoloc;
    goto :goto_1

    .line 243
    .end local v0    # "_arg0":Lorg/gsma/joyn/chat/Geoloc;
    :sswitch_17
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lorg/gsma/joyn/ft/IFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ft/IFileTransferListener;

    move-result-object v3

    .line 250
    .local v3, "_arg2":Lorg/gsma/joyn/ft/IFileTransferListener;
    invoke-virtual {p0, v0, v2, v3}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->sendFile(Ljava/lang/String;Ljava/lang/String;Lorg/gsma/joyn/ft/IFileTransferListener;)Lorg/gsma/joyn/ft/IFileTransfer;

    move-result-object v4

    .line 251
    .local v4, "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lorg/gsma/joyn/ft/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :goto_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 257
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Lorg/gsma/joyn/ft/IFileTransferListener;
    .end local v4    # "_result":Lorg/gsma/joyn/ft/IFileTransfer;
    :sswitch_18
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 260
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->transferChairman(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 266
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_19
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 269
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->modifySubject(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 275
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_1a
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 278
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->modifyMyNickName(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 284
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_1b
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 287
    .restart local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->removeParticipants(Ljava/util/List;)V

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 293
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_1c
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->abortConversation()V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 300
    :sswitch_1d
    const-string v7, "org.gsma.joyn.chat.IGroupChat"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->isMeChairman()Z

    move-result v4

    .line 302
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    if-eqz v4, :cond_3

    move v0, v6

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

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
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
