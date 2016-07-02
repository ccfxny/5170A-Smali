.class public Lcom/android/server/hips/server/UsbInstallManager;
.super Ljava/lang/Object;
.source "UsbInstallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;
    }
.end annotation


# static fields
.field private static final ERROR:Ljava/lang/String; = "error"

.field private static final ICON_SAVE_PATH:Ljava/lang/String; = "/data/system/usb_install"

.field public static final MODE_ALLOW:I = 0x1

.field public static final MODE_ASK:I = 0x0

.field public static final MODE_DELETE:I = -0x2

.field public static final MODE_DENY:I = -0x1

.field public static final MODE_ERROR:I = -0x3

.field public static final PREFIX:Ljava/lang/String; = "usb_install_item_"

.field private static final SHOW_DIALOG:I = 0x1

.field public static final SWITCH:Ljava/lang/String; = "usb_install_item_switch"

.field private static final SWITCH_OFF:I = -0x1

.field private static final SWITCH_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UsbInstallManager"

.field private static final TYPE_DELETE:I = 0x2

.field private static final TYPE_UPDATE:I = 0x1

.field private static final UPDATE_TIME:I = 0x2

.field private static mContext:Landroid/content/Context;

.field private static volatile mUsbInstallManager:Lcom/android/server/hips/server/UsbInstallManager;


# instance fields
.field private mArchiveInfo:Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;

.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mIsDialogShowing:Z

