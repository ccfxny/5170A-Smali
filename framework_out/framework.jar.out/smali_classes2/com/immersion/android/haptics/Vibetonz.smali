.class public Lcom/immersion/android/haptics/Vibetonz;
.super Ljava/lang/Object;
.source "Vibetonz.java"


# static fields
.field public static final DEFAULT_INDEX_ID:I = 0x0

.field public static final DEFAULT_REPEAT_COUNT:B = 0x0t

.field public static final INCOMING_CALL_EFFECT_STRING:Ljava/lang/String; = "Ringtone_AlienBacon"

.field private static final MSG_CLOSE:I = 0x3ec

.field private static final MSG_EFFECT_START:I = 0x3e9

.field private static final MSG_EFFECT_STOP:I = 0x3eb

.field private static final MSG_LOAD_EFFECT:I = 0x3ea

.field public static final NOTIFICATION_EFFECT_STRING:Ljava/lang/String; = "Notification_General"

.field private static final TAG:Ljava/lang/String; = "HapticFeedbackManager"

.field public static final USE_INCOMING_CALL_EFFECT:I = 0x1

.field public static final USE_NOTIFICATION_EFFECT:I = 0x2

.field private static sContext:Landroid/content/Context;

.field private static sDevice:Lcom/immersion/Device;

.field private static sVibeDevice:Lcom/immersion/android/haptics/Vibetonz;


# instance fields
.field private mEffectName:Ljava/lang/String;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mImmerHandler:Landroid/os/Handler;

