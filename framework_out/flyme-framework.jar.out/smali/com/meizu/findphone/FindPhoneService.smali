.class public Lcom/meizu/findphone/FindPhoneService;
.super Ljava/lang/Object;
.source "FindPhoneService.java"


# static fields
.field public static final FLYME_CHECK_PASSWORD:Z = true

.field private static final LOCK_PASSWORD_FILE:Ljava/lang/String; = "password.key"

.field public static final MAX_TIMES_OF_CHECK_PASSWORD:I = 0xf

.field public static final PASSWORD_TYPE_LEFT_COUNT:Ljava/lang/String; = "lockscreen.password_left_count"

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TAG:Ljava/lang/String; = "FindPhoneService"

.field private static final mFileName:Ljava/lang/String; = "keyguard_findphone.log"


# instance fields
.field df:Ljava/text/DateFormat;

.field private mContext:Landroid/content/Context;

.field mFindPhoneConnection:Landroid/content/ServiceConnection;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mPasswordLeftTimes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0xf

    iput v0, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/findphone/FindPhoneService;->df:Ljava/text/DateFormat;

    .line 45
    new-instance v0, Lcom/meizu/findphone/FindPhoneService$1;

    invoke-direct {v0, p0}, Lcom/meizu/findphone/FindPhoneService$1;-><init>(Lcom/meizu/findphone/FindPhoneService;)V

    iput-object v0, p0, Lcom/meizu/findphone/FindPhoneService;->mFindPhoneConnection:Landroid/content/ServiceConnection;

    .line 72
    iput-object p2, p0, Lcom/meizu/findphone/FindPhoneService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 73
    iput-object p1, p0, Lcom/meizu/findphone/FindPhoneService;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/findphone/FindPhoneService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/findphone/FindPhoneService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/meizu/findphone/FindPhoneService;->writeLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/findphone/FindPhoneService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/findphone/FindPhoneService;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/meizu/findphone/FindPhoneService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private deleteFileIfTooBig()V
    .locals 9

    .prologue
    .line 206
    const-string v3, ""

    .line 208
    .local v3, "res":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v6, "/mnt/sdcard/keyguard_findphone.log"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 210
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v6

    int-to-double v4, v6

    .line 211
    .local v4, "length":D
    const-wide/high16 v6, 0x4164000000000000L    # 1.048576E7

    cmpl-double v6, v4, v6

    if-lez v6, :cond_0

    .line 212
    const-string v6, "FindPhoneService"

    const-string v7, "file size > 10M"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 215
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 216
    const-string v6, "FindPhoneService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "res = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v4    # "length":D
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getLockPasswordFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "password.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "password.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/meizu/findphone/FindPhoneService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    .line 188
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/findphone/FindPhoneService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/meizu/findphone/FindPhoneService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private maybeUpdateKeystore(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 109
    if-nez p2, :cond_0

    .line 110
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 113
    .local v0, "keyStore":Landroid/security/KeyStore;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {v0}, Landroid/security/KeyStore;->reset()Z

    .line 120
    .end local v0    # "keyStore":Landroid/security/KeyStore;
    :cond_0
    :goto_0
    return-void

    .line 117
    .restart local v0    # "keyStore":Landroid/security/KeyStore;
    :cond_1
    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private writeLog(Ljava/lang/String;)V
    .locals 7
    .param p1, "writestr"    # Ljava/lang/String;

    .prologue
    .line 194
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/meizu/findphone/FindPhoneService;->df:Ljava/text/DateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 195
    new-instance v2, Ljava/io/File;

    const-string v4, "/mnt/sdcard/keyguard_findphone.log"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 197
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 198
    .local v0, "bytes":[B
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 199
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 200
    invoke-direct {p0}, Lcom/meizu/findphone/FindPhoneService;->deleteFileIfTooBig()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v0    # "bytes":[B
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;I)Z
    .locals 16
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v8, 0x0

    .line 127
    .local v8, "ret":Z
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ":FindPhoneService checkPassword, password = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/meizu/findphone/FindPhoneService;->writeLog(Ljava/lang/String;)V

    .line 128
    new-instance v7, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/meizu/findphone/FindPhoneService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "r"

    invoke-direct {v7, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .local v7, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    long-to-int v11, v12

    new-array v10, v11, [B

    .line 131
    .local v10, "stored":[B
    const/4 v11, 0x0

    array-length v12, v10

    invoke-virtual {v7, v10, v11, v12}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    .line 132
    .local v3, "got":I
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 133
    if-gtz v3, :cond_1

    .line 134
    const/16 v11, 0xf

    move-object/from16 v0, p0

    iput v11, v0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    const/4 v8, 0x1

    .line 161
    .end local v3    # "got":I
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .end local v10    # "stored":[B
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/meizu/findphone/FindPhoneService;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v11

    const-string v12, "lockscreen.password_left_count"

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    int-to-long v14, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v14, v15, v13}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V

    .line 162
    move-object/from16 v0, p0

    iget v11, v0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    if-gtz v11, :cond_0

    .line 163
    const-string v11, "FindPhoneService"

    const-string v12, "begin bindservice-------------"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v11, ":FindPhoneService checkPassword begin bindservice-------------\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/meizu/findphone/FindPhoneService;->writeLog(Ljava/lang/String;)V

    .line 165
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 166
    .local v9, "serviceIntent":Landroid/content/Intent;
    const-class v11, Lcom/meizu/flyme/service/find/IPhoneLocationService;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v11, "com.meizu.flyme.service.find"

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/meizu/findphone/FindPhoneService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/findphone/FindPhoneService;->mFindPhoneConnection:Landroid/content/ServiceConnection;

    const/4 v13, 0x1

    invoke-virtual {v11, v9, v12, v13}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 171
    .end local v9    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    return v8

    .line 139
    .restart local v3    # "got":I
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "stored":[B
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/meizu/findphone/FindPhoneService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    .line 140
    .local v4, "hash":[B
    invoke-static {v10, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    .line 141
    .local v6, "matched":Z
    if-eqz v6, :cond_3

    .line 142
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 143
    invoke-direct/range {p0 .. p2}, Lcom/meizu/findphone/FindPhoneService;->maybeUpdateKeystore(Ljava/lang/String;I)V

    .line 145
    :cond_2
    const/16 v11, 0xf

    move-object/from16 v0, p0

    iput v11, v0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    .line 146
    const/4 v8, 0x1

    goto :goto_0

    .line 148
    :cond_3
    move-object/from16 v0, p0

    iget v11, v0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    const/4 v8, 0x0

    goto :goto_0

    .line 152
    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v6    # "matched":Z
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .end local v10    # "stored":[B
    :catch_0
    move-exception v2

    .line 153
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    const-string v11, "FindPhoneService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot read file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/16 v11, 0xf

    move-object/from16 v0, p0

    iput v11, v0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    .line 155
    const/4 v8, 0x1

    .line 160
    goto/16 :goto_0

    .line 156
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    .line 157
    .local v5, "ioe":Ljava/io/IOException;
    const-string v11, "FindPhoneService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot read file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/16 v11, 0xf

    move-object/from16 v0, p0

    iput v11, v0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    .line 159
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method public processLeftTimes(Z)I
    .locals 6
    .param p1, "reset"    # Z

    .prologue
    .line 175
    if-eqz p1, :cond_0

    .line 176
    const/16 v1, 0xf

    iput v1, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    .line 178
    :try_start_0
    invoke-direct {p0}, Lcom/meizu/findphone/FindPhoneService;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const-string v2, "lockscreen.password_left_count"

    iget v3, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    int-to-long v4, v3

    const/4 v3, 0x0

    invoke-interface {v1, v2, v4, v5, v3}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    :goto_0
    iget v1, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    return v1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setLockPassword(Ljava/lang/String;I)V
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":FindPhoneService setLockPassword, password = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/findphone/FindPhoneService;->writeLog(Ljava/lang/String;)V

    .line 91
    const/16 v0, 0xf

    iput v0, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    .line 92
    invoke-direct {p0}, Lcom/meizu/findphone/FindPhoneService;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const-string v1, "lockscreen.password_left_count"

    iget v2, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V

    .line 93
    return-void
.end method

.method public systemReady()V
    .locals 7

    .prologue
    const/16 v6, 0xf

    .line 78
    :try_start_0
    invoke-direct {p0}, Lcom/meizu/findphone/FindPhoneService;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const-string v2, "lockscreen.password_left_count"

    const-wide/16 v4, 0xf

    const/4 v3, 0x0

    invoke-interface {v1, v2, v4, v5, v3}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    .line 79
    const-string v1, "FindPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LockSettingsService systemReady, now mPasswordLeftTimes is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget v1, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    if-ge v1, v6, :cond_0

    .line 81
    const/16 v1, 0xf

    iput v1, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    .line 82
    invoke-direct {p0}, Lcom/meizu/findphone/FindPhoneService;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const-string v2, "lockscreen.password_left_count"

    const-wide/16 v4, 0xf

    const/4 v3, 0x0

    invoke-interface {v1, v2, v4, v5, v3}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
