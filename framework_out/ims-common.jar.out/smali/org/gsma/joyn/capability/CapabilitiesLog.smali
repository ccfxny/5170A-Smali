.class public Lorg/gsma/joyn/capability/CapabilitiesLog;
.super Ljava/lang/Object;
.source "CapabilitiesLog.java"


# static fields
.field public static final CAPABILITY_BURN_AFTER_READING:Ljava/lang/String; = "burn_after_reading"

.field public static final CAPABILITY_EXTENSIONS:Ljava/lang/String; = "capability_extensions"

.field public static final CAPABILITY_FILE_TRANSFER:Ljava/lang/String; = "capability_file_transfer"

.field public static final CAPABILITY_GEOLOC_PUSH:Ljava/lang/String; = "capability_geoloc_push"

.field public static final CAPABILITY_IMAGE_SHARE:Ljava/lang/String; = "capability_image_share"

.field public static final CAPABILITY_IM_SESSION:Ljava/lang/String; = "capability_im_session"

.field public static final CAPABILITY_IP_VIDEO_CALL:Ljava/lang/String; = "capability_ip_video_call"

.field public static final CAPABILITY_IP_VOICE_CALL:Ljava/lang/String; = "capability_ip_voice_call"

.field public static final CAPABILITY_VIDEO_SHARE:Ljava/lang/String; = "capability_video_share"

.field public static final CONTACT_NUMBER:Ljava/lang/String; = "contact_number"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final NOT_SUPPORTED:I = 0x0

.field public static final SUPPORTED:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "content://org.gsma.joyn.provider.capabilities/capabilities"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/gsma/joyn/capability/CapabilitiesLog;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
