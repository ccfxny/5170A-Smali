.class public abstract Lorg/gsma/joyn/chat/IChatService$Stub;
.super Landroid/os/Binder;
.source "IChatService.java"

# interfaces
.implements Lorg/gsma/joyn/chat/IChatService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/chat/IChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/chat/IChatService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.gsma.joyn.chat.IChatService"

.field static final TRANSACTION_addEventListener:I = 0xf

.field static final TRANSACTION_addServiceRegistrationListener:I = 0x2

.field static final TRANSACTION_addSpamReportListener:I = 0x12

.field static final TRANSACTION_blockGroupMessages:I = 0x19

.field static final TRANSACTION_getChat:I = 0x14

.field static final TRANSACTION_getChats:I = 0x16

.field static final TRANSACTION_getConfiguration:I = 0x4

.field static final TRANSACTION_getGroupChat:I = 0x18

.field static final TRANSACTION_getGroupChats:I = 0x17

.field static final TRANSACTION_getPublicAccountChat:I = 0x15

.field static final TRANSACTION_getServiceVersion:I = 0x1a

.field static final TRANSACTION_initPublicAccountChat:I = 0x7

.field static final TRANSACTION_initiateGroupChat:I = 0x8

.field static final TRANSACTION_initiateSpamReport:I = 0x11

.field static final TRANSACTION_isImCapAlwaysOn:I = 0x1b

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_openMultiChat:I = 0x6

.field static final TRANSACTION_openSingleChat:I = 0x5

.field static final TRANSACTION_rejoinGroupChat:I = 0xc

.field static final TRANSACTION_rejoinGroupChatId:I = 0xd

.field static final TRANSACTION_removeEventListener:I = 0x10

.field static final TRANSACTION_removeServiceRegistrationListener:I = 0x3

.field static final TRANSACTION_removeSpamReportListener:I = 0x13

.field static final TRANSACTION_resendOne2MultiMessage:I = 0xa

.field static final TRANSACTION_restartGroupChat:I = 0xe

.field static final TRANSACTION_sendOne2MultiCloudMessageLargeMode:I = 0xb

