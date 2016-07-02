.class Lcom/android/commands/content/Content$UpdateCommand;
.super Lcom/android/commands/content/Content$InsertCommand;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateCommand"
.end annotation


# instance fields
.field final mWhere:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "contentValues"    # Landroid/content/ContentValues;
    .param p4, "where"    # Ljava/lang/String;

    .prologue
    .line 591
    invoke-direct {p0, p1, p2, p3}, Lcom/android/commands/content/Content$InsertCommand;-><init>(Landroid/net/Uri;ILandroid/content/ContentValues;)V

    .line 592
    iput-object p4, p0, Lcom/android/commands/content/Content$UpdateCommand;->mWhere:Ljava/lang/String;

    .line 593
    return-void
.end method


# virtual methods
.method public onExecute(Landroid/content/IContentProvider;)V
    .locals 6
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 597
    iget-object v2, p0, Lcom/android/commands/content/Content$UpdateCommand;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/commands/content/Content$UpdateCommand;->mContentValues:Landroid/content/ContentValues;

    iget-object v4, p0, Lcom/android/commands/content/Content$UpdateCommand;->mWhere:Ljava/lang/String;

    move-object v0, p1

    move-object v5, v1

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 598
    return-void
.end method
