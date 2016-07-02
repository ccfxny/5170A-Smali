.class Landroid/content/pm/ResolveInfo$Injector;
.super Ljava/lang/Object;
.source "ResolveInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ResolveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static loadFlymeIcon(Landroid/content/pm/ComponentInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "ci"    # Landroid/content/pm/ComponentInfo;

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    const-string v1, "com.android.calendar"

    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->MEIZU_CALENDAR_ICON:Z

    if-eqz v1, :cond_0

    .line 439
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCalendarIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 443
    :goto_0
    return-object v0

    .line 441
    :cond_0
    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method
