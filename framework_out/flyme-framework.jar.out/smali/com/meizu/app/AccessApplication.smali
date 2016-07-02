.class public Lcom/meizu/app/AccessApplication;
.super Landroid/app/Activity;
.source "AccessApplication.java"

# interfaces
.implements Lcom/meizu/widget/SystemLockView$OnPanelListener;


# static fields
.field private static final APP_LOCK_FILE:Ljava/lang/String; = "app_lock.key"

.field private static final ERROR_COUNT_SHOW_FORGET_PASSWORD:I = 0x3

.field private static final MAX_TASKS:I = 0xa

.field private static final MSG_FP_VERIFY_UPDATE:I = 0x1

.field private static final MSG_TYPE_RECONGNIZE_FAILED:I = 0x3

.field private static final MSG_TYPE_RECONGNIZE_SUCCESS:I = 0x2

.field private static final PASSWORD_LENGTH_DEFAULT:I = 0x4

.field private static final PASSWORD_TYPE_COMPLEX:I = 0x1

.field private static final REQUEST_CODE_FLYME_ACCOUNT_VERIFY:I = 0x64

.field public static final RESULT_CODE_VALIDATE_PASSWORD_ERROR:I = 0x3e7

.field private static final TAG:Ljava/lang/String; = "AccessApplication"


# instance fields
.field private isAssociateAccountOpened:Z

.field private mAccessCls:Ljava/lang/String;

.field private mAccessControlManager:Lmeizu/security/AccessControlManager;

.field private mAccessPkg:Ljava/lang/String;

.field private mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private mCancelView:Landroid/view/View;

.field private mComponentName:Landroid/content/ComponentName;

.field private mErrorPwdCount:I

.field private mFM:Lcom/fingerprints/service/FingerprintManager;

.field private mFindPhoneReceiver:Landroid/content/BroadcastReceiver;

.field private mFlymeAccountServiceConnection:Landroid/content/ServiceConnection;

.field private mForgetPasswordLayout:Landroid/view/View;

.field private mFromNotification:Z

.field private mHandler:Landroid/os/Handler;

.field private mIPm:Landroid/content/pm/IPackageManager;

.field private mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

.field private mIntent:Landroid/content/Intent;

.field private mIsFromFlymeLauncher:Z

.field private mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

.field private mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNeedReleaseFM:Z

.field private mPackageName:Ljava/lang/String;

