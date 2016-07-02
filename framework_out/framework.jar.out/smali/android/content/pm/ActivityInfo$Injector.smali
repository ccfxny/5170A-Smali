.class Landroid/content/pm/ActivityInfo$Injector;
.super Ljava/lang/Object;
.source "ActivityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ActivityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static copyFromActivityInfo(Landroid/content/pm/ActivityInfo;Landroid/content/pm/ActivityInfo;)V
    .locals 2
    .param p0, "dst"    # Landroid/content/pm/ActivityInfo;
    .param p1, "src"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 824
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-boolean v1, v1, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    iput-boolean v1, v0, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    .line 825
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-boolean v1, v1, Landroid/content/ActivityInfoExt;->needGuestControl:Z

    iput-boolean v1, v0, Landroid/content/ActivityInfoExt;->needGuestControl:Z

    .line 826
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget v1, v1, Landroid/content/ActivityInfoExt;->meizuSystemUIOptions:I

    iput v1, v0, Landroid/content/ActivityInfoExt;->meizuSystemUIOptions:I

    .line 827
    return-void
.end method

.method static createFlymeActivityInfo(Landroid/content/pm/ActivityInfo;)V
    .locals 1
    .param p0, "dst"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 816
    new-instance v0, Landroid/content/ActivityInfoExt;

    invoke-direct {v0}, Landroid/content/ActivityInfoExt;-><init>()V

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    .line 817
    return-void
.end method

.method static dumpsys(Landroid/content/pm/ActivityInfo;Landroid/util/Printer;Ljava/lang/String;)V
    .locals 1
    .param p0, "dst"    # Landroid/content/pm/ActivityInfo;
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 834
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    invoke-virtual {v0, p1, p2}, Landroid/content/ActivityInfoExt;->dumpsys(Landroid/util/Printer;Ljava/lang/String;)V

    .line 835
    return-void
.end method

.method static readFromParcel(Landroid/content/pm/ActivityInfo;Landroid/os/Parcel;)V
    .locals 4
    .param p0, "dst"    # Landroid/content/pm/ActivityInfo;
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 819
    iget-object v3, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    .line 820
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    iput-boolean v1, v0, Landroid/content/ActivityInfoExt;->needGuestControl:Z

    .line 821
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/content/ActivityInfoExt;->meizuSystemUIOptions:I

    .line 822
    return-void

    :cond_0
    move v0, v2

    .line 819
    goto :goto_0

    :cond_1
    move v1, v2

    .line 820
    goto :goto_1
.end method

.method static writeToParcel(Landroid/os/Parcel;Landroid/content/pm/ActivityInfo;)V
    .locals 3
    .param p0, "dst"    # Landroid/os/Parcel;
    .param p1, "src"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 829
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-boolean v0, v0, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 830
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-boolean v0, v0, Landroid/content/ActivityInfoExt;->needGuestControl:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 831
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget v0, v0, Landroid/content/ActivityInfoExt;->meizuSystemUIOptions:I

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    return-void

    :cond_0
    move v0, v2

    .line 829
    goto :goto_0

    :cond_1
    move v1, v2

    .line 830
    goto :goto_1
.end method
