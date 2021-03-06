.class Lmeizu/wallpaper/FlymeWallpaperManager$Globals;
.super Lmeizu/wallpaper/IFlymeWallpaperCallback$Stub;
.source "FlymeWallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu/wallpaper/FlymeWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# static fields
.field private static final MSG_CLEAR_LOCK_WALLPAPER:I = 0x1

.field static final SMART_WALLPAPER_TARGET:Ljava/lang/String; = "smart_wallpaper_target"


# instance fields
.field private SCREEN_H:I

.field private SCREEN_W:I

.field private mDefaultLockWallpaper:Landroid/graphics/Bitmap;

.field private mLockWallpaper:Landroid/graphics/Bitmap;

.field private mService:Lmeizu/wallpaper/IFlymeWallpaper;

.field private mSmartWallpapaerTarget:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    .line 164
    invoke-direct {p0}, Lmeizu/wallpaper/IFlymeWallpaperCallback$Stub;-><init>()V

    .line 157
    iput v4, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->SCREEN_W:I

    .line 158
    iput v4, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->SCREEN_H:I

    .line 165
    const-string v4, "flyme_wallpaper"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 167
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lmeizu/wallpaper/IFlymeWallpaper$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/wallpaper/IFlymeWallpaper;

    move-result-object v4

    iput-object v4, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mService:Lmeizu/wallpaper/IFlymeWallpaper;

    .line 168
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 169
    .local v2, "dm":Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 171
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 172
    .local v1, "d":Landroid/view/Display;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 173
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->SCREEN_W:I

    .line 174
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->SCREEN_H:I

    .line 175
    # getter for: Lmeizu/wallpaper/FlymeWallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lmeizu/wallpaper/FlymeWallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SCREEN_W: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->SCREEN_W:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SCREEN_H: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->SCREEN_H:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method

.method static synthetic access$200(Lmeizu/wallpaper/FlymeWallpaperManager$Globals;)Lmeizu/wallpaper/IFlymeWallpaper;
    .locals 1
    .param p0, "x0"    # Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    .prologue
    .line 153
    iget-object v0, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mService:Lmeizu/wallpaper/IFlymeWallpaper;

    return-object v0
.end method

.method private getCurrentLockWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 214
    const/4 v1, 0x0

    .line 216
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 217
    .local v4, "params":Landroid/os/Bundle;
    # getter for: Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;
    invoke-static {}, Lmeizu/wallpaper/FlymeWallpaperManager;->access$100()Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    move-result-object v7

    iget-object v7, v7, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mService:Lmeizu/wallpaper/IFlymeWallpaper;

    # getter for: Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;
    invoke-static {}, Lmeizu/wallpaper/FlymeWallpaperManager;->access$100()Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Lmeizu/wallpaper/IFlymeWallpaper;->getLockWallpaper(Lmeizu/wallpaper/IFlymeWallpaperCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 219
    if-eqz v1, :cond_4

    .line 220
    const-string v7, "width"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 221
    .local v5, "width":I
    const-string v7, "height"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 222
    .local v2, "height":I
    if-lez v5, :cond_0

    if-gtz v2, :cond_3

    .line 223
    :cond_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 225
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 226
    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v0, v7}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :cond_1
    if-eqz v1, :cond_2

    .line 246
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 252
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "height":I
    .end local v4    # "params":Landroid/os/Bundle;
    .end local v5    # "width":I
    :cond_2
    :goto_0
    return-object v0

    .line 230
    .restart local v2    # "height":I
    .restart local v4    # "params":Landroid/os/Bundle;
    .restart local v5    # "width":I
    :cond_3
    :try_start_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 231
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x0

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 232
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 233
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 245
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 246
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v6

    goto :goto_0

    .line 245
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "height":I
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "width":I
    :cond_4
    if-eqz v1, :cond_5

    .line 246
    :try_start_4
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .end local v4    # "params":Landroid/os/Bundle;
    :cond_5
    :goto_1
    move-object v0, v6

    .line 252
    goto :goto_0

    .line 242
    :catch_1
    move-exception v7

    .line 245
    if-eqz v1, :cond_5

    .line 246
    :try_start_5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 248
    :catch_2
    move-exception v7

    goto :goto_1

    .line 244
    :catchall_0
    move-exception v6

    .line 245
    if-eqz v1, :cond_6

    .line 246
    :try_start_6
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 250
    :cond_6
    :goto_2
    throw v6

    .line 248
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v2    # "height":I
    .restart local v4    # "params":Landroid/os/Bundle;
    .restart local v5    # "width":I
    :catch_3
    move-exception v6

    goto :goto_0

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "height":I
    .end local v5    # "width":I
    :catch_4
    move-exception v7

    goto :goto_1

    .end local v4    # "params":Landroid/os/Bundle;
    :catch_5
    move-exception v7

    goto :goto_2
