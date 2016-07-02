.class public Landroid/media/ThumbnailUtils;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ThumbnailUtils$1;,
        Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    }
.end annotation


# static fields
.field private static final IS_DENSITY_XXXHIGH:Z

.field private static final MAX_NUM_PIXELS_MICRO_THUMBNAIL:I = 0x4b00

.field private static final MAX_NUM_PIXELS_THUMBNAIL:I

.field private static final OPTIONS_NONE:I = 0x0

.field public static final OPTIONS_RECYCLE_INPUT:I = 0x2

.field private static final OPTIONS_SCALE_UP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ThumbnailUtils"

.field public static final TARGET_SIZE_MICRO_THUMBNAIL:I = 0x60

.field public static final TARGET_SIZE_MINI_THUMBNAIL:I

.field private static final UNCONSTRAINED:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/16 v1, 0x280

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/media/ThumbnailUtils;->IS_DENSITY_XXXHIGH:Z

    .line 69
    sget-boolean v0, Landroid/media/ThumbnailUtils;->IS_DENSITY_XXXHIGH:Z

    if-eqz v0, :cond_1

    const v0, 0x6c000

    :goto_1
    sput v0, Landroid/media/ThumbnailUtils;->MAX_NUM_PIXELS_THUMBNAIL:I

    .line 88
    sget-boolean v0, Landroid/media/ThumbnailUtils;->IS_DENSITY_XXXHIGH:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x1e0

    :goto_2
    sput v0, Landroid/media/ThumbnailUtils;->TARGET_SIZE_MINI_THUMBNAIL:I

    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    :cond_1
    const/high16 v0, 0x30000

    goto :goto_1

    .line 88
    :cond_2
    const/16 v0, 0x140

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    return-void
.end method

.method private static adustSampleSize(ILandroid/graphics/BitmapFactory$Options;)I
    .locals 4
    .param p0, "inSampleSize"    # I
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v1, 0x1

    .line 855
    if-lt p0, v1, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move p0, v1

    .line 862
    .end local p0    # "inSampleSize":I
    :cond_1
    return p0

    .line 856
    .restart local p0    # "inSampleSize":I
    :cond_2
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ge v2, v3, :cond_3

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 858
    .local v0, "imageShortterDimension":I
    :goto_0
    if-le p0, v1, :cond_1

    div-int v2, v0, p0

    const/16 v3, 0x60

    if-ge v2, v3, :cond_1

    .line 860
    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 856
    .end local v0    # "imageShortterDimension":I
    :cond_3
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_0
.end method

.method private static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p0, "c"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 449
    if-nez p0, :cond_0

    .line 455
    :goto_0
    return-void

    .line 451
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 13
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v12, -0x1

    .line 383
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 384
    .local v4, "w":D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 386
    .local v0, "h":D
    if-ne p2, v12, :cond_1

    move v2, v6

    .line 388
    .local v2, "lowerBound":I
    :goto_0
    if-ne p1, v12, :cond_2

    const/16 v3, 0x80

    .line 392
    .local v3, "upperBound":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 403
    .end local v2    # "lowerBound":I
    :cond_0
    :goto_2
    return v2

    .line 386
    .end local v3    # "upperBound":I
    :cond_1
    mul-double v8, v4, v0

    int-to-double v10, p2

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    goto :goto_0

    .line 388
    .restart local v2    # "lowerBound":I
    :cond_2
    int-to-double v8, p1

    div-double v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    int-to-double v10, p1

    div-double v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    double-to-int v3, v8

    goto :goto_1

    .line 397
    .restart local v3    # "upperBound":I
    :cond_3
    if-ne p2, v12, :cond_4

    if-ne p1, v12, :cond_4

    move v2, v6

    .line 399
    goto :goto_2

    .line 400
    :cond_4
    if-eq p1, v12, :cond_0

    move v2, v3

    .line 403
    goto :goto_2
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    .line 365
    invoke-static {p0, p1, p2}, Landroid/media/ThumbnailUtils;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 369
    .local v0, "initialSize":I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 370
    const/4 v1, 0x1

    .line 371
    .local v1, "roundedSize":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 372
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    .end local v1    # "roundedSize":I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 378
    .restart local v1    # "roundedSize":I
    :cond_1
    return v1
.end method

