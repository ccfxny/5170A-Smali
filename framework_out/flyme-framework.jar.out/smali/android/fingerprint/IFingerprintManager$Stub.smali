.class public abstract Landroid/fingerprint/IFingerprintManager$Stub;
.super Landroid/os/Binder;
.source "IFingerprintManager.java"

# interfaces
.implements Landroid/fingerprint/IFingerprintManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/fingerprint/IFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/fingerprint/IFingerprintManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.fingerprint.IFingerprintManager"

.field static final TRANSACTION_cancelEnroll:I = 0x3

.field static final TRANSACTION_cancelVerify:I = 0x6

.field static final TRANSACTION_deleteFingerprint:I = 0x7

.field static final TRANSACTION_enroll:I = 0x2

.field static final TRANSACTION_interceptKeyEvent:I = 0x8

.field static final TRANSACTION_query:I = 0x1

.field static final TRANSACTION_resetEnroll:I = 0x4

.field static final TRANSACTION_verify:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.fingerprint.IFingerprintManager"

    invoke-virtual {p0, p0, v0}, Landroid/fingerprint/IFingerprintManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/fingerprint/IFingerprintManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "android.fingerprint.IFingerprintManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/fingerprint/IFingerprintManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/fingerprint/IFingerprintManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/fingerprint/IFingerprintManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/fingerprint/IFingerprintManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
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

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "android.fingerprint.IFingerprintManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 50
    .local v0, "_arg0":[I
    invoke-virtual {p0, v0}, Landroid/fingerprint/IFingerprintManager$Stub;->query([I)I

    move-result v3

    .line 51
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 58
    .end local v0    # "_arg0":[I
    .end local v3    # "_result":I
    :sswitch_2
    const-string v5, "android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/fingerprint/IEnrollCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/fingerprint/IEnrollCallback;

    move-result-object v0

    .line 62
    .local v0, "_arg0":Landroid/fingerprint/IEnrollCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    .line 64
    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/fingerprint/IFingerprintManager$Stub;->enroll(Landroid/fingerprint/IEnrollCallback;ZLjava/lang/String;)I

    move-result v3

    .line 66
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 62
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 72
    .end local v0    # "_arg0":Landroid/fingerprint/IEnrollCallback;
    :sswitch_3
    const-string v5, "android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/fingerprint/IEnrollCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/fingerprint/IEnrollCallback;

    move-result-object v0

    .line 75
    .restart local v0    # "_arg0":Landroid/fingerprint/IEnrollCallback;
    invoke-virtual {p0, v0}, Landroid/fingerprint/IFingerprintManager$Stub;->cancelEnroll(Landroid/fingerprint/IEnrollCallback;)I

    move-result v3

    .line 76
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 82
    .end local v0    # "_arg0":Landroid/fingerprint/IEnrollCallback;
    .end local v3    # "_result":I
    :sswitch_4
    const-string v5, "android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/fingerprint/IEnrollCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/fingerprint/IEnrollCallback;

    move-result-object v0

    .line 85
    .restart local v0    # "_arg0":Landroid/fingerprint/IEnrollCallback;
    invoke-virtual {p0, v0}, Landroid/fingerprint/IFingerprintManager$Stub;->resetEnroll(Landroid/fingerprint/IEnrollCallback;)I

    move-result v3

    .line 86
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 92
    .end local v0    # "_arg0":Landroid/fingerprint/IEnrollCallback;
    .end local v3    # "_result":I
    :sswitch_5
    const-string v5, "android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/fingerprint/IVerifyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/fingerprint/IVerifyCallback;

    move-result-object v0

    .line 96
    .local v0, "_arg0":Landroid/fingerprint/IVerifyCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/fingerprint/IFingerprintManager$Stub;->verify(Landroid/fingerprint/IVerifyCallback;Ljava/lang/String;)I

    move-result v3

    .line 98
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 104
    .end local v0    # "_arg0":Landroid/fingerprint/IVerifyCallback;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_6
    const-string v5, "android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/fingerprint/IVerifyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/fingerprint/IVerifyCallback;

    move-result-object v0

    .line 107
    .restart local v0    # "_arg0":Landroid/fingerprint/IVerifyCallback;
    invoke-virtual {p0, v0}, Landroid/fingerprint/IFingerprintManager$Stub;->cancelVerify(Landroid/fingerprint/IVerifyCallback;)I

    move-result v3

    .line 108
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 114
    .end local v0    # "_arg0":Landroid/fingerprint/IVerifyCallback;
    .end local v3    # "_result":I
    :sswitch_7
    const-string v5, "android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 117
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/fingerprint/IFingerprintManager$Stub;->deleteFingerprint(I)I

    move-result v3

    .line 118
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 124
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_8
    const-string v5, "android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 127
    sget-object v5, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 132
    .local v0, "_arg0":Landroid/view/KeyEvent;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/fingerprint/IFingerprintManager$Stub;->interceptKeyEvent(Landroid/view/KeyEvent;)I

    move-result v3

    .line 133
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 130
    .end local v0    # "_arg0":Landroid/view/KeyEvent;
    .end local v3    # "_result":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/KeyEvent;
    goto :goto_2

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
