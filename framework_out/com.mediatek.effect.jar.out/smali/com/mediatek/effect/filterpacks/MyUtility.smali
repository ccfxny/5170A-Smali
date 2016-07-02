.class public Lcom/mediatek/effect/filterpacks/MyUtility;
.super Ljava/lang/Object;
.source "MyUtility.java"


# instance fields
.field public TAG:Ljava/lang/String;

.field public id:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "i"    # [I

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/effect/filterpacks/MyUtility;->id:I

    .line 70
    invoke-virtual {p0, p1}, Lcom/mediatek/effect/filterpacks/MyUtility;->setTag(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p2}, Lcom/mediatek/effect/filterpacks/MyUtility;->setID([I)V

    .line 72
    return-void
.end method

.method public static MatrixAdd([[F[[F)[[F
    .locals 8
    .param p0, "A"    # [[F
    .param p1, "B"    # [[F

    .prologue
    .line 423
    array-length v3, p0

    .line 424
    .local v3, "m":I
    const/4 v5, 0x0

    aget-object v5, p0, v5

    array-length v4, v5

    .line 425
    .local v4, "n":I
    filled-new-array {v3, v4}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    .line 426
    .local v0, "C":[[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 427
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 428
    aget-object v5, v0, v1

    aget-object v6, p0, v1

    aget v6, v6, v2

    aget-object v7, p1, v1

    aget v7, v7, v2

    add-float/2addr v6, v7

    aput v6, v5, v2

    .line 427
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 426
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    .end local v2    # "j":I
    :cond_1
    return-object v0
.end method

.method public static MatrixDot([F[F)F
    .locals 4
    .param p0, "x"    # [F
    .param p1, "y"    # [F

    .prologue
    .line 398
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_0

    .line 399
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Illegal vector dimensions."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 400
    :cond_0
    const/4 v1, 0x0

    .line 401
    .local v1, "sum":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 402
    aget v2, p0, v0

    aget v3, p1, v0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :cond_1
    return v1
.end method

.method public static MatrixIdentity(I)[[F
    .locals 4
    .param p0, "n"    # I

    .prologue
    .line 388
    filled-new-array {p0, p0}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    .line 389
    .local v0, "I":[[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 390
    aget-object v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v1

    .line 389
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 391
    :cond_0
    return-object v0
.end method

.method public static MatrixMultiply([F[[F)[F
    .locals 8
    .param p0, "x"    # [F
    .param p1, "A"    # [[F

    .prologue
    .line 482
    array-length v2, p1

    .line 483
    .local v2, "m":I
    const/4 v5, 0x0

    aget-object v5, p1, v5

    array-length v3, v5

    .line 484
    .local v3, "n":I
    array-length v5, p0

    if-eq v5, v2, :cond_0

    .line 485
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Illegal matrix dimensions."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 486
    :cond_0
    new-array v4, v3, [F

    .line 487
    .local v4, "y":[F
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 488
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 489
    aget v5, v4, v1

    aget-object v6, p1, v0

    aget v6, v6, v1

    aget v7, p0, v0

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v4, v1

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 487
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    .end local v0    # "i":I
    :cond_2
    return-object v4
.end method

.method public static MatrixMultiply([[F[F)[F
    .locals 8
    .param p0, "A"    # [[F
    .param p1, "x"    # [F

    .prologue
    .line 467
    array-length v2, p0

    .line 468
    .local v2, "m":I
    const/4 v5, 0x0

    aget-object v5, p0, v5

    array-length v3, v5

    .line 469
    .local v3, "n":I
    array-length v5, p1

    if-eq v5, v3, :cond_0

    .line 470
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Illegal matrix dimensions."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 471
    :cond_0
    new-array v4, v2, [F

    .line 472
    .local v4, "y":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 473
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 474
    aget v5, v4, v0

    aget-object v6, p0, v0

    aget v6, v6, v1

    aget v7, p1, v1

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v4, v0

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 472
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 475
    .end local v1    # "j":I
    :cond_2
    return-object v4
.end method

.method public static MatrixMultiply([[F[[F)[[F
    .locals 12
    .param p0, "A"    # [[F
    .param p1, "B"    # [[F

    .prologue
    const/4 v9, 0x0

    .line 449
    array-length v4, p0

    .line 450
    .local v4, "mA":I
    aget-object v8, p0, v9

    array-length v6, v8

    .line 451
    .local v6, "nA":I
    array-length v5, p1

    .line 452
    .local v5, "mB":I
    aget-object v8, p0, v9

    array-length v7, v8

    .line 453
    .local v7, "nB":I
    if-eq v6, v5, :cond_0

    .line 454
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Illegal matrix dimensions."

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 455
    :cond_0
    filled-new-array {v4, v7}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    .line 456
    .local v0, "C":[[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 457
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v7, :cond_2

    .line 458
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_2
    if-ge v3, v6, :cond_1

    .line 459
    aget-object v8, v0, v1

    aget v9, v8, v2

    aget-object v10, p0, v1

    aget v10, v10, v3

    aget-object v11, p1, v3

    aget v11, v11, v2

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    aput v9, v8, v2

    .line 458
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 457
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 456
    .end local v3    # "k":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 460
    .end local v2    # "j":I
    :cond_3
    return-object v0
.end method

.method public static MatrixSubtract([[F[[F)[[F
    .locals 8
    .param p0, "A"    # [[F
    .param p1, "B"    # [[F

    .prologue
    .line 436
    array-length v3, p0

    .line 437
    .local v3, "m":I
    const/4 v5, 0x0

    aget-object v5, p0, v5

    array-length v4, v5

    .line 438
    .local v4, "n":I
    filled-new-array {v3, v4}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    .line 439
    .local v0, "C":[[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 440
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 441
    aget-object v5, v0, v1

    aget-object v6, p0, v1

    aget v6, v6, v2

    aget-object v7, p1, v1

    aget v7, v7, v2

    sub-float/2addr v6, v7

    aput v6, v5, v2

    .line 440
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 439
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    .end local v2    # "j":I
    :cond_1
    return-object v0
.end method

.method public static MatrixToOneWay([[F)[F
    .locals 7
    .param p0, "A"    # [[F

    .prologue
    .line 375
    array-length v3, p0

    .line 376
    .local v3, "m":I
    const/4 v5, 0x0

    aget-object v5, p0, v5

    array-length v4, v5

    .line 377
    .local v4, "n":I
    mul-int v5, v4, v3

    new-array v0, v5, [F

    .line 378
    .local v0, "C":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 379
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 380
    mul-int v5, v1, v4

    add-int/2addr v5, v2

    aget-object v6, p0, v1

    aget v6, v6, v2

    aput v6, v0, v5

    .line 379
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 378
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    .end local v2    # "j":I
    :cond_1
    return-object v0
.end method

.method public static MatrixTranspose([[F)[[F
    .locals 7
    .param p0, "A"    # [[F

    .prologue
    .line 410
    array-length v3, p0

    .line 411
    .local v3, "m":I
    const/4 v5, 0x0

    aget-object v5, p0, v5

    array-length v4, v5

    .line 412
    .local v4, "n":I
    filled-new-array {v4, v3}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    .line 413
    .local v0, "C":[[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 414
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 415
    aget-object v5, v0, v2

    aget-object v6, p0, v1

    aget v6, v6, v2

    aput v6, v5, v1

    .line 414
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 413
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    .end local v2    # "j":I
    :cond_1
    return-object v0
.end method

.method public static createBitmapFrame(Landroid/filterfw/core/FilterContext;Landroid/graphics/Bitmap;)Landroid/filterfw/core/GLFrame;
    .locals 5
    .param p0, "context"    # Landroid/filterfw/core/FilterContext;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x3

    .line 348
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3, v4, v4}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 353
    .local v0, "format":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p0}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/GLFrame;

    .line 354
    .local v1, "frame":Landroid/filterfw/core/GLFrame;
    invoke-virtual {v1, p1}, Landroid/filterfw/core/GLFrame;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 356
    return-object v1
.end method

.method public static generateRotateImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "oldBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "rotation"    # I
    .param p2, "recycle"    # Z

    .prologue
    const/4 v1, 0x0

    .line 271
    if-nez p1, :cond_0

    .line 283
    .end local p0    # "oldBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 274
    .restart local p0    # "oldBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 275
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 276
    .local v4, "h":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 277
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 278
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 280
    .local v7, "newBitmap":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_1

    .line 281
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p0, v7

    .line 283
    goto :goto_0
.end method

.method public static generateSmallImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "oldBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # F

    .prologue
    const/4 v1, 0x0

    .line 249
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 250
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 251
    .local v4, "height":I
    move-object v7, p0

    .line 253
    .local v7, "newBitmap":Landroid/graphics/Bitmap;
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 254
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 255
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 256
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 261
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :goto_0
    return-object v7

    .line 258
    :cond_0
    move-object v7, p0

    goto :goto_0
.end method

.method public static getBitmapFromResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "r"    # I

    .prologue
    .line 342
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 343
    .local v0, "bfoOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 344
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getBitmapFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "con"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 333
    :try_start_0
    invoke-static {p0, p1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 337
    :goto_0
    return-object v0

    .line 335
    :catch_0
    move-exception v1

    .line 336
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 337
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCutBitmap(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "in"    # Landroid/graphics/Bitmap;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "outw"    # I
    .param p4, "outh"    # I
    .param p5, "recycle"    # Z

    .prologue
    const/4 v5, 0x0

    .line 323
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 324
    .local v1, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 325
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-direct {v2, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v5, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 326
    if-eqz p5, :cond_0

    .line 327
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 328
    :cond_0
    return-object v1
.end method

.method public static getCutBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 20
    .param p0, "in"    # Landroid/graphics/Bitmap;
    .param p1, "outw"    # I
    .param p2, "outh"    # I
    .param p3, "recycle"    # Z

    .prologue
    .line 287
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v0, v2

    move/from16 v17, v0

    .line 288
    .local v17, "localInputWidth":F
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v0, v2

    move/from16 v16, v0

    .line 290
    .local v16, "localInputHeight":F
    move/from16 v0, p1

    int-to-float v2, v0

    move/from16 v0, p2

    int-to-float v3, v0

    div-float v18, v2, v3

    .line 291
    .local v18, "outputAspectRatio":F
    div-float v15, v17, v16

    .line 293
    .local v15, "inputAspectRatio":F
    const/4 v9, 0x0

    .line 294
    .local v9, "xOffset":I
    const/4 v10, 0x0

    .line 296
    .local v10, "yOffset":I
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 300
    .local v7, "matrix":Landroid/graphics/Matrix;
    cmpg-float v2, v18, v15

    if-gtz v2, :cond_1

    .line 301
    mul-float v2, v16, v18

    sub-float v2, v17, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v9, v2

    .line 302
    move/from16 v0, p2

    int-to-float v2, v0

    div-float v19, v2, v16

    .line 303
    .local v19, "scale":F
    int-to-float v2, v9

    mul-float v2, v2, v19

    float-to-int v9, v2

    .line 310
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 311
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 313
    .local v8, "scaleBitmap":Landroid/graphics/Bitmap;
    const-string v2, "MyUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scaleBitmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v13, 0x1

    move/from16 v11, p1

    move/from16 v12, p2

    invoke-static/range {v8 .. v13}, Lcom/mediatek/effect/filterpacks/MyUtility;->getCutBitmap(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 317
    .local v14, "cutbitmap":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_0

    .line 318
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 319
    :cond_0
    return-object v14

    .line 305
    .end local v8    # "scaleBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "cutbitmap":Landroid/graphics/Bitmap;
    .end local v19    # "scale":F
    :cond_1
    div-float v2, v17, v18

    sub-float v2, v16, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v10, v2

    .line 306
    move/from16 v0, p1

    int-to-float v2, v0

    div-float v19, v2, v17

    .line 307
    .restart local v19    # "scale":F
    int-to-float v2, v10

    mul-float v2, v2, v19

    float-to-int v10, v2

    goto :goto_0
.end method

.method public static loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 166
    const/4 v2, 0x0

    .line 167
    .local v2, "bm":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 168
    .local v5, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 170
    .local v0, "bis":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 171
    .local v3, "conn":Ljava/net/URLConnection;
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 172
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 173
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v6, 0x2000

    invoke-direct {v1, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 178
    if-eqz v1, :cond_0

    .line 180
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 185
    :cond_0
    :goto_0
    if-eqz v5, :cond_5

    .line 187
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v0, v1

    .line 193
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "conn":Ljava/net/URLConnection;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    :cond_1
    :goto_1
    return-object v2

    .line 181
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "conn":Ljava/net/URLConnection;
    :catch_0
    move-exception v4

    .line 182
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 188
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 189
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 190
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_1

    .line 175
    .end local v3    # "conn":Ljava/net/URLConnection;
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 176
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 178
    if-eqz v0, :cond_2

    .line 180
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 185
    :cond_2
    :goto_3
    if-eqz v5, :cond_1

    .line 187
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 188
    :catch_3
    move-exception v4

    .line 189
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 181
    :catch_4
    move-exception v4

    .line 182
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 178
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v0, :cond_3

    .line 180
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 185
    :cond_3
    :goto_5
    if-eqz v5, :cond_4

    .line 187
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 190
    :cond_4
    :goto_6
    throw v6

    .line 181
    :catch_5
    move-exception v4

    .line 182
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 188
    .end local v4    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 189
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 178
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "conn":Ljava/net/URLConnection;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 175
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catch_7
    move-exception v4

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_2

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :cond_5
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method public static saveBitmapS(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 5
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 222
    if-eqz p0, :cond_0

    .line 225
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 226
    .local v1, "stream":Ljava/io/OutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 228
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 229
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 234
    :goto_0
    :try_start_2
    const-string v2, "MyUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bitmap Saved: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .end local v1    # "stream":Ljava/io/OutputStream;
    :cond_0
    :goto_1
    return-void

    .line 230
    .restart local v1    # "stream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "MyUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not close image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 235
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "stream":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .line 236
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "MyUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not save image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getID()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/mediatek/effect/filterpacks/MyUtility;->id:I

    return v0
.end method

.method public log(CLjava/lang/String;)V
    .locals 3
    .param p1, "level"    # C
    .param p2, "logline"    # Ljava/lang/String;

    .prologue
    .line 96
    sparse-switch p1, :sswitch_data_0

    .line 115
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/MyUtility;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/effect/filterpacks/MyUtility;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    return-void

    .line 98
    :sswitch_0
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/MyUtility;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/effect/filterpacks/MyUtility;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :sswitch_1
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/MyUtility;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/effect/filterpacks/MyUtility;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :sswitch_2
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/MyUtility;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/effect/filterpacks/MyUtility;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :sswitch_3
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/MyUtility;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/effect/filterpacks/MyUtility;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 96
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_3
        0x69 -> :sswitch_1
        0x77 -> :sswitch_2
    .end sparse-switch
.end method

.method public logLog(CLjava/lang/String;)V
    .locals 0
    .param p1, "level"    # C
    .param p2, "logline"    # Ljava/lang/String;

    .prologue
    .line 163
    return-void
.end method

.method public saveBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bitmap_out.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/effect/filterpacks/MyUtility;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 5
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 201
    if-eqz p1, :cond_0

    .line 204
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 205
    .local v1, "stream":Ljava/io/OutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 207
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 208
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 213
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/MyUtility;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bitmap Saved: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .end local v1    # "stream":Ljava/io/OutputStream;
    :cond_0
    :goto_1
    return-void

    .line 209
    .restart local v1    # "stream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/MyUtility;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not close image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 214
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "stream":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .line 215
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/MyUtility;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not save image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public saveToStorageInit()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public setID([I)V
    .locals 1
    .param p1, "i"    # [I

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 80
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/mediatek/effect/filterpacks/MyUtility;->id:I

    .line 82
    :cond_0
    return-void
.end method

.method public setIDandIncrease([I)V
    .locals 2
    .param p1, "i"    # [I

    .prologue
    const/4 v1, 0x0

    .line 89
    if-eqz p1, :cond_0

    .line 90
    aget v0, p1, v1

    iput v0, p0, Lcom/mediatek/effect/filterpacks/MyUtility;->id:I

    .line 91
    aget v0, p1, v1

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, v1

    .line 93
    :cond_0
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/mediatek/effect/filterpacks/MyUtility;->TAG:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public showCallStack()V
    .locals 9

    .prologue
    .line 360
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 361
    .local v4, "stackTraceElements":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_0

    .line 362
    aget-object v5, v4, v1

    .line 363
    .local v5, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "classname":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, "methodName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    .line 366
    .local v2, "lineNumber":I
    const/16 v6, 0x64

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 368
    .end local v0    # "classname":Ljava/lang/String;
    .end local v2    # "lineNumber":I
    .end local v3    # "methodName":Ljava/lang/String;
    .end local v5    # "ste":Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method
