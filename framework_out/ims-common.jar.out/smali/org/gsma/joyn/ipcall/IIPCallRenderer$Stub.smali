.class public abstract Lorg/gsma/joyn/ipcall/IIPCallRenderer$Stub;
.super Landroid/os/Binder;
.source "IIPCallRenderer.java"

# interfaces
.implements Lorg/gsma/joyn/ipcall/IIPCallRenderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/ipcall/IIPCallRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/ipcall/IIPCallRenderer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.gsma.joyn.ipcall.IIPCallRenderer"

.field static final TRANSACTION_addEventListener:I = 0xb

.field static final TRANSACTION_close:I = 0x2

.field static final TRANSACTION_getAudioCodec:I = 0x6

.field static final TRANSACTION_getLocalAudioRtpPort:I = 0x5

.field static final TRANSACTION_getLocalVideoRtpPort:I = 0x8

.field static final TRANSACTION_getSupportedAudioCodecs:I = 0x7

.field static final TRANSACTION_getSupportedVideoCodecs:I = 0xa

.field static final TRANSACTION_getVideoCodec:I = 0x9

.field static final TRANSACTION_open:I = 0x1

.field static final TRANSACTION_removeEventListener:I = 0xc

.field static final TRANSACTION_start:I = 0x3

.field static final TRANSACTION_stop:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "org.gsma.joyn.ipcall.IIPCallRenderer"

    invoke-virtual {p0, p0, v0}, Lorg/gsma/joyn/ipcall/IIPCallRenderer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ipcall/IIPCallRenderer;
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
    const-string v1, "org.gsma.joyn.ipcall.IIPCallRenderer"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/gsma/joyn/ipcall/IIPCallRenderer;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lorg/gsma/joyn/ipcall/IIPCallRenderer;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lorg/gsma/joyn/ipcall/IIPCallRenderer$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/gsma/joyn/ipcall/IIPCallRenderer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 175
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 45
    :sswitch_0
    const-string v0, "org.gsma.joyn.ipcall.IIPCallRenderer"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "org.gsma.joyn.ipcall.IIPCallRenderer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lorg/gsma/joyn/ipcall/AudioCodec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gsma/joyn/ipcall/AudioCodec;

    .line 59
    .local v1, "_arg0":Lorg/gsma/joyn/ipcall/AudioCodec;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    sget-object v0, Lorg/gsma/joyn/ipcall/VideoCodec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/gsma/joyn/ipcall/VideoCodec;

    .line 66
    .local v2, "_arg1":Lorg/gsma/joyn/ipcall/VideoCodec;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 70
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 71
    invoke-virtual/range {v0 .. v5}, Lorg/gsma/joyn/ipcall/IIPCallRenderer$Stub;->open(Lorg/gsma/joyn/ipcall/AudioCodec;Lorg/gsma/joyn/ipcall/VideoCodec;Ljava/lang/String;II)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 73
    goto :goto_0

    .line 56
    .end local v1    # "_arg0":Lorg/gsma/joyn/ipcall/AudioCodec;
    .end local v2    # "_arg1":Lorg/gsma/joyn/ipcall/VideoCodec;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lorg/gsma/joyn/ipcall/AudioCodec;
    goto :goto_1

    .line 63
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Lorg/gsma/joyn/ipcall/VideoCodec;
    goto :goto_2

    .line 77
    .end local v1    # "_arg0":Lorg/gsma/joyn/ipcall/AudioCodec;
    .end local v2    # "_arg1":Lorg/gsma/joyn/ipcall/VideoCodec;
    :sswitch_2
    const-string v0, "org.gsma.joyn.ipcall.IIPCallRenderer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/IIPCallRenderer$Stub;->close()V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 80
    goto :goto_0

    .line 84
    :sswitch_3
    const-string v0, "org.gsma.joyn.ipcall.IIPCallRenderer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/IIPCallRenderer$Stub;->start()V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 87
    goto :goto_0

    .line 91
    :sswitch_4
    const-string v0, "org.gsma.joyn.ipcall.IIPCallRenderer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/IIPCallRenderer$Stub;->stop()V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 94
    goto :goto_0

    .line 98
    :sswitch_5
    const-string v0, "org.gsma.joyn.ipcall.IIPCallRenderer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/IIPCallRenderer$Stub;->getLocalAudioRtpPort()I

    move-result v6

    .line 100
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 102
    goto :goto_0

    .line 106
    .end local v6    # "_result":I
    :sswitch_6
    const-string v0, "org.gsma.joyn.ipcall.IIPCallRenderer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/IIPCallRenderer$Stub;->getAudioCodec()Lorg/gsma/joyn/ipcall/AudioCodec;

    move-result-object v6

    .line 108
    .local v6, "_result":Lorg/gsma/joyn/ipcall/AudioCodec;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v6, :cond_2

    .line 110
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {v6, p3, v7}, Lorg/gsma/joyn/ipcall/AudioCodec;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    move v0, v7

    .line 116
    goto/16 :goto_0

    .line 114
    :cond_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 120
    .end local v6    # "_result":Lorg/gsma/joyn/ipcall/AudioCodec;
    :sswitch_7
    const-string v0, "org.gsma.joyn.ipcall.IIPCallRenderer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/IIPCallRenderer$Stub;->getSupportedAudioCodecs()[Lorg/gsma/joyn/ipcall/AudioCodec;

    move-result-object v6

    .line 122
    .local v6, "_result":[Lorg/gsma/joyn/ipcall/AudioCodec;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v0, v7

    .line 124
    goto/16 :goto_0

    .line 128
    .end local v6    # "_result":[Lorg/gsma/joyn/ipcall/AudioCodec;
    :sswitch_8
    const-string v0, "org.gsma.joyn.ipcall.IIPCallRenderer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/IIPCallRenderer$Stub;->getLocalVideoRtpPort()I

    move-result v6

    .line 130
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 132
    goto/16 :goto_0

    .line 136
    .end local v6    # "_result":I
    :sswitch_9
    const-string v0, "org.gsma.joyn.ipcall.IIPCallRenderer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/IIPCallRenderer$Stub;->getVideoCodec()Lorg/gsma/joyn/ipcall/VideoCodec;

    move-result-object v6

    .line 138
    .local v6, "_result":Lorg/gsma/joyn/ipcall/VideoCodec;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v6, :cond_3

    .line 140
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    invoke-virtual {v6, p3, v7}, Lorg/gsma/joyn/ipcall/VideoCodec;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    move v0, v7

    .line 146
    goto/16 :goto_0

    .line 144
    :cond_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 150
    .end local v6    # "_result":Lorg/gsma/joyn/ipcall/VideoCodec;
    :sswitch_a
    const-string v0, "org.gsma.joyn.ipcall.IIPCallRenderer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/IIPCallRenderer$Stub;->getSupportedVideoCodecs()[Lorg/gsma/joyn/ipcall/VideoCodec;

    move-result-object v6

    .line 152
    .local v6, "_result":[Lorg/gsma/joyn/ipcall/VideoCodec;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v0, v7

    .line 154
    goto/16 :goto_0

    .line 158
    .end local v6    # "_result":[Lorg/gsma/joyn/ipcall/VideoCodec;
    :sswitch_b
    const-string v0, "org.gsma.joyn.ipcall.IIPCallRenderer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/gsma/joyn/ipcall/IIPCallRendererListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ipcall/IIPCallRendererListener;

    move-result-object v1

    .line 161
    .local v1, "_arg0":Lorg/gsma/joyn/ipcall/IIPCallRendererListener;
    invoke-virtual {p0, v1}, Lorg/gsma/joyn/ipcall/IIPCallRenderer$Stub;->addEventListener(Lorg/gsma/joyn/ipcall/IIPCallRendererListener;)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 163
    goto/16 :goto_0

    .line 167
    .end local v1    # "_arg0":Lorg/gsma/joyn/ipcall/IIPCallRendererListener;
    :sswitch_c
    const-string v0, "org.gsma.joyn.ipcall.IIPCallRenderer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/gsma/joyn/ipcall/IIPCallRendererListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ipcall/IIPCallRendererListener;

    move-result-object v1

    .line 170
    .restart local v1    # "_arg0":Lorg/gsma/joyn/ipcall/IIPCallRendererListener;
    invoke-virtual {p0, v1}, Lorg/gsma/joyn/ipcall/IIPCallRenderer$Stub;->removeEventListener(Lorg/gsma/joyn/ipcall/IIPCallRendererListener;)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 172
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