.field private mTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/hips/server/UsbInstallManager;->mUsbInstallManager:Lcom/android/server/hips/server/UsbInstallManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/android/server/hips/server/UsbInstallManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/hips/server/UsbInstallManager$1;-><init>(Lcom/android/server/hips/server/UsbInstallManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager;->mHandler:Landroid/os/Handler;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hips/server/UsbInstallManager;)Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hips/server/UsbInstallManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager;->mArchiveInfo:Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/hips/server/UsbInstallManager;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hips/server/UsbInstallManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hips/server/UsbInstallManager;->showDialog(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/hips/server/UsbInstallManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hips/server/UsbInstallManager;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/server/hips/server/UsbInstallManager;->mTime:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/hips/server/UsbInstallManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hips/server/UsbInstallManager;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/server/hips/server/UsbInstallManager;->mTime:I

    return p1
.end method

.method static synthetic access$210(Lcom/android/server/hips/server/UsbInstallManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/hips/server/UsbInstallManager;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/server/hips/server/UsbInstallManager;->mTime:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/hips/server/UsbInstallManager;->mTime:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/hips/server/UsbInstallManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hips/server/UsbInstallManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/hips/server/UsbInstallManager;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hips/server/UsbInstallManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/hips/server/UsbInstallManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hips/server/UsbInstallManager;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/server/hips/server/UsbInstallManager;->mIsDialogShowing:Z

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/hips/server/UsbInstallManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    sput-object p0, Lcom/android/server/hips/server/UsbInstallManager;->mContext:Landroid/content/Context;

    .line 100
    sget-object v0, Lcom/android/server/hips/server/UsbInstallManager;->mUsbInstallManager:Lcom/android/server/hips/server/UsbInstallManager;

    if-nez v0, :cond_1

    .line 101
    const-class v1, Lcom/android/server/hips/server/UsbInstallManager;

    monitor-enter v1

    .line 102
    :try_start_0
    sget-object v0, Lcom/android/server/hips/server/UsbInstallManager;->mUsbInstallManager:Lcom/android/server/hips/server/UsbInstallManager;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/android/server/hips/server/UsbInstallManager;

    invoke-direct {v0}, Lcom/android/server/hips/server/UsbInstallManager;-><init>()V

    sput-object v0, Lcom/android/server/hips/server/UsbInstallManager;->mUsbInstallManager:Lcom/android/server/hips/server/UsbInstallManager;

    .line 105
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_1
    sget-object v0, Lcom/android/server/hips/server/UsbInstallManager;->mUsbInstallManager:Lcom/android/server/hips/server/UsbInstallManager;

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getStateFromSecure(Ljava/lang/String;)I
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 335
    const/4 v1, -0x3

    .line 336
    .local v1, "result":I
    const/4 v2, 0x0

    .line 337
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/hips/server/UsbInstallManager;->getAllItems()Ljava/util/Map;

    move-result-object v0

    .line 338
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 339
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "value":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 341
    .restart local v2    # "value":Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_1

    .line 342
    const-string v4, "\\:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "valueArray":[Ljava/lang/String;
    if-eqz v3, :cond_1

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 344
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 347
    .end local v3    # "valueArray":[Ljava/lang/String;
    :cond_1
    const-string v4, "UsbInstallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getStateFromSecure value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return v1
.end method

.method private static putIntoSecure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 319
    const-string v1, "error"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "error"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 324
    .local v2, "identity":J
    :try_start_0
    sget-object v1, Lcom/android/server/hips/server/UsbInstallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "UsbInstallManager"

    const-string v4, "putIntoSecure failed!!"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private saveApkIcon(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "savePath"    # Ljava/lang/String;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 294
    move-object v1, p3

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 295
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v1, :cond_0

    .line 316
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 299
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    .local v4, "filePath":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 301
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 303
    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 305
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 308
    :cond_2
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 309
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 310
    .local v5, "fos":Ljava/io/FileOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v0, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 311
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 313
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "UsbInstallManager"

    const-string v7, "saveApkIcon: saved the apk\'s icon failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "apkName"    # Ljava/lang/String;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 241
    new-instance v4, Landroid/app/AlertDialog$Builder;

    sget-object v5, Lcom/android/server/hips/server/UsbInstallManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x5

    invoke-direct {v4, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/server/hips/server/UsbInstallManager;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 243
    sget-object v4, Lcom/android/server/hips/server/UsbInstallManager;->mContext:Landroid/content/Context;

    const v5, 0xa03005a

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 245
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/android/server/hips/server/UsbInstallManager;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 247
    const v4, 0xa0f0055

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 248
    .local v2, "title":Landroid/widget/TextView;
    sget-object v4, Lcom/android/server/hips/server/UsbInstallManager;->mContext:Landroid/content/Context;

    const v5, 0xa0a015d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    const v4, 0xa0f0057

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 251
    .local v1, "message":Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    const v4, 0xa0f0056

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 254
    .local v0, "icon":Landroid/widget/ImageView;
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 256
    iget-object v4, p0, Lcom/android/server/hips/server/UsbInstallManager;->mBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v5, Lcom/android/server/hips/server/UsbInstallManager;->mContext:Landroid/content/Context;

    const v6, 0xa0a015e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/hips/server/UsbInstallManager$2;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/server/hips/server/UsbInstallManager$2;-><init>(Lcom/android/server/hips/server/UsbInstallManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 267
    iget-object v4, p0, Lcom/android/server/hips/server/UsbInstallManager;->mBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v5, Lcom/android/server/hips/server/UsbInstallManager;->mContext:Landroid/content/Context;

    const v6, 0xa0a015f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/hips/server/UsbInstallManager$3;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/server/hips/server/UsbInstallManager$3;-><init>(Lcom/android/server/hips/server/UsbInstallManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 278
    iget-object v4, p0, Lcom/android/server/hips/server/UsbInstallManager;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/server/hips/server/UsbInstallManager$4;

    invoke-direct {v5, p0}, Lcom/android/server/hips/server/UsbInstallManager$4;-><init>(Lcom/android/server/hips/server/UsbInstallManager;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 287
    iget-object v4, p0, Lcom/android/server/hips/server/UsbInstallManager;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/hips/server/UsbInstallManager;->mDialog:Landroid/app/AlertDialog;

    .line 288
    iget-object v4, p0, Lcom/android/server/hips/server/UsbInstallManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7e0

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 289
    iget-object v4, p0, Lcom/android/server/hips/server/UsbInstallManager;->mDialog:Landroid/app/AlertDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 290
    iget-object v4, p0, Lcom/android/server/hips/server/UsbInstallManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 291
    return-void
.end method


# virtual methods
.method public getAllItems()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    const/4 v4, 0x0

    .line 200
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 201
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/android/server/hips/server/UsbInstallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 202
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "name"

    aput-object v5, v2, v3

    const-string v3, "value"

    aput-object v3, v2, v14

    const-string v3, "name LIKE \'usb_install_item_%\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 208
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gtz v1, :cond_2

    .line 233
    :cond_0
    if-eqz v6, :cond_1

    .line 234
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v4

    .line 211
    :cond_2
    :try_start_1
    const-string v1, "name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 213
    .local v10, "nameIndex":I
    const-string v1, "value"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 215
    .local v13, "valueIndex":I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_5

    .line 217
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 218
    .local v9, "name":Ljava/lang/String;
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 219
    .local v11, "value":Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 220
    const-string v1, "\\:"

    invoke-virtual {v11, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 221
    .local v12, "valueArray":[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, v12, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_3

    .line 215
    .end local v12    # "valueArray":[Ljava/lang/String;
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 229
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "nameIndex":I
    .end local v11    # "value":Ljava/lang/String;
    .end local v13    # "valueIndex":I
    :catch_0
    move-exception v7

    .line 230
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "UsbInstallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 233
    if-eqz v6, :cond_1

    .line 234
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 225
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v10    # "nameIndex":I
    .restart local v11    # "value":Ljava/lang/String;
    .restart local v13    # "valueIndex":I
    :cond_3
    :try_start_3
    invoke-interface {v8, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 233
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "nameIndex":I
    .end local v11    # "value":Ljava/lang/String;
    .end local v13    # "valueIndex":I
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 234
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    .line 233
    .restart local v10    # "nameIndex":I
    .restart local v13    # "valueIndex":I
    :cond_5
    if-eqz v6, :cond_6

    .line 234
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v4, v8

    goto :goto_0
.end method

.method public getSwitchState()I
    .locals 3

    .prologue
    .line 191
    const-string v1, "usb_install_item_switch"

    invoke-direct {p0, v1}, Lcom/android/server/hips/server/UsbInstallManager;->getStateFromSecure(Ljava/lang/String;)I

    move-result v0

    .line 192
    .local v0, "state":I
    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 193
    const-string v1, "usb_install_item_switch"

    const-string v2, "usb_install_item_switch:1"

    invoke-static {v1, v2}, Lcom/android/server/hips/server/UsbInstallManager;->putIntoSecure(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/4 v0, 0x1

    .line 196
    :cond_0
    return v0
.end method

.method public isStopInstall(Ljava/lang/String;)I
    .locals 12
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 111
    invoke-virtual {p0}, Lcom/android/server/hips/server/UsbInstallManager;->getSwitchState()I

    move-result v10

    if-ne v10, v9, :cond_0

    move v6, v8

    .line 162
    :goto_0
    return v6

    .line 114
    :cond_0
    new-instance v10, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;

    sget-object v11, Lcom/android/server/hips/server/UsbInstallManager;->mContext:Landroid/content/Context;

    invoke-direct {v10, p0, v11, p1}, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;-><init>(Lcom/android/server/hips/server/UsbInstallManager;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v10, p0, Lcom/android/server/hips/server/UsbInstallManager;->mArchiveInfo:Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;

    .line 115
    iget-object v10, p0, Lcom/android/server/hips/server/UsbInstallManager;->mArchiveInfo:Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;

    iget-object v7, v10, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mPkgName:Ljava/lang/String;

    .line 116
    .local v7, "pkgName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/hips/server/UsbInstallManager;->mArchiveInfo:Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;

    iget-object v0, v10, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mApkName:Ljava/lang/String;

    .line 117
    .local v0, "apkName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/hips/server/UsbInstallManager;->mArchiveInfo:Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;

    iget-object v1, v10, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 119
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const-string v10, "error"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "error"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    move v6, v9

    .line 120
    goto :goto_0

    .line 124
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "usb_install_item_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/hips/server/UsbInstallManager;->getAllItems()Ljava/util/Map;

    move-result-object v5

    .line 126
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v5, :cond_5

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 127
    invoke-direct {p0, v4}, Lcom/android/server/hips/server/UsbInstallManager;->getStateFromSecure(Ljava/lang/String;)I

    move-result v6

    .line 128
    .local v6, "mode":I
    if-ne v6, v8, :cond_3

    move v6, v8

    .line 129
    goto :goto_0

    .line 130
    :cond_3
    if-ne v6, v9, :cond_4

    move v6, v9

    .line 131
    goto :goto_0

    .line 133
    :cond_4
    const/4 v6, 0x0

    .line 134
    invoke-virtual {p0, v8, v7, v0, v6}, Lcom/android/server/hips/server/UsbInstallManager;->setUsbInstallItemState(ILjava/lang/String;Ljava/lang/String;I)V

    .line 141
    :goto_1
    const-string v8, "/data/system/usb_install"

    invoke-direct {p0, v7, v8, v1}, Lcom/android/server/hips/server/UsbInstallManager;->saveApkIcon(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 143
    monitor-enter p0

    .line 144
    const/4 v8, 0x1

    :try_start_0
    iput-boolean v8, p0, Lcom/android/server/hips/server/UsbInstallManager;->mIsDialogShowing:Z

    .line 145
    const/16 v8, 0x13

    iput v8, p0, Lcom/android/server/hips/server/UsbInstallManager;->mTime:I

    .line 146
    iget-object v8, p0, Lcom/android/server/hips/server/UsbInstallManager;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 147
    iget-object v8, p0, Lcom/android/server/hips/server/UsbInstallManager;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    const/4 v3, 0x0

    .line 150
    .local v3, "i":I
    :goto_2
    :try_start_1
    iget-boolean v8, p0, Lcom/android/server/hips/server/UsbInstallManager;->mIsDialogShowing:Z

    if-eqz v8, :cond_6

    if-nez v6, :cond_6

    const/16 v8, 0x5f

    if-ge v3, v8, :cond_6

    .line 151
    invoke-direct {p0, v4}, Lcom/android/server/hips/server/UsbInstallManager;->getStateFromSecure(Ljava/lang/String;)I

    move-result v6

    .line 152
    const-wide/16 v8, 0xc8

    invoke-virtual {p0, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 137
    .end local v3    # "i":I
    .end local v6    # "mode":I
    :cond_5
    const/4 v6, 0x0

    .line 138
    .restart local v6    # "mode":I
    invoke-virtual {p0, v8, v7, v0, v6}, Lcom/android/server/hips/server/UsbInstallManager;->setUsbInstallItemState(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 159
    .restart local v3    # "i":I
    :cond_6
    :try_start_2
    invoke-direct {p0, v4}, Lcom/android/server/hips/server/UsbInstallManager;->getStateFromSecure(Ljava/lang/String;)I

    move-result v6

    .line 161
    :goto_3
    monitor-exit p0

    goto/16 :goto_0

    .end local v3    # "i":I
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 155
    .restart local v3    # "i":I
    :catch_0
    move-exception v2

    .line 156
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v8, "UsbInstallManager"

    const-string v9, "isStopInstall: failed to hang up the process"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 159
    :try_start_4
    invoke-direct {p0, v4}, Lcom/android/server/hips/server/UsbInstallManager;->getStateFromSecure(Ljava/lang/String;)I

    move-result v6

    .line 160
    goto :goto_3

    .line 159
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    invoke-direct {p0, v4}, Lcom/android/server/hips/server/UsbInstallManager;->getStateFromSecure(Ljava/lang/String;)I

    move-result v6

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public setSwitchState(Z)V
    .locals 2
    .param p1, "isOn"    # Z

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    const-string v0, "usb_install_item_switch"

    const-string v1, "usb_install_item_switch:1"

    invoke-static {v0, v1}, Lcom/android/server/hips/server/UsbInstallManager;->putIntoSecure(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    const-string v0, "usb_install_item_switch"

    const-string v1, "usb_install_item_switch:-1"

    invoke-static {v0, v1}, Lcom/android/server/hips/server/UsbInstallManager;->putIntoSecure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUsbInstallItemState(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "apkName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 167
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usb_install_item_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "value":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/hips/server/UsbInstallManager;->putIntoSecure(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usb_install_item_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    .restart local v1    # "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    .restart local v2    # "value":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/hips/server/UsbInstallManager;->putIntoSecure(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/usb_install/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method
