.class public Lmeizu/security/FlymePermissionManager$TitleAndContent;
.super Ljava/lang/Object;
.source "FlymePermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu/security/FlymePermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TitleAndContent"
.end annotation


# instance fields
.field public content:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    const-string v0, ""

    iput-object v0, p0, Lmeizu/security/FlymePermissionManager$TitleAndContent;->title:Ljava/lang/String;

    .line 536
    const-string v0, ""

    iput-object v0, p0, Lmeizu/security/FlymePermissionManager$TitleAndContent;->content:Ljava/lang/String;

    .line 539
    iput-object p1, p0, Lmeizu/security/FlymePermissionManager$TitleAndContent;->title:Ljava/lang/String;

    .line 540
    iput-object p2, p0, Lmeizu/security/FlymePermissionManager$TitleAndContent;->content:Ljava/lang/String;

    .line 541
    return-void
.end method
