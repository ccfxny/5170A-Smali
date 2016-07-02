.class public final Landroid/provider/MzContactsContract$MzNetContacts;
.super Ljava/lang/Object;
.source "MzContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MzContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MzNetContacts"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.meizu.netcontactservice.directory"

.field public static final ERROR_CODE_KEY:Ljava/lang/String; = "error_code"

.field public static final ERROR_CODE_NETWORK_UNAVAILABLE:I = 0x1

.field public static final ERROR_CODE_NO_ADDRESS:I = 0x2

.field public static final ERROR_CODE_NUMBER_INVALIDATE:I = 0x3

.field public static final ERROR_CODE_SUCCESS:I = 0x0

.field public static final ERROR_CODE_UNKNOWN:I = 0x4

.field public static final LINK_DISPLAY_NAME_AND_LABLE:Ljava/lang/String; = "link_display_name_and_lable"

.field public static final NET_CONTACT_ACCOUNT_TYPE:Ljava/lang/String; = "com.meizu.netcontactservice"

.field public static final NET_CONTACT_DIRECTORY_TYPE:Ljava/lang/String; = "NetContact"

.field public static final PHONE_LOOKUP_URI:Landroid/net/Uri;

.field public static final USE_YELLOW_PAGE_CONTACTS:Ljava/lang/String; = "use_yellow_page_contacts"

.field public static final YELLOW_PAGE_MIN_ID:J = 0x7fffffffbfffffffL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1190
    const-string v0, "content://com.meizu.netcontactservice.directory"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "phone_lookup"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzContactsContract$MzNetContacts;->PHONE_LOOKUP_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isYPContact(J)Z
    .locals 2
    .param p0, "contactId"    # J

    .prologue
    .line 1229
    const-wide v0, 0x7fffffffbfffffffL

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isYPContact(Landroid/net/Uri;)Z
    .locals 4
    .param p0, "uriWithId"    # Landroid/net/Uri;

    .prologue
    .line 1219
    const/4 v1, 0x0

    .line 1221
    .local v1, "isYPContact":Z
    :try_start_0
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/provider/MzContactsContract$MzNetContacts;->isYPContact(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1225
    :goto_0
    return v1

    .line 1222
    :catch_0
    move-exception v0

    .line 1223
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
