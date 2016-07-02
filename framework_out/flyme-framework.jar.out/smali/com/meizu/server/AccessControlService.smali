.class public Lcom/meizu/server/AccessControlService;
.super Lmeizu/security/IAccessControlManager$Stub;
.source "AccessControlService.java"


# static fields
.field static final TAG:Ljava/lang/String; = "AccessControlManager"


# instance fields
.field private final DEBUG:Z

.field private mAccessControlGuardEnable:Z

.field private mAccessControlPassPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessControlPasswordEnable:Z

.field final mContext:Landroid/content/Context;

.field private mControlGuardPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mControlOpenPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mControlPasswordPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPolicy:Landroid/view/WindowManagerPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Landroid/view/WindowManagerPolicy;

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lmeizu/security/IAccessControlManager$Stub;-><init>()V

    .line 56
    iput-boolean v1, p0, Lcom/meizu/server/AccessControlService;->DEBUG:Z

    .line 60
    iput-boolean v1, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPasswordEnable:Z

    .line 62
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/meizu/server/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/meizu/server/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/meizu/server/AccessControlService;->mControlOpenPackages:Ljava/util/ArrayList;

    .line 70
    iput-boolean v1, p0, Lcom/meizu/server/AccessControlService;->mAccessControlGuardEnable:Z

    .line 84
    iput-object p1, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    .line 85
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/meizu/server/AccessControlService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 86
    iget-object v2, p0, Lcom/meizu/server/AccessControlService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 89
    iput-object p2, p0, Lcom/meizu/server/AccessControlService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 90
    iget-object v2, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_app_lock_control"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPasswordEnable:Z

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/meizu/server/AccessControlService$1;

    invoke-direct {v2, p0}, Lcom/meizu/server/AccessControlService$1;-><init>(Lcom/meizu/server/AccessControlService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    return-void
.end method

.method protected static deleteLock(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 729
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 730
    .local v1, "uriStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    const/4 v2, 0x1

    .line 734
    .end local v1    # "uriStr":Ljava/lang/String;
    :goto_0
    return v2

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, "e":Landroid/database/SQLException;
    const-string v2, "AccessControlManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t delete key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 734
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private dumpPackageName(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 712
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 713
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 712
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 716
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 717
    return-void
.end method

.method public static getControlPackages(Landroid/content/ContentResolver;)Ljava/util/HashMap;
    .locals 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 179
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 180
    .local v2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 182
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v8, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v8}, Lcom/meizu/server/AccessControlService;->getControlPackagesLock(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-gtz v8, :cond_3

    .line 199
    :cond_0
    if-eqz v0, :cond_1

    .line 200
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v2, v7

    .end local v2    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    :goto_0
    return-object v2

    .line 186
    .restart local v2    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3
    :try_start_1
    const-string v8, "name"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 187
    .local v4, "nameIndex":I
    const-string v8, "value"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 188
    .local v6, "valueIndex":I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_5

    .line 189
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 195
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "nameIndex":I
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "valueIndex":I
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v8, "AccessControlManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SQLiteException"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    if-eqz v0, :cond_4

    .line 200
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v2, v7

    goto :goto_0

    .line 199
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "nameIndex":I
    .restart local v6    # "valueIndex":I
    :cond_5
    if-eqz v0, :cond_2

    .line 200
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 199
    .end local v4    # "nameIndex":I
    .end local v6    # "valueIndex":I
    :catchall_0
    move-exception v7

    if-eqz v0, :cond_6

    .line 200
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v7
.end method

.method protected static getControlPackagesLock(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    .line 213
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "name"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "value"

    aput-object v1, v2, v0

    const-string v3, "name LIKE \'access_control_%\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    .line 219
    :catch_0
    move-exception v6

    .line 220
    .local v6, "e":Landroid/database/SQLException;
    const-string v0, "AccessControlManager"

    const-string v1, "Can\'t query"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v7

    .line 221
    goto :goto_0
.end method

.method private getTopActivitComponentName()Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 604
    const/4 v2, 0x0

    .line 605
    .local v2, "ret":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 606
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 608
    .local v1, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v1, :cond_0

    .line 609
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 612
    :cond_0
    return-object v2
.end method

.method private loadControlPackages()V
    .locals 8

    .prologue
    .line 138
    iget-object v6, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Lcom/meizu/server/AccessControlService;->getControlPackages(Landroid/content/ContentResolver;)Ljava/util/HashMap;

    move-result-object v3

    .line 139
    .local v3, "pkg":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v3, :cond_1

    .line 170
    :cond_0
    return-void

    .line 146
    :cond_1
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 147
    .local v4, "set":Ljava/util/Set;
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 148
    .local v1, "it":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 149
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 150
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 151
    .local v2, "name":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 152
    .local v5, "type":Ljava/lang/Integer;
    const-string v6, "access_control_"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 157
    iget-object v6, p0, Lcom/meizu/server/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 158
    iget-object v6, p0, Lcom/meizu/server/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 161
    iget-object v6, p0, Lcom/meizu/server/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 162
    iget-object v6, p0, Lcom/meizu/server/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 165
    iget-object v6, p0, Lcom/meizu/server/AccessControlService;->mControlOpenPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 166
    iget-object v6, p0, Lcom/meizu/server/AccessControlService;->mControlOpenPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private sendAccessControlBroadcast(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 309
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACCESS_CONTROL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 311
    iget-object v1, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v1, p1}, Landroid/content/IntentExt;->setAccessPackageName(Ljava/lang/String;)V

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 314
    return-void
.end method

.method private sendAccessControlBroadcast(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pkgString"    # Ljava/lang/String;
    .param p2, "fromNotification"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 323
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACCESS_CONTROL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 325
    iget-object v1, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v1, p1}, Landroid/content/IntentExt;->setAccessPackageName(Ljava/lang/String;)V

    .line 327
    :cond_0
    const-string v1, "fromNotification"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 328
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 329
    return-void
.end method

.method private showAccessControl(Landroid/content/pm/PackageInfo;)V
    .locals 12
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 618
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 619
    .local v6, "time":J
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 620
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/meizu/server/AccessControlService;->checkAccessControl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 621
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 623
    .local v4, "tempCharSequence":Ljava/lang/CharSequence;
    if-eqz v4, :cond_1

    move-object v1, v4

    .line 624
    .local v1, "label":Ljava/lang/CharSequence;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.content.pm.CONFIRM_ACCESS_APPCATONS"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 625
    .local v2, "mAccessApp":Landroid/content/Intent;
    iget-object v5, v2, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v5, v3}, Landroid/content/IntentExt;->setAccessPackageName(Ljava/lang/String;)V

    .line 626
    iget-object v5, v2, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/IntentExt;->setAccessPackageLabel(Ljava/lang/String;)V

    .line 627
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 628
    const v5, 0x8000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 629
    iget-object v5, v2, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    const/16 v8, 0x40

    invoke-virtual {v5, v8}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 630
    iget-object v5, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 632
    .end local v1    # "label":Ljava/lang/CharSequence;
    .end local v2    # "mAccessApp":Landroid/content/Intent;
    .end local v4    # "tempCharSequence":Ljava/lang/CharSequence;
    :cond_0
    const-string v5, "AccessControlManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkAccessControl "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v6    # "time":J
    :goto_1
    return-void

    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v4    # "tempCharSequence":Ljava/lang/CharSequence;
    .restart local v6    # "time":J
    :cond_1
    move-object v1, v3

    .line 623
    goto :goto_0

    .line 633
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "tempCharSequence":Ljava/lang/CharSequence;
    .end local v6    # "time":J
    :catch_0
    move-exception v0

    .line 634
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "AccessControlManager"

    const-string v8, "accseeApp error !"

    invoke-static {v5, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public addAccessControlPass(Ljava/lang/String;)V
    .locals 3
    .param p1, "paramString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    monitor-enter v1

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 342
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    invoke-direct {p0, p1}, Lcom/meizu/server/AccessControlService;->sendAccessControlBroadcast(Ljava/lang/String;)V

    .line 344
    return-void

    .line 342
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addAccessControlPassMz(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "paramString"    # Ljava/lang/String;
    .param p2, "fromNotification"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    monitor-enter v1

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 358
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    invoke-direct {p0, p1, p2}, Lcom/meizu/server/AccessControlService;->sendAccessControlBroadcast(Ljava/lang/String;Z)V

    .line 360
    return-void

    .line 358
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addControlPackage(Ljava/lang/String;I)V
    .locals 6
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 415
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    if-ne p2, v3, :cond_2

    .line 419
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    monitor-enter v1

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "access_control_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 426
    :cond_0
    monitor-exit v1

    .line 446
    :cond_1
    :goto_0
    return-void

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 427
    :cond_2
    if-ne p2, v4, :cond_4

    .line 428
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    monitor-enter v1

    .line 429
    :try_start_1
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 430
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "access_control_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 435
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 436
    :cond_4
    if-ne p2, v5, :cond_1

    .line 437
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlOpenPackages:Ljava/util/ArrayList;

    monitor-enter v1

    .line 438
    :try_start_2
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mControlOpenPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 439
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mControlOpenPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "access_control_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 444
    :cond_5
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0
.end method

.method public addTopAppAccessControlPass()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 565
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v2, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    monitor-enter v2

    .line 569
    :try_start_0
    invoke-direct {p0}, Lcom/meizu/server/AccessControlService;->getTopActivitComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 570
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 574
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 576
    :cond_0
    monitor-exit v2

    .line 577
    return-void

    .line 576
    .end local v0    # "component":Landroid/content/ComponentName;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkAccessControl(Ljava/lang/String;)Z
    .locals 8
    .param p1, "mPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 648
    iget-object v5, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mz_app_lock_control"

    const/4 v7, -0x3

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 651
    .local v1, "appAccessControl":I
    if-nez v1, :cond_1

    .line 678
    :cond_0
    :goto_0
    return v3

    .line 654
    :cond_1
    iget-object v5, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    const-string v6, "access_control"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu/security/AccessControlManager;

    .line 656
    .local v0, "acm":Lmeizu/security/AccessControlManager;
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmeizu/security/AccessControlManager;->checkAccessControlPass(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 660
    invoke-virtual {v0, p1}, Lmeizu/security/AccessControlManager;->checkControlPackageType(Ljava/lang/String;)I

    move-result v2

    .line 662
    .local v2, "mControlType":I
    if-eqz v2, :cond_0

    .line 664
    if-ne v2, v4, :cond_3

    .line 665
    invoke-virtual {v0}, Lmeizu/security/AccessControlManager;->isAccessControlPasswordEnable()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lmeizu/security/AccessControlManager;->isAccessControlGuardEnable()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    move v3, v4

    .line 667
    goto :goto_0

    .line 671
    :cond_3
    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    .line 672
    invoke-virtual {v0}, Lmeizu/security/AccessControlManager;->isAccessControlGuardEnable()Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 673
    goto :goto_0
.end method

.method public checkAccessControlPass(Ljava/lang/String;)Z
    .locals 3
    .param p1, "paramString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 398
    iget-object v2, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    monitor-enter v2

    .line 399
    :try_start_0
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 404
    .local v0, "bool":Z
    monitor-exit v2

    return v0

    .line 405
    .end local v0    # "bool":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkControlPackageType(Ljava/lang/String;)I
    .locals 2
    .param p1, "pName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 495
    const/4 v0, 0x0

    .line 496
    .local v0, "type":I
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    const/4 v0, 0x2

    .line 508
    :goto_0
    return v0

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 499
    const/4 v0, 0x1

    goto :goto_0

    .line 500
    :cond_1
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlOpenPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 501
    const/4 v0, 0x3

    goto :goto_0

    .line 503
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearAccessControlPass()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 384
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    monitor-enter v1

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 389
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    invoke-direct {p0, v2}, Lcom/meizu/server/AccessControlService;->sendAccessControlBroadcast(Ljava/lang/String;)V

    .line 391
    return-void

    .line 389
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 685
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump ActivityManager from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " without permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 709
    :goto_0
    return-void

    .line 694
    :cond_0
    const-string v0, "     "

    .line 695
    .local v0, "prefix":Ljava/lang/String;
    const-string v1, "ACCESS_CONTROL MANAGER (dumpsys access_control)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 697
    const-string v1, "mAccessControlPasswordEnable="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 698
    iget-boolean v1, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPasswordEnable:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 699
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 700
    const-string v1, "mAccessControlGuardEnable="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 701
    iget-boolean v1, p0, Lcom/meizu/server/AccessControlService;->mAccessControlGuardEnable:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 702
    const-string v1, "control password  package"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 703
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p2, v1}, Lcom/meizu/server/AccessControlService;->dumpPackageName(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/ArrayList;)V

    .line 704
    const-string v1, "control guard package"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 705
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p2, v1}, Lcom/meizu/server/AccessControlService;->dumpPackageName(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/ArrayList;)V

    .line 706
    const-string v1, "control open package"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 707
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlOpenPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p2, v1}, Lcom/meizu/server/AccessControlService;->dumpPackageName(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public getControlGuardPackages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    monitor-enter v1

    .line 535
    :try_start_0
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getControlOpenPackages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 545
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlOpenPackages:Ljava/util/ArrayList;

    monitor-enter v1

    .line 549
    :try_start_0
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mControlOpenPackages:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getControlPasswordPackages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 517
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    monitor-enter v1

    .line 521
    :try_start_0
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAccessControlGuardEnable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/meizu/server/AccessControlService;->mAccessControlGuardEnable:Z

    return v0
.end method

.method public isAccessControlPasswordEnable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPasswordEnable:Z

    return v0
.end method

.method public removeAccessControlPass(Ljava/lang/String;)V
    .locals 3
    .param p1, "paramString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    monitor-enter v1

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 374
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    invoke-direct {p0, p1}, Lcom/meizu/server/AccessControlService;->sendAccessControlBroadcast(Ljava/lang/String;)V

    .line 376
    return-void

    .line 374
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeControlPackage(Ljava/lang/String;I)V
    .locals 6
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 455
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 459
    iget-object v2, p0, Lcom/meizu/server/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    monitor-enter v2

    .line 460
    :try_start_0
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 461
    .local v0, "index":I
    if-eq v0, v4, :cond_0

    .line 462
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 463
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "access_control_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/meizu/server/AccessControlService;->deleteLock(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 465
    invoke-virtual {p0, p1}, Lcom/meizu/server/AccessControlService;->removeAccessControlPass(Ljava/lang/String;)V

    .line 467
    :cond_0
    monitor-exit v2

    .line 489
    .end local v0    # "index":I
    :cond_1
    :goto_0
    return-void

    .line 467
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 468
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    .line 469
    iget-object v2, p0, Lcom/meizu/server/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    monitor-enter v2

    .line 470
    :try_start_1
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 471
    .restart local v0    # "index":I
    if-eq v0, v4, :cond_3

    .line 472
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 473
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "access_control_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/meizu/server/AccessControlService;->deleteLock(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 475
    invoke-virtual {p0, p1}, Lcom/meizu/server/AccessControlService;->removeAccessControlPass(Ljava/lang/String;)V

    .line 477
    :cond_3
    monitor-exit v2

    goto :goto_0

    .end local v0    # "index":I
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 478
    :cond_4
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 479
    iget-object v2, p0, Lcom/meizu/server/AccessControlService;->mControlOpenPackages:Ljava/util/ArrayList;

    monitor-enter v2

    .line 480
    :try_start_2
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlOpenPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 481
    .restart local v0    # "index":I
    if-eq v0, v4, :cond_5

    .line 482
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mControlOpenPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 483
    iget-object v1, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "access_control_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/meizu/server/AccessControlService;->deleteLock(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 485
    invoke-virtual {p0, p1}, Lcom/meizu/server/AccessControlService;->removeAccessControlPass(Ljava/lang/String;)V

    .line 487
    :cond_5
    monitor-exit v2

    goto :goto_0

    .end local v0    # "index":I
    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1
.end method

.method public screenTurnedOff(I)V
    .locals 1
    .param p1, "why"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/meizu/server/AccessControlService;->clearAccessControlPass()V

    .line 558
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/server/AccessControlService;->setAccessControlGuardEnable(Z)V

    .line 559
    return-void
.end method

.method public screenTurnedOn()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 583
    invoke-direct {p0}, Lcom/meizu/server/AccessControlService;->getTopActivitComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 584
    .local v1, "component":Landroid/content/ComponentName;
    if-eqz v1, :cond_1

    .line 585
    iget-object v5, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 587
    .local v3, "pManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 588
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 589
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-boolean v5, v5, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    if-eqz v5, :cond_1

    .line 590
    iget-object v5, p0, Lcom/meizu/server/AccessControlService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/meizu/server/AccessControlService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "meizu_keyguard_lock"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v8, :cond_1

    .line 594
    :cond_0
    invoke-direct {p0, v4}, Lcom/meizu/server/AccessControlService;->showAccessControl(Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "pManager":Landroid/content/pm/PackageManager;
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_0
    return-void

    .line 597
    .restart local v3    # "pManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 598
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAccessControlGuardEnable(Z)V
    .locals 3
    .param p1, "paramBoolean"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 263
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-boolean v0, p0, Lcom/meizu/server/AccessControlService;->mAccessControlGuardEnable:Z

    if-eq v0, p1, :cond_0

    .line 267
    iput-boolean p1, p0, Lcom/meizu/server/AccessControlService;->mAccessControlGuardEnable:Z

    .line 269
    :cond_0
    invoke-direct {p0, v2}, Lcom/meizu/server/AccessControlService;->sendAccessControlBroadcast(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public setAccessControlPasswordEnable(Z)V
    .locals 4
    .param p1, "paramBoolean"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 234
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-boolean v0, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPasswordEnable:Z

    if-eq v0, p1, :cond_0

    .line 238
    iput-boolean p1, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPasswordEnable:Z

    .line 242
    iget-boolean v0, p0, Lcom/meizu/server/AccessControlService;->mAccessControlPasswordEnable:Z

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_app_lock_control"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 251
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Lcom/meizu/server/AccessControlService;->sendAccessControlBroadcast(Ljava/lang/String;)V

    .line 252
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/meizu/server/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_app_lock_control"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/meizu/server/AccessControlService;->loadControlPackages()V

    .line 135
    return-void
.end method
