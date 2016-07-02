.class public abstract Lorg/gsma/joyn/chat/IGroupChatListener$Stub;
.super Landroid/os/Binder;
.source "IGroupChatListener.java"

# interfaces
.implements Lorg/gsma/joyn/chat/IGroupChatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/chat/IGroupChatListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/chat/IGroupChatListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.gsma.joyn.chat.IGroupChatListener"

.field static final TRANSACTION_onAbortConversationResult:I = 0x1e

.field static final TRANSACTION_onChairmanChanged:I = 0x16

.field static final TRANSACTION_onComposingEvent:I = 0x11

.field static final TRANSACTION_onConferenceNotify:I = 0x20

.field static final TRANSACTION_onGroupChatDissolved:I = 0xf

.field static final TRANSACTION_onInviteParticipantsResult:I = 0x10

.field static final TRANSACTION_onModifyNickNameResult:I = 0x19

.field static final TRANSACTION_onModifySubjectResult:I = 0x17

.field static final TRANSACTION_onNewGeoloc:I = 0x6

.field static final TRANSACTION_onNewMessage:I = 0x5

.field static final TRANSACTION_onNickNameChanged:I = 0x1a

.field static final TRANSACTION_onParticipantDisconnected:I = 0x14

.field static final TRANSACTION_onParticipantJoined:I = 0x12

.field static final TRANSACTION_onParticipantLeft:I = 0x13

.field static final TRANSACTION_onQuitConversationResult:I = 0x1f

.field static final TRANSACTION_onRemoveParticipantResult:I = 0x1b

.field static final TRANSACTION_onReportFailedMessage:I = 0xd

.field static final TRANSACTION_onReportMeKickedOut:I = 0x1c

.field static final TRANSACTION_onReportMessageDelivered:I = 0xa

.field static final TRANSACTION_onReportMessageDeliveredContact:I = 0x7

.field static final TRANSACTION_onReportMessageDisplayed:I = 0xb

.field static final TRANSACTION_onReportMessageDisplayedContact:I = 0x8

.field static final TRANSACTION_onReportMessageFailed:I = 0xc

.field static final TRANSACTION_onReportMessageFailedContact:I = 0x9

.field static final TRANSACTION_onReportParticipantKickedOut:I = 0x1d

.field static final TRANSACTION_onReportSentMessage:I = 0xe

.field static final TRANSACTION_onSessionAborted:I = 0x2

.field static final TRANSACTION_onSessionAbortedbyChairman:I = 0x3

.field static final TRANSACTION_onSessionError:I = 0x4

.field static final TRANSACTION_onSessionStarted:I = 0x1

.field static final TRANSACTION_onSetChairmanResult:I = 0x15

.field static final TRANSACTION_onSubjectChanged:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p0, p0, v0}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/chat/IGroupChatListener;
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
    const-string v1, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/gsma/joyn/chat/IGroupChatListener;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lorg/gsma/joyn/chat/IGroupChatListener;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lorg/gsma/joyn/chat/IGroupChatListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 373
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onSessionStarted()V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 57
    :sswitch_2
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onSessionAborted()V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 64
    :sswitch_3
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onSessionAbortedbyChairman()V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 71
    :sswitch_4
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 74
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onSessionError(I)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 80
    .end local v0    # "_arg0":I
    :sswitch_5
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    sget-object v5, Lorg/gsma/joyn/chat/ChatMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gsma/joyn/chat/ChatMessage;

    .line 88
    .local v0, "_arg0":Lorg/gsma/joyn/chat/ChatMessage;
    :goto_1
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onNewMessage(Lorg/gsma/joyn/chat/ChatMessage;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 86
    .end local v0    # "_arg0":Lorg/gsma/joyn/chat/ChatMessage;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lorg/gsma/joyn/chat/ChatMessage;
    goto :goto_1

    .line 94
    .end local v0    # "_arg0":Lorg/gsma/joyn/chat/ChatMessage;
    :sswitch_6
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 97
    sget-object v5, Lorg/gsma/joyn/chat/GeolocMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gsma/joyn/chat/GeolocMessage;

    .line 102
    .local v0, "_arg0":Lorg/gsma/joyn/chat/GeolocMessage;
    :goto_2
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onNewGeoloc(Lorg/gsma/joyn/chat/GeolocMessage;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 100
    .end local v0    # "_arg0":Lorg/gsma/joyn/chat/GeolocMessage;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lorg/gsma/joyn/chat/GeolocMessage;
    goto :goto_2

    .line 108
    .end local v0    # "_arg0":Lorg/gsma/joyn/chat/GeolocMessage;
    :sswitch_7
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onReportMessageDeliveredContact(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 119
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_8
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 124
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onReportMessageDisplayedContact(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 130
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_9
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 135
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onReportMessageFailedContact(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 141
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_a
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onReportMessageDelivered(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 150
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 153
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onReportMessageDisplayed(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 159
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 162
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onReportMessageFailed(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 168
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 174
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v3}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onReportFailedMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 181
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_e
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 184
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onReportSentMessage(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 190
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_f
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onGroupChatDissolved()V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 197
    :sswitch_10
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 201
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onInviteParticipantsResult(ILjava/lang/String;)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 208
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_11
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v1, v4

    .line 213
    .local v1, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onComposingEvent(Ljava/lang/String;Z)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 212
    .end local v1    # "_arg1":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 219
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_12
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onParticipantJoined(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 230
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_13
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 233
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onParticipantLeft(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 239
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_14
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 242
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onParticipantDisconnected(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 248
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_15
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 252
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 253
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onSetChairmanResult(II)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 259
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_16
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onChairmanChanged(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 268
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_17
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 272
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 273
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onModifySubjectResult(II)V

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 279
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_18
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onSubjectChanged(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 288
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_19
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 292
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 293
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onModifyNickNameResult(II)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 299
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_1a
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onNickNameChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 310
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_1b
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 314
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 316
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 317
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v3}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onRemoveParticipantResult(IILjava/lang/String;)V

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 323
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_1c
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onReportMeKickedOut(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 332
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_1d
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 335
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onReportParticipantKickedOut(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 341
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_1e
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 345
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 346
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onAbortConversationResult(II)V

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 352
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_1f
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 356
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 357
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onQuitConversationResult(II)V

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 363
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_20
    const-string v5, "org.gsma.joyn.chat.IGroupChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v5, Lorg/gsma/joyn/chat/ConferenceUser;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 368
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Lorg/gsma/joyn/chat/ConferenceUser;>;"
    invoke-virtual {p0, v0, v2}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->onConferenceNotify(Ljava/lang/String;Ljava/util/List;)V

    .line 369
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
