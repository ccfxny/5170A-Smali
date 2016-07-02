.class Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;
.super Ljava/lang/Object;
.source "UsbInstallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hips/server/UsbInstallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ArchiveInfo"
.end annotation


# instance fields
.field mApkName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mIcon:Landroid/graphics/drawable/Drawable;

.field private mInstalledPkgLabels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/hips/server/UsbInstallManager;


# direct methods
.method constructor <init>(Lcom/android/server/hips/server/UsbInstallManager;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->this$0:Lcom/android/server/hips/server/UsbInstallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p2, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mContext:Landroid/content/Context;

    .line 361
    invoke-direct {p0}, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->getInstalledPkgLabels()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mInstalledPkgLabels:Ljava/util/Map;

    .line 362
    invoke-direct {p0, p3}, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->initArchiveData(Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method private getInstalledPkgLabels()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 390
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 391
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 392
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 393
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 394
    .local v5, "pkgName":Ljava/lang/String;
    iget-object v7, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, "label":Ljava/lang/String;
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 397
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "label":Ljava/lang/String;
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method private initArchiveData(Ljava/lang/String;)V
    .locals 5
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 366
    const-string v3, "error"

    iput-object v3, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mPkgName:Ljava/lang/String;

    .line 367
    iget-object v3, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 368
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 369
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 370
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mPkgName:Ljava/lang/String;

    .line 371
    const-string v3, "error"

    iput-object v3, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mApkName:Ljava/lang/String;

    .line 372
    iget-object v3, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mInstalledPkgLabels:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mPkgName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 373
    iget-object v3, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mInstalledPkgLabels:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mPkgName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mApkName:Ljava/lang/String;

    .line 382
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mPkgName:Ljava/lang/String;

    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 383
    iget-object v3, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    .line 384
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 386
    :cond_1
    return-void

    .line 375
    :cond_2
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 376
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 377
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 378
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mApkName:Ljava/lang/String;

    goto :goto_0
.end method
