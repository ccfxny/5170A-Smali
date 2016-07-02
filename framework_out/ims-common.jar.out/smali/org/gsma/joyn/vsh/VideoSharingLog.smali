.class public Lorg/gsma/joyn/vsh/VideoSharingLog;
.super Ljava/lang/Object;
.source "VideoSharingLog.java"


# static fields
.field public static final CONTACT_NUMBER:Ljava/lang/String; = "contact_number"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final SHARING_ID:Ljava/lang/String; = "sharing_id"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "content://org.gsma.joyn.provider.vsh/vsh"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/gsma/joyn/vsh/VideoSharingLog;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
