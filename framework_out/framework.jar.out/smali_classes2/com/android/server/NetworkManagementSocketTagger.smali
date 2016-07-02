.class public final Lcom/android/server/NetworkManagementSocketTagger;
.super Ldalvik/system/SocketTagger;
.source "NetworkManagementSocketTagger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkManagementSocketTagger$SocketTags;
    }
.end annotation


# static fields
.field private static DEBUG_TRAFFIC_TRACKING:Ljava/lang/Boolean; = null

.field private static final LOGD:Z = true

.field private static final MAX_THREAD_NAME_LENGTH:I = 0x28

.field public static final PROP_QTAGUID_ENABLED:Ljava/lang/String; = "net.qtaguid_enabled"

.field private static final TAG:Ljava/lang/String; = "NetworkManagementSocketTagger"

.field private static final TAG_FLYME_TRAFFIC_TRACKING:Ljava/lang/String; = "FlymeTrafficTracking"

.field private static mSystemAppMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static threadSocketTags:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/server/NetworkManagementSocketTagger$SocketTags;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 48
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/server/NetworkManagementSocketTagger;->DEBUG_TRAFFIC_TRACKING:Ljava/lang/Boolean;

    .line 54
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->DEBUG_TRAFFIC_TRACKING:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const v0, 0x8000

    .line 57
    .local v0, "tagStart":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/NetworkManagementSocketTagger;->mSystemAppMap:Ljava/util/HashMap;

    .line 59
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->mSystemAppMap:Ljava/util/HashMap;

    const-string v2, "android"

    add-int/lit8 v0, v0, 0x1

    const v3, -0x7fff0001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->mSystemAppMap:Ljava/util/HashMap;

    const-string v2, "com.android.inputdevices"

    add-int/lit8 v0, v0, 0x1

    const v3, -0x7ffe0001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->mSystemAppMap:Ljava/util/HashMap;

    const-string v2, "com.android.keychain"

    add-int/lit8 v0, v0, 0x1

    const v3, -0x7ffd0001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->mSystemAppMap:Ljava/util/HashMap;

    const-string v2, "com.android.keyguard"

    add-int/lit8 v0, v0, 0x1

    const v3, -0x7ffc0001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->mSystemAppMap:Ljava/util/HashMap;

    const-string v2, "com.android.location.fused"

    add-int/lit8 v0, v0, 0x1

    const v3, -0x7ffb0001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->mSystemAppMap:Ljava/util/HashMap;

    const-string v2, "com.android.packageinstaller"

    add-int/lit8 v0, v0, 0x1

    const v3, -0x7ffa0001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->mSystemAppMap:Ljava/util/HashMap;

    const-string v2, "com.android.providers.settings"

    add-int/lit8 v0, v0, 0x1

    const v3, -0x7ff90001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->mSystemAppMap:Ljava/util/HashMap;

    const-string v2, "com.android.settings"

    add-int/lit8 v0, v0, 0x1

    const v3, -0x7ff80001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->mSystemAppMap:Ljava/util/HashMap;

    const-string v2, "com.android.simmelock"

    add-int/lit8 v0, v0, 0x1

    const v3, -0x7ff70001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->mSystemAppMap:Ljava/util/HashMap;

    const-string v2, "com.android.systemui"

    add-int/lit8 v0, v0, 0x1

    const v3, -0x7ff60001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->mSystemAppMap:Ljava/util/HashMap;

    const-string v2, "com.fingerprints.service"

    add-int/lit8 v0, v0, 0x1

    const v3, -0x7ff50001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->mSystemAppMap:Ljava/util/HashMap;

    const-string v2, "com.mediatek"

    add-int/lit8 v0, v0, 0x1

    const v3, -0x7ff40001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->mSystemAppMap:Ljava/util/HashMap;

    const-string v2, "com.mediatek.atci.service"

    add-int/lit8 v0, v0, 0x1

    const v3, -0x7ff30001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->mSystemAppMap:Ljava/util/HashMap;

    const-string v2, "com.mediatek.batterywarning"

    add-int/lit8 v0, v0, 0x1

    const v3, -0x7ff20001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->mSystemAppMap:Ljava/util/HashMap;

    const-string v2, "com.mediatek.connectivity"

    add-int/lit8 v0, v0, 0x1

    const v3, -0x7ff10001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->mSystemAppMap:Ljava/util/HashMap;

    const-string v2, "com.meizu.documentsui"

    add-int/lit8 v0, v0, 0x1

    const v3, -0x7ff00001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->mSystemAppMap:Ljava/util/HashMap;

    const-string v2, "com.meizu.flyme.update"

    add-int/lit8 v0, v0, 0x1

    const v3, -0x7fef0001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->mSystemAppMap:Ljava/util/HashMap;

    const-string v2, "com.meizu.flyme.weather"

    add-int/lit8 v0, v0, 0x1

    const v3, -0x7fee0001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->mSystemAppMap:Ljava/util/HashMap;

    const-string v2, "com.meizu.logreport"

    add-int/lit8 v0, v0, 0x1

    const v3, -0x7fed0001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->mSystemAppMap:Ljava/util/HashMap;

    const-string v2, "com.meizu.safe"

    add-int/lit8 v0, v0, 0x1

    const v3, -0x7fec0001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->mSystemAppMap:Ljava/util/HashMap;

    const-string v2, "com.meizu.voiceassistant"

    add-int/lit8 v0, v0, 0x1

    const v3, -0x7feb0001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "FlymeTrafficTracking"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SystemAppMap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/NetworkManagementSocketTagger;->mSystemAppMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    new-instance v1, Lcom/android/server/NetworkManagementSocketTagger$1;

    invoke-direct {v1}, Lcom/android/server/NetworkManagementSocketTagger$1;-><init>()V

    sput-object v1, Lcom/android/server/NetworkManagementSocketTagger;->threadSocketTags:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ldalvik/system/SocketTagger;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementSocketTagger;->mFdMap:Ljava/util/HashMap;

    .line 193
    return-void
