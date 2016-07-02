.class Landroid/content/Intent$Injector;
.super Ljava/lang/Object;
.source "Intent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static copyIntent(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 2
    .param p0, "src"    # Landroid/content/Intent;
    .param p1, "dst"    # Landroid/content/Intent;

    .prologue
    .line 8172
    iget-object v0, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget v1, v1, Landroid/content/IntentExt;->mMeizuFlags:I

    iput v1, v0, Landroid/content/IntentExt;->mMeizuFlags:I

    .line 8173
    iget-object v0, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget v1, v1, Landroid/content/IntentExt;->mAccessSrcFlags:I

    iput v1, v0, Landroid/content/IntentExt;->mAccessSrcFlags:I

    .line 8174
    iget-object v0, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, v1, Landroid/content/IntentExt;->mAccessPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/IntentExt;->mAccessPackageName:Ljava/lang/String;

    .line 8175
    iget-object v0, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, v1, Landroid/content/IntentExt;->mAccessPackageLabel:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/IntentExt;->mAccessPackageLabel:Ljava/lang/String;

    .line 8176
    return-void
.end method

.method static copyMeizuFlag(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 2
    .param p0, "src"    # Landroid/content/Intent;
    .param p1, "dst"    # Landroid/content/Intent;

    .prologue
    .line 8179
    iget-object v0, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget v1, v1, Landroid/content/IntentExt;->mMeizuFlags:I

    iput v1, v0, Landroid/content/IntentExt;->mMeizuFlags:I

    .line 8180
    return-void
.end method

.method static createFlymeIntent(Landroid/content/Intent;)V
    .locals 1
    .param p0, "dst"    # Landroid/content/Intent;

    .prologue
    .line 8169
    new-instance v0, Landroid/content/IntentExt;

    invoke-direct {v0}, Landroid/content/IntentExt;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    .line 8170
    return-void
.end method

.method static readIntentExt(Landroid/os/Parcel;Landroid/content/IntentExt;)V
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "intentExt"    # Landroid/content/IntentExt;

    .prologue
    .line 8201
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/content/IntentExt;->mMeizuFlags:I

    .line 8202
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/content/IntentExt;->mAccessSrcFlags:I

    .line 8203
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/content/IntentExt;->mAccessPackageName:Ljava/lang/String;

    .line 8204
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/content/IntentExt;->mAccessPackageLabel:Ljava/lang/String;

    .line 8205
    return-void
.end method

.method static toShortStringForMeizuFlag(Landroid/content/Intent;Ljava/lang/StringBuilder;Z)Z
    .locals 2
    .param p0, "dst"    # Landroid/content/Intent;
    .param p1, "b"    # Ljava/lang/StringBuilder;
    .param p2, "first"    # Z

    .prologue
    .line 8183
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget v0, v0, Landroid/content/IntentExt;->mMeizuFlags:I

    if-eqz v0, :cond_1

    .line 8184
    if-nez p2, :cond_0

    .line 8185
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8187
    :cond_0
    const-string/jumbo v0, "meizuflg=0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget v1, v1, Landroid/content/IntentExt;->mMeizuFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8188
    const/4 p2, 0x0

    .line 8190
    .end local p2    # "first":Z
    :cond_1
    return p2
.end method

.method static writeIntentExt(Landroid/os/Parcel;Landroid/content/IntentExt;)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "intentExt"    # Landroid/content/IntentExt;

    .prologue
    .line 8194
    iget v0, p1, Landroid/content/IntentExt;->mMeizuFlags:I

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8195
    iget v0, p1, Landroid/content/IntentExt;->mAccessSrcFlags:I

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8196
    iget-object v0, p1, Landroid/content/IntentExt;->mAccessPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8197
    iget-object v0, p1, Landroid/content/IntentExt;->mAccessPackageLabel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8198
    return-void
.end method
