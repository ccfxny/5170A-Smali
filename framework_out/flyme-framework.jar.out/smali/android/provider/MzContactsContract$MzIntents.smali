.class public final Landroid/provider/MzContactsContract$MzIntents;
.super Ljava/lang/Object;
.source "MzContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MzContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MzIntents"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MzContactsContract$MzIntents$MzInsert;,
        Landroid/provider/MzContactsContract$MzIntents$MzUI;
    }
.end annotation


# static fields
.field public static final EXTRA_KEY_COLUMNS:Ljava/lang/String; = "com.meizu.contacts.extra.KEY_COLUMNS"

.field public static final EXTRA_MULTIPLE_PICK_DATAS:Ljava/lang/String; = "com.android.contacts.extra.MULTIPLE_PICK_DATAS"

.field public static final EXTRA_PICK_ACCOUNT_DATA_SET:Ljava/lang/String; = "com.android.contacts.extra.EXTRA_PICK_ACCOUNT_DATA_SET"

.field public static final EXTRA_PICK_ACCOUNT_NAME:Ljava/lang/String; = "com.android.contacts.extra.EXTRA_PICK_ACCOUNT_NAME"

.field public static final EXTRA_PICK_ACCOUNT_TYPE:Ljava/lang/String; = "com.android.contacts.extra.EXTRA_PICK_ACCOUNT_TYPE"

.field public static final EXTRA_PICK_COLUMNS:Ljava/lang/String; = "com.meizu.contacts.extra.PICK_COLUMNS"

.field public static final EXTRA_PICK_DATA:Ljava/lang/String; = "com.android.contacts.extra.PICK_DATA"

.field public static final EXTRA_REQUEST_DATA_IDS:Ljava/lang/String; = "com.android.contacts.extra.EXTRA_REQUEST_DATA_IDS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 933
    return-void
.end method
