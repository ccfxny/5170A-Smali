.class public Lcom/meizu/android/mms/pdu/MzPduPersister;
.super Ljava/lang/Object;
.source "MzPduPersister.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ADDRESS_FIELDS:[I

.field private static final CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DUMMY_THREAD_ID:J = 0x7fffffffffffffffL

.field private static final ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOAD_PART_RETRY_COUNT:I = 0x2

.field private static final LOCAL_LOGV:Z = false

.field private static final LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MESSAGE_BOX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PART_COLUMN_CHARSET:I = 0x1

.field private static final PART_COLUMN_CONTENT_DISPOSITION:I = 0x2

.field private static final PART_COLUMN_CONTENT_ID:I = 0x3

.field private static final PART_COLUMN_CONTENT_LOCATION:I = 0x4

.field private static final PART_COLUMN_CONTENT_TYPE:I = 0x5

.field private static final PART_COLUMN_FILENAME:I = 0x6

.field private static final PART_COLUMN_ID:I = 0x0

.field private static final PART_COLUMN_NAME:I = 0x7

.field private static final PART_COLUMN_TEXT:I = 0x8

.field private static final PART_PROJECTION:[Ljava/lang/String;

.field private static final PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

.field private static final PDU_COLUMN_CONTENT_CLASS:I = 0xb

.field private static final PDU_COLUMN_CONTENT_LOCATION:I = 0x5

.field private static final PDU_COLUMN_CONTENT_TYPE:I = 0x6

.field private static final PDU_COLUMN_DATE:I = 0x15

.field private static final PDU_COLUMN_DELIVERY_REPORT:I = 0xc

.field private static final PDU_COLUMN_DELIVERY_TIME:I = 0x16

.field private static final PDU_COLUMN_EXPIRY:I = 0x17

.field private static final PDU_COLUMN_ID:I = 0x0

.field private static final PDU_COLUMN_MESSAGE_BOX:I = 0x1

.field private static final PDU_COLUMN_MESSAGE_CLASS:I = 0x7

.field private static final PDU_COLUMN_MESSAGE_ID:I = 0x8

.field private static final PDU_COLUMN_MESSAGE_SIZE:I = 0x18

.field private static final PDU_COLUMN_MESSAGE_TYPE:I = 0xd

.field private static final PDU_COLUMN_MMS_VERSION:I = 0xe

.field private static final PDU_COLUMN_PDU_MEIZU_FILELINK:I = 0x1c

.field private static final PDU_COLUMN_PDU_MEIZU_MMSDES:I = 0x1d

.field private static final PDU_COLUMN_PDU_MEIZU_PROTOCOL:I = 0x1b

.field private static final PDU_COLUMN_PRIORITY:I = 0xf

.field private static final PDU_COLUMN_READ_REPORT:I = 0x10

.field private static final PDU_COLUMN_READ_STATUS:I = 0x11

.field private static final PDU_COLUMN_REPORT_ALLOWED:I = 0x12

.field private static final PDU_COLUMN_RESPONSE_TEXT:I = 0x9

.field private static final PDU_COLUMN_RETRIEVE_STATUS:I = 0x13

.field private static final PDU_COLUMN_RETRIEVE_TEXT:I = 0x3

.field private static final PDU_COLUMN_RETRIEVE_TEXT_CHARSET:I = 0x1a

.field private static final PDU_COLUMN_STATUS:I = 0x14

.field private static final PDU_COLUMN_SUBJECT:I = 0x4

.field private static final PDU_COLUMN_SUBJECT_CHARSET:I = 0x19

.field private static final PDU_COLUMN_THREAD_ID:I = 0x2

.field private static final PDU_COLUMN_TRANSACTION_ID:I = 0xa

.field private static final PDU_PROJECTION:[Ljava/lang/String;

.field public static final PROC_STATUS_COMPLETED:I = 0x3

.field public static final PROC_STATUS_PERMANENTLY_FAILURE:I = 0x2

.field public static final PROC_STATUS_TRANSIENT_FAILURE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PduPersister"

.field public static final TEMPORARY_DRM_OBJECT_URI:Ljava/lang/String; = "content://mms/9223372036854775807/part"

.field private static final TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPersister:Lcom/meizu/android/mms/pdu/MzPduPersister;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mLoadPartAsBackUpMode:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x9a

    const/16 v6, 0x96

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v4, 0x4

    .line 69
    const-class v0, Lcom/meizu/android/mms/pdu/MzPduPersister;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->$assertionsDisabled:Z

    .line 99
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->ADDRESS_FIELDS:[I

    .line 106
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/4 v2, 0x2

    const-string v3, "thread_id"

    aput-object v3, v0, v2

    const-string v2, "retr_txt"

    aput-object v2, v0, v5

    const-string v2, "sub"

    aput-object v2, v0, v4

    const/4 v2, 0x5

    const-string v3, "ct_l"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "ct_t"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "m_cls"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "m_id"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "resp_txt"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "tr_id"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "ct_cls"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "d_rpt"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "m_type"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "v"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "pri"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "rr"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string v3, "read_status"

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const-string v3, "rpt_a"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const-string v3, "retr_st"

    aput-object v3, v0, v2

    const/16 v2, 0x14

    const-string v3, "st"

    aput-object v3, v0, v2

    const/16 v2, 0x15

    const-string v3, "date"

    aput-object v3, v0, v2

    const/16 v2, 0x16

    const-string v3, "d_tm"

    aput-object v3, v0, v2

    const/16 v2, 0x17

    const-string v3, "exp"

    aput-object v3, v0, v2

    const/16 v2, 0x18

    const-string v3, "m_size"

    aput-object v3, v0, v2

    const/16 v2, 0x19

    const-string v3, "sub_cs"

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    const-string v3, "retr_txt_cs"

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    const-string v3, "protocol"

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    const-string v3, "file_link"

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    const-string v3, "slideshow_description"

    aput-object v3, v0, v2

    sput-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    .line 170
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v2, "chset"

    aput-object v2, v0, v1

    const/4 v2, 0x2

    const-string v3, "cd"

    aput-object v3, v0, v2

    const-string v2, "cid"

    aput-object v2, v0, v5

    const-string v2, "cl"

    aput-object v2, v0, v4

    const/4 v2, 0x5

    const-string v3, "ct"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "fn"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "name"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "text"

    aput-object v3, v0, v2

    sput-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->PART_PROJECTION:[Ljava/lang/String;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    .line 207
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 213
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 217
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub_cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_txt_cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 222
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 226
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 231
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 239
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_t"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "resp_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tr_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 248
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 260
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_rpt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "read_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rpt_a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 273
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 279
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_tm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "exp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    invoke-static {}, Lcom/meizu/android/mms/util/MzPduCache;->getInstance()Lcom/meizu/android/mms/util/MzPduCache;

    move-result-object v0

    sput-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    .line 285
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 99
    :array_0
    .array-data 4
        0x81
        0x82
        0x89
        0x97
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p1, p0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    .line 294
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 295
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mLoadPartAsBackUpMode:Z

    .line 298
    return-void
.end method

.method public static convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1224
    const/4 v8, 0x0

    .line 1225
    .local v8, "path":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 1226
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 1227
    .local v10, "scheme":Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1229
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 1258
    .end local v10    # "scheme":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v8

    .line 1231
    .restart local v10    # "scheme":Ljava/lang/String;
    :cond_2
    const-string v0, "http"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1232
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1234
    :cond_3
    const-string v0, "content"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1235
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 1236
    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1238
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1240
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1241
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri could not be found in media store"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1246
    :catch_0
    move-exception v7

    .line 1247
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri is not formatted in a way so that it can be found in media store."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1250
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 1251
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 1244
    :cond_6
    :try_start_2
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1245
    .local v9, "pathIndex":I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 1250
    if-eqz v6, :cond_1

    .line 1251
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1255
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "pathIndex":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri scheme is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private correctMimeType(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 4
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "nameByte"    # [B

    .prologue
    .line 1054
    if-nez p2, :cond_1

    .line 1061
    .end local p1    # "contentType":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 1055
    .restart local p1    # "contentType":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1056
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1057
    const-string v1, ".vcf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "text/x-vcard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1058
    const-string v1, "PduPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "correctMimeType():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newType\uff1atext/x-vcard, name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    const-string p1, "text/x-vcard"

    goto :goto_0
.end method

.method private getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .prologue
    .line 361
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/android/mms/pdu/MzPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 364
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 2088
    :try_start_0
    const-string v1, "iso-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2092
    :goto_0
    return-object v1

    .line 2089
    :catch_0
    move-exception v0

    .line 2091
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "PduPersister"

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2092
    const/4 v1, 0x0

    new-array v1, v1, [B

    goto :goto_0
.end method

.method private getGesstionString([B[B)Ljava/lang/String;
    .locals 2
    .param p1, "nameByte"    # [B
    .param p2, "contentlocations"    # [B

    .prologue
    .line 1040
    const-string v0, ""

    .line 1041
    .local v0, "name":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1042
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1043
    :cond_0
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    if-eqz p2, :cond_1

    .line 1044
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1045
    :cond_1
    return-object v0
.end method

.method private getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .prologue
    .line 354
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 357
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getPartContentType(Lcom/meizu/android/mms/pdu/MzPduPart;)Ljava/lang/String;
    .locals 1
    .param p0, "part"    # Lcom/meizu/android/mms/pdu/MzPduPart;

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentType()[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentType()[B

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/android/mms/pdu/MzPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPduPersister(Landroid/content/Context;)Lcom/meizu/android/mms/pdu/MzPduPersister;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->sPersister:Lcom/meizu/android/mms/pdu/MzPduPersister;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->sPersister:Lcom/meizu/android/mms/pdu/MzPduPersister;

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 303
    :cond_0
    new-instance v0, Lcom/meizu/android/mms/pdu/MzPduPersister;

    invoke-direct {v0, p0}, Lcom/meizu/android/mms/pdu/MzPduPersister;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->sPersister:Lcom/meizu/android/mms/pdu/MzPduPersister;

    .line 306
    :cond_1
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->sPersister:Lcom/meizu/android/mms/pdu/MzPduPersister;

    return-object v0
.end method

.method public static final isDataInSystem(Ljava/lang/String;)Z
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1615
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1622
    :cond_0
    :goto_0
    return v0

    .line 1617
    :cond_1
    const-string v2, "/data/data/com.android.providers.telephony/app_parts"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 1618
    goto :goto_0

    .line 1619
    :cond_2
    const-string v2, "/data"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "/com.android.providers.telephony/app_parts"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    .line 1620
    goto :goto_0
.end method

.method private loadAddress(JLcom/meizu/android/mms/pdu/MzPduHeaders;)V
    .locals 15
    .param p1, "msgId"    # J
    .param p3, "headers"    # Lcom/meizu/android/mms/pdu/MzPduHeaders;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 502
    iget-object v2, p0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/addr"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const-string v7, "address"

    aput-object v7, v5, v12

    const-string v7, "charset"

    aput-object v7, v5, v8

    const-string v7, "type"

    aput-object v7, v5, v13

    move-object v7, v6

    move-object v8, v6

    invoke-static/range {v2 .. v8}, Lcom/meizu/android/mms/util/MzSqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 507
    .local v11, "c":Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 509
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 510
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 511
    .local v9, "addr":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 512
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 513
    .local v10, "addrType":I
    sparse-switch v10, :sswitch_data_0

    .line 527
    const-string v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown address type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 533
    .end local v9    # "addr":Ljava/lang/String;
    .end local v10    # "addrType":I
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 515
    .restart local v9    # "addr":Ljava/lang/String;
    .restart local v10    # "addrType":I
    :sswitch_0
    :try_start_1
    new-instance v2, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v9}, Lcom/meizu/android/mms/pdu/MzPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;-><init>(I[B)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v10}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setEncodedStringValue(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;I)V

    goto :goto_0

    .line 522
    :sswitch_1
    new-instance v2, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v9}, Lcom/meizu/android/mms/pdu/MzPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;-><init>(I[B)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v10}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->appendEncodedStringValue(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 533
    .end local v9    # "addr":Ljava/lang/String;
    .end local v10    # "addrType":I
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 536
    :cond_2
    return-void

    .line 513
    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_1
        0x82 -> :sswitch_1
        0x89 -> :sswitch_0
        0x97 -> :sswitch_1
    .end sparse-switch
.end method

.method private loadParts(J)[Lcom/meizu/android/mms/pdu/MzPduPart;
    .locals 1
    .param p1, "msgId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 368
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/android/mms/pdu/MzPduPersister;->loadParts(JI)[Lcom/meizu/android/mms/pdu/MzPduPart;

    move-result-object v0

    return-object v0
.end method

.method private loadParts(JI)[Lcom/meizu/android/mms/pdu/MzPduPart;
    .locals 35
    .param p1, "msgId"    # J
    .param p3, "protocol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/meizu/android/mms/pdu/MzPduPersister;->PART_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/meizu/android/mms/util/MzSqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 376
    .local v12, "c":Landroid/database/Cursor;
    const/16 v31, 0x0

    .line 379
    .local v31, "parts":[Lcom/meizu/android/mms/pdu/MzPduPart;
    if-eqz v12, :cond_0

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 383
    :cond_0
    const/4 v2, 0x0

    .line 493
    if-eqz v12, :cond_1

    .line 494
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 498
    :cond_1
    :goto_0
    return-object v2

    .line 386
    :cond_2
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v25

    .line 387
    .local v25, "partCount":I
    const/16 v28, 0x0

    .line 388
    .local v28, "partIdx":I
    move/from16 v0, v25

    new-array v0, v0, [Lcom/meizu/android/mms/pdu/MzPduPart;

    move-object/from16 v31, v0

    move/from16 v29, v28

    .line 389
    .end local v28    # "partIdx":I
    .local v29, "partIdx":I
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 390
    new-instance v24, Lcom/meizu/android/mms/pdu/MzPduPart;

    invoke-direct/range {v24 .. v24}, Lcom/meizu/android/mms/pdu/MzPduPart;-><init>()V

    .line 391
    .local v24, "part":Lcom/meizu/android/mms/pdu/MzPduPart;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/meizu/android/mms/pdu/MzPduPersister;->getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v13

    .line 393
    .local v13, "charset":Ljava/lang/Integer;
    if-eqz v13, :cond_3

    .line 394
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/meizu/android/mms/pdu/MzPduPart;->setCharset(I)V

    .line 397
    :cond_3
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/meizu/android/mms/pdu/MzPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v14

    .line 399
    .local v14, "contentDisposition":[B
    if-eqz v14, :cond_4

    .line 400
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Lcom/meizu/android/mms/pdu/MzPduPart;->setContentDisposition([B)V

    .line 403
    :cond_4
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/meizu/android/mms/pdu/MzPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v15

    .line 405
    .local v15, "contentId":[B
    if-eqz v15, :cond_5

    .line 406
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/meizu/android/mms/pdu/MzPduPart;->setContentId([B)V

    .line 409
    :cond_5
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/meizu/android/mms/pdu/MzPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v16

    .line 411
    .local v16, "contentLocation":[B
    if-eqz v16, :cond_6

    .line 412
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduPart;->setContentLocation([B)V

    .line 415
    :cond_6
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/meizu/android/mms/pdu/MzPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v17

    .line 417
    .local v17, "contentType":[B
    if-eqz v17, :cond_f

    .line 418
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduPart;->setContentType([B)V

    .line 423
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/meizu/android/mms/pdu/MzPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v19

    .line 425
    .local v19, "fileName":[B
    if-eqz v19, :cond_7

    .line 426
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduPart;->setFilename([B)V

    .line 429
    :cond_7
    const/4 v2, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/meizu/android/mms/pdu/MzPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v23

    .line 431
    .local v23, "name":[B
    if-eqz v23, :cond_8

    .line 432
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduPart;->setName([B)V

    .line 435
    :cond_8
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_11

    const/16 v21, 0x1

    .line 437
    .local v21, "isNormalPart":Z
    :goto_2
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 438
    .local v26, "partId":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/part/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v26

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    .line 439
    .local v30, "partURI":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mLoadPartAsBackUpMode:Z

    if-nez v2, :cond_9

    .line 441
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduPart;->setDataUri(Landroid/net/Uri;)V

    .line 445
    :cond_9
    invoke-static/range {v17 .. v17}, Lcom/meizu/android/mms/pdu/MzPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v33

    .line 446
    .local v33, "type":Ljava/lang/String;
    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mLoadPartAsBackUpMode:Z

    if-nez v2, :cond_b

    :cond_a
    invoke-static/range {v33 .. v33}, Lcom/meizu/android/mms/MzContentType;->isImageType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static/range {v33 .. v33}, Lcom/meizu/android/mms/MzContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static/range {v33 .. v33}, Lcom/meizu/android/mms/MzContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static/range {v33 .. v33}, Lcom/meizu/android/mms/MzContentType;->isVcardType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 451
    :cond_b
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 452
    .local v9, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v20, 0x0

    .line 457
    .local v20, "is":Ljava/io/InputStream;
    const-string v2, "text/plain"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "application/smil"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "text/html"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 459
    :cond_c
    const/16 v2, 0x8

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 460
    .local v32, "text":Ljava/lang/String;
    new-instance v2, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    if-eqz v32, :cond_12

    .end local v32    # "text":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v32

    invoke-direct {v2, v0}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;->getTextString()[B

    move-result-object v10

    .line 462
    .local v10, "blob":[B
    const/4 v2, 0x0

    array-length v3, v10

    invoke-virtual {v9, v10, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 488
    .end local v10    # "blob":[B
    :cond_d
    :goto_4
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/meizu/android/mms/pdu/MzPduPart;->setData([B)V

    .line 490
    .end local v9    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v20    # "is":Ljava/io/InputStream;
    :cond_e
    add-int/lit8 v28, v29, 0x1

    .end local v29    # "partIdx":I
    .restart local v28    # "partIdx":I
    aput-object v24, v31, v29

    move/from16 v29, v28

    .line 491
    .end local v28    # "partIdx":I
    .restart local v29    # "partIdx":I
    goto/16 :goto_1

    .line 420
    .end local v19    # "fileName":[B
    .end local v21    # "isNormalPart":Z
    .end local v23    # "name":[B
    .end local v26    # "partId":J
    .end local v30    # "partURI":Landroid/net/Uri;
    .end local v33    # "type":Ljava/lang/String;
    :cond_f
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Content-Type must be set."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    .end local v13    # "charset":Ljava/lang/Integer;
    .end local v14    # "contentDisposition":[B
    .end local v15    # "contentId":[B
    .end local v16    # "contentLocation":[B
    .end local v17    # "contentType":[B
    .end local v24    # "part":Lcom/meizu/android/mms/pdu/MzPduPart;
    .end local v25    # "partCount":I
    .end local v29    # "partIdx":I
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_10

    .line 494
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v2

    .line 435
    .restart local v13    # "charset":Ljava/lang/Integer;
    .restart local v14    # "contentDisposition":[B
    .restart local v15    # "contentId":[B
    .restart local v16    # "contentLocation":[B
    .restart local v17    # "contentType":[B
    .restart local v19    # "fileName":[B
    .restart local v23    # "name":[B
    .restart local v24    # "part":Lcom/meizu/android/mms/pdu/MzPduPart;
    .restart local v25    # "partCount":I
    .restart local v29    # "partIdx":I
    :cond_11
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 460
    .restart local v9    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v20    # "is":Ljava/io/InputStream;
    .restart local v21    # "isNormalPart":Z
    .restart local v26    # "partId":J
    .restart local v30    # "partURI":Landroid/net/Uri;
    .restart local v32    # "text":Ljava/lang/String;
    .restart local v33    # "type":Ljava/lang/String;
    :cond_12
    :try_start_2
    const-string v32, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 466
    .end local v32    # "text":Ljava/lang/String;
    :cond_13
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v20

    .line 468
    const/16 v2, 0x100

    new-array v11, v2, [B

    .line 469
    .local v11, "buffer":[B
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    move-result v22

    .line 470
    .local v22, "len":I
    :goto_5
    if-ltz v22, :cond_14

    .line 471
    const/4 v2, 0x0

    move/from16 v0, v22

    invoke-virtual {v9, v11, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 472
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v22

    goto :goto_5

    .line 479
    :cond_14
    if-eqz v20, :cond_d

    .line 481
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 482
    :catch_0
    move-exception v18

    .line 483
    .local v18, "e":Ljava/io/IOException;
    :try_start_5
    const-string v2, "PduPersister"

    const-string v3, "Failed to close stream"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 474
    .end local v11    # "buffer":[B
    .end local v18    # "e":Ljava/io/IOException;
    .end local v22    # "len":I
    :catch_1
    move-exception v18

    .line 475
    .restart local v18    # "e":Ljava/io/IOException;
    :try_start_6
    const-string v2, "PduPersister"

    const-string v3, "Failed to load part data"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 476
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 477
    new-instance v2, Lcom/google/android/mms/MmsException;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 479
    .end local v18    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    if-eqz v20, :cond_15

    .line 481
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 484
    :cond_15
    :goto_6
    :try_start_8
    throw v2

    .line 482
    :catch_2
    move-exception v18

    .line 483
    .restart local v18    # "e":Ljava/io/IOException;
    const-string v3, "PduPersister"

    const-string v4, "Failed to close stream"

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    .line 493
    .end local v9    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "charset":Ljava/lang/Integer;
    .end local v14    # "contentDisposition":[B
    .end local v15    # "contentId":[B
    .end local v16    # "contentLocation":[B
    .end local v17    # "contentType":[B
    .end local v18    # "e":Ljava/io/IOException;
    .end local v19    # "fileName":[B
    .end local v20    # "is":Ljava/io/InputStream;
    .end local v21    # "isNormalPart":Z
    .end local v23    # "name":[B
    .end local v24    # "part":Lcom/meizu/android/mms/pdu/MzPduPart;
    .end local v26    # "partId":J
    .end local v30    # "partURI":Landroid/net/Uri;
    .end local v33    # "type":Ljava/lang/String;
    :cond_16
    if-eqz v12, :cond_17

    .line 494
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_17
    move-object/from16 v2, v31

    .line 498
    goto/16 :goto_0
.end method

.method private loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V
    .locals 9
    .param p1, "addressType"    # I
    .param p4, "excludeMyNumber"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/meizu/android/mms/pdu/MzEncodedStringValue;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1998
    .local p2, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p3, "addressMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    .line 1999
    .local v1, "array":[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    if-nez v1, :cond_1

    .line 2018
    :cond_0
    return-void

    .line 2004
    :cond_1
    if-eqz p4, :cond_2

    array-length v7, v1

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 2007
    :cond_2
    if-eqz p4, :cond_5

    iget-object v7, p0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    .line 2008
    .local v4, "myNumber":Ljava/lang/String;
    :goto_0
    move-object v0, v1

    .local v0, "arr$":[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 2009
    .local v6, "v":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    if-eqz v6, :cond_4

    .line 2010
    invoke-virtual {v6}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    .line 2011
    .local v5, "number":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-static {v5, v4}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    invoke-virtual {p2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 2014
    invoke-virtual {p2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2008
    .end local v5    # "number":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2007
    .end local v0    # "arr$":[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "myNumber":Ljava/lang/String;
    .end local v6    # "v":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    :cond_5
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private persistAddress(JI[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V
    .locals 9
    .param p1, "msgId"    # J
    .param p3, "type"    # I
    .param p4, "array"    # [Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    .prologue
    .line 902
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 904
    .local v5, "values":Landroid/content/ContentValues;
    move-object v1, p4

    .local v1, "arr$":[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 905
    .local v0, "addr":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 906
    const-string v6, "address"

    invoke-virtual {v0}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;->getTextString()[B

    move-result-object v7

    invoke-static {v7}, Lcom/meizu/android/mms/pdu/MzPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const-string v6, "charset"

    invoke-virtual {v0}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;->getCharacterSet()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 908
    const-string v6, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 910
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://mms/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/addr"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 911
    .local v4, "uri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v6, v7, v4, v5}, Lcom/meizu/android/mms/util/MzSqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 904
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 913
    .end local v0    # "addr":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private persistData(Lcom/meizu/android/mms/pdu/MzPduPart;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 23
    .param p1, "part"    # Lcom/meizu/android/mms/pdu/MzPduPart;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/android/mms/pdu/MzPduPart;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1081
    .local p4, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    const/16 v20, 0x0

    .line 1082
    .local v20, "os":Ljava/io/OutputStream;
    const/16 v16, 0x0

    .line 1083
    .local v16, "is":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 1084
    .local v13, "drmConvertSession":Lcom/meizu/android/mms/util/MzDrmConvertSession;
    const/4 v12, 0x0

    .line 1085
    .local v12, "dataUri":Landroid/net/Uri;
    const/16 v21, 0x0

    .line 1088
    .local v21, "path":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduPart;->getData()[B

    move-result-object v11

    .line 1089
    .local v11, "data":[B
    const-string v2, "text/plain"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "application/smil"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "text/html"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1092
    :cond_0
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1093
    .local v10, "cv":Landroid/content/ContentValues;
    const-string v2, "text"

    new-instance v3, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    invoke-direct {v3, v11}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;-><init>([B)V

    invoke-virtual {v3}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v10, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_13

    .line 1095
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1179
    .end local v10    # "cv":Landroid/content/ContentValues;
    .end local v11    # "data":[B
    :catch_0
    move-exception v14

    .line 1180
    .local v14, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v2, "PduPersister"

    const-string v3, "Failed to open Input/Output stream."

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1181
    new-instance v2, Lcom/google/android/mms/MmsException;

    invoke-direct {v2, v14}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1186
    .end local v14    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v2

    move-object/from16 v22, v2

    if-eqz v20, :cond_1

    .line 1188
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    .line 1193
    :cond_1
    :goto_0
    if-eqz v16, :cond_2

    .line 1195
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a

    .line 1200
    :cond_2
    :goto_1
    if-eqz v13, :cond_3

    .line 1201
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/meizu/android/mms/util/MzDrmConvertSession;->close(Ljava/lang/String;)I

    .line 1205
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1206
    .local v15, "f":Ljava/io/File;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1207
    .local v5, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mms/resetFilePerm/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/meizu/android/mms/util/MzSqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1210
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v15    # "f":Ljava/io/File;
    :cond_3
    throw v22

    .line 1098
    .restart local v11    # "data":[B
    :cond_4
    :try_start_4
    invoke-static/range {p3 .. p3}, Lcom/meizu/android/mms/util/MzDownloadDrmHelper;->isDrmConvertNeeded(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v17

    .line 1099
    .local v17, "isDrm":Z
    if-eqz v17, :cond_9

    .line 1100
    if-eqz p2, :cond_8

    .line 1102
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/meizu/android/mms/pdu/MzPduPersister;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v21

    .line 1106
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1107
    .restart local v15    # "f":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->length()J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v18

    .line 1111
    .local v18, "len":J
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-lez v2, :cond_8

    .line 1186
    if-eqz v20, :cond_5

    .line 1188
    :try_start_6
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1193
    :cond_5
    :goto_2
    if-eqz v16, :cond_6

    .line 1195
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1200
    :cond_6
    :goto_3
    if-eqz v13, :cond_7

    .line 1201
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/meizu/android/mms/util/MzDrmConvertSession;->close(Ljava/lang/String;)I

    .line 1205
    new-instance v15, Ljava/io/File;

    .end local v15    # "f":Ljava/io/File;
    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1206
    .restart local v15    # "f":Ljava/io/File;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1207
    .restart local v5    # "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mms/resetFilePerm/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/meizu/android/mms/util/MzSqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1212
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v15    # "f":Ljava/io/File;
    .end local v17    # "isDrm":Z
    .end local v18    # "len":J
    :cond_7
    :goto_4
    return-void

    .line 1189
    .restart local v15    # "f":Ljava/io/File;
    .restart local v17    # "isDrm":Z
    .restart local v18    # "len":J
    :catch_1
    move-exception v14

    .line 1190
    .local v14, "e":Ljava/io/IOException;
    const-string v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1196
    .end local v14    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v14

    .line 1197
    .restart local v14    # "e":Ljava/io/IOException;
    const-string v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1116
    .end local v14    # "e":Ljava/io/IOException;
    .end local v15    # "f":Ljava/io/File;
    .end local v18    # "len":J
    :catch_3
    move-exception v14

    .line 1117
    .local v14, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get file info for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1121
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-static {v2, v0}, Lcom/meizu/android/mms/util/MzDrmConvertSession;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/android/mms/util/MzDrmConvertSession;

    move-result-object v13

    .line 1122
    if-nez v13, :cond_9

    .line 1123
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mimetype "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " can not be converted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1182
    .end local v11    # "data":[B
    .end local v17    # "isDrm":Z
    :catch_4
    move-exception v14

    .line 1183
    .local v14, "e":Ljava/io/IOException;
    :try_start_9
    const-string v2, "PduPersister"

    const-string v3, "Failed to read/write data."

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1184
    new-instance v2, Lcom/google/android/mms/MmsException;

    invoke-direct {v2, v14}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1129
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v11    # "data":[B
    .restart local v17    # "isDrm":Z
    :cond_9
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v20

    .line 1130
    if-nez v11, :cond_12

    .line 1131
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v12

    .line 1132
    if-eqz v12, :cond_a

    move-object/from16 v0, p2

    if-ne v12, v0, :cond_d

    .line 1133
    :cond_a
    const-string v2, "PduPersister"

    const-string v3, "Can\'t find data for this part."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1186
    if-eqz v20, :cond_b

    .line 1188
    :try_start_b
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 1193
    :cond_b
    :goto_5
    if-eqz v16, :cond_c

    .line 1195
    :try_start_c
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 1200
    :cond_c
    :goto_6
    if-eqz v13, :cond_7

    .line 1201
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/meizu/android/mms/util/MzDrmConvertSession;->close(Ljava/lang/String;)I

    .line 1205
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1206
    .restart local v15    # "f":Ljava/io/File;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1207
    .restart local v5    # "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mms/resetFilePerm/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/meizu/android/mms/util/MzSqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1189
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v15    # "f":Ljava/io/File;
    :catch_5
    move-exception v14

    .line 1190
    .restart local v14    # "e":Ljava/io/IOException;
    const-string v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1196
    .end local v14    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v14

    .line 1197
    .restart local v14    # "e":Ljava/io/IOException;
    const-string v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 1138
    .end local v14    # "e":Ljava/io/IOException;
    :cond_d
    if-eqz p4, :cond_e

    :try_start_d
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1139
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/io/InputStream;

    move-object/from16 v16, v0

    .line 1141
    :cond_e
    if-nez v16, :cond_f

    .line 1142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v12}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v16

    .line 1149
    :cond_f
    const/16 v2, 0x2000

    new-array v8, v2, [B

    .line 1150
    .local v8, "buffer":[B
    const/16 v18, 0x0

    .local v18, "len":I
    :goto_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/io/InputStream;->read([B)I

    move-result v18

    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_13

    .line 1151
    if-nez v17, :cond_10

    .line 1152
    const/4 v2, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v8, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_7

    .line 1154
    :cond_10
    move/from16 v0, v18

    invoke-virtual {v13, v8, v0}, Lcom/meizu/android/mms/util/MzDrmConvertSession;->convert([BI)[B

    move-result-object v9

    .line 1155
    .local v9, "convertedData":[B
    if-eqz v9, :cond_11

    .line 1156
    const/4 v2, 0x0

    array-length v3, v9

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_7

    .line 1158
    :cond_11
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Error converting drm data."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1166
    .end local v8    # "buffer":[B
    .end local v9    # "convertedData":[B
    .end local v18    # "len":I
    :cond_12
    if-nez v17, :cond_16

    .line 1167
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/io/OutputStream;->write([B)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1186
    .end local v17    # "isDrm":Z
    :cond_13
    :goto_8
    if-eqz v20, :cond_14

    .line 1188
    :try_start_e
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 1193
    :cond_14
    :goto_9
    if-eqz v16, :cond_15

    .line 1195
    :try_start_f
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    .line 1200
    :cond_15
    :goto_a
    if-eqz v13, :cond_7

    .line 1201
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/meizu/android/mms/util/MzDrmConvertSession;->close(Ljava/lang/String;)I

    .line 1205
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1206
    .restart local v15    # "f":Ljava/io/File;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1207
    .restart local v5    # "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mms/resetFilePerm/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/meizu/android/mms/util/MzSqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1169
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v15    # "f":Ljava/io/File;
    .restart local v17    # "isDrm":Z
    :cond_16
    move-object/from16 v12, p2

    .line 1170
    :try_start_10
    array-length v2, v11

    invoke-virtual {v13, v11, v2}, Lcom/meizu/android/mms/util/MzDrmConvertSession;->convert([BI)[B

    move-result-object v9

    .line 1171
    .restart local v9    # "convertedData":[B
    if-eqz v9, :cond_17

    .line 1172
    const/4 v2, 0x0

    array-length v3, v9

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_8

    .line 1174
    :cond_17
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Error converting drm data."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1189
    .end local v9    # "convertedData":[B
    .end local v17    # "isDrm":Z
    :catch_7
    move-exception v14

    .line 1190
    .restart local v14    # "e":Ljava/io/IOException;
    const-string v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 1196
    .end local v14    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v14

    .line 1197
    .restart local v14    # "e":Ljava/io/IOException;
    const-string v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 1189
    .end local v11    # "data":[B
    .end local v14    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v14

    .line 1190
    .restart local v14    # "e":Ljava/io/IOException;
    const-string v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1196
    .end local v14    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v14

    .line 1197
    .restart local v14    # "e":Ljava/io/IOException;
    const-string v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while closing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public static removerMessagefromPDUCache(Landroid/net/Uri;)Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .locals 1
    .param p0, "key"    # Landroid/net/Uri;

    .prologue
    .line 2150
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    invoke-virtual {v0, p0}, Lcom/meizu/android/mms/util/MzPduCache;->purge(Landroid/net/Uri;)Lcom/meizu/android/mms/util/MzPduCacheEntry;

    move-result-object v0

    return-object v0
.end method

.method private setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/meizu/android/mms/pdu/MzPduHeaders;I)V
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .param p4, "mapColumn"    # I

    .prologue
    .line 316
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 318
    sget-object v4, Lcom/meizu/android/mms/pdu/MzPduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 319
    .local v1, "charsetColumnIndex":I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 320
    .local v0, "charset":I
    new-instance v3, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    invoke-static {v2}, Lcom/meizu/android/mms/pdu/MzPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;-><init>(I[B)V

    .line 322
    .local v3, "value":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    invoke-virtual {p3, v3, p4}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setEncodedStringValue(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;I)V

    .line 324
    .end local v0    # "charset":I
    .end local v1    # "charsetColumnIndex":I
    .end local v3    # "value":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    :cond_0
    return-void
.end method

.method private setLongToHeaders(Landroid/database/Cursor;ILcom/meizu/android/mms/pdu/MzPduHeaders;I)V
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .param p4, "mapColumn"    # I

    .prologue
    .line 347
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 348
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 349
    .local v0, "l":J
    invoke-virtual {p3, v0, v1, p4}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setLongInteger(JI)V

    .line 351
    .end local v0    # "l":J
    :cond_0
    return-void
.end method

.method private setOctetToHeaders(Landroid/database/Cursor;ILcom/meizu/android/mms/pdu/MzPduHeaders;I)V
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .param p4, "mapColumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 339
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 340
    .local v0, "b":I
    invoke-virtual {p3, v0, p4}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setOctet(II)V

    .line 342
    .end local v0    # "b":I
    :cond_0
    return-void
.end method

.method private setTextStringToHeaders(Landroid/database/Cursor;ILcom/meizu/android/mms/pdu/MzPduHeaders;I)V
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .param p4, "mapColumn"    # I

    .prologue
    .line 329
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 331
    invoke-static {v0}, Lcom/meizu/android/mms/pdu/MzPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p3, v1, p4}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setTextString([BI)V

    .line 333
    :cond_0
    return-void
.end method

.method public static toIsoString([B)Ljava/lang/String;
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 2075
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "iso-8859-1"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2079
    :goto_0
    return-object v1

    .line 2076
    :catch_0
    move-exception v0

    .line 2078
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "PduPersister"

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2079
    const-string v1, ""

    goto :goto_0
.end method

.method private updateAddress(JI[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V
    .locals 5
    .param p1, "msgId"    # J
    .param p3, "type"    # I
    .param p4, "array"    # [Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/meizu/android/mms/util/MzSqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1268
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/android/mms/pdu/MzPduPersister;->persistAddress(JI[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V

    .line 1269
    return-void
.end method

.method private updatePart(Landroid/net/Uri;Lcom/meizu/android/mms/pdu/MzPduPart;Ljava/util/HashMap;I)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "part"    # Lcom/meizu/android/mms/pdu/MzPduPart;
    .param p4, "protocol"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/meizu/android/mms/pdu/MzPduPart;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .local p3, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    const/4 v4, 0x0

    .line 1522
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x7

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1524
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {p2}, Lcom/meizu/android/mms/pdu/MzPduPart;->getCharset()I

    move-result v6

    .line 1525
    .local v6, "charset":I
    if-eqz v6, :cond_0

    .line 1526
    const-string v0, "chset"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1529
    :cond_0
    const/4 v7, 0x0

    .line 1530
    .local v7, "contentType":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentType()[B

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1531
    invoke-virtual {p2}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentType()[B

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/android/mms/pdu/MzPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v7

    .line 1532
    const-string v0, "ct"

    invoke-virtual {v3, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    invoke-virtual {p2}, Lcom/meizu/android/mms/pdu/MzPduPart;->getFilename()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1538
    new-instance v8, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/meizu/android/mms/pdu/MzPduPart;->getFilename()[B

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    .line 1539
    .local v8, "fileName":Ljava/lang/String;
    const-string v0, "fn"

    invoke-virtual {v3, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    .end local v8    # "fileName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lcom/meizu/android/mms/pdu/MzPduPart;->getName()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1543
    new-instance v9, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/meizu/android/mms/pdu/MzPduPart;->getName()[B

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .line 1544
    .local v9, "name":Ljava/lang/String;
    const-string v0, "name"

    invoke-virtual {v3, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    .end local v9    # "name":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    .line 1548
    .local v10, "value":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentDisposition()[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1549
    invoke-virtual {p2}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentDisposition()[B

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/android/mms/pdu/MzPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v10

    .line 1550
    .local v10, "value":Ljava/lang/String;
    const-string v0, "cd"

    check-cast v10, Ljava/lang/String;

    .end local v10    # "value":Ljava/lang/String;
    invoke-virtual {v3, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    :cond_3
    invoke-virtual {p2}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentId()[B

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1554
    invoke-virtual {p2}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentId()[B

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/android/mms/pdu/MzPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v10

    .line 1555
    .restart local v10    # "value":Ljava/lang/String;
    const-string v0, "cid"

    check-cast v10, Ljava/lang/String;

    .end local v10    # "value":Ljava/lang/String;
    invoke-virtual {v3, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    :cond_4
    invoke-virtual {p2}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentLocation()[B

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1559
    invoke-virtual {p2}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentLocation()[B

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/android/mms/pdu/MzPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v10

    .line 1560
    .restart local v10    # "value":Ljava/lang/String;
    const-string v0, "cl"

    check-cast v10, Ljava/lang/String;

    .end local v10    # "value":Ljava/lang/String;
    invoke-virtual {v3, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://mms/part/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1564
    const-string v0, "PduPersister"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePart(), protocol is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    :cond_6
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/meizu/android/mms/util/MzSqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1571
    invoke-virtual {p2}, Lcom/meizu/android/mms/pdu/MzPduPart;->getData()[B

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {p2}, Lcom/meizu/android/mms/pdu/MzPduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1573
    :cond_7
    invoke-direct {p0, p2, p1, v7, p3}, Lcom/meizu/android/mms/pdu/MzPduPersister;->persistData(Lcom/meizu/android/mms/pdu/MzPduPart;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1575
    :cond_8
    return-void

    .line 1534
    :cond_9
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "MIME type of the part must be set."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updatePduSomeColunm(Lcom/meizu/android/mms/pdu/MzPduBody;Landroid/content/ContentValues;ILjava/lang/String;)V
    .locals 7
    .param p1, "body"    # Lcom/meizu/android/mms/pdu/MzPduBody;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "protocol"    # I
    .param p4, "callMethod"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2027
    invoke-static {p1}, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse;->getUpdatesFromPduBody(Lcom/meizu/android/mms/pdu/MzPduBody;)[Ljava/lang/String;

    move-result-object v0

    .line 2028
    .local v0, "updateValues":[Ljava/lang/String;
    const-string v1, "PduPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", protocol = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-- text_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-- media_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-- description = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    const-string v1, "first_text_id"

    aget-object v2, v0, v5

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    const-string v1, "first_media_id"

    aget-object v2, v0, v4

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    if-ne p3, v4, :cond_0

    .line 2032
    const-string v1, "slideshow_description"

    aget-object v2, v0, v6

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    :cond_0
    return-void
.end method


# virtual methods
.method public getMmsPendingMessages(JI)Landroid/database/Cursor;
    .locals 9
    .param p1, "dueTime"    # J
    .param p3, "protocol"    # I

    .prologue
    .line 2128
    sget-object v0, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 2130
    .local v7, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v4, "err_type < ? AND due_time <= ? AND proto_type = ?"

    .line 2134
    .local v4, "selection":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 2140
    .local v5, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v6, "due_time"

    invoke-static/range {v0 .. v6}, Lcom/meizu/android/mms/util/MzSqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getPendingMessages(J)Landroid/database/Cursor;
    .locals 9
    .param p1, "dueTime"    # J

    .prologue
    .line 2108
    sget-object v0, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 2109
    .local v7, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v0, "protocol"

    const-string v1, "mms"

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2111
    const-string v4, "err_type < ? AND due_time <= ?"

    .line 2114
    .local v4, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 2119
    .local v5, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v6, "due_time"

    invoke-static/range {v0 .. v6}, Lcom/meizu/android/mms/util/MzSqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public isPartDataStoreInSystem(Lcom/meizu/android/mms/pdu/MzPduPart;Landroid/net/Uri;)Z
    .locals 2
    .param p1, "part"    # Lcom/meizu/android/mms/pdu/MzPduPart;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1633
    invoke-virtual {p0, p2}, Lcom/meizu/android/mms/pdu/MzPduPersister;->queryPartFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1634
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/android/mms/pdu/MzPduPersister;->isDataInSystem(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1635
    const/4 v1, 0x1

    .line 1638
    :goto_0
    return v1

    .line 1636
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1637
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/meizu/android/mms/pdu/MzPduPart;->setDataUri(Landroid/net/Uri;)V

    .line 1638
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public load(Landroid/net/Uri;)Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .locals 34
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 737
    const/4 v6, 0x0

    .line 738
    .local v6, "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    const/4 v5, 0x0

    .line 739
    .local v5, "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    const/4 v7, 0x0

    .line 740
    .local v7, "msgBox":I
    const-wide/16 v8, -0x1

    .line 743
    .local v8, "threadId":J
    const/16 v28, 0x1

    .line 744
    .local v28, "msgProtocol":I
    const-string v10, ""

    .line 745
    .local v10, "fileLink":Ljava/lang/String;
    const-string v11, ""

    .line 747
    .local v11, "mmsDescription":Ljava/lang/String;
    :try_start_0
    sget-object v13, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 748
    :try_start_1
    sget-object v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/meizu/android/mms/util/MzPduCache;->isUpdating(Landroid/net/Uri;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v12

    if-eqz v12, :cond_1

    .line 753
    :try_start_2
    sget-object v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    invoke-virtual {v12}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 757
    :goto_0
    :try_start_3
    sget-object v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/meizu/android/mms/util/MzPduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 758
    .end local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .local v20, "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    if-eqz v20, :cond_2

    .line 759
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Lcom/meizu/android/mms/util/MzPduCacheEntry;->getPdu()Lcom/meizu/android/mms/pdu/MzGenericPdu;

    move-result-object v12

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    .line 886
    sget-object v13, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    monitor-enter v13

    .line 887
    if-eqz v6, :cond_12

    .line 888
    :try_start_5
    sget-boolean v14, Lcom/meizu/android/mms/pdu/MzPduPersister;->$assertionsDisabled:Z

    if-nez v14, :cond_0

    sget-object v14, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/meizu/android/mms/util/MzPduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_0

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 895
    :catchall_0
    move-exception v12

    move-object/from16 v5, v20

    .end local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :goto_1
    :try_start_6
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    throw v12

    .line 754
    :catch_0
    move-exception v21

    .line 755
    .local v21, "e":Ljava/lang/InterruptedException;
    :try_start_7
    const-string v12, "PduPersister"

    const-string v14, "load: "

    move-object/from16 v0, v21

    invoke-static {v12, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 765
    .end local v21    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v12

    :goto_2
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 886
    :catchall_2
    move-exception v12

    move-object/from16 v20, v5

    .end local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :goto_3
    sget-object v13, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    monitor-enter v13

    .line 887
    if-eqz v6, :cond_10

    .line 888
    :try_start_9
    sget-boolean v14, Lcom/meizu/android/mms/pdu/MzPduPersister;->$assertionsDisabled:Z

    if-nez v14, :cond_f

    sget-object v14, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/meizu/android/mms/util/MzPduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_f

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 895
    :catchall_3
    move-exception v12

    move-object/from16 v5, v20

    .end local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :goto_4
    :try_start_a
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    throw v12

    .line 890
    .end local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :cond_0
    :try_start_b
    new-instance v5, Lcom/meizu/android/mms/util/MzPduCacheEntry;

    invoke-direct/range {v5 .. v11}, Lcom/meizu/android/mms/util/MzPduCacheEntry;-><init>(Lcom/meizu/android/mms/pdu/MzGenericPdu;IJLjava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 891
    .end local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :try_start_c
    sget-object v14, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v5}, Lcom/meizu/android/mms/util/MzPduCache;->put(Landroid/net/Uri;Lcom/meizu/android/mms/util/MzPduCacheEntry;)Z

    .line 893
    :goto_5
    sget-object v14, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Lcom/meizu/android/mms/util/MzPduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 894
    sget-object v14, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 895
    monitor-exit v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    .line 897
    :goto_6
    return-object v12

    :cond_1
    move-object/from16 v20, v5

    .line 764
    .end local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :cond_2
    :try_start_d
    sget-object v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v14}, Lcom/meizu/android/mms/util/MzPduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 765
    monitor-exit v13
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 767
    :try_start_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v15, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v14, p1

    invoke-static/range {v12 .. v18}, Lcom/meizu/android/mms/util/MzSqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 769
    .local v19, "c":Landroid/database/Cursor;
    new-instance v23, Lcom/meizu/android/mms/pdu/MzPduHeaders;

    invoke-direct/range {v23 .. v23}, Lcom/meizu/android/mms/pdu/MzPduHeaders;-><init>()V

    .line 771
    .local v23, "headers":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    move-result-wide v26

    .line 774
    .local v26, "msgId":J
    if-eqz v19, :cond_3

    :try_start_f
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-nez v12, :cond_5

    .line 775
    :cond_3
    new-instance v12, Lcom/google/android/mms/MmsException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bad uri: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 808
    :catchall_4
    move-exception v12

    if-eqz v19, :cond_4

    .line 809
    :try_start_10
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v12
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 886
    .end local v19    # "c":Landroid/database/Cursor;
    .end local v23    # "headers":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .end local v26    # "msgId":J
    :catchall_5
    move-exception v12

    goto/16 :goto_3

    .line 778
    .restart local v19    # "c":Landroid/database/Cursor;
    .restart local v23    # "headers":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .restart local v26    # "msgId":J
    :cond_5
    const/4 v12, 0x1

    :try_start_11
    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 779
    const/4 v12, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 780
    const/16 v12, 0x1b

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 781
    const/16 v12, 0x1c

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 782
    const/16 v12, 0x1d

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 784
    sget-object v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v33

    .line 785
    .local v33, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 786
    .local v22, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v13, v2, v12}, Lcom/meizu/android/mms/pdu/MzPduPersister;->setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/meizu/android/mms/pdu/MzPduHeaders;I)V

    goto :goto_7

    .line 790
    .end local v22    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_6
    sget-object v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v33

    .line 791
    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_8
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 792
    .restart local v22    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v13, v2, v12}, Lcom/meizu/android/mms/pdu/MzPduPersister;->setTextStringToHeaders(Landroid/database/Cursor;ILcom/meizu/android/mms/pdu/MzPduHeaders;I)V

    goto :goto_8

    .line 796
    .end local v22    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_7
    sget-object v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v33

    .line 797
    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_9
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 798
    .restart local v22    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v13, v2, v12}, Lcom/meizu/android/mms/pdu/MzPduPersister;->setOctetToHeaders(Landroid/database/Cursor;ILcom/meizu/android/mms/pdu/MzPduHeaders;I)V

    goto :goto_9

    .line 802
    .end local v22    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_8
    sget-object v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v33

    .line 803
    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_a
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 804
    .restart local v22    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v13, v2, v12}, Lcom/meizu/android/mms/pdu/MzPduPersister;->setLongToHeaders(Landroid/database/Cursor;ILcom/meizu/android/mms/pdu/MzPduHeaders;I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_a

    .line 808
    .end local v22    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_9
    if-eqz v19, :cond_a

    .line 809
    :try_start_12
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 814
    :cond_a
    const-wide/16 v12, -0x1

    cmp-long v12, v26, v12

    if-nez v12, :cond_b

    .line 815
    new-instance v12, Lcom/google/android/mms/MmsException;

    const-string v13, "Error! ID of the message: -1."

    invoke-direct {v12, v13}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 819
    :cond_b
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/android/mms/pdu/MzPduPersister;->loadAddress(JLcom/meizu/android/mms/pdu/MzPduHeaders;)V

    .line 821
    const/16 v12, 0x8c

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getOctet(I)I

    move-result v29

    .line 822
    .local v29, "msgType":I
    new-instance v4, Lcom/meizu/android/mms/pdu/MzPduBody;

    invoke-direct {v4}, Lcom/meizu/android/mms/pdu/MzPduBody;-><init>()V

    .line 826
    .local v4, "body":Lcom/meizu/android/mms/pdu/MzPduBody;
    const/16 v12, 0x84

    move/from16 v0, v29

    if-eq v0, v12, :cond_c

    const/16 v12, 0x80

    move/from16 v0, v29

    if-ne v0, v12, :cond_d

    .line 828
    :cond_c
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/android/mms/pdu/MzPduPersister;->loadParts(JI)[Lcom/meizu/android/mms/pdu/MzPduPart;

    move-result-object v30

    .line 829
    .local v30, "parts":[Lcom/meizu/android/mms/pdu/MzPduPart;
    if-eqz v30, :cond_d

    .line 830
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v31, v0

    .line 831
    .local v31, "partsNum":I
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_b
    move/from16 v0, v24

    move/from16 v1, v31

    if-ge v0, v1, :cond_d

    .line 832
    aget-object v12, v30, v24

    invoke-virtual {v4, v12}, Lcom/meizu/android/mms/pdu/MzPduBody;->addPart(Lcom/meizu/android/mms/pdu/MzPduPart;)Z

    .line 831
    add-int/lit8 v24, v24, 0x1

    goto :goto_b

    .line 837
    .end local v24    # "i":I
    .end local v30    # "parts":[Lcom/meizu/android/mms/pdu/MzPduPart;
    .end local v31    # "partsNum":I
    :cond_d
    packed-switch v29, :pswitch_data_0

    .line 882
    new-instance v12, Lcom/google/android/mms/MmsException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unrecognized PDU type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 839
    :pswitch_0
    new-instance v32, Lcom/meizu/android/mms/pdu/MzNotificationInd;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/meizu/android/mms/pdu/MzNotificationInd;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .end local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .local v32, "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    move-object/from16 v6, v32

    .line 886
    .end local v32    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    :goto_c
    sget-object v13, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    monitor-enter v13

    .line 887
    if-eqz v6, :cond_11

    .line 888
    :try_start_13
    sget-boolean v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->$assertionsDisabled:Z

    if-nez v12, :cond_e

    sget-object v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/meizu/android/mms/util/MzPduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_e

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 895
    :catchall_6
    move-exception v12

    move-object/from16 v5, v20

    .end local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :goto_d
    :try_start_14
    monitor-exit v13
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    throw v12

    .line 842
    .end local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :pswitch_1
    :try_start_15
    new-instance v32, Lcom/meizu/android/mms/pdu/MzDeliveryInd;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/meizu/android/mms/pdu/MzDeliveryInd;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V

    .end local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v32    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    move-object/from16 v6, v32

    .line 843
    .end local v32    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    goto :goto_c

    .line 845
    :pswitch_2
    new-instance v32, Lcom/meizu/android/mms/pdu/MzReadOrigInd;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/meizu/android/mms/pdu/MzReadOrigInd;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V

    .end local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v32    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    move-object/from16 v6, v32

    .line 846
    .end local v32    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    goto :goto_c

    .line 848
    :pswitch_3
    new-instance v32, Lcom/meizu/android/mms/pdu/MzRetrieveConf;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4}, Lcom/meizu/android/mms/pdu/MzRetrieveConf;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;Lcom/meizu/android/mms/pdu/MzPduBody;)V

    .end local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v32    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    move-object/from16 v6, v32

    .line 849
    .end local v32    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    goto :goto_c

    .line 851
    :pswitch_4
    new-instance v32, Lcom/meizu/android/mms/pdu/MzSendReq;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4}, Lcom/meizu/android/mms/pdu/MzSendReq;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;Lcom/meizu/android/mms/pdu/MzPduBody;)V

    .end local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v32    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    move-object/from16 v6, v32

    .line 852
    .end local v32    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    goto :goto_c

    .line 854
    :pswitch_5
    new-instance v32, Lcom/meizu/android/mms/pdu/MzAcknowledgeInd;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/meizu/android/mms/pdu/MzAcknowledgeInd;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V

    .end local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v32    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    move-object/from16 v6, v32

    .line 855
    .end local v32    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    goto :goto_c

    .line 857
    :pswitch_6
    new-instance v32, Lcom/meizu/android/mms/pdu/MzNotifyRespInd;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/meizu/android/mms/pdu/MzNotifyRespInd;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V

    .end local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v32    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    move-object/from16 v6, v32

    .line 858
    .end local v32    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    goto :goto_c

    .line 860
    :pswitch_7
    new-instance v32, Lcom/meizu/android/mms/pdu/MzReadRecInd;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/meizu/android/mms/pdu/MzReadRecInd;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V

    .end local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v32    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    move-object/from16 v6, v32

    .line 861
    .end local v32    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    goto :goto_c

    .line 878
    :pswitch_8
    new-instance v12, Lcom/google/android/mms/MmsException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unsupported PDU type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 890
    :cond_e
    :try_start_16
    new-instance v5, Lcom/meizu/android/mms/util/MzPduCacheEntry;

    invoke-direct/range {v5 .. v11}, Lcom/meizu/android/mms/util/MzPduCacheEntry;-><init>(Lcom/meizu/android/mms/pdu/MzGenericPdu;IJLjava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 891
    .end local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :try_start_17
    sget-object v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v5}, Lcom/meizu/android/mms/util/MzPduCache;->put(Landroid/net/Uri;Lcom/meizu/android/mms/util/MzPduCacheEntry;)Z

    .line 893
    :goto_e
    sget-object v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v14}, Lcom/meizu/android/mms/util/MzPduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 894
    sget-object v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 895
    monitor-exit v13
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    move-object v12, v6

    .line 897
    goto/16 :goto_6

    .line 890
    .end local v4    # "body":Lcom/meizu/android/mms/pdu/MzPduBody;
    .end local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .end local v19    # "c":Landroid/database/Cursor;
    .end local v23    # "headers":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "msgId":J
    .end local v29    # "msgType":I
    .end local v33    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .restart local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :cond_f
    :try_start_18
    new-instance v5, Lcom/meizu/android/mms/util/MzPduCacheEntry;

    invoke-direct/range {v5 .. v11}, Lcom/meizu/android/mms/util/MzPduCacheEntry;-><init>(Lcom/meizu/android/mms/pdu/MzGenericPdu;IJLjava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 891
    .end local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :try_start_19
    sget-object v14, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v5}, Lcom/meizu/android/mms/util/MzPduCache;->put(Landroid/net/Uri;Lcom/meizu/android/mms/util/MzPduCacheEntry;)Z

    .line 893
    :goto_f
    sget-object v14, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Lcom/meizu/android/mms/util/MzPduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 894
    sget-object v14, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 895
    monitor-exit v13
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    throw v12

    :catchall_7
    move-exception v12

    goto/16 :goto_4

    .restart local v4    # "body":Lcom/meizu/android/mms/pdu/MzPduBody;
    .restart local v19    # "c":Landroid/database/Cursor;
    .restart local v23    # "headers":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .restart local v25    # "i$":Ljava/util/Iterator;
    .restart local v26    # "msgId":J
    .restart local v29    # "msgType":I
    .restart local v33    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :catchall_8
    move-exception v12

    goto/16 :goto_d

    .line 765
    .end local v4    # "body":Lcom/meizu/android/mms/pdu/MzPduBody;
    .end local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .end local v19    # "c":Landroid/database/Cursor;
    .end local v23    # "headers":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "msgId":J
    .end local v29    # "msgType":I
    .end local v33    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .restart local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :catchall_9
    move-exception v12

    move-object/from16 v5, v20

    .end local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    goto/16 :goto_2

    .line 895
    :catchall_a
    move-exception v12

    goto/16 :goto_1

    .end local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :cond_10
    move-object/from16 v5, v20

    .end local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    goto :goto_f

    .end local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v4    # "body":Lcom/meizu/android/mms/pdu/MzPduBody;
    .restart local v19    # "c":Landroid/database/Cursor;
    .restart local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v23    # "headers":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .restart local v25    # "i$":Ljava/util/Iterator;
    .restart local v26    # "msgId":J
    .restart local v29    # "msgType":I
    .restart local v33    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_11
    move-object/from16 v5, v20

    .end local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    goto :goto_e

    .end local v4    # "body":Lcom/meizu/android/mms/pdu/MzPduBody;
    .end local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .end local v19    # "c":Landroid/database/Cursor;
    .end local v23    # "headers":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "msgId":J
    .end local v29    # "msgType":I
    .end local v33    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .restart local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :cond_12
    move-object/from16 v5, v20

    .end local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    goto/16 :goto_5

    .line 837
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public load(Landroid/net/Uri;Z)Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .locals 35
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "query"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 547
    const/4 v6, 0x0

    .line 548
    .local v6, "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    const/4 v5, 0x0

    .line 549
    .local v5, "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    const/4 v7, 0x0

    .line 550
    .local v7, "msgBox":I
    const-wide/16 v8, -0x1

    .line 553
    .local v8, "threadId":J
    const/16 v27, 0x1

    .line 554
    .local v27, "msgProtocol":I
    const-string v10, ""

    .line 555
    .local v10, "fileLink":Ljava/lang/String;
    const-string v11, ""

    .line 557
    .local v11, "mmsDescription":Ljava/lang/String;
    :try_start_0
    sget-object v13, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 558
    :try_start_1
    sget-object v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/meizu/android/mms/util/MzPduCache;->isUpdating(Landroid/net/Uri;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v12

    if-eqz v12, :cond_1

    .line 563
    :try_start_2
    sget-object v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    invoke-virtual {v12}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 567
    :goto_0
    :try_start_3
    sget-object v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/meizu/android/mms/util/MzPduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 568
    .end local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .local v20, "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    if-eqz v20, :cond_2

    .line 569
    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    .line 715
    sget-object v13, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    monitor-enter v13

    .line 716
    if-eqz v6, :cond_13

    .line 717
    :try_start_5
    sget-boolean v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->$assertionsDisabled:Z

    if-nez v12, :cond_0

    sget-object v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/meizu/android/mms/util/MzPduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_0

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 724
    :catchall_0
    move-exception v12

    move-object/from16 v5, v20

    .end local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :goto_1
    :try_start_6
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    throw v12

    .line 564
    :catch_0
    move-exception v21

    .line 565
    .local v21, "e":Ljava/lang/InterruptedException;
    :try_start_7
    const-string v12, "PduPersister"

    const-string v14, "load: "

    move-object/from16 v0, v21

    invoke-static {v12, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 575
    .end local v21    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v12

    :goto_2
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 715
    :catchall_2
    move-exception v12

    move-object/from16 v20, v5

    .end local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :goto_3
    sget-object v13, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    monitor-enter v13

    .line 716
    if-eqz v6, :cond_11

    .line 717
    :try_start_9
    sget-boolean v14, Lcom/meizu/android/mms/pdu/MzPduPersister;->$assertionsDisabled:Z

    if-nez v14, :cond_10

    sget-object v14, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/meizu/android/mms/util/MzPduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_10

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 724
    :catchall_3
    move-exception v12

    move-object/from16 v5, v20

    .end local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :goto_4
    :try_start_a
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    throw v12

    .line 719
    .end local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :cond_0
    :try_start_b
    new-instance v5, Lcom/meizu/android/mms/util/MzPduCacheEntry;

    invoke-direct/range {v5 .. v11}, Lcom/meizu/android/mms/util/MzPduCacheEntry;-><init>(Lcom/meizu/android/mms/pdu/MzGenericPdu;IJLjava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 720
    .end local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :try_start_c
    sget-object v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v5}, Lcom/meizu/android/mms/util/MzPduCache;->put(Landroid/net/Uri;Lcom/meizu/android/mms/util/MzPduCacheEntry;)Z

    .line 722
    :goto_5
    sget-object v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v14}, Lcom/meizu/android/mms/util/MzPduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 723
    sget-object v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 724
    monitor-exit v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    .line 726
    :goto_6
    return-object v20

    :cond_1
    move-object/from16 v20, v5

    .line 574
    .end local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :cond_2
    :try_start_d
    sget-object v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v14}, Lcom/meizu/android/mms/util/MzPduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 575
    monitor-exit v13
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 577
    :try_start_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v15, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v14, p1

    invoke-static/range {v12 .. v18}, Lcom/meizu/android/mms/util/MzSqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 579
    .local v19, "c":Landroid/database/Cursor;
    new-instance v23, Lcom/meizu/android/mms/pdu/MzPduHeaders;

    invoke-direct/range {v23 .. v23}, Lcom/meizu/android/mms/pdu/MzPduHeaders;-><init>()V

    .line 581
    .local v23, "headers":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    move-result-wide v28

    .line 584
    .local v28, "msgId":J
    if-eqz v19, :cond_3

    :try_start_f
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-nez v12, :cond_5

    .line 585
    :cond_3
    new-instance v12, Lcom/google/android/mms/MmsException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bad uri: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 618
    :catchall_4
    move-exception v12

    if-eqz v19, :cond_4

    .line 619
    :try_start_10
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v12
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 715
    .end local v19    # "c":Landroid/database/Cursor;
    .end local v23    # "headers":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .end local v28    # "msgId":J
    :catchall_5
    move-exception v12

    goto/16 :goto_3

    .line 588
    .restart local v19    # "c":Landroid/database/Cursor;
    .restart local v23    # "headers":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .restart local v28    # "msgId":J
    :cond_5
    const/4 v12, 0x1

    :try_start_11
    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 589
    const/4 v12, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 590
    const/16 v12, 0x1b

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 591
    const/16 v12, 0x1c

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 592
    const/16 v12, 0x1d

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 594
    sget-object v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v34

    .line 595
    .local v34, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 596
    .local v22, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v13, v2, v12}, Lcom/meizu/android/mms/pdu/MzPduPersister;->setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/meizu/android/mms/pdu/MzPduHeaders;I)V

    goto :goto_7

    .line 600
    .end local v22    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_6
    sget-object v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v34

    .line 601
    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_8
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 602
    .restart local v22    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v13, v2, v12}, Lcom/meizu/android/mms/pdu/MzPduPersister;->setTextStringToHeaders(Landroid/database/Cursor;ILcom/meizu/android/mms/pdu/MzPduHeaders;I)V

    goto :goto_8

    .line 606
    .end local v22    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_7
    sget-object v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v34

    .line 607
    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_9
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 608
    .restart local v22    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v13, v2, v12}, Lcom/meizu/android/mms/pdu/MzPduPersister;->setOctetToHeaders(Landroid/database/Cursor;ILcom/meizu/android/mms/pdu/MzPduHeaders;I)V

    goto :goto_9

    .line 612
    .end local v22    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_8
    sget-object v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v34

    .line 613
    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_a
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 614
    .restart local v22    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v13, v2, v12}, Lcom/meizu/android/mms/pdu/MzPduPersister;->setLongToHeaders(Landroid/database/Cursor;ILcom/meizu/android/mms/pdu/MzPduHeaders;I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_a

    .line 618
    .end local v22    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_9
    if-eqz v19, :cond_a

    .line 619
    :try_start_12
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 624
    :cond_a
    const-wide/16 v12, -0x1

    cmp-long v12, v28, v12

    if-nez v12, :cond_b

    .line 625
    new-instance v12, Lcom/google/android/mms/MmsException;

    const-string v13, "Error! ID of the message: -1."

    invoke-direct {v12, v13}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 629
    :cond_b
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/android/mms/pdu/MzPduPersister;->loadAddress(JLcom/meizu/android/mms/pdu/MzPduHeaders;)V

    .line 631
    const/16 v12, 0x8c

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getOctet(I)I

    move-result v30

    .line 632
    .local v30, "msgType":I
    new-instance v4, Lcom/meizu/android/mms/pdu/MzPduBody;

    invoke-direct {v4}, Lcom/meizu/android/mms/pdu/MzPduBody;-><init>()V

    .line 636
    .local v4, "body":Lcom/meizu/android/mms/pdu/MzPduBody;
    const/16 v12, 0x84

    move/from16 v0, v30

    if-eq v0, v12, :cond_c

    const/16 v12, 0x80

    move/from16 v0, v30

    if-ne v0, v12, :cond_e

    .line 638
    :cond_c
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduPersister;->loadParts(J)[Lcom/meizu/android/mms/pdu/MzPduPart;

    move-result-object v31

    .line 643
    .local v31, "parts":[Lcom/meizu/android/mms/pdu/MzPduPart;
    if-nez v31, :cond_d

    .line 644
    const-string v12, "PduPersister"

    const-string v13, "load parts is null, need retry"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/16 v24, 0x0

    .local v24, "i":I
    move/from16 v25, v24

    .line 646
    .end local v24    # "i":I
    .local v25, "i":I
    :goto_b
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "i":I
    .restart local v24    # "i":I
    const/4 v12, 0x2

    move/from16 v0, v25

    if-ge v0, v12, :cond_d

    if-nez v31, :cond_d

    .line 647
    const-string v12, "PduPersister"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "load retry i = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 649
    const-wide/16 v12, 0x23

    :try_start_13
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 653
    :goto_c
    :try_start_14
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduPersister;->loadParts(J)[Lcom/meizu/android/mms/pdu/MzPduPart;

    move-result-object v31

    .line 654
    const-string v12, "PduPersister"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "load retry i = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", parts = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v25, v24

    .end local v24    # "i":I
    .restart local v25    # "i":I
    goto :goto_b

    .line 658
    .end local v25    # "i":I
    :cond_d
    if-eqz v31, :cond_e

    .line 659
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v32, v0

    .line 660
    .local v32, "partsNum":I
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_d
    move/from16 v0, v24

    move/from16 v1, v32

    if-ge v0, v1, :cond_e

    .line 661
    aget-object v12, v31, v24

    invoke-virtual {v4, v12}, Lcom/meizu/android/mms/pdu/MzPduBody;->addPart(Lcom/meizu/android/mms/pdu/MzPduPart;)Z

    .line 660
    add-int/lit8 v24, v24, 0x1

    goto :goto_d

    .line 666
    .end local v24    # "i":I
    .end local v31    # "parts":[Lcom/meizu/android/mms/pdu/MzPduPart;
    .end local v32    # "partsNum":I
    :cond_e
    packed-switch v30, :pswitch_data_0

    .line 711
    new-instance v12, Lcom/google/android/mms/MmsException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unrecognized PDU type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 668
    :pswitch_0
    new-instance v33, Lcom/meizu/android/mms/pdu/MzNotificationInd;

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/meizu/android/mms/pdu/MzNotificationInd;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .end local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .local v33, "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    move-object/from16 v6, v33

    .line 715
    .end local v33    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    :goto_e
    sget-object v13, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    monitor-enter v13

    .line 716
    if-eqz v6, :cond_12

    .line 717
    :try_start_15
    sget-boolean v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->$assertionsDisabled:Z

    if-nez v12, :cond_f

    sget-object v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/meizu/android/mms/util/MzPduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_f

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 724
    :catchall_6
    move-exception v12

    move-object/from16 v5, v20

    .end local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :goto_f
    :try_start_16
    monitor-exit v13
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    throw v12

    .line 671
    .end local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :pswitch_1
    :try_start_17
    new-instance v33, Lcom/meizu/android/mms/pdu/MzDeliveryInd;

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/meizu/android/mms/pdu/MzDeliveryInd;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V

    .end local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v33    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    move-object/from16 v6, v33

    .line 672
    .end local v33    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    goto :goto_e

    .line 674
    :pswitch_2
    new-instance v33, Lcom/meizu/android/mms/pdu/MzReadOrigInd;

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/meizu/android/mms/pdu/MzReadOrigInd;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V

    .end local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v33    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    move-object/from16 v6, v33

    .line 675
    .end local v33    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    goto :goto_e

    .line 677
    :pswitch_3
    new-instance v33, Lcom/meizu/android/mms/pdu/MzRetrieveConf;

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4}, Lcom/meizu/android/mms/pdu/MzRetrieveConf;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;Lcom/meizu/android/mms/pdu/MzPduBody;)V

    .end local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v33    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    move-object/from16 v6, v33

    .line 678
    .end local v33    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    goto :goto_e

    .line 680
    :pswitch_4
    new-instance v33, Lcom/meizu/android/mms/pdu/MzSendReq;

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4}, Lcom/meizu/android/mms/pdu/MzSendReq;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;Lcom/meizu/android/mms/pdu/MzPduBody;)V

    .end local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v33    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    move-object/from16 v6, v33

    .line 681
    .end local v33    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    goto :goto_e

    .line 683
    :pswitch_5
    new-instance v33, Lcom/meizu/android/mms/pdu/MzAcknowledgeInd;

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/meizu/android/mms/pdu/MzAcknowledgeInd;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V

    .end local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v33    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    move-object/from16 v6, v33

    .line 684
    .end local v33    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    goto :goto_e

    .line 686
    :pswitch_6
    new-instance v33, Lcom/meizu/android/mms/pdu/MzNotifyRespInd;

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/meizu/android/mms/pdu/MzNotifyRespInd;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V

    .end local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v33    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    move-object/from16 v6, v33

    .line 687
    .end local v33    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    goto :goto_e

    .line 689
    :pswitch_7
    new-instance v33, Lcom/meizu/android/mms/pdu/MzReadRecInd;

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/meizu/android/mms/pdu/MzReadRecInd;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V

    .end local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v33    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    move-object/from16 v6, v33

    .line 690
    .end local v33    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v6    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    goto :goto_e

    .line 707
    :pswitch_8
    new-instance v12, Lcom/google/android/mms/MmsException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unsupported PDU type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 719
    :cond_f
    :try_start_18
    new-instance v5, Lcom/meizu/android/mms/util/MzPduCacheEntry;

    invoke-direct/range {v5 .. v11}, Lcom/meizu/android/mms/util/MzPduCacheEntry;-><init>(Lcom/meizu/android/mms/pdu/MzGenericPdu;IJLjava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .line 720
    .end local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :try_start_19
    sget-object v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v5}, Lcom/meizu/android/mms/util/MzPduCache;->put(Landroid/net/Uri;Lcom/meizu/android/mms/util/MzPduCacheEntry;)Z

    .line 722
    :goto_10
    sget-object v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v14}, Lcom/meizu/android/mms/util/MzPduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 723
    sget-object v12, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 724
    monitor-exit v13
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    move-object/from16 v20, v5

    .line 726
    goto/16 :goto_6

    .line 719
    .end local v4    # "body":Lcom/meizu/android/mms/pdu/MzPduBody;
    .end local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .end local v19    # "c":Landroid/database/Cursor;
    .end local v23    # "headers":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v28    # "msgId":J
    .end local v30    # "msgType":I
    .end local v34    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .restart local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :cond_10
    :try_start_1a
    new-instance v5, Lcom/meizu/android/mms/util/MzPduCacheEntry;

    invoke-direct/range {v5 .. v11}, Lcom/meizu/android/mms/util/MzPduCacheEntry;-><init>(Lcom/meizu/android/mms/pdu/MzGenericPdu;IJLjava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 720
    .end local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :try_start_1b
    sget-object v14, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v5}, Lcom/meizu/android/mms/util/MzPduCache;->put(Landroid/net/Uri;Lcom/meizu/android/mms/util/MzPduCacheEntry;)Z

    .line 722
    :goto_11
    sget-object v14, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Lcom/meizu/android/mms/util/MzPduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 723
    sget-object v14, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 724
    monitor-exit v13
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    throw v12

    .line 650
    .end local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v4    # "body":Lcom/meizu/android/mms/pdu/MzPduBody;
    .restart local v19    # "c":Landroid/database/Cursor;
    .restart local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v23    # "headers":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .restart local v24    # "i":I
    .restart local v26    # "i$":Ljava/util/Iterator;
    .restart local v28    # "msgId":J
    .restart local v30    # "msgType":I
    .restart local v31    # "parts":[Lcom/meizu/android/mms/pdu/MzPduPart;
    .restart local v34    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :catch_1
    move-exception v12

    goto/16 :goto_c

    .line 724
    .end local v4    # "body":Lcom/meizu/android/mms/pdu/MzPduBody;
    .end local v19    # "c":Landroid/database/Cursor;
    .end local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .end local v23    # "headers":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .end local v24    # "i":I
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v28    # "msgId":J
    .end local v30    # "msgType":I
    .end local v31    # "parts":[Lcom/meizu/android/mms/pdu/MzPduPart;
    .end local v34    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .restart local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :catchall_7
    move-exception v12

    goto/16 :goto_4

    .restart local v4    # "body":Lcom/meizu/android/mms/pdu/MzPduBody;
    .restart local v19    # "c":Landroid/database/Cursor;
    .restart local v23    # "headers":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .restart local v26    # "i$":Ljava/util/Iterator;
    .restart local v28    # "msgId":J
    .restart local v30    # "msgType":I
    .restart local v34    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :catchall_8
    move-exception v12

    goto/16 :goto_f

    .line 575
    .end local v4    # "body":Lcom/meizu/android/mms/pdu/MzPduBody;
    .end local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .end local v19    # "c":Landroid/database/Cursor;
    .end local v23    # "headers":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v28    # "msgId":J
    .end local v30    # "msgType":I
    .end local v34    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .restart local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :catchall_9
    move-exception v12

    move-object/from16 v5, v20

    .end local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    goto/16 :goto_2

    .line 724
    :catchall_a
    move-exception v12

    goto/16 :goto_1

    .end local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :cond_11
    move-object/from16 v5, v20

    .end local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    goto :goto_11

    .end local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v4    # "body":Lcom/meizu/android/mms/pdu/MzPduBody;
    .restart local v19    # "c":Landroid/database/Cursor;
    .restart local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v23    # "headers":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .restart local v26    # "i$":Ljava/util/Iterator;
    .restart local v28    # "msgId":J
    .restart local v30    # "msgType":I
    .restart local v34    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_12
    move-object/from16 v5, v20

    .end local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    goto :goto_10

    .end local v4    # "body":Lcom/meizu/android/mms/pdu/MzPduBody;
    .end local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .end local v19    # "c":Landroid/database/Cursor;
    .end local v23    # "headers":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v28    # "msgId":J
    .end local v30    # "msgType":I
    .end local v34    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .restart local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :cond_13
    move-object/from16 v5, v20

    .end local v20    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    .restart local v5    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    goto/16 :goto_5

    .line 666
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public final makeNotificationPdu([Ljava/lang/String;Lcom/meizu/android/mms/pdu/MzEncodedStringValue;Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .locals 9
    .param p1, "columsData"    # [Ljava/lang/String;
    .param p2, "from"    # Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .param p3, "to"    # Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2181
    if-eqz p1, :cond_0

    array-length v2, p1

    const/16 v3, 0xb

    if-ge v2, v3, :cond_1

    .line 2182
    :cond_0
    const-string v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeNotificationPdu--->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    const/4 v2, 0x0

    .line 2226
    :goto_0
    return-object v2

    .line 2186
    :cond_1
    new-instance v0, Lcom/meizu/android/mms/pdu/MzPduHeaders;

    invoke-direct {v0}, Lcom/meizu/android/mms/pdu/MzPduHeaders;-><init>()V

    .line 2189
    .local v0, "headers":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    aget-object v2, p1, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2190
    new-instance v1, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    aget-object v2, p1, v4

    invoke-direct {v1, v2}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;-><init>(Ljava/lang/String;)V

    .line 2191
    .local v1, "value":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setEncodedStringValue(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;I)V

    .line 2194
    .end local v1    # "value":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    :cond_2
    aget-object v2, p1, v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2195
    aget-object v2, p1, v5

    invoke-static {v2}, Lcom/meizu/android/mms/pdu/MzPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x83

    invoke-virtual {v0, v2, v3}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setTextString([BI)V

    .line 2197
    :cond_3
    aget-object v2, p1, v6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2198
    aget-object v2, p1, v6

    invoke-static {v2}, Lcom/meizu/android/mms/pdu/MzPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x8a

    invoke-virtual {v0, v2, v3}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setTextString([BI)V

    .line 2200
    :cond_4
    aget-object v2, p1, v7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2201
    aget-object v2, p1, v7

    invoke-static {v2}, Lcom/meizu/android/mms/pdu/MzPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x98

    invoke-virtual {v0, v2, v3}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setTextString([BI)V

    .line 2204
    :cond_5
    aget-object v2, p1, v8

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2205
    aget-object v2, p1, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x8c

    invoke-virtual {v0, v2, v3}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setOctet(II)V

    .line 2207
    :cond_6
    const/4 v2, 0x5

    aget-object v2, p1, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2208
    const/4 v2, 0x5

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x8d

    invoke-virtual {v0, v2, v3}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setOctet(II)V

    .line 2210
    :cond_7
    const/4 v2, 0x6

    aget-object v2, p1, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2211
    const/4 v2, 0x6

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x8f

    invoke-virtual {v0, v2, v3}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setOctet(II)V

    .line 2214
    :cond_8
    const/4 v2, 0x7

    aget-object v2, p1, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2215
    const/4 v2, 0x7

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/16 v4, 0x85

    invoke-virtual {v0, v2, v3, v4}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setLongInteger(JI)V

    .line 2217
    :cond_9
    const/16 v2, 0x8

    aget-object v2, p1, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 2218
    const/16 v2, 0x8

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/16 v4, 0x88

    invoke-virtual {v0, v2, v3, v4}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setLongInteger(JI)V

    .line 2220
    :cond_a
    const/16 v2, 0x9

    aget-object v2, p1, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 2221
    const/16 v2, 0x9

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/16 v4, 0x8e

    invoke-virtual {v0, v2, v3, v4}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setLongInteger(JI)V

    .line 2224
    :cond_b
    const/16 v2, 0x89

    invoke-virtual {v0, p2, v2}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setEncodedStringValue(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;I)V

    .line 2226
    new-instance v2, Lcom/meizu/android/mms/pdu/MzNotificationInd;

    invoke-direct {v2, v0}, Lcom/meizu/android/mms/pdu/MzNotificationInd;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V

    goto/16 :goto_0
.end method

.method public final makeRetrievePdu([Ljava/lang/String;Lcom/meizu/android/mms/pdu/MzEncodedStringValue;Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .locals 8
    .param p1, "columsData"    # [Ljava/lang/String;
    .param p2, "from"    # Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .param p3, "to"    # Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2253
    if-eqz p1, :cond_0

    array-length v1, p1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 2254
    :cond_0
    const-string v1, "PduPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeRetrievePdu--->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    const/4 v1, 0x0

    .line 2302
    :goto_0
    return-object v1

    .line 2257
    :cond_1
    new-instance v0, Lcom/meizu/android/mms/pdu/MzPduHeaders;

    invoke-direct {v0}, Lcom/meizu/android/mms/pdu/MzPduHeaders;-><init>()V

    .line 2259
    .local v0, "headers":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    aget-object v1, p1, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2260
    aget-object v1, p1, v3

    invoke-static {v1}, Lcom/meizu/android/mms/pdu/MzPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0x83

    invoke-virtual {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setTextString([BI)V

    .line 2263
    :cond_2
    aget-object v1, p1, v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2264
    aget-object v1, p1, v4

    invoke-static {v1}, Lcom/meizu/android/mms/pdu/MzPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0x84

    invoke-virtual {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setTextString([BI)V

    .line 2267
    :cond_3
    aget-object v1, p1, v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2268
    aget-object v1, p1, v5

    invoke-static {v1}, Lcom/meizu/android/mms/pdu/MzPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0x8a

    invoke-virtual {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setTextString([BI)V

    .line 2271
    :cond_4
    aget-object v1, p1, v6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2272
    aget-object v1, p1, v6

    invoke-static {v1}, Lcom/meizu/android/mms/pdu/MzPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0x98

    invoke-virtual {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setTextString([BI)V

    .line 2275
    :cond_5
    aget-object v1, p1, v7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2276
    aget-object v1, p1, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8c

    invoke-virtual {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setOctet(II)V

    .line 2279
    :cond_6
    const/4 v1, 0x5

    aget-object v1, p1, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2280
    const/4 v1, 0x5

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8d

    invoke-virtual {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setOctet(II)V

    .line 2283
    :cond_7
    const/4 v1, 0x6

    aget-object v1, p1, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2284
    const/4 v1, 0x6

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8f

    invoke-virtual {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setOctet(II)V

    .line 2287
    :cond_8
    const/4 v1, 0x7

    aget-object v1, p1, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2288
    const/4 v1, 0x7

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x92

    invoke-virtual {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setOctet(II)V

    .line 2291
    :cond_9
    const/16 v1, 0x8

    aget-object v1, p1, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2292
    const/16 v1, 0x8

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/16 v1, 0x85

    invoke-virtual {v0, v2, v3, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setLongInteger(JI)V

    .line 2295
    :cond_a
    const/16 v1, 0x9

    aget-object v1, p1, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2296
    const/16 v1, 0x9

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/16 v1, 0x8e

    invoke-virtual {v0, v2, v3, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setLongInteger(JI)V

    .line 2300
    :cond_b
    const/16 v1, 0x89

    invoke-virtual {v0, p2, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setEncodedStringValue(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;I)V

    .line 2302
    new-instance v1, Lcom/meizu/android/mms/pdu/MzRetrieveConf;

    invoke-direct {v1, v0}, Lcom/meizu/android/mms/pdu/MzRetrieveConf;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V

    goto/16 :goto_0
.end method

.method public move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 10
    .param p1, "from"    # Landroid/net/Uri;
    .param p2, "to"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2049
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 2050
    .local v8, "msgId":J
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_0

    .line 2051
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "Error! ID of the message: -1."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2055
    :cond_0
    sget-object v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 2056
    .local v6, "msgBox":Ljava/lang/Integer;
    if-nez v6, :cond_1

    .line 2057
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2064
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 2065
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "msg_box"

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2066
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/meizu/android/mms/util/MzSqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2067
    invoke-static {p2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/meizu/android/mms/pdu/MzGenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;
    .locals 7
    .param p1, "pdu"    # Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "createThreadId"    # Z
    .param p4, "groupMmsEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/android/mms/pdu/MzGenericPdu;",
            "Landroid/net/Uri;",
            "ZZ",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1747
    .local p5, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/android/mms/pdu/MzPduPersister;->persist(Lcom/meizu/android/mms/pdu/MzGenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/meizu/android/mms/pdu/MzGenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;I)Landroid/net/Uri;
    .locals 8
    .param p1, "pdu"    # Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "createThreadId"    # Z
    .param p4, "groupMmsEnabled"    # Z
    .param p6, "protocol"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/android/mms/pdu/MzGenericPdu;",
            "Landroid/net/Uri;",
            "ZZ",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;I)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1752
    .local p5, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/meizu/android/mms/pdu/MzPduPersister;->persist(Lcom/meizu/android/mms/pdu/MzGenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;ILandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/meizu/android/mms/pdu/MzGenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;ILandroid/content/ContentValues;)Landroid/net/Uri;
    .locals 55
    .param p1, "pdu"    # Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "createThreadId"    # Z
    .param p4, "groupMmsEnabled"    # Z
    .param p6, "protocol"    # I
    .param p7, "valuesHeader"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/android/mms/pdu/MzGenericPdu;",
            "Landroid/net/Uri;",
            "ZZ",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;I",
            "Landroid/content/ContentValues;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1757
    .local p5, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    if-nez p2, :cond_0

    .line 1758
    new-instance v6, Lcom/google/android/mms/MmsException;

    const-string v10, "Uri may not be null."

    invoke-direct {v6, v10}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1760
    :cond_0
    const-wide/16 v42, -0x1

    .line 1762
    .local v42, "msgId":J
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v42

    .line 1766
    :goto_0
    const-wide/16 v10, -0x1

    cmp-long v6, v42, v10

    if-eqz v6, :cond_1

    const/16 v34, 0x1

    .line 1768
    .local v34, "existingUri":Z
    :goto_1
    if-nez v34, :cond_2

    sget-object v6, Lcom/meizu/android/mms/pdu/MzPduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    .line 1769
    new-instance v6, Lcom/google/android/mms/MmsException;

    const-string v10, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    invoke-direct {v6, v10}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1766
    .end local v34    # "existingUri":Z
    :cond_1
    const/16 v34, 0x0

    goto :goto_1

    .line 1775
    .restart local v34    # "existingUri":Z
    :cond_2
    sget-object v10, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    monitor-enter v10

    .line 1778
    :try_start_1
    sget-object v6, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/meizu/android/mms/util/MzPduCache;->isUpdating(Landroid/net/Uri;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_3

    .line 1783
    :try_start_2
    sget-object v6, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1788
    :cond_3
    :goto_2
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1789
    sget-object v6, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/meizu/android/mms/util/MzPduCache;->purge(Landroid/net/Uri;)Lcom/meizu/android/mms/util/MzPduCacheEntry;

    .line 1791
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzGenericPdu;->getPduHeaders()Lcom/meizu/android/mms/pdu/MzPduHeaders;

    move-result-object v36

    .line 1792
    .local v36, "header":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    const/16 v28, 0x0

    .line 1793
    .local v28, "body":Lcom/meizu/android/mms/pdu/MzPduBody;
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 1796
    .local v16, "values":Landroid/content/ContentValues;
    sget-object v6, Lcom/meizu/android/mms/pdu/MzPduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v49

    .line 1797
    .local v49, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface/range {v49 .. v49}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .local v38, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/Map$Entry;

    .line 1798
    .local v32, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v32 .. v32}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v35

    .line 1799
    .local v35, "field":I
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getEncodedStringValue(I)Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v33

    .line 1800
    .local v33, "encodedString":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    if-eqz v33, :cond_4

    .line 1801
    sget-object v6, Lcom/meizu/android/mms/pdu/MzPduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 1802
    .local v29, "charsetColumn":Ljava/lang/String;
    invoke-interface/range {v32 .. v32}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual/range {v33 .. v33}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;->getTextString()[B

    move-result-object v10

    invoke-static {v10}, Lcom/meizu/android/mms/pdu/MzPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    invoke-virtual/range {v33 .. v33}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;->getCharacterSet()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 1784
    .end local v16    # "values":Landroid/content/ContentValues;
    .end local v28    # "body":Lcom/meizu/android/mms/pdu/MzPduBody;
    .end local v29    # "charsetColumn":Ljava/lang/String;
    .end local v32    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v33    # "encodedString":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .end local v35    # "field":I
    .end local v36    # "header":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .end local v38    # "i$":Ljava/util/Iterator;
    .end local v49    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :catch_0
    move-exception v31

    .line 1785
    .local v31, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v6, "PduPersister"

    const-string v11, "persist1: "

    move-object/from16 v0, v31

    invoke-static {v6, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1788
    .end local v31    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 1807
    .restart local v16    # "values":Landroid/content/ContentValues;
    .restart local v28    # "body":Lcom/meizu/android/mms/pdu/MzPduBody;
    .restart local v36    # "header":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .restart local v38    # "i$":Ljava/util/Iterator;
    .restart local v49    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_5
    sget-object v6, Lcom/meizu/android/mms/pdu/MzPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v49

    .line 1808
    invoke-interface/range {v49 .. v49}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v38

    :cond_6
    :goto_4
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/Map$Entry;

    .line 1809
    .restart local v32    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v32 .. v32}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v50

    .line 1810
    .local v50, "text":[B
    if-eqz v50, :cond_6

    .line 1811
    invoke-interface/range {v32 .. v32}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static/range {v50 .. v50}, Lcom/meizu/android/mms/pdu/MzPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1815
    .end local v32    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v50    # "text":[B
    :cond_7
    sget-object v6, Lcom/meizu/android/mms/pdu/MzPduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v49

    .line 1816
    invoke-interface/range {v49 .. v49}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v38

    :cond_8
    :goto_5
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/Map$Entry;

    .line 1817
    .restart local v32    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v32 .. v32}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getOctet(I)I

    move-result v27

    .line 1818
    .local v27, "b":I
    if-eqz v27, :cond_8

    .line 1819
    invoke-interface/range {v32 .. v32}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    .line 1823
    .end local v27    # "b":I
    .end local v32    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_9
    sget-object v6, Lcom/meizu/android/mms/pdu/MzPduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v49

    .line 1824
    invoke-interface/range {v49 .. v49}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v38

    :cond_a
    :goto_6
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/Map$Entry;

    .line 1825
    .restart local v32    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v32 .. v32}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getLongInteger(I)J

    move-result-wide v40

    .line 1826
    .local v40, "l":J
    const-wide/16 v10, -0x1

    cmp-long v6, v40, v10

    if-eqz v6, :cond_a

    .line 1827
    invoke-interface/range {v32 .. v32}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_6

    .line 1831
    .end local v32    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v40    # "l":J
    :cond_b
    new-instance v24, Ljava/util/HashMap;

    sget-object v6, Lcom/meizu/android/mms/pdu/MzPduPersister;->ADDRESS_FIELDS:[I

    array-length v6, v6

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 1834
    .local v24, "addressMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;>;"
    sget-object v25, Lcom/meizu/android/mms/pdu/MzPduPersister;->ADDRESS_FIELDS:[I

    .local v25, "arr$":[I
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v39, v0

    .local v39, "len$":I
    const/16 v38, 0x0

    .local v38, "i$":I
    :goto_7
    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_e

    aget v23, v25, v38

    .line 1835
    .local v23, "addrType":I
    const/16 v26, 0x0

    .line 1836
    .local v26, "array":[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    const/16 v6, 0x89

    move/from16 v0, v23

    if-ne v0, v6, :cond_d

    .line 1837
    move-object/from16 v0, v36

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getEncodedStringValue(I)Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v54

    .line 1838
    .local v54, "v":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    if-eqz v54, :cond_c

    .line 1839
    const/4 v6, 0x1

    new-array v0, v6, [Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-object/from16 v26, v0

    .line 1840
    const/4 v6, 0x0

    aput-object v54, v26, v6

    .line 1845
    .end local v54    # "v":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    :cond_c
    :goto_8
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1834
    add-int/lit8 v38, v38, 0x1

    goto :goto_7

    .line 1843
    :cond_d
    move-object/from16 v0, v36

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getEncodedStringValues(I)[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v26

    goto :goto_8

    .line 1848
    .end local v23    # "addrType":I
    .end local v26    # "array":[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    :cond_e
    new-instance v47, Ljava/util/HashSet;

    invoke-direct/range {v47 .. v47}, Ljava/util/HashSet;-><init>()V

    .line 1849
    .local v47, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-wide v52, 0x7fffffffffffffffL

    .line 1850
    .local v52, "threadId":J
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzGenericPdu;->getMessageType()I

    move-result v44

    .line 1855
    .local v44, "msgType":I
    const/16 v6, 0x82

    move/from16 v0, v44

    if-eq v0, v6, :cond_f

    const/16 v6, 0x84

    move/from16 v0, v44

    if-eq v0, v6, :cond_f

    const/16 v6, 0x80

    move/from16 v0, v44

    if-ne v0, v6, :cond_12

    .line 1858
    :cond_f
    packed-switch v44, :pswitch_data_0

    .line 1878
    :cond_10
    :goto_9
    :pswitch_0
    if-eqz p3, :cond_16

    .line 1881
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, v47

    invoke-static {v6, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v52

    .line 1882
    const/16 v48, 0x0

    .line 1883
    .local v48, "repi":Ljava/lang/String;
    invoke-virtual/range {v47 .. v47}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .local v38, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    .line 1884
    .local v46, "recipient":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v46

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    .line 1885
    goto :goto_a

    .line 1861
    .end local v46    # "recipient":Ljava/lang/String;
    .end local v48    # "repi":Ljava/lang/String;
    .local v38, "i$":I
    :pswitch_1
    const/16 v6, 0x89

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v24

    invoke-direct {v0, v6, v1, v2, v10}, Lcom/meizu/android/mms/pdu/MzPduPersister;->loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    .line 1869
    if-eqz p4, :cond_10

    .line 1870
    const/16 v6, 0x97

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v24

    invoke-direct {v0, v6, v1, v2, v10}, Lcom/meizu/android/mms/pdu/MzPduPersister;->loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    goto :goto_9

    .line 1874
    :pswitch_2
    const/16 v6, 0x97

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v24

    invoke-direct {v0, v6, v1, v2, v10}, Lcom/meizu/android/mms/pdu/MzPduPersister;->loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    goto :goto_9

    .line 1886
    .local v38, "i$":Ljava/util/Iterator;
    .restart local v48    # "repi":Ljava/lang/String;
    :cond_11
    const-string v6, "PduPersister"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pdu persist recipient is ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v48

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], new threadId is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v52

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    .end local v38    # "i$":Ljava/util/Iterator;
    .end local v48    # "repi":Ljava/lang/String;
    :cond_12
    :goto_b
    const-string v6, "PduPersister"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "threadID : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v52

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    const-string v6, "thread_id"

    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1896
    const/4 v12, 0x0

    .line 1897
    .local v12, "fileLink":Ljava/lang/String;
    if-eqz p7, :cond_13

    invoke-virtual/range {p7 .. p7}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-lez v6, :cond_13

    .line 1898
    move-object/from16 v0, v16

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 1899
    const-string v6, "file_link"

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1904
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1907
    .local v8, "dummyId":J
    const/16 v51, 0x1

    .line 1910
    .local v51, "textOnly":Z
    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/meizu/android/mms/pdu/MzMultimediaMessagePdu;

    if-eqz v6, :cond_19

    .line 1911
    check-cast p1, Lcom/meizu/android/mms/pdu/MzMultimediaMessagePdu;

    .end local p1    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzMultimediaMessagePdu;->getBody()Lcom/meizu/android/mms/pdu/MzPduBody;

    move-result-object v28

    .line 1913
    if-eqz v28, :cond_19

    .line 1914
    invoke-virtual/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduBody;->getPartsNum()I

    move-result v45

    .line 1915
    .local v45, "partsNum":I
    const/4 v6, 0x2

    move/from16 v0, v45

    if-le v0, v6, :cond_14

    .line 1920
    const/16 v51, 0x0

    .line 1922
    :cond_14
    const/16 v37, 0x0

    .local v37, "i":I
    :goto_c
    move/from16 v0, v37

    move/from16 v1, v45

    if-ge v0, v1, :cond_17

    .line 1923
    move-object/from16 v0, v28

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduBody;->getPart(I)Lcom/meizu/android/mms/pdu/MzPduPart;

    move-result-object v7

    .local v7, "part":Lcom/meizu/android/mms/pdu/MzPduPart;
    move-object/from16 v6, p0

    move-object/from16 v10, p5

    move/from16 v11, p6

    .line 1924
    invoke-virtual/range {v6 .. v12}, Lcom/meizu/android/mms/pdu/MzPduPersister;->persistPart(Lcom/meizu/android/mms/pdu/MzPduPart;JLjava/util/HashMap;ILjava/lang/String;)Landroid/net/Uri;

    .line 1928
    invoke-static {v7}, Lcom/meizu/android/mms/pdu/MzPduPersister;->getPartContentType(Lcom/meizu/android/mms/pdu/MzPduPart;)Ljava/lang/String;

    move-result-object v30

    .line 1929
    .local v30, "contentType":Ljava/lang/String;
    if-eqz v30, :cond_15

    const-string v6, "application/smil"

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string v6, "text/plain"

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 1931
    const/16 v51, 0x0

    .line 1922
    :cond_15
    add-int/lit8 v37, v37, 0x1

    goto :goto_c

    .line 1888
    .end local v7    # "part":Lcom/meizu/android/mms/pdu/MzPduPart;
    .end local v8    # "dummyId":J
    .end local v12    # "fileLink":Ljava/lang/String;
    .end local v30    # "contentType":Ljava/lang/String;
    .end local v37    # "i":I
    .end local v45    # "partsNum":I
    .end local v51    # "textOnly":Z
    .local v38, "i$":I
    .restart local p1    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    :cond_16
    const-string v6, "thread_id"

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_12

    const-string v6, "thread_id"

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v10, ""

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 1889
    const-string v6, "thread_id"

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v52

    goto/16 :goto_b

    .line 1935
    .end local v38    # "i$":I
    .end local p1    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v8    # "dummyId":J
    .restart local v12    # "fileLink":Ljava/lang/String;
    .restart local v37    # "i":I
    .restart local v45    # "partsNum":I
    .restart local v51    # "textOnly":Z
    :cond_17
    const/4 v6, 0x1

    move/from16 v0, p6

    if-ne v0, v6, :cond_18

    .line 1936
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-static {v0, v6}, Lcom/meizu/android/mms/pdu/smil/SmilSimpleParse;->correctPduSmil(Lcom/meizu/android/mms/pdu/MzPduBody;Landroid/content/Context;)Z

    .line 1938
    :cond_18
    const-string v6, "persist()"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v16

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/meizu/android/mms/pdu/MzPduPersister;->updatePduSomeColunm(Lcom/meizu/android/mms/pdu/MzPduBody;Landroid/content/ContentValues;ILjava/lang/String;)V

    .line 1943
    .end local v37    # "i":I
    .end local v45    # "partsNum":I
    :cond_19
    const-string v10, "text_only"

    if-eqz v51, :cond_1c

    const/4 v6, 0x1

    :goto_d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1945
    const/4 v15, 0x0

    .line 1946
    .local v15, "res":Landroid/net/Uri;
    if-eqz v34, :cond_1d

    .line 1947
    move-object/from16 v15, p2

    .line 1948
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lcom/meizu/android/mms/util/MzSqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1959
    :goto_e
    new-instance v16, Landroid/content/ContentValues;

    .end local v16    # "values":Landroid/content/ContentValues;
    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 1960
    .restart local v16    # "values":Landroid/content/ContentValues;
    const-string v6, "mid"

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content://mms/"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "/part"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v20, v16

    invoke-static/range {v17 .. v22}, Lcom/meizu/android/mms/util/MzSqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1969
    if-nez v34, :cond_1a

    .line 1970
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "/"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v42

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 1974
    :cond_1a
    sget-object v25, Lcom/meizu/android/mms/pdu/MzPduPersister;->ADDRESS_FIELDS:[I

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v39, v0

    const/16 v38, 0x0

    .restart local v38    # "i$":I
    :goto_f
    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_1f

    aget v23, v25, v38

    .line 1975
    .restart local v23    # "addrType":I
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    .line 1976
    .restart local v26    # "array":[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    if-eqz v26, :cond_1b

    .line 1978
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "content://mms/"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v42

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "/addr"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "type="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v6, v10, v11, v13, v14}, Lcom/meizu/android/mms/util/MzSqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1981
    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    move/from16 v3, v23

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/android/mms/pdu/MzPduPersister;->persistAddress(JI[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V

    .line 1974
    :cond_1b
    add-int/lit8 v38, v38, 0x1

    goto :goto_f

    .line 1943
    .end local v15    # "res":Landroid/net/Uri;
    .end local v23    # "addrType":I
    .end local v26    # "array":[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .end local v38    # "i$":I
    :cond_1c
    const/4 v6, 0x0

    goto/16 :goto_d

    .line 1950
    .restart local v15    # "res":Landroid/net/Uri;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v6, v10, v0, v1}, Lcom/meizu/android/mms/util/MzSqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 1951
    if-nez v15, :cond_1e

    .line 1952
    new-instance v6, Lcom/google/android/mms/MmsException;

    const-string v10, "persist() failed: return null."

    invoke-direct {v6, v10}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1956
    :cond_1e
    invoke-static {v15}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v42

    goto/16 :goto_e

    .line 1763
    .end local v8    # "dummyId":J
    .end local v12    # "fileLink":Ljava/lang/String;
    .end local v15    # "res":Landroid/net/Uri;
    .end local v16    # "values":Landroid/content/ContentValues;
    .end local v24    # "addressMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;>;"
    .end local v25    # "arr$":[I
    .end local v28    # "body":Lcom/meizu/android/mms/pdu/MzPduBody;
    .end local v34    # "existingUri":Z
    .end local v36    # "header":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .end local v39    # "len$":I
    .end local v44    # "msgType":I
    .end local v47    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v49    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .end local v51    # "textOnly":Z
    .end local v52    # "threadId":J
    .restart local p1    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    :catch_1
    move-exception v6

    goto/16 :goto_0

    .line 1984
    .end local p1    # "pdu":Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .restart local v8    # "dummyId":J
    .restart local v12    # "fileLink":Ljava/lang/String;
    .restart local v15    # "res":Landroid/net/Uri;
    .restart local v16    # "values":Landroid/content/ContentValues;
    .restart local v24    # "addressMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;>;"
    .restart local v25    # "arr$":[I
    .restart local v28    # "body":Lcom/meizu/android/mms/pdu/MzPduBody;
    .restart local v34    # "existingUri":Z
    .restart local v36    # "header":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .restart local v38    # "i$":I
    .restart local v39    # "len$":I
    .restart local v44    # "msgType":I
    .restart local v47    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v49    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .restart local v51    # "textOnly":Z
    .restart local v52    # "threadId":J
    :cond_1f
    return-object v15

    .line 1858
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public persistPart(Lcom/meizu/android/mms/pdu/MzPduPart;JLjava/util/HashMap;)Landroid/net/Uri;
    .locals 6
    .param p1, "part"    # Lcom/meizu/android/mms/pdu/MzPduPart;
    .param p2, "msgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/android/mms/pdu/MzPduPart;",
            "J",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 920
    .local p4, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/android/mms/pdu/MzPduPersister;->persistPart(Lcom/meizu/android/mms/pdu/MzPduPart;JLjava/util/HashMap;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persistPart(Lcom/meizu/android/mms/pdu/MzPduPart;JLjava/util/HashMap;I)Landroid/net/Uri;
    .locals 8
    .param p1, "part"    # Lcom/meizu/android/mms/pdu/MzPduPart;
    .param p2, "msgId"    # J
    .param p5, "protocol"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/android/mms/pdu/MzPduPart;",
            "J",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;I)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 924
    .local p4, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/android/mms/pdu/MzPduPersister;->persistPart(Lcom/meizu/android/mms/pdu/MzPduPart;JLjava/util/HashMap;ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persistPart(Lcom/meizu/android/mms/pdu/MzPduPart;JLjava/util/HashMap;ILjava/lang/String;)Landroid/net/Uri;
    .locals 24
    .param p1, "part"    # Lcom/meizu/android/mms/pdu/MzPduPart;
    .param p2, "msgId"    # J
    .param p5, "protocol"    # I
    .param p6, "fileLink"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/android/mms/pdu/MzPduPart;",
            "J",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 929
    .local p4, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "content://mms/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/part"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 930
    .local v17, "uri":Landroid/net/Uri;
    const-string v16, "application/oct-stream"

    .line 931
    .local v16, "sOCT_stream":Ljava/lang/String;
    const-string v10, "image/tiff"

    .line 932
    .local v10, "m8_vcard_stream":Ljava/lang/String;
    new-instance v19, Landroid/content/ContentValues;

    const/16 v20, 0x8

    invoke-direct/range {v19 .. v20}, Landroid/content/ContentValues;-><init>(I)V

    .line 934
    .local v19, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduPart;->getCharset()I

    move-result v4

    .line 935
    .local v4, "charset":I
    if-eqz v4, :cond_0

    .line 936
    const-string v20, "chset"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 939
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduPersister;->getPartContentType(Lcom/meizu/android/mms/pdu/MzPduPart;)Ljava/lang/String;

    move-result-object v5

    .line 940
    .local v5, "contentType":Ljava/lang/String;
    if-eqz v5, :cond_f

    .line 941
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduPart;->getName()[B

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v5, v1}, Lcom/meizu/android/mms/pdu/MzPduPersister;->correctMimeType(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v5

    .line 944
    const-string v20, "image/jpg"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 945
    const-string v5, "image/jpeg"

    .line 948
    :cond_1
    const-string v20, "ct"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    const-string v20, "application/smil"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 951
    const-string v20, "seq"

    const/16 v21, -0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 954
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduPart;->getName()[B

    move-result-object v20

    if-nez v20, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentLocation()[B

    move-result-object v20

    if-eqz v20, :cond_e

    .line 955
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduPart;->getName()[B

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentLocation()[B

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduPersister;->getGesstionString([B[B)Ljava/lang/String;

    move-result-object v12

    .line 956
    .local v12, "name":Ljava/lang/String;
    const-string v20, "."

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 957
    .local v9, "lastPoint":I
    if-ltz v9, :cond_4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_4

    .line 958
    add-int/lit8 v20, v9, 0x1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 959
    .local v6, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 960
    .local v11, "mimeType":Ljava/lang/String;
    const-string v20, "PduPersister"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "persistPart(): name = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", extension = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", mimeType = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 962
    const-string v20, "ct"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    .end local v6    # "extension":Ljava/lang/String;
    .end local v9    # "lastPoint":I
    .end local v11    # "mimeType":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    :cond_4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduPart;->getFilename()[B

    move-result-object v20

    if-eqz v20, :cond_5

    .line 979
    new-instance v7, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduPart;->getFilename()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    .line 980
    .local v7, "fileName":Ljava/lang/String;
    const-string v20, "fn"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    .end local v7    # "fileName":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduPart;->getName()[B

    move-result-object v20

    if-eqz v20, :cond_6

    .line 984
    new-instance v12, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduPart;->getName()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/lang/String;-><init>([B)V

    .line 985
    .restart local v12    # "name":Ljava/lang/String;
    const-string v20, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    .end local v12    # "name":Ljava/lang/String;
    :cond_6
    const/16 v18, 0x0

    .line 989
    .local v18, "value":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentDisposition()[B

    move-result-object v20

    if-eqz v20, :cond_7

    .line 990
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentDisposition()[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/meizu/android/mms/pdu/MzPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v18

    .line 991
    .local v18, "value":Ljava/lang/String;
    const-string v20, "cd"

    check-cast v18, Ljava/lang/String;

    .end local v18    # "value":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentId()[B

    move-result-object v20

    if-eqz v20, :cond_8

    .line 995
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentId()[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/meizu/android/mms/pdu/MzPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v18

    .line 996
    .restart local v18    # "value":Ljava/lang/String;
    const-string v20, "cid"

    check-cast v18, Ljava/lang/String;

    .end local v18    # "value":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentLocation()[B

    move-result-object v20

    if-eqz v20, :cond_9

    .line 1000
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentLocation()[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/meizu/android/mms/pdu/MzPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v18

    .line 1001
    .restart local v18    # "value":Ljava/lang/String;
    const-string v20, "cl"

    check-cast v18, Ljava/lang/String;

    .end local v18    # "value":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    :cond_9
    const/4 v8, 0x1

    .line 1004
    .local v8, "isFileTypeData":Z
    const-string v20, "text/plain"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    const-string v20, "application/smil"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    const-string v20, "text/html"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 1008
    :cond_a
    const-string v20, "text"

    new-instance v21, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduPart;->getData()[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;-><init>([B)V

    invoke-virtual/range {v21 .. v21}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const/4 v8, 0x0

    .line 1012
    :cond_b
    const/16 v20, 0x1

    move/from16 v0, p5

    move/from16 v1, v20

    if-eq v0, v1, :cond_d

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v20

    if-eqz v20, :cond_d

    .line 1013
    :cond_c
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v14

    .line 1014
    .local v14, "part_data":Ljava/lang/String;
    :goto_1
    const-string v20, "part_flyme_uri"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    .end local v14    # "part_data":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/android/mms/util/MzSqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 1017
    .local v15, "res":Landroid/net/Uri;
    if-nez v15, :cond_11

    .line 1018
    new-instance v20, Lcom/google/android/mms/MmsException;

    const-string v21, "Failed to persist part, return null."

    invoke-direct/range {v20 .. v21}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 968
    .end local v8    # "isFileTypeData":Z
    .end local v15    # "res":Landroid/net/Uri;
    :cond_e
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentLocation()[B

    move-result-object v20

    if-eqz v20, :cond_4

    .line 969
    new-instance v12, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/android/mms/pdu/MzPduPart;->getContentLocation()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/lang/String;-><init>([B)V

    .line 970
    .restart local v12    # "name":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    .line 971
    .local v13, "namelen":I
    const/16 v20, 0x4

    move/from16 v0, v20

    if-le v13, v0, :cond_4

    add-int/lit8 v20, v13, -0x4

    move/from16 v0, v20

    invoke-virtual {v12, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    const-string v21, ".vcf"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 972
    const-string v20, "ct"

    const-string v21, "text/x-vcard"

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 975
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "namelen":I
    :cond_f
    new-instance v20, Lcom/google/android/mms/MmsException;

    const-string v21, "MIME type of the part must be set."

    invoke-direct/range {v20 .. v21}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v20

    .restart local v8    # "isFileTypeData":Z
    :cond_10
    move-object/from16 v14, p6

    .line 1013
    goto :goto_1

    .line 1022
    .restart local v15    # "res":Landroid/net/Uri;
    :cond_11
    if-eqz v8, :cond_12

    const/16 v20, 0x1

    move/from16 v0, p5

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 1023
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v15, v5, v2}, Lcom/meizu/android/mms/pdu/MzPduPersister;->persistData(Lcom/meizu/android/mms/pdu/MzPduPart;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1027
    :cond_12
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/meizu/android/mms/pdu/MzPduPart;->setDataUri(Landroid/net/Uri;)V

    .line 1029
    return-object v15
.end method

.method public queryPartFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x1

    .line 1588
    const-string v10, ""

    .line 1589
    .local v10, "path":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://mms/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v11, v10

    .line 1611
    .end local v10    # "path":Ljava/lang/String;
    .local v11, "path":Ljava/lang/String;
    :goto_0
    return-object v11

    .line 1592
    .end local v11    # "path":Ljava/lang/String;
    .restart local v10    # "path":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-array v3, v12, [Ljava/lang/String;

    const-string v2, "_data"

    aput-object v2, v3, v8

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/meizu/android/mms/util/MzSqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1593
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_2

    move-object v11, v10

    .end local v10    # "path":Ljava/lang/String;
    .restart local v11    # "path":Ljava/lang/String;
    goto :goto_0

    .line 1594
    .end local v11    # "path":Ljava/lang/String;
    .restart local v10    # "path":Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eq v0, v12, :cond_4

    .line 1595
    if-eqz v7, :cond_3

    .line 1596
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v11, v10

    .line 1598
    .end local v10    # "path":Ljava/lang/String;
    .restart local v11    # "path":Ljava/lang/String;
    goto :goto_0

    .line 1600
    .end local v11    # "path":Ljava/lang/String;
    .restart local v10    # "path":Ljava/lang/String;
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1601
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1602
    .local v8, "count":I
    :cond_5
    if-eq v8, v12, :cond_6

    .line 1603
    if-eqz v7, :cond_6

    .line 1604
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1607
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1608
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1609
    .local v9, "i":I
    if-ltz v9, :cond_7

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1610
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v11, v10

    .line 1611
    .end local v10    # "path":Ljava/lang/String;
    .restart local v11    # "path":Ljava/lang/String;
    goto :goto_0

    .line 1609
    .end local v11    # "path":Ljava/lang/String;
    .restart local v10    # "path":Ljava/lang/String;
    :cond_7
    const-string v10, ""

    goto :goto_1
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2100
    const-string v1, "content://mms/9223372036854775807/part"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2101
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2, v0, v3, v3}, Lcom/meizu/android/mms/util/MzSqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2102
    return-void
.end method

.method public setLoadPartAsBackMode(Z)V
    .locals 0
    .param p1, "isinBackUpMode"    # Z

    .prologue
    .line 310
    iput-boolean p1, p0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mLoadPartAsBackUpMode:Z

    .line 311
    return-void
.end method

.method public updateHeaders(Landroid/net/Uri;Lcom/meizu/android/mms/pdu/MzSendReq;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sendReq"    # Lcom/meizu/android/mms/pdu/MzSendReq;

    .prologue
    .line 1272
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/android/mms/pdu/MzPduPersister;->updateHeaders(Landroid/net/Uri;Lcom/meizu/android/mms/pdu/MzSendReq;I)V

    .line 1273
    return-void
.end method

.method public updateHeaders(Landroid/net/Uri;Lcom/meizu/android/mms/pdu/MzSendReq;I)V
    .locals 41
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sendReq"    # Lcom/meizu/android/mms/pdu/MzSendReq;
    .param p3, "protocol"    # I

    .prologue
    .line 1284
    sget-object v5, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    monitor-enter v5

    .line 1287
    :try_start_0
    sget-object v4, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/meizu/android/mms/util/MzPduCache;->isUpdating(Landroid/net/Uri;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1292
    :try_start_1
    sget-object v4, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1297
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1298
    sget-object v4, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/meizu/android/mms/util/MzPduCache;->purge(Landroid/net/Uri;)Lcom/meizu/android/mms/util/MzPduCacheEntry;

    .line 1300
    new-instance v7, Landroid/content/ContentValues;

    const/16 v4, 0xa

    invoke-direct {v7, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1301
    .local v7, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/android/mms/pdu/MzSendReq;->getContentType()[B

    move-result-object v14

    .line 1302
    .local v14, "contentType":[B
    if-eqz v14, :cond_1

    .line 1303
    const-string v4, "ct_t"

    invoke-static {v14}, Lcom/meizu/android/mms/pdu/MzPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/android/mms/pdu/MzSendReq;->getDate()J

    move-result-wide v16

    .line 1307
    .local v16, "date":J
    const-wide/16 v4, -0x1

    cmp-long v4, v16, v4

    if-eqz v4, :cond_2

    .line 1308
    const-string v4, "date"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1311
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/android/mms/pdu/MzSendReq;->getDeliveryReport()I

    move-result v15

    .line 1312
    .local v15, "deliveryReport":I
    if-eqz v15, :cond_3

    .line 1313
    const-string v4, "d_rpt"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1316
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/android/mms/pdu/MzSendReq;->getExpiry()J

    move-result-wide v20

    .line 1317
    .local v20, "expiry":J
    const-wide/16 v4, -0x1

    cmp-long v4, v20, v4

    if-eqz v4, :cond_4

    .line 1318
    const-string v4, "exp"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1321
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/android/mms/pdu/MzSendReq;->getMessageClass()[B

    move-result-object v28

    .line 1322
    .local v28, "msgClass":[B
    if-eqz v28, :cond_5

    .line 1323
    const-string v4, "m_cls"

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/android/mms/pdu/MzSendReq;->getPriority()I

    move-result v29

    .line 1327
    .local v29, "priority":I
    if-eqz v29, :cond_6

    .line 1328
    const-string v4, "pri"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1331
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/android/mms/pdu/MzSendReq;->getReadReport()I

    move-result v32

    .line 1332
    .local v32, "readReport":I
    if-eqz v32, :cond_7

    .line 1333
    const-string v4, "rr"

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1336
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/android/mms/pdu/MzSendReq;->getTransactionId()[B

    move-result-object v37

    .line 1337
    .local v37, "transId":[B
    if-eqz v37, :cond_8

    .line 1338
    const-string v4, "tr_id"

    invoke-static/range {v37 .. v37}, Lcom/meizu/android/mms/pdu/MzPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/android/mms/pdu/MzSendReq;->getSubject()Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v36

    .line 1342
    .local v36, "subject":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    if-eqz v36, :cond_c

    .line 1343
    const-string v4, "sub"

    invoke-virtual/range {v36 .. v36}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;->getTextString()[B

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/android/mms/pdu/MzPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    const-string v4, "sub_cs"

    invoke-virtual/range {v36 .. v36}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;->getCharacterSet()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1349
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/android/mms/pdu/MzSendReq;->getMessageSize()J

    move-result-wide v26

    .line 1350
    .local v26, "messageSize":J
    const-wide/16 v4, 0x0

    cmp-long v4, v26, v4

    if-lez v4, :cond_9

    .line 1351
    const-string v4, "m_size"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1354
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/android/mms/pdu/MzSendReq;->getPduHeaders()Lcom/meizu/android/mms/pdu/MzPduHeaders;

    move-result-object v19

    .line 1355
    .local v19, "headers":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    new-instance v34, Ljava/util/HashSet;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashSet;-><init>()V

    .line 1356
    .local v34, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v11, Lcom/meizu/android/mms/pdu/MzPduPersister;->ADDRESS_FIELDS:[I

    .local v11, "arr$":[I
    array-length v0, v11

    move/from16 v24, v0

    .local v24, "len$":I
    const/16 v22, 0x0

    .local v22, "i$":I
    move/from16 v23, v22

    .end local v11    # "arr$":[I
    .end local v22    # "i$":I
    .end local v24    # "len$":I
    .local v23, "i$":I
    :goto_2
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_f

    aget v10, v11, v23

    .line 1357
    .local v10, "addrType":I
    const/4 v13, 0x0

    .line 1358
    .local v13, "array":[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    const/16 v4, 0x89

    if-ne v10, v4, :cond_d

    .line 1359
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getEncodedStringValue(I)Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v40

    .line 1360
    .local v40, "v":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    if-eqz v40, :cond_a

    .line 1361
    const/4 v4, 0x1

    new-array v13, v4, [Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    .line 1362
    const/4 v4, 0x0

    aput-object v40, v13, v4

    .line 1368
    .end local v40    # "v":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    :cond_a
    :goto_3
    if-eqz v13, :cond_e

    .line 1369
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v30

    .line 1370
    .local v30, "msgId":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-direct {v0, v1, v2, v10, v13}, Lcom/meizu/android/mms/pdu/MzPduPersister;->updateAddress(JI[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V

    .line 1371
    const/16 v4, 0x97

    if-ne v10, v4, :cond_e

    .line 1372
    move-object v12, v13

    .local v12, "arr$":[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    array-length v0, v12

    move/from16 v25, v0

    .local v25, "len$":I
    const/16 v22, 0x0

    .end local v23    # "i$":I
    .restart local v22    # "i$":I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_e

    aget-object v40, v12, v22

    .line 1373
    .restart local v40    # "v":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    if-eqz v40, :cond_b

    .line 1374
    invoke-virtual/range {v40 .. v40}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1372
    :cond_b
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 1293
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v10    # "addrType":I
    .end local v12    # "arr$":[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .end local v13    # "array":[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .end local v14    # "contentType":[B
    .end local v15    # "deliveryReport":I
    .end local v16    # "date":J
    .end local v19    # "headers":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .end local v20    # "expiry":J
    .end local v22    # "i$":I
    .end local v25    # "len$":I
    .end local v26    # "messageSize":J
    .end local v28    # "msgClass":[B
    .end local v29    # "priority":I
    .end local v30    # "msgId":J
    .end local v32    # "readReport":I
    .end local v34    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v36    # "subject":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .end local v37    # "transId":[B
    .end local v40    # "v":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    :catch_0
    move-exception v18

    .line 1294
    .local v18, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "PduPersister"

    const-string v6, "updateHeaders: "

    move-object/from16 v0, v18

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1297
    .end local v18    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 1346
    .restart local v7    # "values":Landroid/content/ContentValues;
    .restart local v14    # "contentType":[B
    .restart local v15    # "deliveryReport":I
    .restart local v16    # "date":J
    .restart local v20    # "expiry":J
    .restart local v28    # "msgClass":[B
    .restart local v29    # "priority":I
    .restart local v32    # "readReport":I
    .restart local v36    # "subject":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .restart local v37    # "transId":[B
    :cond_c
    const-string v4, "sub"

    const-string v5, ""

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1365
    .restart local v10    # "addrType":I
    .restart local v13    # "array":[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .restart local v19    # "headers":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .restart local v23    # "i$":I
    .restart local v26    # "messageSize":J
    .restart local v34    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_d
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getEncodedStringValues(I)[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v13

    goto :goto_3

    .line 1356
    .end local v23    # "i$":I
    :cond_e
    add-int/lit8 v22, v23, 0x1

    .restart local v22    # "i$":I
    move/from16 v23, v22

    .end local v22    # "i$":I
    .restart local v23    # "i$":I
    goto :goto_2

    .line 1380
    .end local v10    # "addrType":I
    .end local v13    # "array":[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    :cond_f
    invoke-virtual/range {v34 .. v34}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    .line 1381
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v38

    .line 1382
    .local v38, "threadId":J
    const/16 v35, 0x0

    .line 1383
    .local v35, "repi":Ljava/lang/String;
    invoke-virtual/range {v34 .. v34}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .end local v23    # "i$":I
    .local v22, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 1384
    .local v33, "recipient":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 1385
    goto :goto_5

    .line 1386
    .end local v33    # "recipient":Ljava/lang/String;
    :cond_10
    const-string v4, "thread_id"

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1387
    const-string v4, "PduPersister"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pdu updateHeaders  getnewthread "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    .end local v22    # "i$":Ljava/util/Iterator;
    .end local v35    # "repi":Ljava/lang/String;
    .end local v38    # "threadId":J
    :cond_11
    const/4 v4, 0x1

    move/from16 v0, p3

    if-eq v0, v4, :cond_12

    .line 1392
    const-string v4, "protocol"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1395
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v4 .. v9}, Lcom/meizu/android/mms/util/MzSqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1396
    return-void
.end method

.method public updateHeaders(Landroid/net/Uri;Lcom/meizu/android/mms/pdu/MzSendReq;Landroid/content/ContentValues;)V
    .locals 41
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sendReq"    # Lcom/meizu/android/mms/pdu/MzSendReq;
    .param p3, "valuesHeader"    # Landroid/content/ContentValues;

    .prologue
    .line 1407
    sget-object v5, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    monitor-enter v5

    .line 1410
    :try_start_0
    sget-object v4, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/meizu/android/mms/util/MzPduCache;->isUpdating(Landroid/net/Uri;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1415
    :try_start_1
    sget-object v4, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1420
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1421
    sget-object v4, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/meizu/android/mms/util/MzPduCache;->purge(Landroid/net/Uri;)Lcom/meizu/android/mms/util/MzPduCacheEntry;

    .line 1423
    new-instance v7, Landroid/content/ContentValues;

    const/16 v4, 0xa

    invoke-direct {v7, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1424
    .local v7, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/android/mms/pdu/MzSendReq;->getContentType()[B

    move-result-object v14

    .line 1425
    .local v14, "contentType":[B
    if-eqz v14, :cond_1

    .line 1426
    const-string v4, "ct_t"

    invoke-static {v14}, Lcom/meizu/android/mms/pdu/MzPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/android/mms/pdu/MzSendReq;->getDate()J

    move-result-wide v16

    .line 1430
    .local v16, "date":J
    const-wide/16 v4, -0x1

    cmp-long v4, v16, v4

    if-eqz v4, :cond_2

    .line 1431
    const-string v4, "date"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1434
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/android/mms/pdu/MzSendReq;->getDeliveryReport()I

    move-result v15

    .line 1435
    .local v15, "deliveryReport":I
    if-eqz v15, :cond_3

    .line 1436
    const-string v4, "d_rpt"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1439
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/android/mms/pdu/MzSendReq;->getExpiry()J

    move-result-wide v20

    .line 1440
    .local v20, "expiry":J
    const-wide/16 v4, -0x1

    cmp-long v4, v20, v4

    if-eqz v4, :cond_4

    .line 1441
    const-string v4, "exp"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1444
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/android/mms/pdu/MzSendReq;->getMessageClass()[B

    move-result-object v28

    .line 1445
    .local v28, "msgClass":[B
    if-eqz v28, :cond_5

    .line 1446
    const-string v4, "m_cls"

    invoke-static/range {v28 .. v28}, Lcom/meizu/android/mms/pdu/MzPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/android/mms/pdu/MzSendReq;->getPriority()I

    move-result v29

    .line 1450
    .local v29, "priority":I
    if-eqz v29, :cond_6

    .line 1451
    const-string v4, "pri"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1454
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/android/mms/pdu/MzSendReq;->getReadReport()I

    move-result v32

    .line 1455
    .local v32, "readReport":I
    if-eqz v32, :cond_7

    .line 1456
    const-string v4, "rr"

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1459
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/android/mms/pdu/MzSendReq;->getTransactionId()[B

    move-result-object v37

    .line 1460
    .local v37, "transId":[B
    if-eqz v37, :cond_8

    .line 1461
    const-string v4, "tr_id"

    invoke-static/range {v37 .. v37}, Lcom/meizu/android/mms/pdu/MzPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/android/mms/pdu/MzSendReq;->getSubject()Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v36

    .line 1465
    .local v36, "subject":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    if-eqz v36, :cond_c

    .line 1466
    const-string v4, "sub"

    invoke-virtual/range {v36 .. v36}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;->getTextString()[B

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/android/mms/pdu/MzPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    const-string v4, "sub_cs"

    invoke-virtual/range {v36 .. v36}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;->getCharacterSet()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1472
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/android/mms/pdu/MzSendReq;->getMessageSize()J

    move-result-wide v26

    .line 1473
    .local v26, "messageSize":J
    const-wide/16 v4, 0x0

    cmp-long v4, v26, v4

    if-lez v4, :cond_9

    .line 1474
    const-string v4, "m_size"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1477
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/android/mms/pdu/MzSendReq;->getPduHeaders()Lcom/meizu/android/mms/pdu/MzPduHeaders;

    move-result-object v19

    .line 1478
    .local v19, "headers":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    new-instance v34, Ljava/util/HashSet;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashSet;-><init>()V

    .line 1479
    .local v34, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v11, Lcom/meizu/android/mms/pdu/MzPduPersister;->ADDRESS_FIELDS:[I

    .local v11, "arr$":[I
    array-length v0, v11

    move/from16 v24, v0

    .local v24, "len$":I
    const/16 v22, 0x0

    .local v22, "i$":I
    move/from16 v23, v22

    .end local v11    # "arr$":[I
    .end local v22    # "i$":I
    .end local v24    # "len$":I
    .local v23, "i$":I
    :goto_2
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_f

    aget v10, v11, v23

    .line 1480
    .local v10, "addrType":I
    const/4 v13, 0x0

    .line 1481
    .local v13, "array":[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    const/16 v4, 0x89

    if-ne v10, v4, :cond_d

    .line 1482
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getEncodedStringValue(I)Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v40

    .line 1483
    .local v40, "v":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    if-eqz v40, :cond_a

    .line 1484
    const/4 v4, 0x1

    new-array v13, v4, [Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    .line 1485
    const/4 v4, 0x0

    aput-object v40, v13, v4

    .line 1491
    .end local v40    # "v":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    :cond_a
    :goto_3
    if-eqz v13, :cond_e

    .line 1492
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v30

    .line 1493
    .local v30, "msgId":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-direct {v0, v1, v2, v10, v13}, Lcom/meizu/android/mms/pdu/MzPduPersister;->updateAddress(JI[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V

    .line 1494
    const/16 v4, 0x97

    if-ne v10, v4, :cond_e

    .line 1495
    move-object v12, v13

    .local v12, "arr$":[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    array-length v0, v12

    move/from16 v25, v0

    .local v25, "len$":I
    const/16 v22, 0x0

    .end local v23    # "i$":I
    .restart local v22    # "i$":I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_e

    aget-object v40, v12, v22

    .line 1496
    .restart local v40    # "v":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    if-eqz v40, :cond_b

    .line 1497
    invoke-virtual/range {v40 .. v40}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1495
    :cond_b
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 1416
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v10    # "addrType":I
    .end local v12    # "arr$":[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .end local v13    # "array":[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .end local v14    # "contentType":[B
    .end local v15    # "deliveryReport":I
    .end local v16    # "date":J
    .end local v19    # "headers":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .end local v20    # "expiry":J
    .end local v22    # "i$":I
    .end local v25    # "len$":I
    .end local v26    # "messageSize":J
    .end local v28    # "msgClass":[B
    .end local v29    # "priority":I
    .end local v30    # "msgId":J
    .end local v32    # "readReport":I
    .end local v34    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v36    # "subject":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .end local v37    # "transId":[B
    .end local v40    # "v":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    :catch_0
    move-exception v18

    .line 1417
    .local v18, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "PduPersister"

    const-string v6, "updateHeaders: "

    move-object/from16 v0, v18

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1420
    .end local v18    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 1469
    .restart local v7    # "values":Landroid/content/ContentValues;
    .restart local v14    # "contentType":[B
    .restart local v15    # "deliveryReport":I
    .restart local v16    # "date":J
    .restart local v20    # "expiry":J
    .restart local v28    # "msgClass":[B
    .restart local v29    # "priority":I
    .restart local v32    # "readReport":I
    .restart local v36    # "subject":Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .restart local v37    # "transId":[B
    :cond_c
    const-string v4, "sub"

    const-string v5, ""

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1488
    .restart local v10    # "addrType":I
    .restart local v13    # "array":[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .restart local v19    # "headers":Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .restart local v23    # "i$":I
    .restart local v26    # "messageSize":J
    .restart local v34    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_d
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getEncodedStringValues(I)[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v13

    goto :goto_3

    .line 1479
    .end local v23    # "i$":I
    :cond_e
    add-int/lit8 v22, v23, 0x1

    .restart local v22    # "i$":I
    move/from16 v23, v22

    .end local v22    # "i$":I
    .restart local v23    # "i$":I
    goto :goto_2

    .line 1503
    .end local v10    # "addrType":I
    .end local v13    # "array":[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    :cond_f
    invoke-virtual/range {v34 .. v34}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    .line 1504
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v38

    .line 1505
    .local v38, "threadId":J
    const/16 v35, 0x0

    .line 1506
    .local v35, "repi":Ljava/lang/String;
    invoke-virtual/range {v34 .. v34}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .end local v23    # "i$":I
    .local v22, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 1507
    .local v33, "recipient":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 1508
    goto :goto_5

    .line 1509
    .end local v33    # "recipient":Ljava/lang/String;
    :cond_10
    const-string v4, "thread_id"

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1510
    const-string v4, "PduPersister"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pdu updateHeaders  getnewthread "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    .end local v22    # "i$":Ljava/util/Iterator;
    .end local v35    # "repi":Ljava/lang/String;
    .end local v38    # "threadId":J
    :cond_11
    if-eqz p3, :cond_12

    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-lez v4, :cond_12

    .line 1514
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 1517
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v4 .. v9}, Lcom/meizu/android/mms/util/MzSqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1518
    return-void
.end method

.method public updateParts(Landroid/net/Uri;Lcom/meizu/android/mms/pdu/MzPduBody;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "body"    # Lcom/meizu/android/mms/pdu/MzPduBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/meizu/android/mms/pdu/MzPduBody;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1578
    .local p3, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/meizu/android/mms/pdu/MzPduPersister;->updateParts(Landroid/net/Uri;Lcom/meizu/android/mms/pdu/MzPduBody;Ljava/util/HashMap;I)V

    .line 1579
    return-void
.end method

.method public updateParts(Landroid/net/Uri;Lcom/meizu/android/mms/pdu/MzPduBody;Ljava/util/HashMap;I)V
    .locals 24
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "body"    # Lcom/meizu/android/mms/pdu/MzPduBody;
    .param p4, "protocol"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/meizu/android/mms/pdu/MzPduBody;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1654
    .local p3, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    :try_start_0
    sget-object v8, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1655
    :try_start_1
    sget-object v4, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/meizu/android/mms/util/MzPduCache;->isUpdating(Landroid/net/Uri;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1660
    :try_start_2
    sget-object v4, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1664
    :goto_0
    :try_start_3
    sget-object v4, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/meizu/android/mms/util/MzPduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/meizu/android/mms/util/MzPduCacheEntry;

    .line 1665
    .local v14, "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    if-eqz v14, :cond_0

    .line 1666
    invoke-virtual {v14}, Lcom/meizu/android/mms/util/MzPduCacheEntry;->getPdu()Lcom/meizu/android/mms/pdu/MzGenericPdu;

    move-result-object v4

    check-cast v4, Lcom/meizu/android/mms/pdu/MzMultimediaMessagePdu;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/meizu/android/mms/pdu/MzMultimediaMessagePdu;->setBody(Lcom/meizu/android/mms/pdu/MzPduBody;)V

    .line 1671
    .end local v14    # "cacheEntry":Lcom/meizu/android/mms/util/MzPduCacheEntry;
    :cond_0
    sget-object v4, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    const/4 v9, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v9}, Lcom/meizu/android/mms/util/MzPduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 1672
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1674
    :try_start_4
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1675
    .local v22, "toBeCreated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/android/mms/pdu/MzPduPart;>;"
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 1677
    .local v23, "toBeUpdated":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/meizu/android/mms/pdu/MzPduPart;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/android/mms/pdu/MzPduBody;->getPartsNum()I

    move-result v21

    .line 1678
    .local v21, "partsNum":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x28

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1679
    .local v17, "filter":Ljava/lang/StringBuilder;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 1680
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduBody;->getPart(I)Lcom/meizu/android/mms/pdu/MzPduPart;

    move-result-object v5

    .line 1681
    .local v5, "part":Lcom/meizu/android/mms/pdu/MzPduPart;
    invoke-virtual {v5}, Lcom/meizu/android/mms/pdu/MzPduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v20

    .line 1682
    .local v20, "partUri":Landroid/net/Uri;
    if-eqz v20, :cond_1

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-string v8, "mms"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Lcom/meizu/android/mms/pdu/MzPduPersister;->isPartDataStoreInSystem(Lcom/meizu/android/mms/pdu/MzPduPart;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1683
    :cond_1
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1679
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1661
    .end local v5    # "part":Lcom/meizu/android/mms/pdu/MzPduPart;
    .end local v17    # "filter":Ljava/lang/StringBuilder;
    .end local v18    # "i":I
    .end local v20    # "partUri":Landroid/net/Uri;
    .end local v21    # "partsNum":I
    .end local v22    # "toBeCreated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/android/mms/pdu/MzPduPart;>;"
    .end local v23    # "toBeUpdated":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/meizu/android/mms/pdu/MzPduPart;>;"
    :catch_0
    move-exception v15

    .line 1662
    .local v15, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v4, "PduPersister"

    const-string v9, "updateParts: "

    invoke-static {v4, v9, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1672
    .end local v15    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1726
    :catchall_1
    move-exception v4

    sget-object v8, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    monitor-enter v8

    .line 1727
    :try_start_7
    sget-object v9, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v10}, Lcom/meizu/android/mms/util/MzPduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 1728
    sget-object v9, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 1729
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v4

    .line 1685
    .restart local v5    # "part":Lcom/meizu/android/mms/pdu/MzPduPart;
    .restart local v17    # "filter":Ljava/lang/StringBuilder;
    .restart local v18    # "i":I
    .restart local v20    # "partUri":Landroid/net/Uri;
    .restart local v21    # "partsNum":I
    .restart local v22    # "toBeCreated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/android/mms/pdu/MzPduPart;>;"
    .restart local v23    # "toBeUpdated":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/meizu/android/mms/pdu/MzPduPart;>;"
    :cond_2
    :try_start_8
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v8, 0x1

    if-le v4, v8, :cond_3

    .line 1690
    const-string v4, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1693
    :cond_3
    const-string v4, "_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1694
    const-string v4, "!="

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1695
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_2

    .line 1698
    .end local v5    # "part":Lcom/meizu/android/mms/pdu/MzPduPart;
    .end local v20    # "partUri":Landroid/net/Uri;
    :cond_4
    const/16 v4, 0x29

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1700
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 1703
    .local v6, "msgId":J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "/"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "/part"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v12, 0x2

    if-le v4, v12, :cond_5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    const/4 v12, 0x0

    invoke-static {v8, v9, v10, v4, v12}, Lcom/meizu/android/mms/util/MzSqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1708
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/android/mms/pdu/MzPduPart;

    .restart local v5    # "part":Lcom/meizu/android/mms/pdu/MzPduPart;
    move-object/from16 v4, p0

    move-object/from16 v8, p3

    move/from16 v9, p4

    .line 1709
    invoke-virtual/range {v4 .. v9}, Lcom/meizu/android/mms/pdu/MzPduPersister;->persistPart(Lcom/meizu/android/mms/pdu/MzPduPart;JLjava/util/HashMap;I)Landroid/net/Uri;

    goto :goto_4

    .line 1703
    .end local v5    # "part":Lcom/meizu/android/mms/pdu/MzPduPart;
    .end local v19    # "i$":Ljava/util/Iterator;
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 1713
    .restart local v19    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 1714
    .local v16, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/meizu/android/mms/pdu/MzPduPart;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/meizu/android/mms/pdu/MzPduPart;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v4, v8, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduPersister;->updatePart(Landroid/net/Uri;Lcom/meizu/android/mms/pdu/MzPduPart;Ljava/util/HashMap;I)V

    goto :goto_5

    .line 1717
    .end local v16    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/meizu/android/mms/pdu/MzPduPart;>;"
    :cond_7
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v4

    if-nez v4, :cond_8

    .line 1726
    sget-object v8, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    monitor-enter v8

    .line 1727
    :try_start_9
    sget-object v4, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v9}, Lcom/meizu/android/mms/util/MzPduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 1728
    sget-object v4, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 1729
    monitor-exit v8

    .line 1731
    :goto_6
    return-void

    .line 1729
    :catchall_2
    move-exception v4

    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v4

    .line 1720
    :cond_8
    :try_start_a
    new-instance v11, Landroid/content/ContentValues;

    const/4 v4, 0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_9

    const/4 v4, 0x3

    :goto_7
    invoke-direct {v11, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1721
    .local v11, "values":Landroid/content/ContentValues;
    const-string v4, "updateParts()"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-direct {v0, v1, v11, v2, v4}, Lcom/meizu/android/mms/pdu/MzPduPersister;->updatePduSomeColunm(Lcom/meizu/android/mms/pdu/MzPduBody;Landroid/content/ContentValues;ILjava/lang/String;)V

    .line 1722
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/meizu/android/mms/pdu/MzPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v8 .. v13}, Lcom/meizu/android/mms/util/MzSqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1726
    sget-object v8, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    monitor-enter v8

    .line 1727
    :try_start_b
    sget-object v4, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v9}, Lcom/meizu/android/mms/util/MzPduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 1728
    sget-object v4, Lcom/meizu/android/mms/pdu/MzPduPersister;->PDU_CACHE_INSTANCE:Lcom/meizu/android/mms/util/MzPduCache;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 1729
    monitor-exit v8

    goto :goto_6

    :catchall_3
    move-exception v4

    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v4

    .line 1720
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_9
    const/4 v4, 0x2

    goto :goto_7

    .line 1729
    .end local v6    # "msgId":J
    .end local v17    # "filter":Ljava/lang/StringBuilder;
    .end local v18    # "i":I
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v21    # "partsNum":I
    .end local v22    # "toBeCreated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/android/mms/pdu/MzPduPart;>;"
    .end local v23    # "toBeUpdated":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/meizu/android/mms/pdu/MzPduPart;>;"
    :catchall_4
    move-exception v4

    :try_start_c
    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v4
.end method
