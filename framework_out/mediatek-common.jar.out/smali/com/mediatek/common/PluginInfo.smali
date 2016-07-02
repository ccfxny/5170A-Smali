.class public final Lcom/mediatek/common/PluginInfo;
.super Ljava/lang/Object;
.source "PluginInfo.java"


# instance fields
.field private apkName:Ljava/lang/String;

.field private implementationName:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "implementationName"    # Ljava/lang/String;
    .param p3, "apkName"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/common/PluginInfo;->implementationName:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/common/PluginInfo;->packageName:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/common/PluginInfo;->apkName:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/mediatek/common/PluginInfo;->packageName:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/mediatek/common/PluginInfo;->implementationName:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/mediatek/common/PluginInfo;->apkName:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public getApkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mediatek/common/PluginInfo;->apkName:Ljava/lang/String;

    return-object v0
.end method

.method public getImplementationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/common/PluginInfo;->implementationName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/common/PluginInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method
