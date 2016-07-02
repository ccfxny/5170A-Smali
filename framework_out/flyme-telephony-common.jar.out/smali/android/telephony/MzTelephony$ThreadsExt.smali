.class public final Landroid/telephony/MzTelephony$ThreadsExt;
.super Ljava/lang/Object;
.source "MzTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/MzTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThreadsExt"
.end annotation


# static fields
.field public static final CONTENT_URI_SNS_THREADS_CLEAR:Landroid/net/Uri;

.field public static final IMSI:Ljava/lang/String; = "imsi"

.field public static final LAST_MSG_TYPE:Ljava/lang/String; = "last_msg_type"

.field public static final NOTICE_THREAD:I = 0x10b

.field public static final SIM_ID:Ljava/lang/String; = "sim_id"

.field public static final SNS_SINA_THREAD:I = 0x10a

.field public static final TOP:Ljava/lang/String; = "top"

.field public static final UPDATEREADSTATUS_THREADS_URI:Landroid/net/Uri;

.field public static final VER:Ljava/lang/String; = "version"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 851
    const-string v0, "content://mms-sms/update_threads_read_status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/MzTelephony$ThreadsExt;->UPDATEREADSTATUS_THREADS_URI:Landroid/net/Uri;

    .line 856
    const-string v0, "content://mms-sms/conversations/clear_sns"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/MzTelephony$ThreadsExt;->CONTENT_URI_SNS_THREADS_CLEAR:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
