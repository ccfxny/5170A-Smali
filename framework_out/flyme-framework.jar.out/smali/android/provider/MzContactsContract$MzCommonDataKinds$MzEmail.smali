.class public final Landroid/provider/MzContactsContract$MzCommonDataKinds$MzEmail;
.super Ljava/lang/Object;
.source "MzContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MzContactsContract$MzCommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MzEmail"
.end annotation


# static fields
.field public static final CONTENT_GROUP_URI:Landroid/net/Uri;

.field public static final USE_CUSTOM_ORDER:Ljava/lang/String; = "use_custom_order"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 413
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "group"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzContactsContract$MzCommonDataKinds$MzEmail;->CONTENT_GROUP_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