.method public static createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 20
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "kind"    # I

    .prologue
    .line 111
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    const/16 v16, 0x1

    .line 112
    .local v16, "wantMini":Z
    :goto_0
    if-eqz v16, :cond_6

    sget v15, Landroid/media/ThumbnailUtils;->TARGET_SIZE_MINI_THUMBNAIL:I

    .line 115
    .local v15, "targetSize":I
    :goto_1
    if-eqz v16, :cond_7

    sget v9, Landroid/media/ThumbnailUtils;->MAX_NUM_PIXELS_THUMBNAIL:I

    .line 118
    .local v9, "maxPixels":I
    :goto_2
    new-instance v12, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;-><init>(Landroid/media/ThumbnailUtils$1;)V

    .line 119
    .local v12, "sizedThumbnailBitmap":Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    const/4 v3, 0x0

    .line 120
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-static/range {p0 .. p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v7

    .line 121
    .local v7, "fileType":Landroid/media/MediaFile$MediaFileType;
    if-eqz v7, :cond_0

    iget v0, v7, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v17, v0

    const/16 v18, 0x191

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 122
    move-object/from16 v0, p0

    invoke-static {v0, v15, v9, v12}, Landroid/media/ThumbnailUtils;->createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V

    .line 123
    iget-object v3, v12, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 126
    :cond_0
    if-nez v3, :cond_9

    .line 127
    const/4 v13, 0x0

    .line 129
    .local v13, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .local v14, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v14}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    .line 131
    .local v6, "fd":Ljava/io/FileDescriptor;
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 132
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 133
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 136
    const/4 v8, 0x0

    .line 137
    .local v8, "isDcfImage":Z
    const-string v17, ".dcf"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 138
    const/4 v8, 0x1

    .line 141
    :cond_1
    if-eqz v8, :cond_2

    sget-boolean v17, Landroid/media/MediaScanner;->IS_SUPPORT_DRM:Z

    if-nez v17, :cond_8

    .line 142
    :cond_2
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-static {v6, v0, v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 149
    :goto_3
    iget-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v17, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 151
    :cond_3
    const/16 v17, 0x0

    .line 179
    if-eqz v14, :cond_4

    .line 180
    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 194
    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .end local v8    # "isDcfImage":Z
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v14    # "stream":Ljava/io/FileInputStream;
    :cond_4
    :goto_4
    return-object v17

    .line 111
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "fileType":Landroid/media/MediaFile$MediaFileType;
    .end local v9    # "maxPixels":I
    .end local v12    # "sizedThumbnailBitmap":Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    .end local v15    # "targetSize":I
    .end local v16    # "wantMini":Z
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 112
    .restart local v16    # "wantMini":Z
    :cond_6
    const/16 v15, 0x60

    goto/16 :goto_1

    .line 115
    .restart local v15    # "targetSize":I
    :cond_7
    const/16 v9, 0x4b00

    goto/16 :goto_2

    .line 145
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "fd":Ljava/io/FileDescriptor;
    .restart local v7    # "fileType":Landroid/media/MediaFile$MediaFileType;
    .restart local v8    # "isDcfImage":Z
    .restart local v9    # "maxPixels":I
    .restart local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v12    # "sizedThumbnailBitmap":Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :cond_8
    :try_start_3
    new-instance v4, Lcom/mediatek/dcfdecoder/DcfDecoder;

    invoke-direct {v4}, Lcom/mediatek/dcfdecoder/DcfDecoder;-><init>()V

    .line 146
    .local v4, "decoder":Lcom/mediatek/dcfdecoder/DcfDecoder;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v4, v0, v11, v1}, Lcom/mediatek/dcfdecoder/DcfDecoder;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 173
    .end local v4    # "decoder":Lcom/mediatek/dcfdecoder/DcfDecoder;
    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .end local v8    # "isDcfImage":Z
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v5

    move-object v13, v14

    .line 174
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .local v5, "ex":Ljava/io/IOException;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    :goto_5
    :try_start_4
    const-string v17, "ThumbnailUtils"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 179
    if-eqz v13, :cond_9

    .line 180
    :try_start_5
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 188
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v13    # "stream":Ljava/io/FileInputStream;
    :cond_9
    :goto_6
    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 190
    const/16 v17, 0x60

    const/16 v18, 0x60

    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v3, v0, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_a
    move-object/from16 v17, v3

    .line 194
    goto :goto_4

    .line 182
    .restart local v6    # "fd":Ljava/io/FileDescriptor;
    .restart local v8    # "isDcfImage":Z
    .restart local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v5

    .line 183
    .restart local v5    # "ex":Ljava/io/IOException;
    const-string v18, "ThumbnailUtils"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 156
    .end local v5    # "ex":Ljava/io/IOException;
    :cond_b
    :try_start_6
    invoke-static {v11, v15, v9}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v17

    move/from16 v0, v17

    invoke-static {v0, v11}, Landroid/media/ThumbnailUtils;->adustSampleSize(ILandroid/graphics/BitmapFactory$Options;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 160
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 162
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 163
    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v17

    iput-object v0, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 167
    if-eqz v8, :cond_c

    sget-boolean v17, Landroid/media/MediaScanner;->IS_SUPPORT_DRM:Z

    if-nez v17, :cond_d

    .line 168
    :cond_c
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-static {v6, v0, v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v3

    .line 179
    :goto_7
    if-eqz v14, :cond_9

    .line 180
    :try_start_7
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_6

    .line 182
    :catch_2
    move-exception v5

    .line 183
    .restart local v5    # "ex":Ljava/io/IOException;
    const-string v17, "ThumbnailUtils"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 170
    .end local v5    # "ex":Ljava/io/IOException;
    :cond_d
    :try_start_8
    new-instance v4, Lcom/mediatek/dcfdecoder/DcfDecoder;

    invoke-direct {v4}, Lcom/mediatek/dcfdecoder/DcfDecoder;-><init>()V

    .line 171
    .restart local v4    # "decoder":Lcom/mediatek/dcfdecoder/DcfDecoder;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v4, v0, v11, v1}, Lcom/mediatek/dcfdecoder/DcfDecoder;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v3

    goto :goto_7

    .line 182
    .end local v4    # "decoder":Lcom/mediatek/dcfdecoder/DcfDecoder;
    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .end local v8    # "isDcfImage":Z
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "ex":Ljava/io/IOException;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v5

    .line 183
    const-string v17, "ThumbnailUtils"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 175
    .end local v5    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v10

    .line 176
    .local v10, "oom":Ljava/lang/OutOfMemoryError;
    :goto_8
    :try_start_9
    const-string v17, "ThumbnailUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to decode file "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ". OutOfMemoryError."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 179
    if-eqz v13, :cond_9

    .line 180
    :try_start_a
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_6

    .line 182
    :catch_5
    move-exception v5

    .line 183
    .restart local v5    # "ex":Ljava/io/IOException;
    const-string v17, "ThumbnailUtils"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 178
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v10    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v17

    .line 179
    :goto_9
    if-eqz v13, :cond_e

    .line 180
    :try_start_b
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 184
    :cond_e
    :goto_a
    throw v17

    .line 182
    :catch_6
    move-exception v5

    .line 183
    .restart local v5    # "ex":Ljava/io/IOException;
    const-string v18, "ThumbnailUtils"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 178
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v17

    move-object v13, v14

    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    goto :goto_9

    .line 175
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v10

    move-object v13, v14

    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    goto :goto_8

    .line 173
    :catch_8
    move-exception v5

    goto/16 :goto_5
.end method

.method private static createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V
    .locals 12
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "targetSize"    # I
    .param p2, "maxPixels"    # I
    .param p3, "sizedThumbBitmap"    # Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;

    .prologue
    .line 587
    if-nez p0, :cond_1

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    const/4 v1, 0x0

    .line 590
    .local v1, "exif":Landroid/media/ExifInterface;
    const/4 v8, 0x0

    .line 592
    .local v8, "thumbData":[B
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .local v2, "exif":Landroid/media/ExifInterface;
    :try_start_1
    invoke-virtual {v2}, Landroid/media/ExifInterface;->getThumbnail()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    move-object v1, v2

    .line 598
    .end local v2    # "exif":Landroid/media/ExifInterface;
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    :goto_1
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 599
    .local v5, "fullOptions":Landroid/graphics/BitmapFactory$Options;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 600
    .local v3, "exifOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x0

    .line 601
    .local v4, "exifThumbWidth":I
    const/4 v6, 0x0

    .line 604
    .local v6, "fullThumbWidth":I
    if-eqz v8, :cond_2

    .line 605
    const/4 v10, 0x1

    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 606
    const/4 v10, 0x0

    array-length v11, v8

    invoke-static {v8, v10, v11, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 609
    invoke-static {v3, p1, p2}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v10

    invoke-static {v10, v3}, Landroid/media/ThumbnailUtils;->adustSampleSize(ILandroid/graphics/BitmapFactory$Options;)I

    move-result v10

    iput v10, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 613
    iget v10, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v11, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v4, v10, v11

    .line 617
    :cond_2
    const/4 v10, 0x1

    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 618
    invoke-static {p0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 622
    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_4

    .line 623
    :cond_3
    const/4 v10, 0x0

    iput-object v10, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 594
    .end local v3    # "exifOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "exifThumbWidth":I
    .end local v5    # "fullOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "fullThumbWidth":I
    :catch_0
    move-exception v0

    .line 595
    .local v0, "ex":Ljava/io/IOException;
    :goto_2
    const-string v10, "ThumbnailUtils"

    const-string v11, ""

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 629
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v3    # "exifOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v4    # "exifThumbWidth":I
    .restart local v5    # "fullOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "fullThumbWidth":I
    :cond_4
    invoke-static {v5, p1, p2}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v10

    invoke-static {v10, v5}, Landroid/media/ThumbnailUtils;->adustSampleSize(ILandroid/graphics/BitmapFactory$Options;)I

    move-result v10

    iput v10, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 633
    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v11, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v6, v10, v11

    .line 636
    if-eqz v8, :cond_5

    if-lt v4, v6, :cond_5

    .line 637
    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 638
    .local v9, "width":I
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 639
    .local v7, "height":I
    const/4 v10, 0x0

    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 640
    const/4 v10, 0x0

    array-length v11, v8

    invoke-static {v8, v10, v11, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 642
    iget-object v10, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_0

    .line 643
    iput-object v8, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailData:[B

    .line 644
    iput v9, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailWidth:I

    .line 645
    iput v7, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailHeight:I

    goto :goto_0

    .line 648
    .end local v7    # "height":I
    .end local v9    # "width":I
    :cond_5
    const/4 v10, 0x0

    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 649
    invoke-static {p0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 594
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .end local v3    # "exifOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "exifThumbWidth":I
    .end local v5    # "fullOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "fullThumbWidth":I
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "exif":Landroid/media/ExifInterface;
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    goto :goto_2
.end method

.method public static createVideoThumbnail(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "kind"    # I

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-static {v0, p1, p0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;ILjava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "kind"    # I

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;ILjava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createVideoThumbnail(Ljava/lang/String;ILjava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "kind"    # I
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 251
    .local v4, "retriever":Landroid/media/MediaMetadataRetriever;
    if-eqz p0, :cond_0

    .line 252
    :try_start_0
    invoke-virtual {v4, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 259
    :goto_0
    const-wide/16 v8, -0x1

    invoke-virtual {v4, v8, v9}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 266
    :try_start_1
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5

    .line 272
    :goto_1
    if-nez v0, :cond_2

    const/4 v8, 0x0

    .line 291
    :goto_2
    return-object v8

    .line 253
    :cond_0
    if-eqz p2, :cond_1

    .line 254
    :try_start_2
    invoke-virtual {v4, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v8

    .line 266
    :try_start_3
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 267
    :catch_1
    move-exception v8

    goto :goto_1

    .line 256
    :cond_1
    const/4 v8, 0x0

    .line 266
    :try_start_4
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 267
    :catch_2
    move-exception v9

    goto :goto_2

    .line 262
    :catch_3
    move-exception v8

    .line 266
    :try_start_5
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 267
    :catch_4
    move-exception v8

    goto :goto_1

    .line 265
    :catchall_0
    move-exception v8

    .line 266
    :try_start_6
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6

    .line 269
    :goto_3
    throw v8

    .line 274
    :cond_2
    const/4 v8, 0x1

    if-ne p1, v8, :cond_4

    .line 276
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 277
    .local v7, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 278
    .local v2, "height":I
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 279
    .local v3, "max":I
    const/16 v8, 0x200

    if-le v3, v8, :cond_3

    .line 280
    const/high16 v8, 0x44000000    # 512.0f

    int-to-float v9, v3

    div-float v5, v8, v9

    .line 281
    .local v5, "scale":F
    int-to-float v8, v7

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 282
    .local v6, "w":I
    int-to-float v8, v2

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 283
    .local v1, "h":I
    const/4 v8, 0x1

    invoke-static {v0, v6, v1, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v1    # "h":I
    .end local v2    # "height":I
    .end local v3    # "max":I
    .end local v5    # "scale":F
    .end local v6    # "w":I
    .end local v7    # "width":I
    :cond_3
    :goto_4
    move-object v8, v0

    .line 291
    goto :goto_2

    .line 285
    :cond_4
    const/4 v8, 0x3

    if-ne p1, v8, :cond_3

    .line 286
    const/16 v8, 0x60

    const/16 v9, 0x60

    const/4 v10, 0x2

    invoke-static {v0, v8, v9, v10}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4

    .line 267
    :catch_5
    move-exception v8

    goto :goto_1

    :catch_6
    move-exception v9

    goto :goto_3
.end method

.method public static extractBufferThumbnail([BIIIII)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "source"    # [B
    .param p1, "srcWidth"    # I
    .param p2, "srcHeight"    # I
    .param p3, "dstWidth"    # I
    .param p4, "dstHeight"    # I
    .param p5, "options"    # I

    .prologue
    .line 668
    if-nez p0, :cond_0

    .line 669
    const/4 v10, 0x0

    .line 694
    :goto_0
    return-object v10

    .line 673
    :cond_0
    if-ge p1, p2, :cond_1

    .line 674
    int-to-float v1, p3

    int-to-float v2, p1

    div-float v8, v1, v2

    .line 678
    .local v8, "scale":F
    :goto_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 679
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 681
    const/4 v10, 0x0

    .line 683
    .local v10, "thumbnail":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-direct {v9, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 684
    .local v9, "srcR":Landroid/graphics/RectF;
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 685
    .local v7, "deviceR":Landroid/graphics/RectF;
    invoke-virtual {v0, v7, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 686
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x49800000    # 1048576.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    .line 687
    invoke-static/range {v0 .. v6}, Landroid/media/ThumbnailUtils;->transformBuffer(Landroid/graphics/Matrix;[BIIIII)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_0

    .line 676
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "deviceR":Landroid/graphics/RectF;
    .end local v8    # "scale":F
    .end local v9    # "srcR":Landroid/graphics/RectF;
    .end local v10    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_1
    int-to-float v1, p4

    int-to-float v2, p2

    div-float v8, v1, v2

    .restart local v8    # "scale":F
    goto :goto_1

    .line 690
    .restart local v0    # "matrix":Landroid/graphics/Matrix;
    .restart local v7    # "deviceR":Landroid/graphics/RectF;
    .restart local v9    # "srcR":Landroid/graphics/RectF;
    .restart local v10    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_2
    or-int/lit8 v6, p5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/media/ThumbnailUtils;->transformBuffer(Landroid/graphics/Matrix;[BIIIII)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_0
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "options"    # I

    .prologue
    const/4 v7, 0x0

    .line 316
    if-nez p0, :cond_0

    .line 317
    const/4 v4, 0x0

    .line 341
    :goto_0
    return-object v4

    .line 321
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 322
    int-to-float v5, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 326
    .local v2, "scale":F
    :goto_1
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 327
    .local v1, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 330
    const/4 v4, 0x0

    .line 331
    .local v4, "thumbnail":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v3, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 332
    .local v3, "srcR":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 333
    .local v0, "deviceR":Landroid/graphics/RectF;
    invoke-virtual {v1, v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 334
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float/2addr v5, v6

    const/high16 v6, 0x49800000    # 1048576.0f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    .line 335
    invoke-static {v1, p0, p1, p2, p3}, Landroid/media/ThumbnailUtils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    .line 324
    .end local v0    # "deviceR":Landroid/graphics/RectF;
    .end local v1    # "matrix":Landroid/graphics/Matrix;
    .end local v2    # "scale":F
    .end local v3    # "srcR":Landroid/graphics/RectF;
    .end local v4    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_1
    int-to-float v5, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .restart local v2    # "scale":F
    goto :goto_1

    .line 337
    .restart local v0    # "deviceR":Landroid/graphics/RectF;
    .restart local v1    # "matrix":Landroid/graphics/Matrix;
    .restart local v3    # "srcR":Landroid/graphics/RectF;
    .restart local v4    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_2
    or-int/lit8 v5, p3, 0x1

    invoke-static {v1, p0, p1, p2, v5}, Landroid/media/ThumbnailUtils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0
.end method

.method public static getOrientFromInputStream(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1002
    const/4 v2, 0x0

    .line 1003
    .local v2, "ret":I
    const/4 v1, 0x0

    .line 1005
    .local v1, "ipStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1010
    if-nez v1, :cond_0

    .line 1011
    const-string v4, "ThumbnailUtils"

    const-string v5, "getOrientFromInputStream ipStream  null "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1020
    .end local v2    # "ret":I
    .local v3, "ret":I
    :goto_0
    return v3

    .line 1006
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    :catch_0
    move-exception v0

    .line 1007
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v4, "ThumbnailUtils"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 1008
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto :goto_0

    .line 1014
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    :cond_0
    invoke-static {v1}, Landroid/media/ThumbnailUtils;->getOrientFromInputStream(Ljava/io/InputStream;)I

    move-result v2

    .line 1016
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move v3, v2

    .line 1020
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto :goto_0

    .line 1017
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    :catch_1
    move-exception v0

    .line 1018
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "ThumbnailUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOrientFromInputStream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getOrientFromInputStream(Ljava/io/InputStream;)I
    .locals 15
    .param p0, "ipStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v14, 0x6

    const/4 v13, 0x4

    const/4 v12, 0x2

    .line 870
    const/4 v7, 0x0

    .line 871
    .local v7, "orient":I
    if-nez p0, :cond_0

    move v8, v7

    .line 994
    .end local v7    # "orient":I
    .local v8, "orient":I
    :goto_0
    return v8

    .line 874
    .end local v8    # "orient":I
    .restart local v7    # "orient":I
    :cond_0
    new-array v2, v14, [B

    .line 878
    .local v2, "headerData":[B
    const/4 v10, 0x0

    const/4 v11, 0x4

    :try_start_0
    invoke-virtual {p0, v2, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    if-eq v10, v13, :cond_1

    move v8, v7

    .line 879
    .end local v7    # "orient":I
    .restart local v8    # "orient":I
    goto :goto_0

    .line 881
    .end local v8    # "orient":I
    .restart local v7    # "orient":I
    :cond_1
    const/4 v10, 0x0

    aget-byte v10, v2, v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    const/16 v11, -0x28

    if-ne v10, v11, :cond_2

    const/4 v10, 0x2

    aget-byte v10, v2, v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    const/4 v10, 0x3

    aget-byte v10, v2, v10

    const/16 v11, -0x1f

    if-eq v10, v11, :cond_3

    :cond_2
    move v8, v7

    .line 882
    .end local v7    # "orient":I
    .restart local v8    # "orient":I
    goto :goto_0

    .line 885
    .end local v8    # "orient":I
    .restart local v7    # "orient":I
    :cond_3
    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {p0, v2, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    if-eq v12, v10, :cond_4

    move v8, v7

    .line 886
    .end local v7    # "orient":I
    .restart local v8    # "orient":I
    goto :goto_0

    .line 887
    .end local v8    # "orient":I
    .restart local v7    # "orient":I
    :cond_4
    const/4 v10, 0x0

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    const/4 v11, 0x1

    aget-byte v11, v2, v11

    and-int/lit16 v11, v11, 0xff

    add-int v4, v10, v11

    .line 891
    .local v4, "length":I
    const/16 v10, 0x8

    if-ge v4, v10, :cond_5

    move v8, v7

    .line 892
    .end local v7    # "orient":I
    .restart local v8    # "orient":I
    goto :goto_0

    .line 893
    .end local v8    # "orient":I
    .restart local v7    # "orient":I
    :cond_5
    add-int/lit8 v4, v4, -0x8

    .line 895
    const/4 v10, 0x0

    const/4 v11, 0x6

    invoke-virtual {p0, v2, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    if-eq v14, v10, :cond_6

    move v8, v7

    .line 896
    .end local v7    # "orient":I
    .restart local v8    # "orient":I
    goto :goto_0

    .line 899
    .end local v8    # "orient":I
    .restart local v7    # "orient":I
    :cond_6
    const/4 v10, 0x0

    aget-byte v10, v2, v10

    const/16 v11, 0x45

    if-ne v10, v11, :cond_7

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    const/16 v11, 0x78

    if-ne v10, v11, :cond_7

    const/4 v10, 0x2

    aget-byte v10, v2, v10

    const/16 v11, 0x69

    if-ne v10, v11, :cond_7

    const/4 v10, 0x3

    aget-byte v10, v2, v10

    const/16 v11, 0x66

    if-ne v10, v11, :cond_7

    const/4 v10, 0x4

    aget-byte v10, v2, v10

    if-nez v10, :cond_7

    const/4 v10, 0x5

    aget-byte v10, v2, v10

    if-eqz v10, :cond_8

    :cond_7
    move v8, v7

    .line 900
    .end local v7    # "orient":I
    .restart local v8    # "orient":I
    goto :goto_0

    .line 902
    .end local v8    # "orient":I
    .restart local v7    # "orient":I
    :cond_8
    new-array v1, v4, [B

    .line 905
    .local v1, "exifData":[B
    const/16 v10, 0xc

    if-lt v4, v10, :cond_9

    const/4 v10, 0x0

    invoke-virtual {p0, v1, v10, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    if-eq v4, v10, :cond_a

    :cond_9
    move v8, v7

    .line 906
    .end local v7    # "orient":I
    .restart local v8    # "orient":I
    goto/16 :goto_0

    .line 911
    .end local v8    # "orient":I
    .restart local v7    # "orient":I
    :cond_a
    const/4 v10, 0x0

    aget-byte v10, v1, v10

    const/16 v11, 0x49

    if-ne v10, v11, :cond_c

    const/4 v10, 0x1

    aget-byte v10, v1, v10

    const/16 v11, 0x49

    if-ne v10, v11, :cond_c

    .line 912
    const/4 v3, 0x0

    .line 920
    .local v3, "is_motorola":Z
    :goto_1
    if-eqz v3, :cond_e

    .line 921
    const/4 v10, 0x2

    aget-byte v10, v1, v10

    if-nez v10, :cond_b

    const/4 v10, 0x3

    aget-byte v10, v1, v10

    const/16 v11, 0x2a

    if-eq v10, v11, :cond_10

    :cond_b
    move v8, v7

    .line 922
    .end local v7    # "orient":I
    .restart local v8    # "orient":I
    goto/16 :goto_0

    .line 913
    .end local v3    # "is_motorola":Z
    .end local v8    # "orient":I
    .restart local v7    # "orient":I
    :cond_c
    const/4 v10, 0x0

    aget-byte v10, v1, v10

    const/16 v11, 0x4d

    if-ne v10, v11, :cond_d

    const/4 v10, 0x1

    aget-byte v10, v1, v10

    const/16 v11, 0x4d

    if-ne v10, v11, :cond_d

    .line 914
    const/4 v3, 0x1

    .restart local v3    # "is_motorola":Z
    goto :goto_1

    .end local v3    # "is_motorola":Z
    :cond_d
    move v8, v7

    .line 916
    .end local v7    # "orient":I
    .restart local v8    # "orient":I
    goto/16 :goto_0

    .line 924
    .end local v8    # "orient":I
    .restart local v3    # "is_motorola":Z
    .restart local v7    # "orient":I
    :cond_e
    const/4 v10, 0x3

    aget-byte v10, v1, v10

    if-nez v10, :cond_f

    const/4 v10, 0x2

    aget-byte v10, v1, v10

    const/16 v11, 0x2a

    if-eq v10, v11, :cond_10

    :cond_f
    move v8, v7

    .line 925
    .end local v7    # "orient":I
    .restart local v8    # "orient":I
    goto/16 :goto_0

    .line 931
    .end local v8    # "orient":I
    .restart local v7    # "orient":I
    :cond_10
    if-eqz v3, :cond_13

    .line 932
    const/4 v10, 0x4

    aget-byte v10, v1, v10

    if-nez v10, :cond_11

    const/4 v10, 0x5

    aget-byte v10, v1, v10

    if-eqz v10, :cond_12

    :cond_11
    move v8, v7

    .line 933
    .end local v7    # "orient":I
    .restart local v8    # "orient":I
    goto/16 :goto_0

    .line 934
    .end local v8    # "orient":I
    .restart local v7    # "orient":I
    :cond_12
    const/4 v10, 0x6

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    const/4 v11, 0x7

    aget-byte v11, v1, v11

    and-int/lit16 v11, v11, 0xff

    add-int v6, v10, v11

    .line 941
    .local v6, "offset":I
    :goto_2
    add-int/lit8 v10, v4, -0x2

    if-le v6, v10, :cond_16

    move v8, v7

    .line 942
    .end local v7    # "orient":I
    .restart local v8    # "orient":I
    goto/16 :goto_0

    .line 936
    .end local v6    # "offset":I
    .end local v8    # "orient":I
    .restart local v7    # "orient":I
    :cond_13
    const/4 v10, 0x7

    aget-byte v10, v1, v10

    if-nez v10, :cond_14

    const/4 v10, 0x6

    aget-byte v10, v1, v10

    if-eqz v10, :cond_15

    :cond_14
    move v8, v7

    .line 937
    .end local v7    # "orient":I
    .restart local v8    # "orient":I
    goto/16 :goto_0

    .line 938
    .end local v8    # "orient":I
    .restart local v7    # "orient":I
    :cond_15
    const/4 v10, 0x5

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    const/4 v11, 0x4

    aget-byte v11, v1, v11

    and-int/lit16 v11, v11, 0xff

    add-int v6, v10, v11

    .restart local v6    # "offset":I
    goto :goto_2

    .line 946
    :cond_16
    if-eqz v3, :cond_17

    .line 947
    aget-byte v10, v1, v6

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/lit8 v11, v6, 0x1

    aget-byte v11, v1, v11

    and-int/lit16 v11, v11, 0xff

    add-int v5, v10, v11

    .line 952
    .local v5, "number_of_tags":I
    :goto_3
    if-nez v5, :cond_18

    move v8, v7

    .line 953
    .end local v7    # "orient":I
    .restart local v8    # "orient":I
    goto/16 :goto_0

    .line 949
    .end local v5    # "number_of_tags":I
    .end local v8    # "orient":I
    .restart local v7    # "orient":I
    :cond_17
    add-int/lit8 v10, v6, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    aget-byte v11, v1, v6

    and-int/lit16 v11, v11, 0xff

    add-int v5, v10, v11

    .restart local v5    # "number_of_tags":I
    goto :goto_3

    .line 955
    :cond_18
    add-int/lit8 v6, v6, 0x2

    .line 959
    :goto_4
    add-int/lit8 v10, v4, -0xc

    if-le v6, v10, :cond_19

    move v8, v7

    .line 960
    .end local v7    # "orient":I
    .restart local v8    # "orient":I
    goto/16 :goto_0

    .line 963
    .end local v8    # "orient":I
    .restart local v7    # "orient":I
    :cond_19
    if-eqz v3, :cond_1a

    .line 964
    aget-byte v10, v1, v6

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/lit8 v11, v6, 0x1

    aget-byte v11, v1, v11

    and-int/lit16 v11, v11, 0xff

    add-int v9, v10, v11

    .line 969
    .local v9, "tagnum":I
    :goto_5
    const/16 v10, 0x112

    if-ne v9, v10, :cond_1b

    .line 979
    if-eqz v3, :cond_1e

    .line 980
    add-int/lit8 v10, v6, 0x8

    aget-byte v10, v1, v10

    if-eqz v10, :cond_1d

    move v8, v7

    .line 981
    .end local v7    # "orient":I
    .restart local v8    # "orient":I
    goto/16 :goto_0

    .line 966
    .end local v8    # "orient":I
    .end local v9    # "tagnum":I
    .restart local v7    # "orient":I
    :cond_1a
    add-int/lit8 v10, v6, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    aget-byte v11, v1, v6

    and-int/lit16 v11, v11, 0xff

    add-int v9, v10, v11

    .restart local v9    # "tagnum":I
    goto :goto_5

    .line 972
    :cond_1b
    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_1c

    move v8, v7

    .line 973
    .end local v7    # "orient":I
    .restart local v8    # "orient":I
    goto/16 :goto_0

    .line 974
    .end local v8    # "orient":I
    .restart local v7    # "orient":I
    :cond_1c
    add-int/lit8 v6, v6, 0xc

    goto :goto_4

    .line 982
    :cond_1d
    add-int/lit8 v10, v6, 0x9

    aget-byte v10, v1, v10

    and-int/lit16 v7, v10, 0xff

    .end local v1    # "exifData":[B
    .end local v3    # "is_motorola":Z
    .end local v4    # "length":I
    .end local v5    # "number_of_tags":I
    .end local v6    # "offset":I
    .end local v9    # "tagnum":I
    :goto_6
    move v8, v7

    .line 994
    .end local v7    # "orient":I
    .restart local v8    # "orient":I
    goto/16 :goto_0

    .line 984
    .end local v8    # "orient":I
    .restart local v1    # "exifData":[B
    .restart local v3    # "is_motorola":Z
    .restart local v4    # "length":I
    .restart local v5    # "number_of_tags":I
    .restart local v6    # "offset":I
    .restart local v7    # "orient":I
    .restart local v9    # "tagnum":I
    :cond_1e
    add-int/lit8 v10, v6, 0x9

    aget-byte v10, v1, v10

    if-eqz v10, :cond_1f

    move v8, v7

    .line 985
    .end local v7    # "orient":I
    .restart local v8    # "orient":I
    goto/16 :goto_0

    .line 986
    .end local v8    # "orient":I
    .restart local v7    # "orient":I
    :cond_1f
    add-int/lit8 v10, v6, 0x8

    aget-byte v10, v1, v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    and-int/lit16 v7, v10, 0xff

    goto :goto_6

    .line 989
    .end local v1    # "exifData":[B
    .end local v3    # "is_motorola":Z
    .end local v4    # "length":I
    .end local v5    # "number_of_tags":I
    .end local v6    # "offset":I
    .end local v9    # "tagnum":I
    :catch_0
    move-exception v0

    .line 990
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "ThumbnailUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getOrientFromInputStream "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 991
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 992
    .local v0, "e":Ljava/lang/Exception;
    const-string v10, "ThumbnailUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getOrientFromInputStream "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private static makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "minSideLength"    # I
    .param p1, "maxNumOfPixels"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "cr"    # Landroid/content/ContentResolver;
    .param p4, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 418
    const/4 v0, 0x0

    .line 420
    .local v0, "b":Landroid/graphics/Bitmap;
    if-nez p4, :cond_0

    :try_start_0
    invoke-static {p2, p3}, Landroid/media/ThumbnailUtils;->makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p4

    .line 421
    :cond_0
    if-nez p4, :cond_1

    .line 443
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 445
    :goto_0
    return-object v4

    .line 422
    :cond_1
    if-nez p5, :cond_2

    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .end local p5    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    move-object p5, v3

    .line 424
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p5    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 425
    .local v2, "fd":Ljava/io/FileDescriptor;
    const/4 v5, 0x1

    iput v5, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 426
    const/4 v5, 0x1

    iput-boolean v5, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 427
    const/4 v5, 0x0

    invoke-static {v2, v5, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 428
    iget-boolean v5, p5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v5, :cond_3

    iget v5, p5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v5, v6, :cond_3

    iget v5, p5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v5, v6, :cond_4

    .line 443
    :cond_3
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .line 432
    :cond_4
    :try_start_2
    invoke-static {p5, p0, p1}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 434
    const/4 v5, 0x0

    iput-boolean v5, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 436
    const/4 v5, 0x0

    iput-boolean v5, p5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 437
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 438
    const/4 v5, 0x0

    invoke-static {v2, v5, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 443
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    move-object v4, v0

    .line 445
    goto :goto_0

    .line 439
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v1

    .line 440
    .local v1, "ex":Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v5, "ThumbnailUtils"

    const-string v6, "Got oom exception "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 443
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .end local v1    # "ex":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v4
.end method

.method private static makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 460
    :try_start_0
    const-string v1, "r"

    invoke-virtual {p1, p0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 462
    :goto_0
    return-object v1

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "ex":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 30
    .param p0, "scaler"    # Landroid/graphics/Matrix;
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "targetWidth"    # I
    .param p3, "targetHeight"    # I
    .param p4, "options"    # I

    .prologue
    .line 474
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    const/16 v27, 0x1

    .line 475
    .local v27, "scaleUp":Z
    :goto_0
    and-int/lit8 v3, p4, 0x2

    if-eqz v3, :cond_4

    const/16 v25, 0x1

    .line 477
    .local v25, "recycle":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v16, v3, p2

    .line 478
    .local v16, "deltaX":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v18, v3, p3

    .line 479
    .local v18, "deltaY":I
    if-nez v27, :cond_5

    if-ltz v16, :cond_0

    if-gez v18, :cond_5

    .line 486
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 488
    .local v11, "b2":Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 490
    .local v15, "c":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    div-int/lit8 v4, v16, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 491
    .local v17, "deltaXHalf":I
    const/4 v3, 0x0

    div-int/lit8 v4, v18, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 492
    .local v19, "deltaYHalf":I
    new-instance v28, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move/from16 v0, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v3, v3, v17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move/from16 v0, p3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v19

    move-object/from16 v0, v28

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 497
    .local v28, "src":Landroid/graphics/Rect;
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, p2, v3

    div-int/lit8 v21, v3, 0x2

    .line 498
    .local v21, "dstX":I
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, p3, v3

    div-int/lit8 v22, v3, 0x2

    .line 499
    .local v22, "dstY":I
    new-instance v20, Landroid/graphics/Rect;

    sub-int v3, p2, v21

    sub-int v4, p3, v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 504
    .local v20, "dst":Landroid/graphics/Rect;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 505
    if-eqz v25, :cond_1

    .line 506
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 508
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 562
    .end local v15    # "c":Landroid/graphics/Canvas;
    .end local v17    # "deltaXHalf":I
    .end local v19    # "deltaYHalf":I
    .end local v20    # "dst":Landroid/graphics/Rect;
    .end local v21    # "dstX":I
    .end local v22    # "dstY":I
    .end local v28    # "src":Landroid/graphics/Rect;
    :cond_2
    :goto_2
    return-object v11

    .line 474
    .end local v11    # "b2":Landroid/graphics/Bitmap;
    .end local v16    # "deltaX":I
    .end local v18    # "deltaY":I
    .end local v25    # "recycle":Z
    .end local v27    # "scaleUp":Z
    :cond_3
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 475
    .restart local v27    # "scaleUp":Z
    :cond_4
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 511
    .restart local v16    # "deltaX":I
    .restart local v18    # "deltaY":I
    .restart local v25    # "recycle":Z
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v14, v3

    .line 512
    .local v14, "bitmapWidthF":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v13, v3

    .line 514
    .local v13, "bitmapHeightF":F
    div-float v12, v14, v13

    .line 515
    .local v12, "bitmapAspect":F
    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    div-float v29, v3, v4

    .line 517
    .local v29, "viewAspect":F
    cmpl-float v3, v12, v29

    if-lez v3, :cond_a

    .line 518
    move/from16 v0, p3

    int-to-float v3, v0

    div-float v26, v3, v13

    .line 519
    .local v26, "scale":F
    const v3, 0x3f666666    # 0.9f

    cmpg-float v3, v26, v3

    if-ltz v3, :cond_6

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v26, v3

    if-lez v3, :cond_9

    .line 520
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 534
    :goto_3
    if-eqz p0, :cond_d

    .line 536
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v8, p0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 542
    .local v10, "b1":Landroid/graphics/Bitmap;
    :goto_4
    if-eqz v25, :cond_7

    move-object/from16 v0, p1

    if-eq v10, v0, :cond_7

    .line 543
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 546
    :cond_7
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 547
    .local v23, "dx1":I
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 549
    .local v24, "dy1":I
    div-int/lit8 v3, v23, 0x2

    div-int/lit8 v4, v24, 0x2

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v10, v3, v4, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 556
    .restart local v11    # "b2":Landroid/graphics/Bitmap;
    if-eq v11, v10, :cond_2

    .line 557
    if-nez v25, :cond_8

    move-object/from16 v0, p1

    if-eq v10, v0, :cond_2

    .line 558
    :cond_8
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    .line 522
    .end local v10    # "b1":Landroid/graphics/Bitmap;
    .end local v11    # "b2":Landroid/graphics/Bitmap;
    .end local v23    # "dx1":I
    .end local v24    # "dy1":I
    :cond_9
    const/16 p0, 0x0

    goto :goto_3

    .line 525
    .end local v26    # "scale":F
    :cond_a
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v26, v3, v14

    .line 526
    .restart local v26    # "scale":F
    const v3, 0x3f666666    # 0.9f

    cmpg-float v3, v26, v3

    if-ltz v3, :cond_b

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v26, v3

    if-lez v3, :cond_c

    .line 527
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_3

    .line 529
    :cond_c
    const/16 p0, 0x0

    goto :goto_3

    .line 539
    :cond_d
    move-object/from16 v10, p1

    .restart local v10    # "b1":Landroid/graphics/Bitmap;
    goto :goto_4
.end method

.method private static transformBuffer(Landroid/graphics/Matrix;[BIIIII)Landroid/graphics/Bitmap;
    .locals 35
    .param p0, "scaler"    # Landroid/graphics/Matrix;
    .param p1, "source"    # [B
    .param p2, "srcWidth"    # I
    .param p3, "srcHeight"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "options"    # I

    .prologue
    .line 707
    and-int/lit8 v31, p6, 0x1

    if-eqz v31, :cond_2

    const/16 v26, 0x1

    .line 711
    .local v26, "scaleUp":Z
    :goto_0
    sub-int v14, p2, p4

    .line 712
    .local v14, "deltaX":I
    sub-int v16, p3, p5

    .line 713
    .local v16, "deltaY":I
    if-nez v26, :cond_4

    if-ltz v14, :cond_0

    if-gez v16, :cond_4

    .line 720
    :cond_0
    sget-object v31, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 722
    .local v7, "b2":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 724
    .local v11, "c":Landroid/graphics/Canvas;
    const/16 v31, 0x0

    div-int/lit8 v32, v14, 0x2

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 725
    .local v15, "deltaXHalf":I
    const/16 v31, 0x0

    div-int/lit8 v32, v16, 0x2

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 726
    .local v17, "deltaYHalf":I
    new-instance v29, Landroid/graphics/Rect;

    move/from16 v0, p4

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v31

    add-int v31, v31, v15

    move/from16 v0, p5

    move/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v32

    add-int v32, v32, v17

    move-object/from16 v0, v29

    move/from16 v1, v17

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v15, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 731
    .local v29, "src":Landroid/graphics/Rect;
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->width()I

    move-result v31

    sub-int v31, p4, v31

    div-int/lit8 v19, v31, 0x2

    .line 732
    .local v19, "dstX":I
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->height()I

    move-result v31

    sub-int v31, p5, v31

    div-int/lit8 v20, v31, 0x2

    .line 733
    .local v20, "dstY":I
    new-instance v18, Landroid/graphics/Rect;

    sub-int v31, p4, v19

    sub-int v32, p5, v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 740
    .local v18, "dst":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 742
    .local v5, "Options":Landroid/graphics/BitmapFactory$Options;
    const/16 v31, 0x0

    move/from16 v0, v31

    iput-boolean v0, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 743
    const/16 v31, 0x1

    move/from16 v0, v31

    iput v0, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 744
    sget-object v31, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v31

    iput-object v0, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 746
    const/4 v6, 0x0

    .line 747
    .local v6, "b1":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_1

    .line 748
    const/16 v31, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 750
    :cond_1
    if-nez v6, :cond_3

    .line 751
    const/4 v7, 0x0

    .line 840
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    .end local v11    # "c":Landroid/graphics/Canvas;
    .end local v15    # "deltaXHalf":I
    .end local v17    # "deltaYHalf":I
    .end local v18    # "dst":Landroid/graphics/Rect;
    .end local v19    # "dstX":I
    .end local v20    # "dstY":I
    .end local v29    # "src":Landroid/graphics/Rect;
    :goto_1
    return-object v7

    .line 707
    .end local v5    # "Options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "b1":Landroid/graphics/Bitmap;
    .end local v14    # "deltaX":I
    .end local v16    # "deltaY":I
    .end local v26    # "scaleUp":Z
    :cond_2
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 754
    .restart local v5    # "Options":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "b1":Landroid/graphics/Bitmap;
    .restart local v7    # "b2":Landroid/graphics/Bitmap;
    .restart local v11    # "c":Landroid/graphics/Canvas;
    .restart local v14    # "deltaX":I
    .restart local v15    # "deltaXHalf":I
    .restart local v16    # "deltaY":I
    .restart local v17    # "deltaYHalf":I
    .restart local v18    # "dst":Landroid/graphics/Rect;
    .restart local v19    # "dstX":I
    .restart local v20    # "dstY":I
    .restart local v26    # "scaleUp":Z
    .restart local v29    # "src":Landroid/graphics/Rect;
    :cond_3
    const/16 v31, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    move-object/from16 v2, v31

    invoke-virtual {v11, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 755
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 758
    .end local v5    # "Options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "b1":Landroid/graphics/Bitmap;
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    .end local v11    # "c":Landroid/graphics/Canvas;
    .end local v15    # "deltaXHalf":I
    .end local v17    # "deltaYHalf":I
    .end local v18    # "dst":Landroid/graphics/Rect;
    .end local v19    # "dstX":I
    .end local v20    # "dstY":I
    .end local v29    # "src":Landroid/graphics/Rect;
    :cond_4
    move/from16 v0, p2

    int-to-float v10, v0

    .line 759
    .local v10, "bitmapWidthF":F
    move/from16 v0, p3

    int-to-float v9, v0

    .line 761
    .local v9, "bitmapHeightF":F
    div-float v8, v10, v9

    .line 762
    .local v8, "bitmapAspect":F
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v30, v31, v32

    .line 764
    .local v30, "viewAspect":F
    const/high16 v21, 0x3f800000    # 1.0f

    .line 766
    .local v21, "finalScale":F
    cmpl-float v31, v8, v30

    if-lez v31, :cond_8

    .line 767
    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v25, v31, v9

    .line 768
    .local v25, "scale":F
    const v31, 0x3f666666    # 0.9f

    cmpg-float v31, v25, v31

    if-ltz v31, :cond_5

    const/high16 v31, 0x3f800000    # 1.0f

    cmpl-float v31, v25, v31

    if-lez v31, :cond_7

    .line 769
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 771
    move/from16 v21, v25

    .line 786
    :goto_2
    const/4 v6, 0x0

    .line 788
    .restart local v6    # "b1":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 790
    .restart local v5    # "Options":Landroid/graphics/BitmapFactory$Options;
    const/16 v31, 0x0

    move/from16 v0, v31

    iput-boolean v0, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 791
    sget-object v31, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v31

    iput-object v0, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 793
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v21

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v21

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(FF)F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v22, v0

    .line 796
    .local v22, "inPreferSize":I
    if-eqz p1, :cond_6

    .line 797
    const/16 v31, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 799
    :cond_6
    if-nez v6, :cond_b

    .line 800
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 773
    .end local v5    # "Options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "b1":Landroid/graphics/Bitmap;
    .end local v22    # "inPreferSize":I
    :cond_7
    const/16 p0, 0x0

    goto :goto_2

    .line 776
    .end local v25    # "scale":F
    :cond_8
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v25, v31, v10

    .line 777
    .restart local v25    # "scale":F
    const v31, 0x3f666666    # 0.9f

    cmpg-float v31, v25, v31

    if-ltz v31, :cond_9

    const/high16 v31, 0x3f800000    # 1.0f

    cmpl-float v31, v25, v31

    if-lez v31, :cond_a

    .line 778
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 780
    move/from16 v21, v25

    goto :goto_2

    .line 782
    :cond_a
    const/16 p0, 0x0

    goto :goto_2

    .line 802
    .restart local v5    # "Options":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "b1":Landroid/graphics/Bitmap;
    .restart local v22    # "inPreferSize":I
    :cond_b
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    .line 803
    .local v28, "scaledBitmapWidth":I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v27

    .line 805
    .local v27, "scaledBitmapHeight":I
    sget-object v31, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 807
    .restart local v7    # "b2":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 809
    .restart local v11    # "c":Landroid/graphics/Canvas;
    new-instance v18, Landroid/graphics/RectF;

    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v18

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 810
    .local v18, "dst":Landroid/graphics/RectF;
    const/16 v29, 0x0

    .line 811
    .restart local v29    # "src":Landroid/graphics/Rect;
    move/from16 v0, v28

    move/from16 v1, v27

    if-le v0, v1, :cond_c

    move/from16 v23, v28

    .line 813
    .local v23, "maxSize":I
    :goto_3
    move/from16 v0, v23

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 815
    const/16 v31, 0x0

    sub-int v32, v28, p4

    div-int/lit8 v32, v32, 0x2

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 816
    .local v12, "croppedX":I
    const/16 v31, 0x0

    sub-int v32, v27, p5

    div-int/lit8 v32, v32, 0x2

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 817
    .local v13, "croppedY":I
    new-instance v29, Landroid/graphics/Rect;

    .end local v29    # "src":Landroid/graphics/Rect;
    add-int v31, v12, p4

    move/from16 v0, v31

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v31

    add-int v32, v13, p5

    move/from16 v0, v32

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v32

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v12, v13, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 835
    .restart local v29    # "src":Landroid/graphics/Rect;
    :goto_4
    new-instance v24, Landroid/graphics/Paint;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Paint;-><init>()V

    .line 836
    .local v24, "paint":Landroid/graphics/Paint;
    const/16 v31, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 837
    move-object/from16 v0, v29

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    invoke-virtual {v11, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 839
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_1

    .end local v12    # "croppedX":I
    .end local v13    # "croppedY":I
    .end local v23    # "maxSize":I
    .end local v24    # "paint":Landroid/graphics/Paint;
    :cond_c
    move/from16 v23, v27

    .line 811
    goto :goto_3

    .line 824
    .restart local v23    # "maxSize":I
    :cond_d
    const/16 v31, 0x0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v32, v32, v21

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    sub-int v32, p2, v32

    div-int/lit8 v32, v32, 0x2

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 825
    .restart local v12    # "croppedX":I
    const/16 v31, 0x0

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v32, v32, v21

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    sub-int v32, p3, v32

    div-int/lit8 v32, v32, 0x2

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 826
    .restart local v13    # "croppedY":I
    new-instance v29, Landroid/graphics/Rect;

    .end local v29    # "src":Landroid/graphics/Rect;
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v31, v31, v21

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    add-int v31, v31, v12

    move/from16 v0, v31

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v31

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v32, v32, v21

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    add-int v32, v32, v13

    move/from16 v0, v32

    move/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v32

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v12, v13, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v29    # "src":Landroid/graphics/Rect;
    goto/16 :goto_4
.end method
