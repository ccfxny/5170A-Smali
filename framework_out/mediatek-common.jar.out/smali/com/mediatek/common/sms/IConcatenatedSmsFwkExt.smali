.class public interface abstract Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;
.super Ljava/lang/Object;
.source "IConcatenatedSmsFwkExt.java"


# static fields
.field public static final ACTION_CLEAR_OUT_SEGMENTS:Ljava/lang/String; = "android.sms.ACTION_CLEAR_OUT_SEGMENTS"

.field public static final EVENT_DISPATCH_CONCATE_SMS_SEGMENTS:I = 0xbb9

.field public static final OUT_OF_DATE_TIME:I = 0x2932e00

.field public static final UPLOAD_FLAG_NEW:I = 0x1

.field public static final UPLOAD_FLAG_TAG:Ljava/lang/String; = "upload_flag"

.field public static final UPLOAD_FLAG_UPDATE:I = 0x2


# virtual methods
.method public abstract cancelTimer(Landroid/os/Handler;Ljava/lang/Object;)V
.end method

.method public abstract deleteExistedSegments(Lcom/mediatek/common/sms/TimerRecord;)V
.end method

.method public abstract getUploadFlag(Lcom/mediatek/common/sms/TimerRecord;)I
.end method

.method public abstract isFirstConcatenatedSegment(Ljava/lang/String;I)Z
.end method

.method public abstract isLastConcatenatedSegment(Ljava/lang/String;II)Z
.end method

.method public abstract queryExistedSegments(Lcom/mediatek/common/sms/TimerRecord;)[[B
.end method

.method public abstract queryTimerRecord(Ljava/lang/String;II)Lcom/mediatek/common/sms/TimerRecord;
.end method

.method public abstract refreshTimer(Landroid/os/Handler;Ljava/lang/Object;)V
.end method

.method public abstract setPhoneId(I)V
.end method

.method public abstract setUploadFlag(Lcom/mediatek/common/sms/TimerRecord;)V
.end method

.method public abstract startTimer(Landroid/os/Handler;Ljava/lang/Object;)V
.end method
