.class Lcom/android/internal/telephony/cdma/utk/RilMessage;
.super Ljava/lang/Object;
.source "UtkService.java"


# instance fields
.field mData:Ljava/lang/Object;

.field mId:I

.field mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # I
    .param p2, "rawData"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mId:I

    .line 86
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mData:Ljava/lang/Object;

    .line 87
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V
    .locals 1
    .param p1, "other"    # Lcom/android/internal/telephony/cdma/utk/RilMessage;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mId:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mId:I

    .line 91
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mData:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mData:Ljava/lang/Object;

    .line 92
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 93
    return-void
.end method
