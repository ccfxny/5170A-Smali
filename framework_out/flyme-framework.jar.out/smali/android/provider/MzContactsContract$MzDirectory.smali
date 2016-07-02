.class public final Landroid/provider/MzContactsContract$MzDirectory;
.super Ljava/lang/Object;
.source "MzContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MzContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MzDirectory"
.end annotation


# static fields
.field public static final CONTENT_NOTIFY_URI:Landroid/net/Uri;

.field public static final IS_VISIBLE:Ljava/lang/String; = "is_visible"

.field public static final NET_CONTACT:J = 0x2L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    sget-object v0, Landroid/provider/MzContactsContract;->AUTHORITY_URI_NOTIFY:Landroid/net/Uri;

    const-string v1, "directories"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzContactsContract$MzDirectory;->CONTENT_NOTIFY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
