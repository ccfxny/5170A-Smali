.class Landroid/view/Window$HwAcceleratedUtils;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HwAcceleratedUtils"
.end annotation


# static fields
.field private static sDisableHWList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1924
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Landroid/view/Window$HwAcceleratedUtils;->sDisableHWList:Ljava/util/ArrayList;

    .line 1926
    sget-object v0, Landroid/view/Window$HwAcceleratedUtils;->sDisableHWList:Ljava/util/ArrayList;

    const-string v1, "com.android.cts.acceleration.stub"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1927
    sget-object v0, Landroid/view/Window$HwAcceleratedUtils;->sDisableHWList:Ljava/util/ArrayList;

    const-string v1, "com.techneos.soda.client.micro"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1928
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isHardwareAccelerated(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1931
    sget-object v1, Landroid/view/Window$HwAcceleratedUtils;->sDisableHWList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1934
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "persist.sys.ui.hw"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method
