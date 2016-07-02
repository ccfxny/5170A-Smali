.class Lcom/android/internal/os/ZygoteInit$Injector;
.super Ljava/lang/Object;
.source "ZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ZygoteInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Injector"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 1026
    invoke-static {}, Lcom/android/internal/os/ZygoteInit$Injector;->mzPreload()V

    return-void
.end method

.method private static mzPreload()V
    .locals 0

    .prologue
    .line 1037
    invoke-static {}, Lcom/android/internal/os/ZygoteInit$Injector;->preloadFortress()V

    .line 1038
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->preload_reflect()V

    .line 1039
    return-void
.end method

.method private static preloadFortress()V
    .locals 3

    .prologue
    .line 1029
    :try_start_0
    new-instance v1, Landroid/security/AndroidKeyStoreProvider;

    invoke-direct {v1}, Landroid/security/AndroidKeyStoreProvider;-><init>()V

    invoke-static {v1}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 1030
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getCacheVersion()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 1031
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 1032
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Zygote"

    const-string v2, "MessageDigest getInstance for MD5 Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
