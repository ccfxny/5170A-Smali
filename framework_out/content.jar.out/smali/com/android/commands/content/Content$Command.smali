.class abstract Lcom/android/commands/content/Content$Command;
.super Ljava/lang/Object;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Command"
.end annotation


# instance fields
.field final mUri:Landroid/net/Uri;

.field final mUserId:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I

    .prologue
    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    iput-object p1, p0, Lcom/android/commands/content/Content$Command;->mUri:Landroid/net/Uri;

    .line 401
    iput p2, p0, Lcom/android/commands/content/Content$Command;->mUserId:I

    .line 402
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 9

    .prologue
    .line 405
    iget-object v6, p0, Lcom/android/commands/content/Content$Command;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    .line 407
    .local v4, "providerName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 408
    .local v0, "activityManager":Landroid/app/IActivityManager;
    const/4 v3, 0x0

    .line 409
    .local v3, "provider":Landroid/content/IContentProvider;
    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    .local v5, "token":Landroid/os/IBinder;
    :try_start_1
    iget v6, p0, Lcom/android/commands/content/Content$Command;->mUserId:I

    invoke-interface {v0, v4, v6, v5}, Landroid/app/IActivityManager;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v2

    .line 413
    .local v2, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    if-nez v2, :cond_2

    .line 414
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find provider: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    .end local v2    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_0

    .line 420
    :try_start_2
    invoke-interface {v0, v4, v5}, Landroid/app/IActivityManager;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 423
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    .end local v3    # "provider":Landroid/content/IContentProvider;
    .end local v5    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 424
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error while accessing provider:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 427
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void

    .line 416
    .restart local v0    # "activityManager":Landroid/app/IActivityManager;
    .restart local v2    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v3    # "provider":Landroid/content/IContentProvider;
    .restart local v5    # "token":Landroid/os/IBinder;
    :cond_2
    :try_start_3
    iget-object v3, v2, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 417
    invoke-virtual {p0, v3}, Lcom/android/commands/content/Content$Command;->onExecute(Landroid/content/IContentProvider;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 419
    if-eqz v3, :cond_1

    .line 420
    :try_start_4
    invoke-interface {v0, v4, v5}, Landroid/app/IActivityManager;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method

.method protected abstract onExecute(Landroid/content/IContentProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