.end method

.method private getDefaultLockWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 266
    sget-object v5, Landroid/app/WallpaperManager$WALLPAPER_TYPE;->LOCK:Landroid/app/WallpaperManager$WALLPAPER_TYPE;

    invoke-static {p1, v5}, Landroid/app/WallpaperManager;->getFlymeDefWallpaper(Landroid/content/Context;Landroid/app/WallpaperManager$WALLPAPER_TYPE;)Ljava/io/InputStream;

    move-result-object v2

    .line 269
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 270
    iget v4, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->SCREEN_W:I

    .line 271
    .local v4, "width":I
    iget v1, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->SCREEN_H:I

    .line 272
    .local v1, "height":I
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 273
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 274
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 275
    invoke-static {v2, v0, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 277
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "height":I
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "width":I
    :cond_0
    :goto_0
    return-object v0

    .line 278
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v1    # "height":I
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v4    # "width":I
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private prepareBlurSourceFileToSD(Landroid/content/Context;)Z
    .locals 22
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 358
    new-instance v12, Lmeizu/wallpaper/NativeGaussBlur;

    invoke-direct {v12}, Lmeizu/wallpaper/NativeGaussBlur;-><init>()V

    .line 360
    .local v12, "nativeGaussBlur":Lmeizu/wallpaper/NativeGaussBlur;
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->getCurrentLockWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 362
    .local v11, "lockWallpaperBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v18 .. v20}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 366
    .local v15, "smallBitmap":Landroid/graphics/Bitmap;
    new-instance v16, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 367
    .local v16, "sourceCanvas":Landroid/graphics/Canvas;
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 368
    .local v17, "srcRect":Landroid/graphics/Rect;
    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Rect;->set(IIII)V

    .line 370
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 371
    .local v7, "dstRect":Landroid/graphics/Rect;
    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 373
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 374
    .local v13, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1, v7, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 376
    const/4 v8, 0x0

    .local v8, "dstW":I
    const/4 v6, 0x0

    .line 377
    .local v6, "dstH":I
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 378
    const/16 v8, 0xc8

    .line 379
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0xc8

    move/from16 v18, v0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    div-int v6, v18, v19

    .line 386
    :goto_0
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v15, v8, v6, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 388
    .local v14, "sBmp":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_3

    .line 389
    const/16 v5, 0x8

    .line 390
    .local v5, "blurLevel":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    const/16 v18, 0xa

    move/from16 v0, v18

    if-ge v10, v0, :cond_2

    .line 391
    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 392
    .local v4, "b":Landroid/graphics/Bitmap;
    add-int/lit8 v18, v10, 0x1

    mul-int v18, v18, v5

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v12, v4, v0}, Lmeizu/wallpaper/NativeGaussBlur;->blur(Landroid/graphics/Bitmap;F)V

    .line 393
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v10}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->writeBlurSourceFileToSD(Landroid/graphics/Bitmap;Landroid/content/Context;I)V

    .line 394
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v18

    if-nez v18, :cond_0

    .line 395
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 390
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 382
    .end local v4    # "b":Landroid/graphics/Bitmap;
    .end local v5    # "blurLevel":I
    .end local v10    # "i":I
    .end local v14    # "sBmp":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0xc8

    move/from16 v18, v0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    div-int v8, v18, v19

    .line 384
    const/16 v6, 0xc8

    goto :goto_0

    .line 399
    .restart local v5    # "blurLevel":I
    .restart local v10    # "i":I
    .restart local v14    # "sBmp":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v18

    if-nez v18, :cond_3

    .line 400
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 401
    const/4 v14, 0x0

    .line 404
    .end local v5    # "blurLevel":I
    .end local v10    # "i":I
    :cond_3
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v18

    if-nez v18, :cond_4

    .line 405
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    const/4 v15, 0x0

    .line 408
    :cond_4
    const/16 v18, 0x1

    .line 411
    .end local v6    # "dstH":I
    .end local v7    # "dstRect":Landroid/graphics/Rect;
    .end local v8    # "dstW":I
    .end local v11    # "lockWallpaperBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "paint":Landroid/graphics/Paint;
    .end local v14    # "sBmp":Landroid/graphics/Bitmap;
    .end local v15    # "smallBitmap":Landroid/graphics/Bitmap;
    .end local v16    # "sourceCanvas":Landroid/graphics/Canvas;
    .end local v17    # "srcRect":Landroid/graphics/Rect;
    :goto_2
    return v18

    .line 409
    :catch_0
    move-exception v9

    .line 410
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 411
    const/16 v18, 0x0

    goto :goto_2
