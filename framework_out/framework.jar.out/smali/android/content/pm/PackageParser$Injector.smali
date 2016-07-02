.class Landroid/content/pm/PackageParser$Injector;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static copyAccessArgs(Landroid/content/pm/ActivityInfo;Landroid/content/pm/ActivityInfo;)V
    .locals 2
    .param p0, "dst"    # Landroid/content/pm/ActivityInfo;
    .param p1, "src"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 5541
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-boolean v1, v1, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    iput-boolean v1, v0, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    .line 5543
    return-void
.end method

.method static parseAccessArgsFromResource(Landroid/content/pm/ActivityInfo;Landroid/content/res/TypedArray;)V
    .locals 3
    .param p0, "dst"    # Landroid/content/pm/ActivityInfo;
    .param p1, "sa"    # Landroid/content/res/TypedArray;

    .prologue
    .line 5545
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    const/16 v1, 0x27

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    .line 5551
    return-void
.end method

.method static parseAccessMetaFromResource(Landroid/content/pm/ActivityInfo;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "dst"    # Landroid/content/pm/ActivityInfo;
    .param p1, "meta"    # Landroid/os/Bundle;

    .prologue
    .line 5553
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-boolean v1, v1, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 5554
    const-string/jumbo v1, "needAccessControl"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 5555
    .local v0, "metaNeedAccessConrol":Z
    if-nez v0, :cond_0

    .line 5556
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    .line 5559
    .end local v0    # "metaNeedAccessConrol":Z
    :cond_0
    return-void
.end method
