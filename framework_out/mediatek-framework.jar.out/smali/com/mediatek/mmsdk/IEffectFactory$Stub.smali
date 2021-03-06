.class public abstract Lcom/mediatek/mmsdk/IEffectFactory$Stub;
.super Landroid/os/Binder;
.source "IEffectFactory.java"

# interfaces
.implements Lcom/mediatek/mmsdk/IEffectFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mmsdk/IEffectFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mmsdk/IEffectFactory$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.mmsdk.IEffectFactory"

.field static final TRANSACTION_createEffectHal:I = 0x1

.field static final TRANSACTION_createEffectHalClient:I = 0x2

.field static final TRANSACTION_getAllSupportedEffectHal:I = 0x4

.field static final TRANSACTION_getSupportedVersion:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.mediatek.mmsdk.IEffectFactory"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/mmsdk/IEffectFactory$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IEffectFactory;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.mediatek.mmsdk.IEffectFactory"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/mmsdk/IEffectFactory;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/mediatek/mmsdk/IEffectFactory;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/mediatek/mmsdk/IEffectFactory$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/mmsdk/IEffectFactory$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
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
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 43
    :sswitch_0
    const-string v6, "com.mediatek.mmsdk.IEffectFactory"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v6, "com.mediatek.mmsdk.IEffectFactory"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 51
    sget-object v6, Lcom/mediatek/mmsdk/EffectHalVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mmsdk/EffectHalVersion;

    .line 57
    .local v0, "_arg0":Lcom/mediatek/mmsdk/EffectHalVersion;
    :goto_1
    new-instance v2, Landroid/hardware/camera2/utils/BinderHolder;

    invoke-direct {v2}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    .line 58
    .local v2, "_arg1":Landroid/hardware/camera2/utils/BinderHolder;
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/mmsdk/IEffectFactory$Stub;->createEffectHal(Lcom/mediatek/mmsdk/EffectHalVersion;Landroid/hardware/camera2/utils/BinderHolder;)I

    move-result v4

    .line 59
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    if-eqz v2, :cond_1

    .line 62
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {v2, p3, v5}, Landroid/hardware/camera2/utils/BinderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 54
    .end local v0    # "_arg0":Lcom/mediatek/mmsdk/EffectHalVersion;
    .end local v2    # "_arg1":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v4    # "_result":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/mediatek/mmsdk/EffectHalVersion;
    goto :goto_1

    .line 66
    .restart local v2    # "_arg1":Landroid/hardware/camera2/utils/BinderHolder;
    .restart local v4    # "_result":I
    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v0    # "_arg0":Lcom/mediatek/mmsdk/EffectHalVersion;
    .end local v2    # "_arg1":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v4    # "_result":I
    :sswitch_2
    const-string v6, "com.mediatek.mmsdk.IEffectFactory"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 75
    sget-object v6, Lcom/mediatek/mmsdk/EffectHalVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mmsdk/EffectHalVersion;

    .line 81
    .restart local v0    # "_arg0":Lcom/mediatek/mmsdk/EffectHalVersion;
    :goto_2
    new-instance v2, Landroid/hardware/camera2/utils/BinderHolder;

    invoke-direct {v2}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    .line 82
    .restart local v2    # "_arg1":Landroid/hardware/camera2/utils/BinderHolder;
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/mmsdk/IEffectFactory$Stub;->createEffectHalClient(Lcom/mediatek/mmsdk/EffectHalVersion;Landroid/hardware/camera2/utils/BinderHolder;)I

    move-result v4

    .line 83
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    if-eqz v2, :cond_3

    .line 86
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {v2, p3, v5}, Landroid/hardware/camera2/utils/BinderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 78
    .end local v0    # "_arg0":Lcom/mediatek/mmsdk/EffectHalVersion;
    .end local v2    # "_arg1":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v4    # "_result":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/mediatek/mmsdk/EffectHalVersion;
    goto :goto_2

    .line 90
    .restart local v2    # "_arg1":Landroid/hardware/camera2/utils/BinderHolder;
    .restart local v4    # "_result":I
    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    .end local v0    # "_arg0":Lcom/mediatek/mmsdk/EffectHalVersion;
    .end local v2    # "_arg1":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v4    # "_result":I
    :sswitch_3
    const-string v6, "com.mediatek.mmsdk.IEffectFactory"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "_arg0":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/mmsdk/EffectHalVersion;>;"
    invoke-virtual {p0, v0, v3}, Lcom/mediatek/mmsdk/IEffectFactory$Stub;->getSupportedVersion(Ljava/lang/String;Ljava/util/List;)I

    move-result v4

    .line 102
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 109
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/mmsdk/EffectHalVersion;>;"
    .end local v4    # "_result":I
    :sswitch_4
    const-string v6, "com.mediatek.mmsdk.IEffectFactory"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lcom/mediatek/mmsdk/IEffectFactory$Stub;->getAllSupportedEffectHal(Ljava/util/List;)I

    move-result v4

    .line 113
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
