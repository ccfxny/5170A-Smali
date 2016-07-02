.class public Lmeizu/wallpaper/FlymeWallpaperManager;
.super Ljava/lang/Object;
.source "FlymeWallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu/wallpaper/FlymeWallpaperManager$Globals;,
        Lmeizu/wallpaper/FlymeWallpaperManager$FastBitmapDrawable;
    }
.end annotation


# static fields
.field public static final BLUR_LAYER_FRAME_SIZE:I = 0xa

.field private static DEBUG:Z = false

.field public static final MAX_BLUR_SIZE:I = 0x56

.field public static final MIN_SIZE:I = 0xc8

.field public static SMART_WALLPAPER_DIR_NAME:Ljava/lang/String;

.field public static SMART_WALLPAPER_SOURCE_FILE_PREFIX:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lmeizu/wallpaper/FlymeWallpaperManager;

.field private static sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field private mService:Lmeizu/wallpaper/IFlymeWallpaper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    const-string v0, "FlymeWallpaperManager"

    sput-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->TAG:Ljava/lang/String;

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lmeizu/wallpaper/FlymeWallpaperManager;->DEBUG:Z

    .line 56
    const-string v0, "smart_target_"

    sput-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->SMART_WALLPAPER_SOURCE_FILE_PREFIX:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v1, v2}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/FlymeWallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->SMART_WALLPAPER_DIR_NAME:Ljava/lang/String;

    .line 460
    new-array v0, v2, [Ljava/lang/Object;

    sput-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->sSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v1, "flyme_wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 67
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lmeizu/wallpaper/IFlymeWallpaper$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/wallpaper/IFlymeWallpaper;

    move-result-object v1

    iput-object v1, p0, Lmeizu/wallpaper/FlymeWallpaperManager;->mService:Lmeizu/wallpaper/IFlymeWallpaper;

    .line 68
    sput-object p1, Lmeizu/wallpaper/FlymeWallpaperManager;->mContext:Landroid/content/Context;

    .line 69
    invoke-static {p1}, Lmeizu/wallpaper/FlymeWallpaperManager;->initGlobals(Landroid/content/Context;)V

    .line 70
    sget-object v1, Lmeizu/wallpaper/FlymeWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FlymeWallpaperManager init "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmeizu/wallpaper/FlymeWallpaperManager;->mService:Lmeizu/wallpaper/IFlymeWallpaper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lmeizu/wallpaper/FlymeWallpaperManager$Globals;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lmeizu/wallpaper/FlymeWallpaperManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 472
    sget-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->mInstance:Lmeizu/wallpaper/FlymeWallpaperManager;

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Lmeizu/wallpaper/FlymeWallpaperManager;

    invoke-direct {v0, p0}, Lmeizu/wallpaper/FlymeWallpaperManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->mInstance:Lmeizu/wallpaper/FlymeWallpaperManager;

    .line 475
    :cond_0
    sget-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->mInstance:Lmeizu/wallpaper/FlymeWallpaperManager;

    return-object v0
.end method

.method static initGlobals(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 464
    sget-object v1, Lmeizu/wallpaper/FlymeWallpaperManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 465
    :try_start_0
    sget-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    if-nez v0, :cond_0

    .line 466
    new-instance v0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    invoke-direct {v0, p0}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    .line 468
    :cond_0
    monitor-exit v1

    .line 469
    return-void

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setLockWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 3
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 566
    const v2, 0x8000

    new-array v1, v2, [B

    .line 568
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "amt":I
    if-lez v0, :cond_0

    .line 569
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 571
    :cond_0
    return-void
.end method


# virtual methods
.method public clearLockWallpaper()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    sget-object v1, Lmeizu/wallpaper/FlymeWallpaperManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/app/WallpaperManager$WALLPAPER_TYPE;->LOCK:Landroid/app/WallpaperManager$WALLPAPER_TYPE;

    invoke-static {v1, v2}, Landroid/app/WallpaperManager;->getFlymeDefWallpaper(Landroid/content/Context;Landroid/app/WallpaperManager$WALLPAPER_TYPE;)Ljava/io/InputStream;

    move-result-object v0

    .line 589
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {p0, v0}, Lmeizu/wallpaper/FlymeWallpaperManager;->setStreamToLockWallpaper(Ljava/io/InputStream;)V

    .line 590
    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 593
    :cond_0
    return-void
.end method

.method public getDrawableOfLockWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 483
    sget-object v2, Lmeizu/wallpaper/FlymeWallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "getDrawableOfLockWallpaper"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    sget-object v2, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    sget-object v3, Lmeizu/wallpaper/FlymeWallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->peekLockWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 485
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 486
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Lmeizu/wallpaper/FlymeWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 487
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 490
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIFlymeWallpaper()Lmeizu/wallpaper/IFlymeWallpaper;
    .locals 1

    .prologue
    .line 479
    sget-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    # getter for: Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mService:Lmeizu/wallpaper/IFlymeWallpaper;
    invoke-static {v0}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->access$200(Lmeizu/wallpaper/FlymeWallpaperManager$Globals;)Lmeizu/wallpaper/IFlymeWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public getLockWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 582
    sget-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "getLockWallpaperBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    sget-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    sget-object v1, Lmeizu/wallpaper/FlymeWallpaperManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->peekLockWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getSmartWallpaperTarget()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 574
    sget-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    invoke-virtual {v0}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->getSmartWallpaperTarget()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setBitmapToLockWallpaper(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    sget-object v3, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    # getter for: Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mService:Lmeizu/wallpaper/IFlymeWallpaper;
    invoke-static {v3}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->access$200(Lmeizu/wallpaper/FlymeWallpaperManager$Globals;)Lmeizu/wallpaper/IFlymeWallpaper;

    move-result-object v3

    if-nez v3, :cond_1

    .line 520
    sget-object v3, Lmeizu/wallpaper/FlymeWallpaperManager;->TAG:Ljava/lang/String;

    const-string v4, "WallpaperService not running"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    :try_start_0
    sget-object v3, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    # getter for: Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mService:Lmeizu/wallpaper/IFlymeWallpaper;
    invoke-static {v3}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->access$200(Lmeizu/wallpaper/FlymeWallpaperManager$Globals;)Lmeizu/wallpaper/IFlymeWallpaper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lmeizu/wallpaper/IFlymeWallpaper;->setLockWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 525
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 528
    const/4 v1, 0x0

    .line 530
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 531
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 533
    if-eqz v2, :cond_0

    .line 534
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 537
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 533
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_2

    .line 534
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    throw v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 533
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setResourceToLockWallpaper(I)V
    .locals 7
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 494
    sget-object v4, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    # getter for: Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mService:Lmeizu/wallpaper/IFlymeWallpaper;
    invoke-static {v4}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->access$200(Lmeizu/wallpaper/FlymeWallpaperManager$Globals;)Lmeizu/wallpaper/IFlymeWallpaper;

    move-result-object v4

    if-nez v4, :cond_1

    .line 495
    sget-object v4, Lmeizu/wallpaper/FlymeWallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "WallpaperService not running"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    :try_start_0
    sget-object v4, Lmeizu/wallpaper/FlymeWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 501
    .local v3, "resources":Landroid/content/res/Resources;
    sget-object v4, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    # getter for: Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mService:Lmeizu/wallpaper/IFlymeWallpaper;
    invoke-static {v4}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->access$200(Lmeizu/wallpaper/FlymeWallpaperManager$Globals;)Lmeizu/wallpaper/IFlymeWallpaper;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "res:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lmeizu/wallpaper/IFlymeWallpaper;->setLockWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 503
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 504
    const/4 v1, 0x0

    .line 506
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 507
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lmeizu/wallpaper/FlymeWallpaperManager;->setLockWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 509
    if-eqz v2, :cond_0

    .line 510
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 514
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 509
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v1, :cond_2

    .line 510
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 509
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setSmartWallpaperTarget(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    sget-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    sget-object v1, Lmeizu/wallpaper/FlymeWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->setSmartWallpaperTarget(Landroid/graphics/Bitmap;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setStreamToLockWallpaper(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    sget-object v3, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    # getter for: Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mService:Lmeizu/wallpaper/IFlymeWallpaper;
    invoke-static {v3}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->access$200(Lmeizu/wallpaper/FlymeWallpaperManager$Globals;)Lmeizu/wallpaper/IFlymeWallpaper;

    move-result-object v3

    if-nez v3, :cond_1

    .line 543
    sget-object v3, Lmeizu/wallpaper/FlymeWallpaperManager;->TAG:Ljava/lang/String;

    const-string v4, "WallpaperService not running"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    :try_start_0
    sget-object v3, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    # getter for: Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mService:Lmeizu/wallpaper/IFlymeWallpaper;
    invoke-static {v3}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->access$200(Lmeizu/wallpaper/FlymeWallpaperManager$Globals;)Lmeizu/wallpaper/IFlymeWallpaper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lmeizu/wallpaper/IFlymeWallpaper;->setLockWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 548
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 551
    const/4 v1, 0x0

    .line 553
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 554
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-direct {p0, p1, v2}, Lmeizu/wallpaper/FlymeWallpaperManager;->setLockWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 556
    if-eqz v2, :cond_0

    .line 557
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 560
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 556
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_2

    .line 557
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    throw v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 556
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
