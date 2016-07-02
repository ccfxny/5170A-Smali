.class Lcom/meizu/server/AccessControlService$1;
.super Landroid/content/BroadcastReceiver;
.source "AccessControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/server/AccessControlService;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/server/AccessControlService;


# direct methods
.method constructor <init>(Lcom/meizu/server/AccessControlService;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/meizu/server/AccessControlService$1;->this$0:Lcom/meizu/server/AccessControlService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context1"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 105
    const-string v6, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 106
    const/4 v5, 0x0

    .line 107
    .local v5, "pkgList":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 108
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "pkg":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 111
    new-array v5, v8, [Ljava/lang/String;

    .end local v5    # "pkgList":[Ljava/lang/String;
    aput-object v4, v5, v7

    .line 116
    .end local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "pkgList":[Ljava/lang/String;
    :cond_0
    if-eqz v5, :cond_1

    array-length v6, v5

    if-lez v6, :cond_1

    .line 117
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 119
    .restart local v4    # "pkg":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/meizu/server/AccessControlService$1;->this$0:Lcom/meizu/server/AccessControlService;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Lcom/meizu/server/AccessControlService;->removeControlPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "data":Landroid/net/Uri;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "pkgList":[Ljava/lang/String;
    :cond_1
    return-void

    .line 122
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "data":Landroid/net/Uri;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "pkgList":[Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_1
.end method
