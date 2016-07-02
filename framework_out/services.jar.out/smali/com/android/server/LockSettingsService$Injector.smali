.class Lcom/android/server/LockSettingsService$Injector;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkPassword(Lcom/android/server/LockSettingsService;Ljava/lang/String;I)V
    .locals 1
    .param p0, "dst"    # Lcom/android/server/LockSettingsService;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mFindPhoneService:Lcom/meizu/findphone/FindPhoneService;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/findphone/FindPhoneService;->checkPassword(Ljava/lang/String;I)Z

    .line 480
    return-void
.end method

.method static createFindPhoneService(Lcom/android/server/LockSettingsService;)V
    .locals 3
    .param p0, "dst"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 463
    new-instance v0, Lcom/meizu/findphone/FindPhoneService;

    # getter for: Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/server/LockSettingsService;->access$100(Lcom/android/server/LockSettingsService;)Landroid/content/Context;

    move-result-object v1

    # getter for: Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {p0}, Lcom/android/server/LockSettingsService;->access$200(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/meizu/findphone/FindPhoneService;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mFindPhoneService:Lcom/meizu/findphone/FindPhoneService;

    .line 465
    return-void
.end method

.method static setLockPassword(Lcom/android/server/LockSettingsService;Ljava/lang/String;I)V
    .locals 1
    .param p0, "dst"    # Lcom/android/server/LockSettingsService;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mFindPhoneService:Lcom/meizu/findphone/FindPhoneService;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/findphone/FindPhoneService;->setLockPassword(Ljava/lang/String;I)V

    .line 475
    return-void
.end method

.method static systemReady(Lcom/android/server/LockSettingsService;)V
    .locals 1
    .param p0, "dst"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mFindPhoneService:Lcom/meizu/findphone/FindPhoneService;

    invoke-virtual {v0}, Lcom/meizu/findphone/FindPhoneService;->systemReady()V

    .line 470
    return-void
.end method
