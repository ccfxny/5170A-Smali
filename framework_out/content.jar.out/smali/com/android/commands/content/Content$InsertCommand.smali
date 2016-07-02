.class Lcom/android/commands/content/Content$InsertCommand;
.super Lcom/android/commands/content/Content$Command;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InsertCommand"
.end annotation


# instance fields
.field final mContentValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/net/Uri;ILandroid/content/ContentValues;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 436
    invoke-direct {p0, p1, p2}, Lcom/android/commands/content/Content$Command;-><init>(Landroid/net/Uri;I)V

    .line 437
    iput-object p3, p0, Lcom/android/commands/content/Content$InsertCommand;->mContentValues:Landroid/content/ContentValues;

    .line 438
    return-void
.end method


# virtual methods
.method public onExecute(Landroid/content/IContentProvider;)V
    .locals 3
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 442
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/commands/content/Content$InsertCommand;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/commands/content/Content$InsertCommand;->mContentValues:Landroid/content/ContentValues;

    invoke-interface {p1, v0, v1, v2}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 443
    return-void
.end method
