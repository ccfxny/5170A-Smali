.class public final Landroid/telephony/MzTelephony$SmsExt$SpamMessage;
.super Ljava/lang/Object;
.source "MzTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Telephony$TextBasedSmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/MzTelephony$SmsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpamMessage"
.end annotation


# static fields
.field public static final ASSOCIATION_ID:Ljava/lang/String; = "association_id"

.field public static final CONTENT_UPDATE_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final GROUP_MSG_ID:Ljava/lang/String; = "group_msg_id"

.field public static final IMSI:Ljava/lang/String; = "imsi"

.field public static final MESSAGE_UUID:Ljava/lang/String; = "uuid"

.field public static final PORT:Ljava/lang/String; = "port"

.field public static final REPORT_DATE:Ljava/lang/String; = "report_date"

.field public static final SPAM_CAUGHT_BY_KEYWORD:I = 0x4

.field public static final SPAM_CAUGHT_BY_MANUAL:I = 0x3

.field public static final SPAM_CAUGHT_BY_NUMBER_WITH_CLOUD:I = 0x2

.field public static final SPAM_CAUGHT_BY_NUMBER_WITH_CUSTOM:I = 0x1

.field public static final SPAM_CAUGHT_BY_TMS:I = 0x6

.field public static final SPAM_CAUGHT_FOR_ADDRESS_NOT_EXIST_IN_DATABASES:I = 0x5

.field public static final SPAM_DATE:Ljava/lang/String; = "spam_date"

.field public static final SPAM_TYPE:Ljava/lang/String; = "spam_type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 589
    const-string v0, "content://sms/spam"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/MzTelephony$SmsExt$SpamMessage;->CONTENT_URI:Landroid/net/Uri;

    .line 590
    const-string v0, "content://sms/spam_update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/MzTelephony$SmsExt$SpamMessage;->CONTENT_UPDATE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
