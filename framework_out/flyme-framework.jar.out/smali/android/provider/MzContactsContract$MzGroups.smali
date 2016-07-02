.class public final Landroid/provider/MzContactsContract$MzGroups;
.super Ljava/lang/Object;
.source "MzContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/MzContactsContract$MzGroupsColumns;
.implements Landroid/provider/ContactsContract$SyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MzContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MzGroups"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MzContactsContract$MzGroups$EntityIteratorImpl;
    }
.end annotation


# static fields
.field public static final CONTENT_ACCOUNT_URI:Landroid/net/Uri;

.field public static final CONTENT_SUMMARY_FILTER_URI:Landroid/net/Uri;

.field public static final GROUP_SPLIT_MARK_EXTRA:Ljava/lang/String; = ","

.field public static final GROUP_SPLIT_MARK_SLASH:Ljava/lang/String; = "/"

.field public static final GROUP_SPLIT_MARK_VCARD:Ljava/lang/String; = ";"

.field public static final GROUP_SPLIT_MARK_XML:Ljava/lang/String; = "|"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 628
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_SUMMARY_URI:Landroid/net/Uri;

    const-string v1, "filter"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzContactsContract$MzGroups;->CONTENT_SUMMARY_FILTER_URI:Landroid/net/Uri;

    .line 635
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "account"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzContactsContract$MzGroups;->CONTENT_ACCOUNT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    return-void
.end method

.method public static getGroupTitle(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "groupId"    # J

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 664
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 684
    :cond_0
    :goto_0
    return-object v7

    .line 667
    :cond_1
    const/4 v7, 0x0

    .line 668
    .local v7, "title":Ljava/lang/String;
    new-array v4, v3, [Ljava/lang/String;

    .line 669
    .local v4, "mSelectionArgs1":[Ljava/lang/String;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 670
    const/4 v6, 0x0

    .line 672
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "title"

    aput-object v3, v2, v0

    const-string v3, "_id=?"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 676
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 677
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 680
    :cond_2
    if-eqz v6, :cond_0

    .line 681
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 680
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 681
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 688
    new-instance v0, Landroid/provider/MzContactsContract$MzGroups$EntityIteratorImpl;

    invoke-direct {v0, p0}, Landroid/provider/MzContactsContract$MzGroups$EntityIteratorImpl;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method
