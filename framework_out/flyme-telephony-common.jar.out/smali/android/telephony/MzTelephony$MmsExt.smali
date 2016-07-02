.class public final Landroid/telephony/MzTelephony$MmsExt;
.super Ljava/lang/Object;
.source "MzTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/MzTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MmsExt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/MzTelephony$MmsExt$IntentsExt;
    }
.end annotation


# static fields
.field public static final ASSOCIATION_ID:Ljava/lang/String; = "association_id"

.field public static final BCC:Ljava/lang/String; = "bcc"

.field public static final CC:Ljava/lang/String; = "cc"

.field public static final DEFAULT_FLYME_FILEPATH:Ljava/lang/String; = "/sdcard/Download/FMessage/"

.field public static final DEFAULT_SNS_FILEPATH:Ljava/lang/String; = "/sdcard/Download/FMessage/"

.field public static final DELIVERY_STATUS:Ljava/lang/String; = "delivery_status"

.field public static final FROM:Ljava/lang/String; = "from"

.field public static final IMSI:Ljava/lang/String; = "imsi"

.field public static final IS_FAVORITE:Ljava/lang/String; = "is_favorite"

.field public static final MESSAGE_UUID:Ljava/lang/String; = "uuid"

.field public static final META_DATA:Ljava/lang/String; = "meta_data"

.field public static final PART_MEIZU_FLYME_URI:Ljava/lang/String; = "part_flyme_uri"

.field public static final PDU_FIRSTMEDIA_ID:Ljava/lang/String; = "first_media_id"

.field public static final PDU_FIRSTTEXT_ID:Ljava/lang/String; = "first_text_id"

.field public static final PDU_MEIZU_FILELINK:Ljava/lang/String; = "file_link"

.field public static final PDU_MEIZU_PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final PDU_MEIZU_TRANSCATION_RATE:Ljava/lang/String; = "t_rate"

.field public static final PDU_SLIDESHOW_DESCIPTION:Ljava/lang/String; = "slideshow_description"

.field public static final QUOTED_STRING_PATTERN:Ljava/util/regex/Pattern;

.field public static final REPORT_DATE:Ljava/lang/String; = "report_date"

.field public static final SIM_ID:Ljava/lang/String; = "sim_id"

.field public static final SYNC_UUID:Ljava/lang/String; = "uuid"

.field public static final SYNC_VER:Ljava/lang/String; = "sync_ver"

.field public static final TO:Ljava/lang/String; = "to"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 762
    const-string v0, "\\s*\"([^\"]*)\"\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/MzTelephony$MmsExt;->QUOTED_STRING_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 799
    return-void
.end method

.method public static final getMessageBoxName(I)Ljava/lang/String;
    .locals 3
    .param p0, "msgBox"    # I

    .prologue
    .line 766
    packed-switch p0, :pswitch_data_0

    .line 778
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid message box: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :pswitch_0
    const-string v0, "all"

    .line 776
    :goto_0
    return-object v0

    .line 770
    :pswitch_1
    const-string v0, "inbox"

    goto :goto_0

    .line 772
    :pswitch_2
    const-string v0, "sent"

    goto :goto_0

    .line 774
    :pswitch_3
    const-string v0, "drafts"

    goto :goto_0

    .line 776
    :pswitch_4
    const-string v0, "outbox"

    goto :goto_0

    .line 766
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static final isSnsRecipient(Ljava/lang/String;)Z
    .locals 3
    .param p0, "recipientStr"    # Ljava/lang/String;

    .prologue
    .line 789
    const/4 v0, 0x0

    .line 790
    .local v0, "isSnsRecipients":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    :cond_0
    move v1, v0

    .line 796
    :goto_0
    return v1

    .line 792
    :cond_1
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 793
    const/4 v0, 0x1

    move v1, v0

    .line 796
    goto :goto_0

    .line 795
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
