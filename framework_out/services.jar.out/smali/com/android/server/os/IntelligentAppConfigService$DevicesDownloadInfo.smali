.class Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;
.super Ljava/lang/Object;
.source "IntelligentAppConfigService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/IntelligentAppConfigService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DevicesDownloadInfo"
.end annotation


# instance fields
.field private downloadUrl:Ljava/lang/String;

.field private product:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/os/IntelligentAppConfigService;


# direct methods
.method private constructor <init>(Lcom/android/server/os/IntelligentAppConfigService;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;->this$0:Lcom/android/server/os/IntelligentAppConfigService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/os/IntelligentAppConfigService;Lcom/android/server/os/IntelligentAppConfigService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/os/IntelligentAppConfigService;
    .param p2, "x1"    # Lcom/android/server/os/IntelligentAppConfigService$1;

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;-><init>(Lcom/android/server/os/IntelligentAppConfigService;)V

    return-void
.end method


# virtual methods
.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;->product:Ljava/lang/String;

    return-object v0
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;->downloadUrl:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public setProduct(Ljava/lang/String;)V
    .locals 0
    .param p1, "product"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;->product:Ljava/lang/String;

    .line 272
    return-void
.end method