.field static final TRANSACTION_sendOne2MultiMessage:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p0, p0, v0}, Lorg/gsma/joyn/chat/IChatService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/chat/IChatService;
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
    const-string v1, "org.gsma.joyn.chat.IChatService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/gsma/joyn/chat/IChatService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lorg/gsma/joyn/chat/IChatService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lorg/gsma/joyn/chat/IChatService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/gsma/joyn/chat/IChatService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 331
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 45
    :sswitch_0
    const-string v6, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v8, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lorg/gsma/joyn/chat/IChatService$Stub;->isServiceRegistered()Z

    move-result v4

    .line 52
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v4, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v4    # "_result":Z
    :sswitch_2
    const-string v6, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lorg/gsma/joyn/IJoynServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/IJoynServiceRegistrationListener;

    move-result-object v0

    .line 61
    .local v0, "_arg0":Lorg/gsma/joyn/IJoynServiceRegistrationListener;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IChatService$Stub;->addServiceRegistrationListener(Lorg/gsma/joyn/IJoynServiceRegistrationListener;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    .end local v0    # "_arg0":Lorg/gsma/joyn/IJoynServiceRegistrationListener;
    :sswitch_3
    const-string v6, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lorg/gsma/joyn/IJoynServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/IJoynServiceRegistrationListener;

    move-result-object v0

    .line 70
    .restart local v0    # "_arg0":Lorg/gsma/joyn/IJoynServiceRegistrationListener;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IChatService$Stub;->removeServiceRegistrationListener(Lorg/gsma/joyn/IJoynServiceRegistrationListener;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 76
    .end local v0    # "_arg0":Lorg/gsma/joyn/IJoynServiceRegistrationListener;
    :sswitch_4
    const-string v8, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lorg/gsma/joyn/chat/IChatService$Stub;->getConfiguration()Lorg/gsma/joyn/chat/ChatServiceConfiguration;

    move-result-object v4

    .line 78
    .local v4, "_result":Lorg/gsma/joyn/chat/ChatServiceConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v4, :cond_1

    .line 80
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    invoke-virtual {v4, p3, v7}, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 90
    .end local v4    # "_result":Lorg/gsma/joyn/chat/ChatServiceConfiguration;
    :sswitch_5
    const-string v6, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lorg/gsma/joyn/chat/IChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/chat/IChatListener;

    move-result-object v2

    .line 95
    .local v2, "_arg1":Lorg/gsma/joyn/chat/IChatListener;
    invoke-virtual {p0, v0, v2}, Lorg/gsma/joyn/chat/IChatService$Stub;->openSingleChat(Ljava/lang/String;Lorg/gsma/joyn/chat/IChatListener;)Lorg/gsma/joyn/chat/IChat;

    move-result-object v4

    .line 96
    .local v4, "_result":Lorg/gsma/joyn/chat/IChat;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lorg/gsma/joyn/chat/IChat;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_2
    move-object v6, v8

    goto :goto_1

    .line 102
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lorg/gsma/joyn/chat/IChatListener;
    .end local v4    # "_result":Lorg/gsma/joyn/chat/IChat;
    :sswitch_6
    const-string v6, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 106
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lorg/gsma/joyn/chat/IChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/chat/IChatListener;

    move-result-object v2

    .line 107
    .restart local v2    # "_arg1":Lorg/gsma/joyn/chat/IChatListener;
    invoke-virtual {p0, v1, v2}, Lorg/gsma/joyn/chat/IChatService$Stub;->openMultiChat(Ljava/util/List;Lorg/gsma/joyn/chat/IChatListener;)Lorg/gsma/joyn/chat/IChat;

    move-result-object v4

    .line 108
    .restart local v4    # "_result":Lorg/gsma/joyn/chat/IChat;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v4, :cond_3

    invoke-interface {v4}, Lorg/gsma/joyn/chat/IChat;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :cond_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 114
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg1":Lorg/gsma/joyn/chat/IChatListener;
    .end local v4    # "_result":Lorg/gsma/joyn/chat/IChat;
    :sswitch_7
    const-string v6, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lorg/gsma/joyn/chat/IChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/chat/IChatListener;

    move-result-object v2

    .line 119
    .restart local v2    # "_arg1":Lorg/gsma/joyn/chat/IChatListener;
    invoke-virtual {p0, v0, v2}, Lorg/gsma/joyn/chat/IChatService$Stub;->initPublicAccountChat(Ljava/lang/String;Lorg/gsma/joyn/chat/IChatListener;)Lorg/gsma/joyn/chat/IChat;

    move-result-object v4

    .line 120
    .restart local v4    # "_result":Lorg/gsma/joyn/chat/IChat;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v4, :cond_4

    invoke-interface {v4}, Lorg/gsma/joyn/chat/IChat;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :cond_4
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 126
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lorg/gsma/joyn/chat/IChatListener;
    .end local v4    # "_result":Lorg/gsma/joyn/chat/IChat;
    :sswitch_8
    const-string v6, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 130
    .restart local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/chat/IGroupChatListener;

    move-result-object v3

    .line 133
    .local v3, "_arg2":Lorg/gsma/joyn/chat/IGroupChatListener;
    invoke-virtual {p0, v1, v2, v3}, Lorg/gsma/joyn/chat/IChatService$Stub;->initiateGroupChat(Ljava/util/List;Ljava/lang/String;Lorg/gsma/joyn/chat/IGroupChatListener;)Lorg/gsma/joyn/chat/IGroupChat;

    move-result-object v4

    .line 134
    .local v4, "_result":Lorg/gsma/joyn/chat/IGroupChat;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    if-eqz v4, :cond_5

    invoke-interface {v4}, Lorg/gsma/joyn/chat/IGroupChat;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :cond_5
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 140
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Lorg/gsma/joyn/chat/IGroupChatListener;
    .end local v4    # "_result":Lorg/gsma/joyn/chat/IGroupChat;
    :sswitch_9
    const-string v6, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 144
    .restart local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 146
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/chat/IGroupChatListener;

    move-result-object v3

    .line 147
    .restart local v3    # "_arg2":Lorg/gsma/joyn/chat/IGroupChatListener;
    invoke-virtual {p0, v1, v2, v3}, Lorg/gsma/joyn/chat/IChatService$Stub;->sendOne2MultiMessage(Ljava/util/List;Ljava/lang/String;Lorg/gsma/joyn/chat/IGroupChatListener;)Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Lorg/gsma/joyn/chat/IGroupChatListener;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string v6, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/chat/IGroupChatListener;

    move-result-object v2

    .line 159
    .local v2, "_arg1":Lorg/gsma/joyn/chat/IGroupChatListener;
    invoke-virtual {p0, v0, v2}, Lorg/gsma/joyn/chat/IChatService$Stub;->resendOne2MultiMessage(Ljava/lang/String;Lorg/gsma/joyn/chat/IGroupChatListener;)I

    move-result v4

    .line 160
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 166
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lorg/gsma/joyn/chat/IGroupChatListener;
    .end local v4    # "_result":I
    :sswitch_b
    const-string v6, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 170
    .restart local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lorg/gsma/joyn/chat/IGroupChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/chat/IGroupChatListener;

    move-result-object v3

    .line 173
    .restart local v3    # "_arg2":Lorg/gsma/joyn/chat/IGroupChatListener;
    invoke-virtual {p0, v1, v2, v3}, Lorg/gsma/joyn/chat/IChatService$Stub;->sendOne2MultiCloudMessageLargeMode(Ljava/util/List;Ljava/lang/String;Lorg/gsma/joyn/chat/IGroupChatListener;)Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 180
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Lorg/gsma/joyn/chat/IGroupChatListener;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string v6, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IChatService$Stub;->rejoinGroupChat(Ljava/lang/String;)Lorg/gsma/joyn/chat/IGroupChat;

    move-result-object v4

    .line 184
    .local v4, "_result":Lorg/gsma/joyn/chat/IGroupChat;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    if-eqz v4, :cond_6

    invoke-interface {v4}, Lorg/gsma/joyn/chat/IGroupChat;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :cond_6
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 190
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Lorg/gsma/joyn/chat/IGroupChat;
    :sswitch_d
    const-string v6, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 195
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lorg/gsma/joyn/chat/IChatService$Stub;->rejoinGroupChatId(Ljava/lang/String;Ljava/lang/String;)Lorg/gsma/joyn/chat/IGroupChat;

    move-result-object v4

    .line 196
    .restart local v4    # "_result":Lorg/gsma/joyn/chat/IGroupChat;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    if-eqz v4, :cond_7

    invoke-interface {v4}, Lorg/gsma/joyn/chat/IGroupChat;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :cond_7
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 202
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Lorg/gsma/joyn/chat/IGroupChat;
    :sswitch_e
    const-string v6, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IChatService$Stub;->restartGroupChat(Ljava/lang/String;)Lorg/gsma/joyn/chat/IGroupChat;

    move-result-object v4

    .line 206
    .restart local v4    # "_result":Lorg/gsma/joyn/chat/IGroupChat;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    if-eqz v4, :cond_8

    invoke-interface {v4}, Lorg/gsma/joyn/chat/IGroupChat;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :cond_8
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 212
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Lorg/gsma/joyn/chat/IGroupChat;
    :sswitch_f
    const-string v6, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lorg/gsma/joyn/chat/INewChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/chat/INewChatListener;

    move-result-object v0

    .line 215
    .local v0, "_arg0":Lorg/gsma/joyn/chat/INewChatListener;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IChatService$Stub;->addEventListener(Lorg/gsma/joyn/chat/INewChatListener;)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 221
    .end local v0    # "_arg0":Lorg/gsma/joyn/chat/INewChatListener;
    :sswitch_10
    const-string v6, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lorg/gsma/joyn/chat/INewChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/chat/INewChatListener;

    move-result-object v0

    .line 224
    .restart local v0    # "_arg0":Lorg/gsma/joyn/chat/INewChatListener;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IChatService$Stub;->removeEventListener(Lorg/gsma/joyn/chat/INewChatListener;)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 230
    .end local v0    # "_arg0":Lorg/gsma/joyn/chat/INewChatListener;
    :sswitch_11
    const-string v6, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 235
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lorg/gsma/joyn/chat/IChatService$Stub;->initiateSpamReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 241
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_12
    const-string v6, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lorg/gsma/joyn/chat/ISpamReportListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/chat/ISpamReportListener;

    move-result-object v0

    .line 244
    .local v0, "_arg0":Lorg/gsma/joyn/chat/ISpamReportListener;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IChatService$Stub;->addSpamReportListener(Lorg/gsma/joyn/chat/ISpamReportListener;)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 250
    .end local v0    # "_arg0":Lorg/gsma/joyn/chat/ISpamReportListener;
    :sswitch_13
    const-string v6, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lorg/gsma/joyn/chat/ISpamReportListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/chat/ISpamReportListener;

    move-result-object v0

    .line 253
    .restart local v0    # "_arg0":Lorg/gsma/joyn/chat/ISpamReportListener;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IChatService$Stub;->removeSpamReportListener(Lorg/gsma/joyn/chat/ISpamReportListener;)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 259
    .end local v0    # "_arg0":Lorg/gsma/joyn/chat/ISpamReportListener;
    :sswitch_14
    const-string v6, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IChatService$Stub;->getChat(Ljava/lang/String;)Lorg/gsma/joyn/chat/IChat;

    move-result-object v4

    .line 263
    .local v4, "_result":Lorg/gsma/joyn/chat/IChat;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    if-eqz v4, :cond_9

    invoke-interface {v4}, Lorg/gsma/joyn/chat/IChat;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :cond_9
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 269
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Lorg/gsma/joyn/chat/IChat;
    :sswitch_15
    const-string v6, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 272
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IChatService$Stub;->getPublicAccountChat(Ljava/lang/String;)Lorg/gsma/joyn/chat/IChat;

    move-result-object v4

    .line 273
    .restart local v4    # "_result":Lorg/gsma/joyn/chat/IChat;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    if-eqz v4, :cond_a

    invoke-interface {v4}, Lorg/gsma/joyn/chat/IChat;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :cond_a
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 279
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Lorg/gsma/joyn/chat/IChat;
    :sswitch_16
    const-string v6, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lorg/gsma/joyn/chat/IChatService$Stub;->getChats()Ljava/util/List;

    move-result-object v5

    .line 281
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 287
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_17
    const-string v6, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lorg/gsma/joyn/chat/IChatService$Stub;->getGroupChats()Ljava/util/List;

    move-result-object v5

    .line 289
    .restart local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 295
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_18
    const-string v6, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 298
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IChatService$Stub;->getGroupChat(Ljava/lang/String;)Lorg/gsma/joyn/chat/IGroupChat;

    move-result-object v4

    .line 299
    .local v4, "_result":Lorg/gsma/joyn/chat/IGroupChat;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    if-eqz v4, :cond_b

    invoke-interface {v4}, Lorg/gsma/joyn/chat/IGroupChat;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :cond_b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 305
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Lorg/gsma/joyn/chat/IGroupChat;
    :sswitch_19
    const-string v8, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 309
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_c

    move v2, v7

    .line 310
    .local v2, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v2}, Lorg/gsma/joyn/chat/IChatService$Stub;->blockGroupMessages(Ljava/lang/String;Z)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    :cond_c
    move v2, v6

    .line 309
    goto :goto_2

    .line 316
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_1a
    const-string v6, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lorg/gsma/joyn/chat/IChatService$Stub;->getServiceVersion()I

    move-result v4

    .line 318
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 324
    .end local v4    # "_result":I
    :sswitch_1b
    const-string v8, "org.gsma.joyn.chat.IChatService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lorg/gsma/joyn/chat/IChatService$Stub;->isImCapAlwaysOn()Z

    move-result v4

    .line 326
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    if-eqz v4, :cond_d

    move v6, v7

    :cond_d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