.end method

.method private getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 2

    .prologue
    .line 237
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 238
    .local v0, "app":Landroid/app/Application;
    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 241
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCallingPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 246
    const/4 v1, 0x0

    .line 248
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/NetworkManagementSocketTagger;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 249
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 250
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 252
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 253
    :cond_1
    const-string v1, "Unknown"

    .line 255
    :cond_2
    return-object v1
.end method

.method private getCallingUid()I
    .locals 2

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/android/server/NetworkManagementSocketTagger;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 260
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 261
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 263
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private static getPackageTag(Ljava/lang/String;)I
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 287
    const/4 v0, -0x1

    .line 288
    .local v0, "tag":I
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->DEBUG_TRAFFIC_TRACKING:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->mSystemAppMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->mSystemAppMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 293
    :cond_0
    return v0
.end method

.method private getProcessInfo()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x28

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/android/server/NetworkManagementSocketTagger;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 270
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 271
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "threadName":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 275
    const-string v2, "Unknown"

    .line 277
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_2

    .line 278
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 281
    :cond_2
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getThreadSocketStatsTag()I
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/server/NetworkManagementSocketTagger;->threadSocketTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;

    iget v0, v0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsTag:I

    return v0
.end method

.method public static install()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/android/server/NetworkManagementSocketTagger;

    invoke-direct {v0}, Lcom/android/server/NetworkManagementSocketTagger;-><init>()V

    invoke-static {v0}, Ldalvik/system/SocketTagger;->set(Ldalvik/system/SocketTagger;)V

    .line 102
    return-void
.end method

.method public static kernelToTag(Ljava/lang/String;)I
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 223
    .local v0, "length":I
    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    .line 224
    add-int/lit8 v2, v0, -0x8

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    .line 226
    :cond_0
    return v1
.end method

.method private static native native_deleteTagData(II)I
.end method

.method private static native native_setCounterSet(II)I
.end method

.method private static native native_tagSocketFd(Ljava/io/FileDescriptor;II)I
.end method

.method private static native native_untagSocketFd(Ljava/io/FileDescriptor;)I
.end method

.method public static resetKernelUidStats(I)V
    .locals 4
    .param p0, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 209
    const-string v1, "net.qtaguid_enabled"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-static {v2, p0}, Lcom/android/server/NetworkManagementSocketTagger;->native_deleteTagData(II)I

    move-result v0

    .line 211
    .local v0, "errno":I
    if-gez v0, :cond_0

    .line 212
    const-string v1, "NetworkManagementSocketTagger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem clearing counters for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v0    # "errno":I
    :cond_0
    return-void
.end method

.method public static setKernelCounterSet(II)V
    .locals 4
    .param p0, "uid"    # I
    .param p1, "counterSet"    # I

    .prologue
    .line 199
    const-string v1, "net.qtaguid_enabled"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-static {p1, p0}, Lcom/android/server/NetworkManagementSocketTagger;->native_setCounterSet(II)I

    move-result v0

    .line 201
    .local v0, "errno":I
    if-gez v0, :cond_0

    .line 202
    const-string v1, "NetworkManagementSocketTagger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setKernelCountSet("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") failed with errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v0    # "errno":I
    :cond_0
    return-void
.end method

