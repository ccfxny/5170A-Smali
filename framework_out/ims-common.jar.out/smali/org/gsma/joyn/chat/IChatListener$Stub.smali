.class public abstract Lorg/gsma/joyn/chat/IChatListener$Stub;
.super Landroid/os/Binder;
.source "IChatListener.java"

# interfaces
.implements Lorg/gsma/joyn/chat/IChatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/chat/IChatListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/chat/IChatListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.gsma.joyn.chat.IChatListener"

.field static final TRANSACTION_onComposingEvent:I = 0x6

.field static final TRANSACTION_onNewBurnMessageArrived:I = 0xa

.field static final TRANSACTION_onNewGeoloc:I = 0x2

.field static final TRANSACTION_onNewMessage:I = 0x1

.field static final TRANSACTION_onReportDeliveredMessage:I = 0x9

.field static final TRANSACTION_onReportFailedMessage:I = 0x7

.field static final TRANSACTION_onReportMessageDelivered:I = 0x3

.field static final TRANSACTION_onReportMessageDisplayed:I = 0x4

.field static final TRANSACTION_onReportMessageFailed:I = 0x5

.field static final TRANSACTION_onReportSentMessage:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "org.gsma.joyn.chat.IChatListener"

    invoke-virtual {p0, p0, v0}, Lorg/gsma/joyn/chat/IChatListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/chat/IChatListener;
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
    const-string v1, "org.gsma.joyn.chat.IChatListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/gsma/joyn/chat/IChatListener;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lorg/gsma/joyn/chat/IChatListener;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lorg/gsma/joyn/chat/IChatListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/gsma/joyn/chat/IChatListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v3, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 45
    :sswitch_0
    const-string v4, "org.gsma.joyn.chat.IChatListener"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v4, "org.gsma.joyn.chat.IChatListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    sget-object v4, Lorg/gsma/joyn/chat/ChatMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gsma/joyn/chat/ChatMessage;

    .line 58
    .local v0, "_arg0":Lorg/gsma/joyn/chat/ChatMessage;
    :goto_1
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IChatListener$Stub;->onNewMessage(Lorg/gsma/joyn/chat/ChatMessage;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0    # "_arg0":Lorg/gsma/joyn/chat/ChatMessage;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lorg/gsma/joyn/chat/ChatMessage;
    goto :goto_1

    .line 64
    .end local v0    # "_arg0":Lorg/gsma/joyn/chat/ChatMessage;
    :sswitch_2
    const-string v4, "org.gsma.joyn.chat.IChatListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 67
    sget-object v4, Lorg/gsma/joyn/chat/GeolocMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gsma/joyn/chat/GeolocMessage;

    .line 72
    .local v0, "_arg0":Lorg/gsma/joyn/chat/GeolocMessage;
    :goto_2
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IChatListener$Stub;->onNewGeoloc(Lorg/gsma/joyn/chat/GeolocMessage;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 70
    .end local v0    # "_arg0":Lorg/gsma/joyn/chat/GeolocMessage;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lorg/gsma/joyn/chat/GeolocMessage;
    goto :goto_2

    .line 78
    .end local v0    # "_arg0":Lorg/gsma/joyn/chat/GeolocMessage;
    :sswitch_3
    const-string v4, "org.gsma.joyn.chat.IChatListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IChatListener$Stub;->onReportMessageDelivered(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 87
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string v4, "org.gsma.joyn.chat.IChatListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IChatListener$Stub;->onReportMessageDisplayed(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 96
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string v4, "org.gsma.joyn.chat.IChatListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IChatListener$Stub;->onReportMessageFailed(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 105
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string v4, "org.gsma.joyn.chat.IChatListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    .line 108
    .local v0, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IChatListener$Stub;->onComposingEvent(Z)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 107
    .end local v0    # "_arg0":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 114
    :sswitch_7
    const-string v4, "org.gsma.joyn.chat.IChatListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 120
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lorg/gsma/joyn/chat/IChatListener$Stub;->onReportFailedMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 127
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :sswitch_8
    const-string v4, "org.gsma.joyn.chat.IChatListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IChatListener$Stub;->onReportSentMessage(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 136
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_9
    const-string v4, "org.gsma.joyn.chat.IChatListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IChatListener$Stub;->onReportDeliveredMessage(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 145
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string v4, "org.gsma.joyn.chat.IChatListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 148
    sget-object v4, Lorg/gsma/joyn/chat/ChatMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gsma/joyn/chat/ChatMessage;

    .line 153
    .local v0, "_arg0":Lorg/gsma/joyn/chat/ChatMessage;
    :goto_4
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/IChatListener$Stub;->onNewBurnMessageArrived(Lorg/gsma/joyn/chat/ChatMessage;)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 151
    .end local v0    # "_arg0":Lorg/gsma/joyn/chat/ChatMessage;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lorg/gsma/joyn/chat/ChatMessage;
    goto :goto_4

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
