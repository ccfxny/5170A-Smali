.class public final Landroid/telephony/MzTelephony$Insert_modify_count;
.super Ljava/lang/Object;
.source "MzTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/MzTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Insert_modify_count"
.end annotation


# static fields
.field public static final CLOUD_FILTER_VERSION:Ljava/lang/String; = "cloud_filter_version"

.field public static final COMPOSE_INSERT_COUNT:Ljava/lang/String; = "compose_insert_count"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATABASE_FINGERPRINT:Ljava/lang/String; = "database_finger_print"

.field public static final THREAD_UPDATE_COUNT:Ljava/lang/String; = "thread_update_count"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 984
    const-string v0, "content://mms-sms/mmssms-modify-count"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/MzTelephony$Insert_modify_count;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 995
    return-void
.end method
