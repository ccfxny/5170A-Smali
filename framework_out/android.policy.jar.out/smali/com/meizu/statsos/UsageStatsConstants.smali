.class final Lcom/meizu/statsos/UsageStatsConstants;
.super Ljava/lang/Object;
.source "UsageStatsConstants.java"


# static fields
.field public static final ACTION_CHECK_UPLOAD:Ljava/lang/String; = "com.meizu.usagestats.check_upload"

.field public static final APP_BOOT_INTERVAL:J = 0x7530L

.field public static final DEBUG_PROPERTIES_NAME:Ljava/lang/String; = "persist.meizu.usagestats.debug"

.field public static EVENTS_PARCEL_LIMIT:I = 0x0

.field public static final EVENT_RANGE:J = 0x240c8400L

.field public static final MAX_DATA_SIZE_DAY:J = 0x2800L

.field public static MAX_EVENT_RECORD:I = 0x0

.field public static final MAX_PAGES_IN_STACK:I = 0x64

.field public static OFFLINE_MOBILE_EVENTS_PARCEL_LIMIT:I = 0x0

.field public static ONLINE_EVENTS_PARCEL_LIMIT:I = 0x0

.field public static ONLINE_EVENTS_THRESHOLD:I = 0x0

.field public static ONLINE_MAX_EVENT_RECORD:I = 0x0

.field public static final ONLINE_UPLOAD_INTERVAL:J = 0x1b7740L

.field public static final PAGE_TIME_OUT:J = 0x2932e00L

.field public static final PREFERENCES_LAST_UPLOAD_TIME:Ljava/lang/String; = "last_upload_time"

.field public static final PREFERENCES_NAME:Ljava/lang/String; = "com.meizu.stats"

.field public static final PREFERENCES_TODAY_UPLOAD_FLAG:Ljava/lang/String; = "today_upload_flag"

.field public static final PREFERENCES_TODAY_UPLOAD_SIZE:Ljava/lang/String; = "today_upload_size"

.field public static final STATS_CHANNEL_NUM:Ljava/lang/String; = "uxip_channel_num"

.field public static final UPLOAD_ALARM_INTERVAL:J = 0x1b77400L

.field public static final UPLOAD_INTERVAL:J = 0x5265c00L

.field public static final UPLOAD_INTERVAL_POWER_CONNECTED:J = 0x1b77400L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/16 v0, 0x190

    sput v0, Lcom/meizu/statsos/UsageStatsConstants;->EVENTS_PARCEL_LIMIT:I

    .line 12
    const/16 v0, 0x12c

    sput v0, Lcom/meizu/statsos/UsageStatsConstants;->OFFLINE_MOBILE_EVENTS_PARCEL_LIMIT:I

    .line 13
    const/16 v0, 0xc8

    sput v0, Lcom/meizu/statsos/UsageStatsConstants;->ONLINE_EVENTS_PARCEL_LIMIT:I

    .line 15
    const/16 v0, 0x2710

    sput v0, Lcom/meizu/statsos/UsageStatsConstants;->ONLINE_MAX_EVENT_RECORD:I

    .line 16
    const v0, 0xc350

    sput v0, Lcom/meizu/statsos/UsageStatsConstants;->MAX_EVENT_RECORD:I

    .line 17
    const/16 v0, 0x32

    sput v0, Lcom/meizu/statsos/UsageStatsConstants;->ONLINE_EVENTS_THRESHOLD:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
