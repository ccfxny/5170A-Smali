.class public final Landroid/telephony/MzTelephony$MmsSmsExt;
.super Ljava/lang/Object;
.source "MzTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/MzTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MmsSmsExt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/MzTelephony$MmsSmsExt$PendingMessagesExt;
    }
.end annotation


# static fields
.field public static final CONTENT_MSGCOUNT_URI:Landroid/net/Uri;

.field public static final CONTENT_MSG_AND_THREAD_MIX_OPERATE_URI:Landroid/net/Uri;

.field public static final CONTENT_UNREAD_MESSAGE_COUNT_URI:Landroid/net/Uri;

.field public static final CONTENT_UPDATE_THREAD_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_CANONICAL:Landroid/net/Uri;

.field public static final ERR_TYPE_MMS_MEIZU_UNKONW_ERROR:I = 0x13

.field public static final ERR_TYPE_TRANSPORT_WAITING:I = 0x5

.field public static final MMS_FLYME_PROTO:I = 0x2

.field public static final MMS_SNS_PROTO:I = 0x3

.field public static final SMS_CHARGE_PROTO:I = 0x200

.field public static final SMS_FLYME_PROTO:I = 0x100

.field public static final SMS_PAYMENT_PROTO:I = 0x201

.field public static final SMS_SINA_PROTO:I = 0x10a


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 886
    const-string v0, "content://mms-sms/canonical"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/MzTelephony$MmsSmsExt;->CONTENT_URI_CANONICAL:Landroid/net/Uri;

    .line 887
    const-string v0, "content://mms-sms/message-count"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/MzTelephony$MmsSmsExt;->CONTENT_MSGCOUNT_URI:Landroid/net/Uri;

    .line 889
    const-string v0, "content://mms-sms/update-thread"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/MzTelephony$MmsSmsExt;->CONTENT_UPDATE_THREAD_URI:Landroid/net/Uri;

    .line 892
    const-string v0, "content://mms-sms/unread-message-count"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/MzTelephony$MmsSmsExt;->CONTENT_UNREAD_MESSAGE_COUNT_URI:Landroid/net/Uri;

    .line 895
    const-string v0, "content://mms-sms/msg_and_thread_mix_operate"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/MzTelephony$MmsSmsExt;->CONTENT_MSG_AND_THREAD_MIX_OPERATE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 921
    return-void
.end method
