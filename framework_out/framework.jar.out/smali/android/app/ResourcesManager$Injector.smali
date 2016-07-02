.class Landroid/app/ResourcesManager$Injector;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static freeCaches(I)V
    .locals 1
    .param p0, "changes"    # I

    .prologue
    .line 337
    and-int/lit16 v0, p0, 0x4000

    if-eqz v0, :cond_0

    .line 340
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 342
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 344
    :cond_0
    const v0, 0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    .line 347
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 349
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 351
    invoke-static {}, Landroid/content/res/flymetheme/FlymeFontsHelper;->cleanflymeTypeface()V

    .line 353
    :cond_1
    return-void
.end method