.method public static setThreadSocketStatsTag(I)V
    .locals 1
    .param p0, "tag"    # I

    .prologue
    .line 105
    sget-object v0, Lcom/android/server/NetworkManagementSocketTagger;->threadSocketTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;

    iput p0, v0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsTag:I

    .line 106
    return-void
.end method

.method public static setThreadSocketStatsUid(I)V
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 113
    sget-object v0, Lcom/android/server/NetworkManagementSocketTagger;->threadSocketTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;

    iput p0, v0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsUid:I

    .line 114
    return-void
.end method

.method private tagSocketFd(Ljava/io/FileDescriptor;II)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "tag"    # I
    .param p3, "uid"    # I

    .prologue
    const/4 v1, -0x1

    .line 146
    if-ne p2, v1, :cond_1

    if-ne p3, v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    const-string v1, "net.qtaguid_enabled"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-static {p1, p2, p3}, Lcom/android/server/NetworkManagementSocketTagger;->native_tagSocketFd(Ljava/io/FileDescriptor;II)I

    move-result v0

    .line 150
    .local v0, "errno":I
    if-gez v0, :cond_0

    .line 151
    const-string v1, "NetworkManagementSocketTagger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tagSocketFd("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") failed with errno"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unTagSocketFd(Ljava/io/FileDescriptor;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    const/4 v3, -0x1

    .line 182
    sget-object v2, Lcom/android/server/NetworkManagementSocketTagger;->threadSocketTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;

    .line 183
    .local v1, "options":Lcom/android/server/NetworkManagementSocketTagger$SocketTags;
    iget v2, v1, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsTag:I

    if-ne v2, v3, :cond_1

    iget v2, v1, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsUid:I

    if-ne v2, v3, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const-string v2, "net.qtaguid_enabled"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    invoke-static {p1}, Lcom/android/server/NetworkManagementSocketTagger;->native_untagSocketFd(Ljava/io/FileDescriptor;)I

    move-result v0

    .line 187
    .local v0, "errno":I
    if-gez v0, :cond_0

    .line 188
    const-string v2, "NetworkManagementSocketTagger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "untagSocket("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") failed with errno "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public tag(Ljava/io/FileDescriptor;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 120
    sget-object v3, Lcom/android/server/NetworkManagementSocketTagger;->DEBUG_TRAFFIC_TRACKING:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    iget-object v3, p0, Lcom/android/server/NetworkManagementSocketTagger;->mFdMap:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v3, "FlymeTrafficTracking"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tag  ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/NetworkManagementSocketTagger;->getProcessInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/NetworkManagementSocketTagger;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0}, Lcom/android/server/NetworkManagementSocketTagger;->getCallingPackageName()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "packageName":Ljava/lang/String;
    sget-object v3, Lcom/android/server/NetworkManagementSocketTagger;->mSystemAppMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    sget-object v3, Lcom/android/server/NetworkManagementSocketTagger;->mSystemAppMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 127
    .local v2, "tag":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 128
    invoke-static {v2}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsTag(I)V

    .line 129
    const-string v3, "FlymeTrafficTracking"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set tracking tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "tag":I
    :cond_0
    sget-object v3, Lcom/android/server/NetworkManagementSocketTagger;->threadSocketTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;

    .line 138
    .local v0, "options":Lcom/android/server/NetworkManagementSocketTagger$SocketTags;
    const-string v3, "NetworkManagementSocketTagger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tagSocket("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") with statsTag=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsTag:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", statsUid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget v3, v0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsTag:I

    iget v4, v0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsUid:I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/NetworkManagementSocketTagger;->tagSocketFd(Ljava/io/FileDescriptor;II)V

    .line 143
    return-void
.end method

.method public untag(Ljava/io/FileDescriptor;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 161
    const-string v3, "NetworkManagementSocketTagger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "untagSocket("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget-object v3, Lcom/android/server/NetworkManagementSocketTagger;->DEBUG_TRAFFIC_TRACKING:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 167
    .local v1, "key":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/NetworkManagementSocketTagger;->mFdMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    iget-object v3, p0, Lcom/android/server/NetworkManagementSocketTagger;->mFdMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 169
    .local v2, "startTime":Ljava/lang/Long;
    iget-object v3, p0, Lcom/android/server/NetworkManagementSocketTagger;->mFdMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 171
    .local v0, "diff":Ljava/lang/Long;
    const-string v3, "FlymeTrafficTracking"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "untag("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/NetworkManagementSocketTagger;->getProcessInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/NetworkManagementSocketTagger;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .end local v0    # "diff":Ljava/lang/Long;
    .end local v1    # "key":Ljava/lang/Integer;
    .end local v2    # "startTime":Ljava/lang/Long;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementSocketTagger;->unTagSocketFd(Ljava/io/FileDescriptor;)V

    .line 179
    return-void
.end method