.end method

.method private writeBlurSourceFileToSD(Landroid/graphics/Bitmap;Landroid/content/Context;I)V
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "index"    # I

    .prologue
    .line 417
    if-eqz p1, :cond_4

    .line 418
    const/4 v5, 0x0

    .line 419
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 422
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    sget-object v7, Lmeizu/wallpaper/FlymeWallpaperManager;->SMART_WALLPAPER_DIR_NAME:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 423
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_1

    .line 424
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 427
    :cond_1
    new-instance v4, Ljava/io/File;

    sget-object v7, Lmeizu/wallpaper/FlymeWallpaperManager;->SMART_WALLPAPER_DIR_NAME:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lmeizu/wallpaper/FlymeWallpaperManager;->SMART_WALLPAPER_SOURCE_FILE_PREFIX:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 430
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 434
    :cond_2
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 437
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 440
    .local v0, "bitmapdata":[B
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 441
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 446
    if-eqz v6, :cond_3

    .line 447
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 449
    :cond_3
    if-eqz v2, :cond_4

    .line 450
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 457
    .end local v0    # "bitmapdata":[B
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "dir":Ljava/io/File;
    .end local v4    # "f":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_4
    :goto_0
    return-void

    .line 442
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v7

    .line 446
    :goto_1
    if-eqz v5, :cond_5

    .line 447
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 449
    :cond_5
    if-eqz v1, :cond_4

    .line 450
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 452
    :catch_1
    move-exception v7

    goto :goto_0

    .line 445
    :catchall_0
    move-exception v7

    .line 446
    :goto_2
    if-eqz v5, :cond_6

    .line 447
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 449
    :cond_6
    if-eqz v1, :cond_7

    .line 450
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 454
    :cond_7
    :goto_3
    throw v7

    .line 452
    :catch_2
    move-exception v8

    goto :goto_3

    .line 445
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "dir":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "bitmapdata":[B
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v1, v2

    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 442
    .end local v0    # "bitmapdata":[B
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v7

    move-object v1, v2

    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "bitmapdata":[B
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v7

    move-object v1, v2

    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 452
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v7

    goto :goto_0
.end method


# virtual methods
.method public getSmartWallpaperTarget()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 320
    # getter for: Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;
    invoke-static {}, Lmeizu/wallpaper/FlymeWallpaperManager;->access$100()Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    move-result-object v4

    iget-object v4, v4, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mService:Lmeizu/wallpaper/IFlymeWallpaper;

    if-nez v4, :cond_1

    .line 321
    # getter for: Lmeizu/wallpaper/FlymeWallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lmeizu/wallpaper/FlymeWallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WallpaperService not running"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 353
    :cond_0
    :goto_0
    return-object v0

    .line 324
    :cond_1
    const/4 v1, 0x0

    .line 326
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    # getter for: Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;
    invoke-static {}, Lmeizu/wallpaper/FlymeWallpaperManager;->access$100()Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    move-result-object v4

    iget-object v4, v4, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mService:Lmeizu/wallpaper/IFlymeWallpaper;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lmeizu/wallpaper/IFlymeWallpaper;->setSmartWallpaperTarget(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 328
    if-eqz v1, :cond_2

    .line 329
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 330
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 331
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 332
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 334
    .local v0, "bm":Landroid/graphics/Bitmap;
    iput-object v0, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mSmartWallpapaerTarget:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    if-eqz v1, :cond_0

    .line 347
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v3

    goto :goto_0

    .line 346
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    if-eqz v1, :cond_3

    .line 347
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_1
    move-object v0, v3

    .line 353
    goto :goto_0

    .line 342
    :catch_1
    move-exception v4

    .line 346
    if-eqz v1, :cond_3

    .line 347
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 349
    :catch_2
    move-exception v4

    goto :goto_1

    .line 345
    :catchall_0
    move-exception v3

    .line 346
    if-eqz v1, :cond_4

    .line 347
    :try_start_4
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 351
    :cond_4
    :goto_2
    throw v3

    .line 349
    :catch_3
    move-exception v4

    goto :goto_1

    :catch_4
    move-exception v4

    goto :goto_2
.end method

.method public onLockWallpaperChanged()V
    .locals 2

    .prologue
    .line 179
    # getter for: Lmeizu/wallpaper/FlymeWallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lmeizu/wallpaper/FlymeWallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLockWallpaperChanged , clear cache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    monitor-enter p0

    .line 181
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mLockWallpaper:Landroid/graphics/Bitmap;

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mDefaultLockWallpaper:Landroid/graphics/Bitmap;

    .line 183
    monitor-exit p0

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public peekLockWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z

    .prologue
    .line 188
    monitor-enter p0

    .line 189
    :try_start_0
    iget-object v1, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mLockWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mLockWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 209
    :goto_0
    return-object v1

    .line 192
    :cond_0
    iget-object v1, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mDefaultLockWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 193
    iget-object v1, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mDefaultLockWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 195
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mLockWallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :try_start_2
    invoke-direct {p0, p1}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->getCurrentLockWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mLockWallpaper:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    :goto_1
    :try_start_3
    iget-object v1, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mLockWallpaper:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    .line 203
    :try_start_4
    invoke-direct {p0, p1}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->getDefaultLockWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mDefaultLockWallpaper:Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 207
    :goto_2
    :try_start_5
    iget-object v1, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mDefaultLockWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    # getter for: Lmeizu/wallpaper/FlymeWallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lmeizu/wallpaper/FlymeWallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current lock wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 204
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 205
    .restart local v0    # "e":Ljava/lang/OutOfMemoryError;
    # getter for: Lmeizu/wallpaper/FlymeWallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lmeizu/wallpaper/FlymeWallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current lock wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 209
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    iget-object v1, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mLockWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public setSmartWallpaperTarget(Landroid/graphics/Bitmap;Landroid/content/Context;)Z
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 293
    # getter for: Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;
    invoke-static {}, Lmeizu/wallpaper/FlymeWallpaperManager;->access$100()Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    move-result-object v5

    iget-object v5, v5, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mService:Lmeizu/wallpaper/IFlymeWallpaper;

    if-nez v5, :cond_1

    .line 294
    # getter for: Lmeizu/wallpaper/FlymeWallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lmeizu/wallpaper/FlymeWallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WallpaperService not running"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    :goto_0
    return v4

    .line 298
    :cond_1
    :try_start_0
    # getter for: Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;
    invoke-static {}, Lmeizu/wallpaper/FlymeWallpaperManager;->access$100()Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    move-result-object v5

    iget-object v5, v5, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mService:Lmeizu/wallpaper/IFlymeWallpaper;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lmeizu/wallpaper/IFlymeWallpaper;->setSmartWallpaperTarget(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 300
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    .line 303
    const/4 v5, 0x0

    iput-object v5, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mSmartWallpapaerTarget:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    const/4 v2, 0x0

    .line 306
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5a

    invoke-virtual {p1, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 309
    if-eqz v3, :cond_2

    .line 310
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 313
    :cond_2
    invoke-direct {p0, p2}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->prepareBlurSourceFileToSD(Landroid/content/Context;)Z

    move-result v4

    goto :goto_0

    .line 309
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    :goto_1
    if-eqz v2, :cond_3

    .line 310
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 314
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 309
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
