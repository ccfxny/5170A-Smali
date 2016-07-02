.class Landroid/content/res/Resources$Injector;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isFlymeThemeChange(Landroid/content/res/Resources;I)V
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "changes"    # I

    .prologue
    .line 3288
    iput p1, p0, Landroid/content/res/Resources;->mFlymeThemeChanges:I

    .line 3289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource updateConfiguration,configChanges = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeLogUtil;->d(Ljava/lang/String;)V

    .line 3291
    and-int/lit16 v0, p1, 0x4000

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    if-eqz v0, :cond_1

    .line 3293
    iget-object v0, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    invoke-virtual {v0}, Landroid/content/res/flymetheme/FlymeThemeResource;->reset()V

    .line 3294
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    if-eq p0, v0, :cond_0

    .line 3295
    iget-object v0, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    invoke-virtual {v0}, Landroid/content/res/flymetheme/FlymeThemeResource;->load()V

    .line 3297
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/Resources;->mIsFlymeThemeChange:Z

    .line 3299
    :cond_1
    return-void
.end method

.method static loadFlymeThemeDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;ILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "file"    # Ljava/lang/String;
    .param p4, "op"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3305
    const/4 v1, 0x0

    .line 3306
    .local v1, "flymeInputStream":Ljava/io/InputStream;
    invoke-virtual {p0, p2, p3, p1}, Landroid/content/res/Resources;->getThemeFileStream(ILjava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 3309
    if-eqz v1, :cond_0

    .line 3310
    invoke-static {p0, p1, v1, p3, v0}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3312
    .local v0, "flymeDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 3315
    .end local v0    # "flymeDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v0
.end method

.method static openFlymeThemeRawResource(Landroid/content/res/Resources;ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3320
    const/4 v0, 0x0

    .line 3321
    .local v0, "flymeInputStream":Ljava/io/InputStream;
    iget-object v1, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2}, Landroid/content/res/Resources;->getThemeFileStream(ILjava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    .line 3322
    if-eqz v0, :cond_0

    .line 3325
    .end local v0    # "flymeInputStream":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .restart local v0    # "flymeInputStream":Ljava/io/InputStream;
    :cond_0
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v2, p2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method