.field private mUseWhichEffect:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    sput-object v0, Lcom/immersion/android/haptics/Vibetonz;->sVibeDevice:Lcom/immersion/android/haptics/Vibetonz;

    .line 38
    sput-object v0, Lcom/immersion/android/haptics/Vibetonz;->sDevice:Lcom/immersion/Device;

    .line 39
    sput-object v0, Lcom/immersion/android/haptics/Vibetonz;->sContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/immersion/android/haptics/Vibetonz;->mHandlerThread:Landroid/os/HandlerThread;

    .line 45
    iput-object v1, p0, Lcom/immersion/android/haptics/Vibetonz;->mImmerHandler:Landroid/os/Handler;

    .line 53
    const-string v1, "HapticFeedbackManager"

    const-string v2, "Begin constructing Vibetonz instance......"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :try_start_0
    invoke-static {}, Lcom/immersion/Device;->newDevice()Lcom/immersion/Device;

    move-result-object v1

    sput-object v1, Lcom/immersion/android/haptics/Vibetonz;->sDevice:Lcom/immersion/Device;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "HapticFeedbackManager"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/immersion/android/haptics/Vibetonz;->mHandlerThread:Landroid/os/HandlerThread;

    .line 60
    iget-object v1, p0, Lcom/immersion/android/haptics/Vibetonz;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 61
    iget-object v1, p0, Lcom/immersion/android/haptics/Vibetonz;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/immersion/android/haptics/Vibetonz;->initThreadHandler(Landroid/os/Looper;)V

    .line 62
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private NewIvtBuffer()Lcom/immersion/IVTBuffer;
    .locals 12

    .prologue
    .line 81
    const/4 v5, 0x0

    .line 83
    .local v5, "ivtBuffer":Lcom/immersion/IVTBuffer;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 84
    .local v0, "byteOuts":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 85
    .local v3, "in":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 87
    .local v7, "m_file":Ljava/io/File;
    iget v9, p0, Lcom/immersion/android/haptics/Vibetonz;->mUseWhichEffect:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 88
    new-instance v7, Ljava/io/File;

    .end local v7    # "m_file":Ljava/io/File;
    const-string v9, "/system/media/haptic/Ringtone.ivt"

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .restart local v7    # "m_file":Ljava/io/File;
    :cond_0
    :goto_0
    if-nez v7, :cond_2

    const/4 v9, 0x0

    .line 126
    :goto_1
    return-object v9

    .line 89
    :cond_1
    iget v9, p0, Lcom/immersion/android/haptics/Vibetonz;->mUseWhichEffect:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 90
    new-instance v7, Ljava/io/File;

    .end local v7    # "m_file":Ljava/io/File;
    const-string v9, "/system/media/haptic/Notification.ivt"

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v7    # "m_file":Ljava/io/File;
    goto :goto_0

    .line 98
    :cond_2
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .end local v3    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 100
    .local v2, "iLen":I
    const/16 v9, 0x400

    :try_start_1
    new-array v8, v9, [B

    .line 101
    .local v8, "myBuffer":[B
    :goto_2
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_5

    .line 102
    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 106
    .end local v8    # "myBuffer":[B
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 107
    .end local v2    # "iLen":I
    .end local v4    # "in":Ljava/io/InputStream;
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v3    # "in":Ljava/io/InputStream;
    :goto_3
    :try_start_2
    const-string v9, "HapticFeedbackManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NotFoundException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    if-eqz v3, :cond_3

    .line 113
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 119
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    :goto_4
    if-eqz v0, :cond_4

    .line 120
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_5
    move-object v9, v5

    .line 126
    goto :goto_1

    .line 105
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "iLen":I
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v8    # "myBuffer":[B
    :cond_5
    :try_start_5
    new-instance v6, Lcom/immersion/IVTBuffer;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/immersion/IVTBuffer;-><init>([B)V
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 112
    .end local v5    # "ivtBuffer":Lcom/immersion/IVTBuffer;
    .local v6, "ivtBuffer":Lcom/immersion/IVTBuffer;
    if-eqz v4, :cond_6

    .line 113
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 119
    :cond_6
    :goto_6
    if-eqz v0, :cond_7

    .line 120
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_7
    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    move-object v5, v6

    .line 124
    .end local v6    # "ivtBuffer":Lcom/immersion/IVTBuffer;
    .restart local v5    # "ivtBuffer":Lcom/immersion/IVTBuffer;
    goto :goto_5

    .line 115
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v5    # "ivtBuffer":Lcom/immersion/IVTBuffer;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v6    # "ivtBuffer":Lcom/immersion/IVTBuffer;
    :catch_1
    move-exception v1

    .line 116
    .local v1, "e":Ljava/io/IOException;
    const-string v9, "HapticFeedbackManager"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 122
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 123
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "HapticFeedbackManager"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    move-object v5, v6

    .line 125
    .end local v6    # "ivtBuffer":Lcom/immersion/IVTBuffer;
    .restart local v5    # "ivtBuffer":Lcom/immersion/IVTBuffer;
    goto :goto_5

    .line 115
    .end local v2    # "iLen":I
    .end local v8    # "myBuffer":[B
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    :catch_3
    move-exception v1

    .line 116
    .local v1, "e":Ljava/io/IOException;
    const-string v9, "HapticFeedbackManager"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 122
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 123
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "HapticFeedbackManager"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 108
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 109
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_8
    const-string v9, "HapticFeedbackManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 112
    if-eqz v3, :cond_8

    .line 113
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 119
    :cond_8
    :goto_8
    if-eqz v0, :cond_4

    .line 120
    :try_start_a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_5

    .line 122
    :catch_6
    move-exception v1

    .line 123
    const-string v9, "HapticFeedbackManager"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 115
    :catch_7
    move-exception v1

    .line 116
    const-string v9, "HapticFeedbackManager"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 111
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 112
    :goto_9
    if-eqz v3, :cond_9

    .line 113
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 119
    :cond_9
    :goto_a
    if-eqz v0, :cond_a

    .line 120
    :try_start_c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 124
    :cond_a
    :goto_b
    throw v9

    .line 115
    :catch_8
    move-exception v1

    .line 116
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v10, "HapticFeedbackManager"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 122
    .end local v1    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v1

    .line 123
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v10, "HapticFeedbackManager"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 111
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "iLen":I
    .restart local v4    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_9

    .line 108
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_a
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_7

    .line 106
    .end local v2    # "iLen":I
    :catch_b
    move-exception v1

    goto/16 :goto_3
.end method

.method static synthetic access$000(Lcom/immersion/android/haptics/Vibetonz;)V
    .locals 0
    .param p0, "x0"    # Lcom/immersion/android/haptics/Vibetonz;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/immersion/android/haptics/Vibetonz;->playEffect()V

    return-void
.end method

.method static synthetic access$100()Lcom/immersion/Device;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/immersion/android/haptics/Vibetonz;->sDevice:Lcom/immersion/Device;

    return-object v0
.end method

.method static synthetic access$200(Lcom/immersion/android/haptics/Vibetonz;)V
    .locals 0
    .param p0, "x0"    # Lcom/immersion/android/haptics/Vibetonz;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/immersion/android/haptics/Vibetonz;->release()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/immersion/android/haptics/Vibetonz;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const-class v1, Lcom/immersion/android/haptics/Vibetonz;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/immersion/android/haptics/Vibetonz;->sContext:Landroid/content/Context;

    .line 66
    sget-object v0, Lcom/immersion/android/haptics/Vibetonz;->sVibeDevice:Lcom/immersion/android/haptics/Vibetonz;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/immersion/android/haptics/Vibetonz;

    invoke-direct {v0}, Lcom/immersion/android/haptics/Vibetonz;-><init>()V

    sput-object v0, Lcom/immersion/android/haptics/Vibetonz;->sVibeDevice:Lcom/immersion/android/haptics/Vibetonz;

    .line 69
    :cond_0
    sget-object v0, Lcom/immersion/android/haptics/Vibetonz;->sVibeDevice:Lcom/immersion/android/haptics/Vibetonz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initThreadHandler(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 193
    const-string v0, "HapticFeedbackManager"

    const-string v1, "initThreadHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Lcom/immersion/android/haptics/Vibetonz$1;

    invoke-direct {v0, p0, p1}, Lcom/immersion/android/haptics/Vibetonz$1;-><init>(Lcom/immersion/android/haptics/Vibetonz;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/immersion/android/haptics/Vibetonz;->mImmerHandler:Landroid/os/Handler;

    .line 216
    return-void
.end method

.method private playEffect()V
    .locals 5

    .prologue
    .line 130
    sget-object v2, Lcom/immersion/android/haptics/Vibetonz;->sDevice:Lcom/immersion/Device;

    if-eqz v2, :cond_1

    .line 132
    sget-object v2, Lcom/immersion/android/haptics/Vibetonz;->sDevice:Lcom/immersion/Device;

    invoke-virtual {v2}, Lcom/immersion/Device;->stopAllPlayingEffects()V

    .line 133
    invoke-direct {p0}, Lcom/immersion/android/haptics/Vibetonz;->NewIvtBuffer()Lcom/immersion/IVTBuffer;

    move-result-object v1

    .line 134
    .local v1, "ivtBuffer":Lcom/immersion/IVTBuffer;
    if-nez v1, :cond_0

    .line 135
    const-string v2, "HapticFeedbackManager"

    const-string v3, "Problem loading effects file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v1    # "ivtBuffer":Lcom/immersion/IVTBuffer;
    :goto_0
    return-void

    .line 140
    .restart local v1    # "ivtBuffer":Lcom/immersion/IVTBuffer;
    :cond_0
    :try_start_0
    const-string v2, "HapticFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playIvtEffect defaultHapticTheme effect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/immersion/android/haptics/Vibetonz;->mEffectName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " whicheffect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/immersion/android/haptics/Vibetonz;->mUseWhichEffect:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-object v2, Lcom/immersion/android/haptics/Vibetonz;->sDevice:Lcom/immersion/Device;

    iget-object v3, p0, Lcom/immersion/android/haptics/Vibetonz;->mEffectName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/immersion/IVTBuffer;->getEffectIndexFromName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/immersion/Device;->playIVTEffect(Lcom/immersion/IVTBuffer;I)Lcom/immersion/EffectHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HapticFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem playing effects file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ivtBuffer":Lcom/immersion/IVTBuffer;
    :cond_1
    const-string v2, "HapticFeedbackManager"

    const-string v3, "sDevice should not be null !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private release()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 179
    const-string v0, "HapticFeedbackManager"

    const-string v1, "Vibetonz release ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sget-object v0, Lcom/immersion/android/haptics/Vibetonz;->sDevice:Lcom/immersion/Device;

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Lcom/immersion/android/haptics/Vibetonz;->sDevice:Lcom/immersion/Device;

    invoke-virtual {v0}, Lcom/immersion/Device;->close()V

    .line 182
    sput-object v2, Lcom/immersion/android/haptics/Vibetonz;->sDevice:Lcom/immersion/Device;

    .line 183
    invoke-direct {p0, v2}, Lcom/immersion/android/haptics/Vibetonz;->setContext(Landroid/content/Context;)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/immersion/android/haptics/Vibetonz;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/immersion/android/haptics/Vibetonz;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    const-string v0, "HapticFeedbackManager"

    const-string v1, "mHandlerThread.quit()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/immersion/android/haptics/Vibetonz;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 190
    :cond_1
    return-void
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    sput-object p1, Lcom/immersion/android/haptics/Vibetonz;->sContext:Landroid/content/Context;

    .line 78
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/immersion/android/haptics/Vibetonz;->mImmerHandler:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 154
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/immersion/android/haptics/Vibetonz;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public playIvtEffect(Ljava/lang/String;I)V
    .locals 3
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "whichEffect"    # I

    .prologue
    const/4 v2, 0x1

    .line 158
    iput-object p1, p0, Lcom/immersion/android/haptics/Vibetonz;->mEffectName:Ljava/lang/String;

    .line 159
    iput p2, p0, Lcom/immersion/android/haptics/Vibetonz;->mUseWhichEffect:I

    .line 161
    sget-object v0, Lcom/immersion/android/haptics/Vibetonz;->sDevice:Lcom/immersion/Device;

    if-eqz v0, :cond_0

    .line 162
    iget v0, p0, Lcom/immersion/android/haptics/Vibetonz;->mUseWhichEffect:I

    if-ne v0, v2, :cond_1

    .line 163
    sget-object v0, Lcom/immersion/android/haptics/Vibetonz;->sDevice:Lcom/immersion/Device;

    const/4 v1, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/immersion/Device;->setPropertyInt32(II)V

    .line 169
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/immersion/android/haptics/Vibetonz;->mImmerHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 170
    return-void

    .line 164
    :cond_1
    iget v0, p0, Lcom/immersion/android/haptics/Vibetonz;->mUseWhichEffect:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 165
    sget-object v0, Lcom/immersion/android/haptics/Vibetonz;->sDevice:Lcom/immersion/Device;

    const/4 v1, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/immersion/Device;->setPropertyInt32(II)V

    goto :goto_0
.end method

.method public stopPlayEffect()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/immersion/android/haptics/Vibetonz;->mImmerHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 175
    return-void
.end method
