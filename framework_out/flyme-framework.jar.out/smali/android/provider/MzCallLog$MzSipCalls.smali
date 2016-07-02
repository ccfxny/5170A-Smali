.class public Landroid/provider/MzCallLog$MzSipCalls;
.super Ljava/lang/Object;
.source "MzCallLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MzCallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MzSipCalls"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MzCallLog$MzSipCalls$CapacityEntry;
    }
.end annotation


# static fields
.field public static AUTHORITY:Ljava/lang/String; = null

.field public static final CAPACITY:Ljava/lang/String; = "capacity"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final ONLINE_STATUS:Ljava/lang/String; = "onlineStatus"

.field public static final PERESENCE_CONTENT_URI:Landroid/net/Uri;

.field public static final SIP_CALL_TYPE_AUDIO:Ljava/lang/String; = "audio"

.field public static final SIP_CALL_TYPE_KEY:Ljava/lang/String; = "callType"

.field public static final SIP_CALL_TYPE_VIDEO:Ljava/lang/String; = "video"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 117
    const-string v0, "com.meizu.cloud.provider.ContactPresenceProvider"

    sput-object v0, Landroid/provider/MzCallLog$MzSipCalls;->AUTHORITY:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/provider/MzCallLog$MzSipCalls;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Numbers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzCallLog$MzSipCalls;->PERESENCE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    return-void
.end method

.method public static getcapacityMask(I)Landroid/provider/MzCallLog$MzSipCalls$CapacityEntry;
    .locals 4
    .param p0, "capacity"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 155
    new-instance v0, Landroid/provider/MzCallLog$MzSipCalls$CapacityEntry;

    invoke-direct {v0}, Landroid/provider/MzCallLog$MzSipCalls$CapacityEntry;-><init>()V

    .line 156
    .local v0, "entry":Landroid/provider/MzCallLog$MzSipCalls$CapacityEntry;
    and-int/lit8 v1, p0, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Landroid/provider/MzCallLog$MzSipCalls$CapacityEntry;->SMS:Z

    .line 157
    shr-int/lit8 v1, p0, 0x1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, v0, Landroid/provider/MzCallLog$MzSipCalls$CapacityEntry;->MMS:Z

    .line 158
    shr-int/lit8 v1, p0, 0x2

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, v0, Landroid/provider/MzCallLog$MzSipCalls$CapacityEntry;->FILESEND:Z

    .line 159
    shr-int/lit8 v1, p0, 0x3

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_3
    iput-boolean v1, v0, Landroid/provider/MzCallLog$MzSipCalls$CapacityEntry;->AUDIO:Z

    .line 160
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_4

    :goto_4
    iput-boolean v2, v0, Landroid/provider/MzCallLog$MzSipCalls$CapacityEntry;->VIDEO:Z

    .line 161
    return-object v0

    :cond_0
    move v1, v3

    .line 156
    goto :goto_0

    :cond_1
    move v1, v3

    .line 157
    goto :goto_1

    :cond_2
    move v1, v3

    .line 158
    goto :goto_2

    :cond_3
    move v1, v3

    .line 159
    goto :goto_3

    :cond_4
    move v2, v3

    .line 160
    goto :goto_4
.end method
