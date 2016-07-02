.class Lcom/android/commands/content/Content$DeleteCommand;
.super Lcom/android/commands/content/Content$Command;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteCommand"
.end annotation


# instance fields
.field final mWhere:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "where"    # Ljava/lang/String;

    .prologue
    .line 450
    invoke-direct {p0, p1, p2}, Lcom/android/commands/content/Content$Command;-><init>(Landroid/net/Uri;I)V

    .line 451
    iput-object p3, p0, Lcom/android/commands/content/Content$DeleteCommand;->mWhere:Ljava/lang/String;

    .line 452
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
    const/4 v2, 0x0

    .line 456
    iget-object v0, p0, Lcom/android/commands/content/Content$DeleteCommand;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/commands/content/Content$DeleteCommand;->mWhere:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1, v2}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 457
    return-void
.end method