.field private mPasswordType:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 90
    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mFM:Lcom/fingerprints/service/FingerprintManager;

    .line 94
    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 96
    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mComponentName:Landroid/content/ComponentName;

    .line 97
    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    .line 100
    iput-boolean v1, p0, Lcom/meizu/app/AccessApplication;->mNeedReleaseFM:Z

    .line 101
    iput v1, p0, Lcom/meizu/app/AccessApplication;->mErrorPwdCount:I

    .line 111
    iput-boolean v1, p0, Lcom/meizu/app/AccessApplication;->mIsFromFlymeLauncher:Z

    .line 660
    new-instance v0, Lcom/meizu/app/AccessApplication$8;

    invoke-direct {v0, p0}, Lcom/meizu/app/AccessApplication$8;-><init>(Lcom/meizu/app/AccessApplication;)V

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/app/AccessApplication;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/app/AccessApplication;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->handleForgetPasswordClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/app/AccessApplication;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/app/AccessApplication;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->getFlymeAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/app/AccessApplication;)Lcom/meizu/widget/SystemLockView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/app/AccessApplication;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/meizu/app/AccessApplication;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/app/AccessApplication;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/meizu/app/AccessApplication;->startShakeAnim(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/meizu/app/AccessApplication;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/app/AccessApplication;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/meizu/app/AccessApplication;)Lcom/fingerprints/service/FingerprintManager;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/app/AccessApplication;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mFM:Lcom/fingerprints/service/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/meizu/app/AccessApplication;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/app/AccessApplication;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/app/AccessApplication;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/app/AccessApplication;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/meizu/app/AccessApplication;->startVerifyFlymeAccount(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$302(Lcom/meizu/app/AccessApplication;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/app/AccessApplication;
    .param p1, "x1"    # Landroid/content/ServiceConnection;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/meizu/app/AccessApplication;->mFlymeAccountServiceConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$400(Lcom/meizu/app/AccessApplication;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/app/AccessApplication;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->checkAppAccesstrol()V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/app/AccessApplication;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/app/AccessApplication;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/meizu/app/AccessApplication;->checkPassword(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/meizu/app/AccessApplication;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/app/AccessApplication;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/meizu/app/AccessApplication;->mIsFromFlymeLauncher:Z

    return v0
.end method

.method static synthetic access$700(Lcom/meizu/app/AccessApplication;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/app/AccessApplication;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->startLauncherIdentiedComp()V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/app/AccessApplication;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/app/AccessApplication;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->startIdentiedComp()V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/app/AccessApplication;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/app/AccessApplication;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->checkNeedShowForgetPassword()V

    return-void
.end method

.method private checkAccessControl(Ljava/lang/String;)Z
    .locals 4
    .param p1, "mPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 598
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    invoke-virtual {v1, p1}, Lmeizu/security/AccessControlManager;->checkAccessControlPass(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 612
    :cond_0
    :goto_0
    return v0

    .line 602
    :cond_1
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    invoke-virtual {v1}, Lmeizu/security/AccessControlManager;->isAccessControlGuardEnable()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    invoke-virtual {v1}, Lmeizu/security/AccessControlManager;->isAccessControlPasswordEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 604
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "access_control_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkAppAccesstrol()V
    .locals 2

    .prologue
    .line 356
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/meizu/app/AccessApplication;->checkAccessControl(Ljava/lang/String;)Z

    move-result v0

    .line 357
    .local v0, "access":Z
    if-nez v0, :cond_0

    .line 358
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->delayFinishIfNeed()V

    .line 360
    :cond_0
    return-void
.end method

.method private checkNeedShowForgetPassword()V
    .locals 2

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/meizu/app/AccessApplication;->isAssociateAccountOpened:Z

    if-nez v0, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget v0, p0, Lcom/meizu/app/AccessApplication;->mErrorPwdCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/app/AccessApplication;->mErrorPwdCount:I

    .line 319
    iget v0, p0, Lcom/meizu/app/AccessApplication;->mErrorPwdCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mForgetPasswordLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mCancelView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private checkPassword(Ljava/lang/String;)Z
    .locals 11
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 760
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/system/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "app_lock.key"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, "fileName":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v8, "r"

    invoke-direct {v6, v0, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    .local v6, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v7, v8, [B

    .line 766
    .local v7, "stored":[B
    const/4 v8, 0x0

    array-length v9, v7

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    .line 767
    .local v2, "got":I
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 768
    if-gtz v2, :cond_0

    .line 782
    .end local v2    # "got":I
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .end local v7    # "stored":[B
    :goto_0
    return v5

    .line 772
    .restart local v2    # "got":I
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "stored":[B
    :cond_0
    iget-object v8, p0, Lcom/meizu/app/AccessApplication;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    invoke-virtual {v8, p1, v9}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v3

    .line 774
    .local v3, "hash":[B
    invoke-static {v7, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 776
    .local v5, "matched":Z
    goto :goto_0

    .line 777
    .end local v2    # "got":I
    .end local v3    # "hash":[B
    .end local v5    # "matched":Z
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .end local v7    # "stored":[B
    :catch_0
    move-exception v1

    .line 778
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    const-string v8, "AccessApplication"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 779
    .end local v1    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    .line 780
    .local v4, "ioe":Ljava/io/IOException;
    const-string v8, "AccessApplication"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private clearAppLock()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 363
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_app_lock_control"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 364
    const-string v2, "access_control"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmeizu/security/IAccessControlManager$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/security/IAccessControlManager;

    move-result-object v0

    .line 367
    .local v0, "acs":Lmeizu/security/IAccessControlManager;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v2}, Lmeizu/security/IAccessControlManager;->setAccessControlPasswordEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v1

    .line 369
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private createCancelClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 346
    new-instance v0, Lcom/meizu/app/AccessApplication$5;

    invoke-direct {v0, p0}, Lcom/meizu/app/AccessApplication$5;-><init>(Lcom/meizu/app/AccessApplication;)V

    return-object v0
.end method

.method private createIdentifyCallback()Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    .locals 1

    .prologue
    .line 786
    new-instance v0, Lcom/meizu/app/AccessApplication$10;

    invoke-direct {v0, p0}, Lcom/meizu/app/AccessApplication$10;-><init>(Lcom/meizu/app/AccessApplication;)V

    return-object v0
.end method

.method private delayFinishIfNeed()V
    .locals 4

    .prologue
    .line 727
    iget-boolean v0, p0, Lcom/meizu/app/AccessApplication;->mFromNotification:Z

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/meizu/app/AccessApplication$9;

    invoke-direct {v1, p0}, Lcom/meizu/app/AccessApplication$9;-><init>(Lcom/meizu/app/AccessApplication;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 738
    :goto_0
    return-void

    .line 736
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->finish()V

    goto :goto_0
.end method

.method private enterFPVerifySession()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 437
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mz_fingerprint_use_unlock"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    .line 439
    .local v1, "isUseFPUnlock":Z
    :goto_0
    if-nez v1, :cond_2

    .line 440
    iput-boolean v3, p0, Lcom/meizu/app/AccessApplication;->mNeedReleaseFM:Z

    .line 458
    :cond_0
    :goto_1
    return-void

    .end local v1    # "isUseFPUnlock":Z
    :cond_1
    move v1, v3

    .line 437
    goto :goto_0

    .line 443
    .restart local v1    # "isUseFPUnlock":Z
    :cond_2
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->open()Lcom/fingerprints/service/FingerprintManager;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/app/AccessApplication;->mFM:Lcom/fingerprints/service/FingerprintManager;

    .line 444
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mFM:Lcom/fingerprints/service/FingerprintManager;

    if-nez v3, :cond_3

    .line 445
    const-string v2, "AccessApplication"

    const-string v3, "mFM is null while calling FingerprintManager.open()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 448
    :cond_3
    iput-boolean v2, p0, Lcom/meizu/app/AccessApplication;->mNeedReleaseFM:Z

    .line 449
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mFM:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v2}, Lcom/fingerprints/service/FingerprintManager;->getIds()[I

    move-result-object v0

    .line 450
    .local v0, "ids":[I
    if-eqz v0, :cond_0

    array-length v2, v0

    if-eqz v2, :cond_0

    .line 454
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    if-nez v2, :cond_4

    .line 455
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->createIdentifyCallback()Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/app/AccessApplication;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    .line 457
    :cond_4
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mFM:Lcom/fingerprints/service/FingerprintManager;

    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    invoke-virtual {v2, v3, v0}, Lcom/fingerprints/service/FingerprintManager;->startIdentify(Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;[I)V

    goto :goto_1
.end method

.method private getFlymeAccountName()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 230
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v3, "com.meizu.account"

    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v7

    .line 231
    .local v7, "accounts":[Landroid/accounts/Account;
    const-string v6, ""

    .line 232
    .local v6, "accountName":Ljava/lang/String;
    if-eqz v7, :cond_1

    array-length v0, v7

    if-lez v0, :cond_1

    .line 233
    const-string v0, "content://com.meizu.account/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v3, v7, v3

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 235
    .local v1, "queryAccountUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 236
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    const-string v0, "flyme"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 238
    .local v9, "name":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@flyme.cn"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 241
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 245
    .end local v1    # "queryAccountUri":Landroid/net/Uri;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "name":Ljava/lang/String;
    :cond_1
    return-object v6
.end method

.method private handleForgetPasswordClick()V
    .locals 3

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 260
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.account.service.MzAccountBusinessService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "source"

    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v1, "com.meizu.account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    new-instance v1, Lcom/meizu/app/AccessApplication$4;

    invoke-direct {v1, p0}, Lcom/meizu/app/AccessApplication$4;-><init>(Lcom/meizu/app/AccessApplication;)V

    iput-object v1, p0, Lcom/meizu/app/AccessApplication;->mFlymeAccountServiceConnection:Landroid/content/ServiceConnection;

    .line 305
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mFlymeAccountServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/app/AccessApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 306
    return-void
.end method

.method private initAccessControlData()V
    .locals 2

    .prologue
    .line 170
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 171
    const-string v0, "access_control"

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu/security/AccessControlManager;

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    .line 172
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 173
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    iget-object v0, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v0}, Landroid/content/IntentExt;->getAccessPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-object v0, v0, Landroid/content/ActivityInfoExt;->mAccessPkg:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    const-string v0, "com.android.contacts"

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    iget-object v0, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v0}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/app/AccessApplication;->mFromNotification:Z

    .line 184
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-object v0, v0, Landroid/content/ActivityInfoExt;->mStartComponentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mComponentName:Landroid/content/ComponentName;

    .line 187
    :cond_3
    return-void

    .line 182
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initCancelText()V
    .locals 2

    .prologue
    .line 215
    const v0, 0xa0f0043

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mCancelView:Landroid/view/View;

    .line 216
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mCancelView:Landroid/view/View;

    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->createCancelClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v0, 0xa0f0045

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->createCancelClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    const v0, 0xa0f0044

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mForgetPasswordLayout:Landroid/view/View;

    .line 221
    const v0, 0xa0f0046

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/meizu/app/AccessApplication$3;

    invoke-direct {v1, p0}, Lcom/meizu/app/AccessApplication$3;-><init>(Lcom/meizu/app/AccessApplication;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    return-void
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/meizu/app/AccessApplication;->mIsFromFlymeLauncher:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->initLauncherAccessControlData()V

    .line 131
    :goto_0
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->registerFindPhoneReceiver()V

    .line 132
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->registerAccessControlReceiver()V

    .line 134
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->isAssociateFlymeAccountOpened()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/app/AccessApplication;->isAssociateAccountOpened:Z

    .line 135
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->registerScreenOffReceiver()V

    .line 136
    return-void

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->initAccessControlData()V

    goto :goto_0
.end method

.method private initLauncherAccessControlData()V
    .locals 2

    .prologue
    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/app/AccessApplication;->mFromNotification:Z

    .line 191
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 192
    const-string v0, "access_control"

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu/security/AccessControlManager;

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    .line 193
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    const-string v1, "accesspkg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mAccessPkg:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    const-string v1, "accesscls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mAccessCls:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mAccessPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const-string v0, "com.android.contacts"

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    .line 199
    :cond_0
    return-void
.end method

.method private initLockDigitPanel()V
    .locals 5

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 630
    .local v0, "layout":Landroid/view/LayoutInflater;
    const v2, 0xa030002

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 632
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {p0, v1}, Lcom/meizu/app/AccessApplication;->setContentView(Landroid/view/View;)V

    .line 633
    const v2, 0xa0f0042

    invoke-virtual {p0, v2}, Lcom/meizu/app/AccessApplication;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/SystemLockView;

    iput-object v2, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    .line 634
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/meizu/widget/SystemLockView;->setInputTextButtonVisibility(Z)V

    .line 635
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v2, p0}, Lcom/meizu/widget/SystemLockView;->setPanelListener(Lcom/meizu/widget/SystemLockView$OnPanelListener;)V

    .line 636
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xa0a00b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    .line 638
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 202
    const v0, 0xa100027

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->setTheme(I)V

    .line 203
    iget-boolean v0, p0, Lcom/meizu/app/AccessApplication;->mIsFromFlymeLauncher:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 210
    :cond_1
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->initLockDigitPanel()V

    .line 211
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->initCancelText()V

    .line 212
    return-void
.end method

.method private isAssociateFlymeAccountOpened()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 326
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->isFlymeAccountLogined()Z

    move-result v2

    if-nez v2, :cond_0

    .line 330
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_applock_pwd_associate_account"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private registerAccessControlReceiver()V
    .locals 2

    .prologue
    .line 461
    new-instance v1, Lcom/meizu/app/AccessApplication$6;

    invoke-direct {v1, p0}, Lcom/meizu/app/AccessApplication$6;-><init>(Lcom/meizu/app/AccessApplication;)V

    iput-object v1, p0, Lcom/meizu/app/AccessApplication;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 469
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 470
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACCESS_CONTROL_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 471
    const-string v1, "meizu.intent.action.FLYME_FINDPHONE_UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 472
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/app/AccessApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 473
    return-void
.end method

.method private registerFindPhoneReceiver()V
    .locals 2

    .prologue
    .line 139
    new-instance v1, Lcom/meizu/app/AccessApplication$1;

    invoke-direct {v1, p0}, Lcom/meizu/app/AccessApplication$1;-><init>(Lcom/meizu/app/AccessApplication;)V

    iput-object v1, p0, Lcom/meizu/app/AccessApplication;->mFindPhoneReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "meizu.intent.action.FLYME_FINDPHONE_UNLOCK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mFindPhoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/app/AccessApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    return-void
.end method

.method private registerScreenOffReceiver()V
    .locals 2

    .prologue
    .line 156
    new-instance v1, Lcom/meizu/app/AccessApplication$2;

    invoke-direct {v1, p0}, Lcom/meizu/app/AccessApplication$2;-><init>(Lcom/meizu/app/AccessApplication;)V

    iput-object v1, p0, Lcom/meizu/app/AccessApplication;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/app/AccessApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    return-void
.end method

.method private releaseFlymeAccountServiceConnection()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mFlymeAccountServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mFlymeAccountServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->unbindService(Landroid/content/ServiceConnection;)V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mFlymeAccountServiceConnection:Landroid/content/ServiceConnection;

    .line 313
    :cond_0
    return-void
.end method

.method private resetDigitPanelView()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 641
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v3, v7}, Lcom/meizu/widget/SystemLockView;->setFitsSystemWindows(Z)V

    .line 642
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mz_password_type_app_lock"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/meizu/app/AccessApplication;->mPasswordType:I

    .line 644
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    iget v4, p0, Lcom/meizu/app/AccessApplication;->mPasswordType:I

    invoke-virtual {v3, v4}, Lcom/meizu/widget/SystemLockView;->setKeyPadType(I)V

    .line 645
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mz_password_length_applock"

    const/4 v5, 0x4

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 647
    .local v0, "max":I
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v3, v0}, Lcom/meizu/widget/SystemLockView;->setMaxLen(I)V

    .line 648
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v3, v6}, Lcom/meizu/widget/SystemLockView;->setWidgetLayoutVisibility(Z)V

    .line 650
    iget v3, p0, Lcom/meizu/app/AccessApplication;->mPasswordType:I

    if-ne v3, v7, :cond_0

    .line 651
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v3, v0}, Lcom/meizu/widget/SystemLockView;->setMaxLen(I)V

    .line 652
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v3, v6}, Lcom/meizu/widget/SystemLockView;->setHollowVisible(Z)V

    .line 653
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v3, v6}, Lcom/meizu/widget/SystemLockView;->setInputTextButtonVisibility(Z)V

    .line 654
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 655
    .local v2, "win":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit8 v1, v3, 0x4

    .line 656
    .local v1, "mode":I
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 658
    .end local v1    # "mode":I
    .end local v2    # "win":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method private startIdentiedComp()V
    .locals 6

    .prologue
    .line 694
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    iget-object v4, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/meizu/app/AccessApplication;->mFromNotification:Z

    invoke-virtual {v3, v4, v5}, Lmeizu/security/AccessControlManager;->addAccessControlPassMz(Ljava/lang/String;Z)V

    .line 695
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_2

    .line 696
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 697
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, v2, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v3}, Landroid/content/IntentExt;->getAccessSrcFlags()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 698
    const/4 v1, 0x0

    .line 699
    .local v1, "fromActivityStack":Z
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-object v3, v3, Landroid/content/ActivityInfoExt;->mAccessPkg:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 700
    const/4 v1, 0x1

    .line 702
    :cond_0
    const/high16 v3, 0x3000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 704
    const-string v3, "AccessApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fromActivityStack : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->isTaskRoot()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 709
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 713
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const v4, -0x800001

    and-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 714
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 715
    invoke-static {p0}, Lmeizu/splitmode/FlymeSplitModeManager;->getInstance(Landroid/content/Context;)Lmeizu/splitmode/FlymeSplitModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lmeizu/splitmode/FlymeSplitModeManager;->isSplitMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setSplitmode(Z)V

    .line 717
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/meizu/app/AccessApplication;->startActivity(Landroid/content/Intent;)V

    .line 718
    const/high16 v3, 0x10a0000

    const v4, 0x10a0001

    invoke-virtual {p0, v3, v4}, Lcom/meizu/app/AccessApplication;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    .end local v1    # "fromActivityStack":Z
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->delayFinishIfNeed()V

    .line 724
    return-void

    .line 719
    .restart local v1    # "fromActivityStack":Z
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 720
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AccessApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startLauncherIdentiedComp()V
    .locals 4

    .prologue
    .line 741
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/meizu/app/AccessApplication;->mFromNotification:Z

    invoke-virtual {v1, v2, v3}, Lmeizu/security/AccessControlManager;->addAccessControlPassMz(Ljava/lang/String;Z)V

    .line 742
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mAccessPkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mAccessCls:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    .local v0, "newComponentName":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 744
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    iget-object v2, v2, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v2}, Landroid/content/IntentExt;->getAccessSrcFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 745
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    invoke-static {p0}, Lmeizu/splitmode/FlymeSplitModeManager;->getInstance(Landroid/content/Context;)Lmeizu/splitmode/FlymeSplitModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lmeizu/splitmode/FlymeSplitModeManager;->isSplitMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setSplitmode(Z)V

    .line 746
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/meizu/app/AccessApplication;->startActivity(Landroid/content/Intent;)V

    .line 747
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/meizu/app/AccessApplication;->overridePendingTransition(II)V

    .line 748
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->finish()V

    .line 749
    return-void
.end method

.method private startShakeAnim(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 752
    const-string v1, "translationX"

    const/16 v2, 0x19

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1a1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 756
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 757
    return-void

    .line 752
    nop

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x4039999a    # 2.9f
        0x41066666    # 8.4f
        0x416e6666    # 14.9f
        0x41a33333    # 20.4f
        0x41b5999a    # 22.7f
        0x41a00000    # 20.0f
        0x41566666    # 13.4f
        0x4099999a    # 4.8f
        -0x3f8ccccd    # -3.8f
        -0x3ed80000    # -10.5f
        -0x3eae6666    # -13.1f
        -0x3ec80000    # -11.5f
        -0x3f100000    # -7.5f
        -0x3fe00000    # -2.5f
        0x40333333    # 2.8f
        0x40d9999a    # 6.8f
        0x41066666    # 8.4f
        0x40fccccd    # 7.9f
        0x40d9999a    # 6.8f
        0x40a9999a    # 5.3f
        0x406ccccd    # 3.7f
        0x400ccccd    # 2.2f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startVerifyFlymeAccount(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 249
    const-string v0, "intent_key"

    .line 250
    .local v0, "key":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 254
    .local v1, "validateIntent":Landroid/content/Intent;
    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, Lcom/meizu/app/AccessApplication;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private unregisterAccessControl()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 498
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 500
    :cond_0
    return-void
.end method

.method private unregisterFindPhoneReceiver()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mFindPhoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mFindPhoneReceiver:Landroid/content/BroadcastReceiver;

    .line 494
    return-void
.end method

.method private unregisterScreenOffReceiver()V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 505
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 507
    :cond_0
    return-void
.end method

.method private verifyThePassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 510
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    new-instance v1, Lcom/meizu/app/AccessApplication$7;

    invoke-direct {v1, p0, p1}, Lcom/meizu/app/AccessApplication$7;-><init>(Lcom/meizu/app/AccessApplication;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SystemLockView;->post(Ljava/lang/Runnable;)Z

    .line 527
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 556
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 557
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 558
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->onBackPressed()V

    .line 560
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 562
    .local v0, "localObject2":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 563
    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->startActivity(Landroid/content/Intent;)V

    .line 564
    const/4 v1, 0x1

    .line 567
    .end local v0    # "localObject2":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public isFlymeAccountLogined()Z
    .locals 3

    .prologue
    .line 336
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 337
    .local v1, "am":Landroid/accounts/AccountManager;
    const-string v2, "com.meizu.account"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 338
    .local v0, "accounts":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 339
    const/4 v2, 0x1

    .line 342
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 375
    const-string v1, "AccessApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 377
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->releaseFlymeAccountServiceConnection()V

    .line 379
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 380
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->clearAppLock()V

    .line 381
    iget-boolean v1, p0, Lcom/meizu/app/AccessApplication;->mIsFromFlymeLauncher:Z

    if-eqz v1, :cond_1

    .line 382
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->startLauncherIdentiedComp()V

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->startIdentiedComp()V

    goto :goto_0

    .line 387
    :cond_2
    iget v1, p0, Lcom/meizu/app/AccessApplication;->mPasswordType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 388
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 390
    :cond_3
    const/16 v1, 0x3e7

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 391
    const-string v1, "ErrorMsg"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "errorMsg":Ljava/lang/String;
    const-string v1, "AccessApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->removeSecondTopRecentTask(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmeizu/security/AccessControlManager;->removeAccessControlPass(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->finish()V

    .line 552
    return-void
.end method

.method public onCellAdded(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 481
    return-void
.end method

.method public onCellCleared(Ljava/lang/String;)V
    .locals 0
    .param p1, "possword"    # Ljava/lang/String;

    .prologue
    .line 477
    return-void
.end method

.method public onCellFhish(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 531
    invoke-direct {p0, p1}, Lcom/meizu/app/AccessApplication;->verifyThePassword(Ljava/lang/String;)V

    .line 532
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    .line 118
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    iget-object v1, v1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v1}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v0

    .line 119
    .local v0, "flag":I
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/meizu/app/AccessApplication;->mIsFromFlymeLauncher:Z

    .line 120
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->initData()V

    .line 121
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->initView()V

    .line 122
    return-void

    .line 119
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 485
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 486
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->unregisterAccessControl()V

    .line 487
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->unregisterFindPhoneReceiver()V

    .line 488
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->releaseFlymeAccountServiceConnection()V

    .line 489
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->unregisterScreenOffReceiver()V

    .line 490
    return-void
.end method

.method public onInputTextButtonClick(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 545
    return-void
.end method

.method public onKeyLeftButtonClick(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->onBackPressed()V

    .line 619
    return-void
.end method

.method public onKeyRightButtonClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 623
    iget v0, p0, Lcom/meizu/app/AccessApplication;->mPasswordType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 624
    invoke-direct {p0, p1}, Lcom/meizu/app/AccessApplication;->verifyThePassword(Ljava/lang/String;)V

    .line 626
    :cond_0
    return-void
.end method

.method public onLeftButtonClick(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->onBackPressed()V

    .line 537
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Lcom/meizu/app/AccessApplication;->setIntent(Landroid/content/Intent;)V

    .line 417
    iput-object p1, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    .line 418
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    iget-object v1, v1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v1}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v0

    .line 419
    .local v0, "flag":I
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/meizu/app/AccessApplication;->mIsFromFlymeLauncher:Z

    .line 420
    iget-boolean v1, p0, Lcom/meizu/app/AccessApplication;->mIsFromFlymeLauncher:Z

    if-eqz v1, :cond_1

    .line 421
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->initLauncherAccessControlData()V

    .line 425
    :goto_1
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->isAssociateFlymeAccountOpened()Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/app/AccessApplication;->isAssociateAccountOpened:Z

    .line 426
    return-void

    .line 419
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 423
    :cond_1
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->initAccessControlData()V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 404
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 405
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mFM:Lcom/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/app/AccessApplication;->mNeedReleaseFM:Z

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mFM:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/fingerprints/service/FingerprintManager;->release()V

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmeizu/splitmode/FlymeSplitModeManager;->getInstance(Landroid/content/Context;)Lmeizu/splitmode/FlymeSplitModeManager;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, p0, v1}, Lmeizu/splitmode/FlymeSplitModeManager;->getActivitySplitRect(Landroid/app/Activity;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->finish()V

    .line 412
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 430
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 431
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->checkAppAccesstrol()V

    .line 432
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->resetDigitPanelView()V

    .line 433
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->enterFPVerifySession()V

    .line 434
    return-void
.end method

.method public onRightButtonClick(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 541
    return-void
.end method

.method public removeSecondTopRecentTask(Ljava/lang/String;)V
    .locals 13
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 571
    const-string v10, "activity"

    invoke-virtual {p0, v10}, Lcom/meizu/app/AccessApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 572
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v10, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    iget-object v10, v10, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v10}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v10

    and-int/lit8 v10, v10, 0x40

    if-eqz v10, :cond_3

    move v8, v9

    .line 573
    .local v8, "remove":Z
    :goto_0
    const/16 v10, 0xa

    invoke-virtual {v0, v10, v9}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v7

    .line 576
    .local v7, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 577
    .local v4, "numTasks":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 578
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 580
    .local v6, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v3, Landroid/content/Intent;

    iget-object v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 581
    .local v3, "intent":Landroid/content/Intent;
    iget-object v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v10, :cond_0

    .line 582
    iget-object v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 584
    :cond_0
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 585
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    if-ne v2, v9, :cond_2

    if-eqz v8, :cond_2

    .line 586
    :cond_1
    const-string v10, "access"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "moveTaskBack :  packageName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " recentInfo :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    iget v11, v6, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-interface {v10, v11}, Landroid/app/IActivityManager;->moveTaskToBack(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 572
    .end local v2    # "i":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "numTasks":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v7    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v8    # "remove":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 590
    .restart local v2    # "i":I
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "numTasks":I
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .restart local v7    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .restart local v8    # "remove":Z
    :catch_0
    move-exception v1

    .line 591
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 595
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_4
    return-void
.end method
