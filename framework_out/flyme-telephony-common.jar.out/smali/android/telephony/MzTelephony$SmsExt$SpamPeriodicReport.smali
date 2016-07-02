.class public final Landroid/telephony/MzTelephony$SmsExt$SpamPeriodicReport;
.super Ljava/lang/Object;
.source "MzTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/MzTelephony$SmsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpamPeriodicReport"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DESC:Ljava/lang/String; = "desc"

.field public static final RECEIVED_TIME:Ljava/lang/String; = "received_time"

.field public static final SPAM_TYPE:Ljava/lang/String; = "spam_type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 634
    const-string v0, "content://sms/spam_periodic_report"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/MzTelephony$SmsExt$SpamPeriodicReport;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
