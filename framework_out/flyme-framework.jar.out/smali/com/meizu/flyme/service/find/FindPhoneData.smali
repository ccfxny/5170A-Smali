.class public Lcom/meizu/flyme/service/find/FindPhoneData;
.super Ljava/lang/Object;
.source "FindPhoneData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/meizu/flyme/service/find/FindPhoneData;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_GETUSERNAME_EMPTY_SN:I = 0x8

.field public static final ERROR_NETWORK_UNAVAILABLE:I = 0x9

.field public static final ERROR_UNKNOWN:I = 0x0

.field public static final ERROR_UNLOCKPHONE_ACCOUNT_NO_BIND_SN:I = 0x6

.field public static final ERROR_UNLOCKPHONE_COUNT_LIMIT:I = 0x7

.field public static final ERROR_UNLOCKPHONE_EMPTY_USER_OR_PSW:I = 0x5

.field public static final ERROR_UNLOCKPHONE_WRONG_USER_OR_PSW:I = 0x4

.field public static final INVALID_TOKEN_ERROR:I = 0x3

.field public static final SERVER_ERROR:I = 0x2

.field public static final SUCCESS:I = 0x1


# instance fields
.field public mCode:I

.field public mCount:I

.field public mData:Ljava/lang/String;

.field public mDescribe:Ljava/lang/String;

.field public mDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/meizu/flyme/service/find/FindPhoneData$1;

    invoke-direct {v0}, Lcom/meizu/flyme/service/find/FindPhoneData$1;-><init>()V

    sput-object v0, Lcom/meizu/flyme/service/find/FindPhoneData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "describe"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/meizu/flyme/service/find/FindPhoneData;->mCode:I

    .line 39
    iput-object p2, p0, Lcom/meizu/flyme/service/find/FindPhoneData;->mData:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/meizu/flyme/service/find/FindPhoneData;->mDescribe:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public setResult(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "describe"    # Ljava/lang/String;

    .prologue
    .line 44
    iput p1, p0, Lcom/meizu/flyme/service/find/FindPhoneData;->mCode:I

    .line 45
    iput-object p2, p0, Lcom/meizu/flyme/service/find/FindPhoneData;->mData:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/meizu/flyme/service/find/FindPhoneData;->mDescribe:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setUnlockResult(II)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "duration"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/meizu/flyme/service/find/FindPhoneData;->mCount:I

    .line 51
    iput p2, p0, Lcom/meizu/flyme/service/find/FindPhoneData;->mDuration:I

    .line 52
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 56
    iget v0, p0, Lcom/meizu/flyme/service/find/FindPhoneData;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object v0, p0, Lcom/meizu/flyme/service/find/FindPhoneData;->mData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/meizu/flyme/service/find/FindPhoneData;->mDescribe:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget v0, p0, Lcom/meizu/flyme/service/find/FindPhoneData;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Lcom/meizu/flyme/service/find/FindPhoneData;->mDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    return-void
.end method
