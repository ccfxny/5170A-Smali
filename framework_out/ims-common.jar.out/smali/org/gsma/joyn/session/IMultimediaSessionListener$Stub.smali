.class public abstract Lorg/gsma/joyn/session/IMultimediaSessionListener$Stub;
.super Landroid/os/Binder;
.source "IMultimediaSessionListener.java"

# interfaces
.implements Lorg/gsma/joyn/session/IMultimediaSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/session/IMultimediaSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/session/IMultimediaSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.gsma.joyn.session.IMultimediaSessionListener"

.field static final TRANSACTION_onNewMessage:I = 0x5

.field static final TRANSACTION_onSessionAborted:I = 0x3

.field static final TRANSACTION_onSessionError:I = 0x4

.field static final TRANSACTION_onSessionRinging:I = 0x2

.field static final TRANSACTION_onSessionStarted:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "org.gsma.joyn.session.IMultimediaSessionListener"

    invoke-virtual {p0, p0, v0}, Lorg/gsma/joyn/session/IMultimediaSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/session/IMultimediaSessionListener;
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
    const-string v1, "org.gsma.joyn.session.IMultimediaSessionListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/gsma/joyn/session/IMultimediaSessionListener;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lorg/gsma/joyn/session/IMultimediaSessionListener;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lorg/gsma/joyn/session/IMultimediaSessionListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/gsma/joyn/session/IMultimediaSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 3
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
    const/4 v1, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 45
    :sswitch_0
    const-string v2, "org.gsma.joyn.session.IMultimediaSessionListener"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v2, "org.gsma.joyn.session.IMultimediaSessionListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lorg/gsma/joyn/session/IMultimediaSessionListener$Stub;->onSessionStarted()V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 57
    :sswitch_2
    const-string v2, "org.gsma.joyn.session.IMultimediaSessionListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lorg/gsma/joyn/session/IMultimediaSessionListener$Stub;->onSessionRinging()V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 64
    :sswitch_3
    const-string v2, "org.gsma.joyn.session.IMultimediaSessionListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lorg/gsma/joyn/session/IMultimediaSessionListener$Stub;->onSessionAborted()V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 71
    :sswitch_4
    const-string v2, "org.gsma.joyn.session.IMultimediaSessionListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 74
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/session/IMultimediaSessionListener$Stub;->onSessionError(I)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 80
    .end local v0    # "_arg0":I
    :sswitch_5
    const-string v2, "org.gsma.joyn.session.IMultimediaSessionListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 83
    .local v0, "_arg0":[B
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/session/IMultimediaSessionListener$Stub;->onNewMessage([B)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
