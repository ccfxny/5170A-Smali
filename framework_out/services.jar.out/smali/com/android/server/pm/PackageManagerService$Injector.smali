.class Lcom/android/server/pm/PackageManagerService$Injector;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createAccessObject(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .param p0, "dst"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 14714
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    .line 14715
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessInfo:Landroid/content/pm/ResolveInfo;

    .line 14716
    return-void
.end method

.method static getAccessActivityInfo(Lcom/android/server/pm/PackageManagerService;Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .locals 1
    .param p0, "dst"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 14719
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14720
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    .line 14722
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static scanPackageForAccessControl(Lcom/android/server/pm/PackageManagerService;)V
    .locals 4
    .param p0, "dst"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14726
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 14727
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    const-string v1, "com.meizu.app.AccessApplication"

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 14728
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 14729
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 14730
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    iput v2, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 14731
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    const/16 v1, 0x20

    iput v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 14732
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    iput v3, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 14733
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iput-boolean v2, v0, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    .line 14734
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    const v1, 0xa100027

    iput v1, v0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 14735
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    const/16 v1, 0x480

    iput v1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 14736
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    iput-boolean v3, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 14737
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    iput-boolean v3, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 14738
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    iput-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 14739
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessInfo:Landroid/content/pm/ResolveInfo;

    iput v2, v0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 14740
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessInfo:Landroid/content/pm/ResolveInfo;

    iput v2, v0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 14741
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessInfo:Landroid/content/pm/ResolveInfo;

    iput v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 14742
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    iput v3, v0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 14744
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessComponentName:Landroid/content/ComponentName;

    .line 14746
    return-void
.end method
