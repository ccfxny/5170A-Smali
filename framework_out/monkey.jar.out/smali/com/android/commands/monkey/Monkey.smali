.class public Lcom/android/commands/monkey/Monkey;
.super Ljava/lang/Object;
.source "Monkey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/monkey/Monkey$1;,
        Lcom/android/commands/monkey/Monkey$ActivityController;
    }
.end annotation


# static fields
.field private static final DEBUG_ALLOW_ANY_RESTARTS:I

.field private static final DEBUG_ALLOW_ANY_STARTS:I

.field private static final TOMBSTONES_PATH:Ljava/io/File;

.field public static currentIntent:Landroid/content/Intent;

.field public static currentPackage:Ljava/lang/String;


# instance fields
.field private mAbort:Z

.field private mAm:Landroid/app/IActivityManager;

.field private mArgs:[Ljava/lang/String;

.field private mBugreportFrequency:J

.field mCount:I

.field private mCountEvents:Z

.field private mCurArgData:Ljava/lang/String;

.field mDeviceSleepTime:J

.field mDroppedFlipEvents:J

.field mDroppedKeyEvents:J

.field mDroppedPointerEvents:J

.field mDroppedRotationEvents:J

.field mDroppedTrackballEvents:J

.field mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

.field mFactors:[F

.field private mGenerateHprof:Z

.field private mGetPeriodicBugreport:Z

.field private mIgnoreCrashes:Z

.field private mIgnoreNativeCrashes:Z

.field private mIgnoreSecurityExceptions:Z

.field private mIgnoreTimeouts:Z

.field private mInvalidPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKillProcessAfterError:Z

.field private mMainApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mMainCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMonitorNativeCrashes:Z

.field private mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

.field private mNextArg:I

.field private mPkgBlacklistFile:Ljava/lang/String;

.field private mPkgWhitelistFile:Ljava/lang/String;

.field private mPm:Landroid/content/pm/IPackageManager;

.field mProfileWaitTime:J

.field mRandom:Ljava/util/Random;

.field mRandomizeScript:Z

.field mRandomizeThrottle:Z

.field private mReportProcessName:Ljava/lang/String;

.field private mRequestAnrBugreport:Z

.field private mRequestAnrTraces:Z

.field private mRequestAppCrashBugreport:Z

.field private mRequestBugreport:Z

.field private mRequestDumpsysMemInfo:Z

.field private mRequestPeriodicBugreport:Z

.field private mRequestProcRank:Z

.field private mRequestWatchdogBugreport:Z

.field private mScriptFileNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mScriptLog:Z

.field mSeed:J

.field private mSendNoEvents:Z

.field private mServerPort:I

.field private mSetupFileName:Ljava/lang/String;

.field mThrottle:J

.field private mTombstones:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValidPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVerbose:I

.field private mWatchdogWaiting:Z

.field private mWm:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 244
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/tombstones"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/commands/monkey/Monkey;->TOMBSTONES_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    .line 121
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    .line 127
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    .line 133
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    .line 139
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestWatchdogBugreport:Z

    .line 145
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    .line 151
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    .line 154
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mGetPeriodicBugreport:Z

    .line 159
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    .line 162
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/android/commands/monkey/Monkey;->mBugreportFrequency:J

    .line 170
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    .line 185
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    .line 188
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/ArrayList;

    .line 197
    iput-wide v4, p0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    .line 200
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    .line 203
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/commands/monkey/Monkey;->mCount:I

    .line 206
    iput-wide v4, p0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    .line 209
    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    .line 212
    iput-wide v4, p0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    .line 214
    iput-wide v4, p0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    .line 216
    iput-wide v4, p0, Lcom/android/commands/monkey/Monkey;->mDroppedTrackballEvents:J

    .line 218
    iput-wide v4, p0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    .line 220
    iput-wide v4, p0, Lcom/android/commands/monkey/Monkey;->mDroppedRotationEvents:J

    .line 223
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    .line 226
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    .line 228
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    .line 230
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mScriptLog:Z

    .line 233
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    .line 236
    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    .line 242
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    .line 246
    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    .line 248
    const/16 v0, 0xb

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    .line 252
    new-instance v0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    invoke-direct {v0}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    .line 281
    return-void
.end method

.method static synthetic access$000(Lcom/android/commands/monkey/Monkey;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/commands/monkey/Monkey;->checkEnteringPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/commands/monkey/Monkey;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/commands/monkey/Monkey;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/commands/monkey/Monkey;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/commands/monkey/Monkey;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreTimeouts:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/commands/monkey/Monkey;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestWatchdogBugreport:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/commands/monkey/Monkey;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/commands/monkey/Monkey;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/commands/monkey/Monkey;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreCrashes:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/commands/monkey/Monkey;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/commands/monkey/Monkey;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/commands/monkey/Monkey;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/commands/monkey/Monkey;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/commands/monkey/Monkey;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/commands/monkey/Monkey;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/commands/monkey/Monkey;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    return p1
.end method

.method private checkEnteringPackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 266
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    :cond_0
    :goto_0
    return v0

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 271
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkInternalConfiguration()Z
    .locals 1

    .prologue
    .line 947
    const/4 v0, 0x1

    return v0
.end method

.method private checkNativeCrashes()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1224
    sget-object v7, Lcom/android/commands/monkey/Monkey;->TOMBSTONES_PATH:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 1228
    .local v5, "tombstones":[Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v7, v5

    if-nez v7, :cond_1

    .line 1229
    :cond_0
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    .line 1244
    :goto_0
    return v4

    .line 1234
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1235
    .local v3, "newStones":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v6, v0, v1

    .line 1236
    .local v6, "x":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1235
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1239
    .end local v6    # "x":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    const/4 v4, 0x1

    .line 1242
    .local v4, "result":Z
    :cond_4
    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    goto :goto_0
.end method

.method private commandLineReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "reportName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;

    .prologue
    .line 439
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 440
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    .line 441
    .local v7, "rt":Ljava/lang/Runtime;
    const/4 v4, 0x0

    .line 446
    .local v4, "logOutput":Ljava/io/Writer;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 448
    .local v6, "p":Ljava/lang/Process;
    iget-boolean v10, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    if-eqz v10, :cond_0

    .line 449
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/FileWriter;

    new-instance v11, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-direct {v11, v12, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v12, 0x1

    invoke-direct {v10, v11, v12}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v5, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .end local v4    # "logOutput":Ljava/io/Writer;
    .local v5, "logOutput":Ljava/io/Writer;
    move-object v4, v5

    .line 454
    .end local v5    # "logOutput":Ljava/io/Writer;
    .restart local v4    # "logOutput":Ljava/io/Writer;
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 455
    .local v3, "inStream":Ljava/io/InputStream;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 456
    .local v2, "inReader":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 458
    .local v1, "inBuffer":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "s":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 459
    iget-boolean v10, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    if-eqz v10, :cond_2

    .line 460
    invoke-virtual {v4, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 461
    const-string v10, "\n"

    invoke-virtual {v4, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 473
    .end local v1    # "inBuffer":Ljava/io/BufferedReader;
    .end local v2    # "inReader":Ljava/io/InputStreamReader;
    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local v6    # "p":Ljava/lang/Process;
    .end local v8    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Ljava/lang/Exception;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "// Exception from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 475
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 477
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 463
    .restart local v1    # "inBuffer":Ljava/io/BufferedReader;
    .restart local v2    # "inReader":Ljava/io/InputStreamReader;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    .restart local v6    # "p":Ljava/lang/Process;
    .restart local v8    # "s":Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v10, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    move-result v9

    .line 468
    .local v9, "status":I
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "// "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " status was "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 470
    if-eqz v4, :cond_1

    .line 471
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getBugreport(Ljava/lang/String;)V
    .locals 4
    .param p1, "reportName"    # Ljava/lang/String;

    .prologue
    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/commands/monkey/MonkeyUtils;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 496
    const-string v1, "[ ,:]"

    const-string v2, "_"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "bugreportName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bugreport"

    invoke-direct {p0, v1, v2}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method private getMainApps()Z
    .locals 14

    .prologue
    .line 997
    :try_start_0
    iget-object v10, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 998
    .local v0, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_8

    .line 999
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1000
    .local v6, "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1001
    .local v3, "category":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 1002
    invoke-virtual {v6, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1004
    :cond_0
    iget-object v10, p0, Lcom/android/commands/monkey/Monkey;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-interface {v10, v6, v11, v12, v13}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v7

    .line 1006
    .local v7, "mainApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_3

    .line 1007
    :cond_1
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "// Warning: no activities found for category "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 998
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1010
    :cond_3
    iget v10, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    const/4 v11, 0x2

    if-lt v10, v11, :cond_4

    .line 1011
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "// Selecting main activities from category "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1013
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 1014
    .local v1, "NA":I
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 1015
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 1016
    .local v9, "r":Landroid/content/pm/ResolveInfo;
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1017
    .local v8, "packageName":Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->checkEnteringPackage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1018
    iget v10, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    const/4 v11, 0x2

    if-lt v10, v11, :cond_5

    .line 1019
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "//   + Using main activity "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (from package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1022
    :cond_5
    iget-object v10, p0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/ArrayList;

    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v8, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1014
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1024
    :cond_7
    iget v10, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    const/4 v11, 0x3

    if-lt v10, v11, :cond_6

    .line 1025
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "//   - NOT USING main activity "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (from package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1031
    .end local v0    # "N":I
    .end local v1    # "NA":I
    .end local v2    # "a":I
    .end local v3    # "category":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "mainApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "r":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v4

    .line 1032
    .local v4, "e":Landroid/os/RemoteException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "** Failed talking with package manager!"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1033
    const/4 v10, 0x0

    .line 1041
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_3
    return v10

    .line 1036
    .restart local v0    # "N":I
    .restart local v5    # "i":I
    :cond_8
    iget-object v10, p0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_9

    .line 1037
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "** No activities found to run, monkey aborted."

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1038
    const/4 v10, 0x0

    goto :goto_3

    .line 1041
    :cond_9
    const/4 v10, 0x1

    goto :goto_3
.end method

.method private getSystemInterfaces()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 956
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    .line 957
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    if-nez v2, :cond_0

    .line 958
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "** Error: Unable to connect to activity manager; is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 985
    :goto_0
    return v1

    .line 963
    :cond_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    .line 964
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    if-nez v2, :cond_1

    .line 965
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "** Error: Unable to connect to window manager; is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 970
    :cond_1
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/commands/monkey/Monkey;->mPm:Landroid/content/pm/IPackageManager;

    .line 971
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mPm:Landroid/content/pm/IPackageManager;

    if-nez v2, :cond_2

    .line 972
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "** Error: Unable to connect to package manager; is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 978
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    new-instance v3, Lcom/android/commands/monkey/Monkey$ActivityController;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/commands/monkey/Monkey$ActivityController;-><init>(Lcom/android/commands/monkey/Monkey;Lcom/android/commands/monkey/Monkey$1;)V

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;)V

    .line 979
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    iget-object v3, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->register(Landroid/app/IActivityManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    const/4 v1, 0x1

    goto :goto_0

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "** Failed talking with activity manager!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static loadPackageListFromFile(Ljava/lang/String;Ljava/util/HashSet;)Z
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 893
    .local p1, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 895
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 898
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 899
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 900
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 903
    .end local v3    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 904
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v0, "ioe":Ljava/io/IOException;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 905
    const/4 v4, 0x0

    .line 907
    if-eqz v1, :cond_1

    .line 909
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 915
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_1
    :goto_2
    return v4

    .line 907
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "s":Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_3

    .line 909
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 915
    :cond_3
    :goto_3
    const/4 v4, 0x1

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 910
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 911
    .restart local v0    # "ioe":Ljava/io/IOException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_3

    .line 910
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "s":Ljava/lang/String;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 911
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_2

    .line 907
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v1, :cond_4

    .line 909
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 912
    :cond_4
    :goto_5
    throw v4

    .line 910
    :catch_3
    move-exception v0

    .line 911
    .restart local v0    # "ioe":Ljava/io/IOException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_5

    .line 907
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 903
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private loadPackageLists()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 924
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 926
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "** Error: you can not specify a package blacklist together with a whitelist or individual packages (via -p)."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 938
    :cond_1
    :goto_0
    return v0

    .line 930
    :cond_2
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-static {v1, v2}, Lcom/android/commands/monkey/Monkey;->loadPackageListFromFile(Ljava/lang/String;Ljava/util/HashSet;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 934
    :cond_3
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    invoke-static {v1, v2}, Lcom/android/commands/monkey/Monkey;->loadPackageListFromFile(Ljava/lang/String;Ljava/util/HashSet;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 938
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 507
    const-string v1, "com.android.commands.monkey"

    invoke-static {v1}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 509
    new-instance v1, Lcom/android/commands/monkey/Monkey;

    invoke-direct {v1}, Lcom/android/commands/monkey/Monkey;-><init>()V

    invoke-direct {v1, p0}, Lcom/android/commands/monkey/Monkey;->run([Ljava/lang/String;)I

    move-result v0

    .line 510
    .local v0, "resultCode":I
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 511
    return-void
.end method

.method private nextArg()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1331
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1332
    const/4 v0, 0x0

    .line 1336
    :goto_0
    return-object v0

    .line 1334
    :cond_0
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    aget-object v0, v1, v2

    .line 1335
    .local v0, "arg":Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    goto :goto_0
.end method

.method private nextOption()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 1266
    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    iget-object v3, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    move-object v0, v1

    .line 1287
    :goto_0
    return-object v0

    .line 1269
    :cond_0
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    aget-object v0, v2, v3

    .line 1270
    .local v0, "arg":Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 1271
    goto :goto_0

    .line 1273
    :cond_1
    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    .line 1274
    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 1275
    goto :goto_0

    .line 1277
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_4

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_4

    .line 1278
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 1279
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    .line 1280
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1282
    :cond_3
    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    goto :goto_0

    .line 1286
    :cond_4
    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    goto :goto_0
.end method

.method private nextOptionData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1296
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    .line 1304
    :goto_0
    return-object v0

    .line 1299
    :cond_0
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 1300
    const/4 v0, 0x0

    goto :goto_0

    .line 1302
    :cond_1
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    aget-object v0, v1, v2

    .line 1303
    .local v0, "data":Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    goto :goto_0
.end method

.method private nextOptionLong(Ljava/lang/String;)J
    .locals 6
    .param p1, "opt"    # Ljava/lang/String;

    .prologue
    .line 1317
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1322
    .local v2, "result":J
    return-wide v2

    .line 1318
    .end local v2    # "result":J
    :catch_0
    move-exception v0

    .line 1319
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "** Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1320
    throw v0
.end method

.method private processOptions()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 752
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v7, v7

    if-ge v7, v6, :cond_0

    .line 753
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    .line 882
    :goto_0
    return v5

    .line 759
    :cond_0
    :goto_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOption()Ljava/lang/String;

    move-result-object v4

    .local v4, "opt":Ljava/lang/String;
    if-eqz v4, :cond_26

    .line 760
    const-string v7, "-s"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 761
    const-string v7, "Seed"

    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/commands/monkey/Monkey;->mSeed:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 857
    .end local v4    # "opt":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 858
    .local v2, "ex":Ljava/lang/RuntimeException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "** Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 859
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    goto :goto_0

    .line 762
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v4    # "opt":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v7, "-p"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 763
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 764
    :cond_2
    const-string v7, "-c"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 765
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 766
    :cond_3
    const-string v7, "-v"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 767
    iget v7, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    goto :goto_1

    .line 768
    :cond_4
    const-string v7, "--ignore-crashes"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 769
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreCrashes:Z

    goto :goto_1

    .line 770
    :cond_5
    const-string v7, "--ignore-timeouts"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 771
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreTimeouts:Z

    goto/16 :goto_1

    .line 772
    :cond_6
    const-string v7, "--ignore-security-exceptions"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 773
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreSecurityExceptions:Z

    goto/16 :goto_1

    .line 774
    :cond_7
    const-string v7, "--monitor-native-crashes"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 775
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mMonitorNativeCrashes:Z

    goto/16 :goto_1

    .line 776
    :cond_8
    const-string v7, "--ignore-native-crashes"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 777
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreNativeCrashes:Z

    goto/16 :goto_1

    .line 778
    :cond_9
    const-string v7, "--kill-process-after-error"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 779
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z

    goto/16 :goto_1

    .line 780
    :cond_a
    const-string v7, "--hprof"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 781
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mGenerateHprof:Z

    goto/16 :goto_1

    .line 782
    :cond_b
    const-string v7, "--pct-touch"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 783
    const/4 v3, 0x0

    .line 784
    .local v3, "i":I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "touch events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_1

    .line 785
    .end local v3    # "i":I
    :cond_c
    const-string v7, "--pct-motion"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 786
    const/4 v3, 0x1

    .line 787
    .restart local v3    # "i":I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "motion events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_1

    .line 788
    .end local v3    # "i":I
    :cond_d
    const-string v7, "--pct-trackball"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 789
    const/4 v3, 0x3

    .line 790
    .restart local v3    # "i":I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "trackball events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_1

    .line 791
    .end local v3    # "i":I
    :cond_e
    const-string v7, "--pct-rotation"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 792
    const/4 v3, 0x4

    .line 793
    .restart local v3    # "i":I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "screen rotation events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_1

    .line 794
    .end local v3    # "i":I
    :cond_f
    const-string v7, "--pct-syskeys"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 795
    const/4 v3, 0x7

    .line 796
    .restart local v3    # "i":I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "system (key) operations percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_1

    .line 797
    .end local v3    # "i":I
    :cond_10
    const-string v7, "--pct-nav"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 798
    const/4 v3, 0x5

    .line 799
    .restart local v3    # "i":I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "nav events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_1

    .line 800
    .end local v3    # "i":I
    :cond_11
    const-string v7, "--pct-majornav"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 801
    const/4 v3, 0x6

    .line 802
    .restart local v3    # "i":I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "major nav events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_1

    .line 803
    .end local v3    # "i":I
    :cond_12
    const-string v7, "--pct-appswitch"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 804
    const/16 v3, 0x8

    .line 805
    .restart local v3    # "i":I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "app switch events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_1

    .line 806
    .end local v3    # "i":I
    :cond_13
    const-string v7, "--pct-flip"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 807
    const/16 v3, 0x9

    .line 808
    .restart local v3    # "i":I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "keyboard flip percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_1

    .line 809
    .end local v3    # "i":I
    :cond_14
    const-string v7, "--pct-anyevent"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 810
    const/16 v3, 0xa

    .line 811
    .restart local v3    # "i":I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "any events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_1

    .line 812
    .end local v3    # "i":I
    :cond_15
    const-string v7, "--pct-pinchzoom"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 813
    const/4 v3, 0x2

    .line 814
    .restart local v3    # "i":I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "pinch zoom events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_1

    .line 815
    .end local v3    # "i":I
    :cond_16
    const-string v7, "--pkg-blacklist-file"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 816
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    goto/16 :goto_1

    .line 817
    :cond_17
    const-string v7, "--pkg-whitelist-file"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 818
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    goto/16 :goto_1

    .line 819
    :cond_18
    const-string v7, "--throttle"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 820
    const-string v7, "delay (in milliseconds) to wait between events"

    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    goto/16 :goto_1

    .line 821
    :cond_19
    const-string v7, "--randomize-throttle"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 822
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    goto/16 :goto_1

    .line 823
    :cond_1a
    const-string v7, "--wait-dbg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 825
    const-string v7, "--dbg-no-events"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 826
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mSendNoEvents:Z

    goto/16 :goto_1

    .line 827
    :cond_1b
    const-string v7, "--port"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 828
    const-string v7, "Server port to listen on for commands"

    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-int v7, v8

    iput v7, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    goto/16 :goto_1

    .line 829
    :cond_1c
    const-string v7, "--setup"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 830
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    goto/16 :goto_1

    .line 831
    :cond_1d
    const-string v7, "-f"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 832
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 833
    :cond_1e
    const-string v7, "--profile-wait"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 834
    const-string v7, "Profile delay (in milliseconds) to wait between user action"

    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    goto/16 :goto_1

    .line 836
    :cond_1f
    const-string v7, "--device-sleep-time"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 837
    const-string v7, "Device sleep time(in milliseconds)"

    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    goto/16 :goto_1

    .line 839
    :cond_20
    const-string v7, "--randomize-script"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 840
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    goto/16 :goto_1

    .line 841
    :cond_21
    const-string v7, "--script-log"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 842
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mScriptLog:Z

    goto/16 :goto_1

    .line 843
    :cond_22
    const-string v7, "--bugreport"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 844
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    goto/16 :goto_1

    .line 845
    :cond_23
    const-string v7, "--periodic-bugreport"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 846
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mGetPeriodicBugreport:Z

    .line 847
    const-string v7, "Number of iterations"

    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/commands/monkey/Monkey;->mBugreportFrequency:J

    goto/16 :goto_1

    .line 848
    :cond_24
    const-string v6, "-h"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 849
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    goto/16 :goto_0

    .line 852
    :cond_25
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "** Error: Unknown option: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 853
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 865
    :cond_26
    iget v7, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_28

    .line 866
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, "countStr":Ljava/lang/String;
    if-nez v0, :cond_27

    .line 868
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "** Error: Count not specified"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 869
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    goto/16 :goto_0

    .line 874
    :cond_27
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/commands/monkey/Monkey;->mCount:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v0    # "countStr":Ljava/lang/String;
    :cond_28
    move v5, v6

    .line 882
    goto/16 :goto_0

    .line 875
    .restart local v0    # "countStr":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 876
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "** Error: Count is not a number"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 877
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    goto/16 :goto_0
.end method

.method private reportAnrTraces()V
    .locals 2

    .prologue
    .line 411
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :goto_0
    const-string v0, "anr traces"

    const-string v1, "cat /data/anr/traces.txt"

    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return-void

    .line 412
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private reportDumpsysMemInfo()V
    .locals 2

    .prologue
    .line 425
    const-string v0, "meminfo"

    const-string v1, "dumpsys meminfo"

    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method private reportProcRank()V
    .locals 2

    .prologue
    .line 402
    const-string v0, "procrank"

    const-string v1, "procrank"

    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method private run([Ljava/lang/String;)I
    .locals 23
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 521
    move-object/from16 v15, p1

    .local v15, "arr$":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    aget-object v22, v15, v19

    .line 522
    .local v22, "s":Ljava/lang/String;
    const-string v2, "--wait-dbg"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 523
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 521
    :cond_0
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 528
    .end local v22    # "s":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    .line 529
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    .line 530
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    .line 531
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    .line 534
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    .line 535
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    .line 538
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    const/16 v2, 0xb

    move/from16 v0, v18

    if-ge v0, v2, :cond_2

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v18

    .line 538
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 542
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->processOptions()Z

    move-result v2

    if-nez v2, :cond_3

    .line 543
    const/16 v16, -0x1

    .line 741
    :goto_2
    return v16

    .line 546
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->loadPackageLists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 547
    const/16 v16, -0x1

    goto :goto_2

    .line 551
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    const-string v3, "android.intent.category.MONKEY"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_5
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 557
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    .line 560
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v2, :cond_9

    .line 561
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":Monkey: seed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 564
    .local v20, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 565
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":AllowPackage: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 568
    .end local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 570
    .restart local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 571
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":DisallowPackage: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 574
    .end local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_9

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 576
    .restart local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 577
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":IncludeCategory: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 582
    .end local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->checkInternalConfiguration()Z

    move-result v2

    if-nez v2, :cond_a

    .line 583
    const/16 v16, -0x2

    goto/16 :goto_2

    .line 586
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->getSystemInterfaces()Z

    move-result v2

    if-nez v2, :cond_b

    .line 587
    const/16 v16, -0x3

    goto/16 :goto_2

    .line 590
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->getMainApps()Z

    move-result v2

    if-nez v2, :cond_c

    .line 591
    const/16 v16, -0x4

    goto/16 :goto_2

    .line 594
    :cond_c
    new-instance v2, Ljava/util/Random;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 598
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    invoke-direct/range {v2 .. v11}, Lcom/android/commands/monkey/MonkeySourceScript;-><init>(Ljava/util/Random;Ljava/lang/String;JZJJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-interface {v2, v3}, Lcom/android/commands/monkey/MonkeyEventSource;->setVerbose(I)V

    .line 602
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    .line 643
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    invoke-interface {v2}, Lcom/android/commands/monkey/MonkeyEventSource;->validate()Z

    move-result v2

    if-nez v2, :cond_14

    .line 644
    const/16 v16, -0x5

    goto/16 :goto_2

    .line 603
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_f

    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 605
    new-instance v3, Lcom/android/commands/monkey/MonkeySourceRandomScript;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    invoke-direct/range {v3 .. v14}, Lcom/android/commands/monkey/MonkeySourceRandomScript;-><init>(Ljava/lang/String;Ljava/util/ArrayList;JZLjava/util/Random;JJZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    .line 608
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    .line 614
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-interface {v2, v3}, Lcom/android/commands/monkey/MonkeyEventSource;->setVerbose(I)V

    .line 615
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    goto :goto_6

    .line 610
    :cond_e
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceRandomScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    invoke-direct/range {v2 .. v12}, Lcom/android/commands/monkey/MonkeySourceRandomScript;-><init>(Ljava/util/ArrayList;JZLjava/util/Random;JJZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    goto :goto_7

    .line 616
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    .line 618
    :try_start_0
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    const v2, 0x7fffffff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    goto/16 :goto_6

    .line 619
    :catch_0
    move-exception v17

    .line 620
    .local v17, "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Error binding to network socket."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 621
    const/16 v16, -0x5

    goto/16 :goto_2

    .line 626
    .end local v17    # "e":Ljava/io/IOException;
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_11

    .line 627
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "// Seeded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 629
    :cond_11
    new-instance v3, Lcom/android/commands/monkey/MonkeySourceRandom;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    invoke-direct/range {v3 .. v8}, Lcom/android/commands/monkey/MonkeySourceRandom;-><init>(Ljava/util/Random;Ljava/util/ArrayList;JZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-interface {v2, v3}, Lcom/android/commands/monkey/MonkeyEventSource;->setVerbose(I)V

    .line 632
    const/16 v18, 0x0

    :goto_8
    const/16 v2, 0xb

    move/from16 v0, v18

    if-ge v0, v2, :cond_13

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    aget v2, v2, v18

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_12

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    check-cast v2, Lcom/android/commands/monkey/MonkeySourceRandom;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    aget v3, v3, v18

    move/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Lcom/android/commands/monkey/MonkeySourceRandom;->setFactors(IF)V

    .line 632
    :cond_12
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 639
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    check-cast v2, Lcom/android/commands/monkey/MonkeySourceRandom;

    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeySourceRandom;->generateActivity()V

    goto/16 :goto_6

    .line 649
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mGenerateHprof:Z

    if-eqz v2, :cond_15

    .line 650
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->signalPersistentProcesses()V

    .line 653
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->start()V

    .line 654
    const/16 v16, 0x0

    .line 656
    .local v16, "crashedAtCycle":I
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->runMonkeyCycles()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v16

    .line 660
    new-instance v2, Lcom/android/commands/monkey/MonkeyRotationEvent;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/commands/monkey/MonkeyRotationEvent;-><init>(IZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/commands/monkey/MonkeyRotationEvent;->injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->stop()V

    .line 665
    monitor-enter p0

    .line 666
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    if-eqz v2, :cond_16

    .line 667
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->reportAnrTraces()V

    .line 668
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    .line 670
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    if-eqz v2, :cond_17

    .line 671
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Print the anr report"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 672
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "anr_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 673
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    .line 675
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestWatchdogBugreport:Z

    if-eqz v2, :cond_18

    .line 676
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Print the watchdog report"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 677
    const-string v2, "anr_watchdog_"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 678
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestWatchdogBugreport:Z

    .line 680
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    if-eqz v2, :cond_19

    .line 681
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app_crash"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 682
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    .line 684
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    if-eqz v2, :cond_1a

    .line 685
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->reportDumpsysMemInfo()V

    .line 686
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    .line 688
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    if-eqz v2, :cond_1b

    .line 689
    const-string v2, "Bugreport_"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 690
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    .line 692
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    if-eqz v2, :cond_1c

    .line 693
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    .line 694
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 696
    :cond_1c
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 698
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mGenerateHprof:Z

    if-eqz v2, :cond_1d

    .line 699
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->signalPersistentProcesses()V

    .line 700
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v2, :cond_1d

    .line 701
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "// Generated profiling reports in /data/misc"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 706
    :cond_1d
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->unregister(Landroid/app/IActivityManager;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 717
    :cond_1e
    :goto_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v2, :cond_1f

    .line 718
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, ":Dropped: keys="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 719
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintStream;->print(J)V

    .line 720
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " pointers="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 721
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintStream;->print(J)V

    .line 722
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " trackballs="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 723
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mDroppedTrackballEvents:J

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintStream;->print(J)V

    .line 724
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " flips="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 725
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintStream;->print(J)V

    .line 726
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " rotations="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 727
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mDroppedRotationEvents:J

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintStream;->println(J)V

    .line 731
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->dump()V

    .line 733
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v16

    if-ge v0, v2, :cond_20

    .line 734
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "** System appears to have crashed at event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " using seed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 660
    :catchall_0
    move-exception v2

    new-instance v3, Lcom/android/commands/monkey/MonkeyRotationEvent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/commands/monkey/MonkeyRotationEvent;-><init>(IZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/commands/monkey/MonkeyRotationEvent;->injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I

    throw v2

    .line 696
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 708
    :catch_1
    move-exception v17

    .line 711
    .local v17, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    move/from16 v0, v16

    if-lt v0, v2, :cond_1e

    .line 712
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    add-int/lit8 v16, v2, -0x1

    goto/16 :goto_9

    .line 738
    .end local v17    # "e":Landroid/os/RemoteException;
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v2, :cond_21

    .line 739
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "// Monkey finished"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 741
    :cond_21
    const/16 v16, 0x0

    goto/16 :goto_2
.end method

.method private runMonkeyCycles()I
    .locals 18

    .prologue
    .line 1053
    const/4 v5, 0x0

    .line 1054
    .local v5, "eventCounter":I
    const/4 v3, 0x0

    .line 1056
    .local v3, "cycleCounter":I
    const/4 v8, 0x0

    .line 1057
    .local v8, "shouldReportAnrTraces":Z
    const/4 v9, 0x0

    .line 1058
    .local v9, "shouldReportDumpsysMemInfo":Z
    const/4 v7, 0x0

    .line 1059
    .local v7, "shouldAbort":Z
    const/4 v10, 0x0

    .line 1062
    .local v10, "systemCrashed":Z
    :cond_0
    :goto_0
    if-nez v10, :cond_1b

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    if-ge v3, v11, :cond_1b

    .line 1063
    monitor-enter p0

    .line 1064
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    if-eqz v11, :cond_1

    .line 1065
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->reportProcRank()V

    .line 1066
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    .line 1068
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    if-eqz v11, :cond_2

    .line 1069
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    .line 1070
    const/4 v8, 0x1

    .line 1072
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    if-eqz v11, :cond_3

    .line 1073
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "anr_"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "_"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 1074
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    .line 1076
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestWatchdogBugreport:Z

    if-eqz v11, :cond_4

    .line 1077
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "Print the watchdog report"

    invoke-virtual {v11, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1078
    const-string v11, "anr_watchdog_"

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 1079
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestWatchdogBugreport:Z

    .line 1081
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    if-eqz v11, :cond_5

    .line 1082
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "app_crash"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "_"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 1083
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    .line 1085
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    if-eqz v11, :cond_6

    .line 1086
    const-string v11, "Bugreport_"

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 1087
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    .line 1089
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    if-eqz v11, :cond_7

    .line 1090
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    .line 1091
    const/4 v9, 0x1

    .line 1093
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mMonitorNativeCrashes:Z

    if-eqz v11, :cond_a

    .line 1096
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->checkNativeCrashes()Z

    move-result v11

    if-eqz v11, :cond_a

    if-lez v5, :cond_a

    .line 1097
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "** New native crash detected."

    invoke-virtual {v11, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1098
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    if-eqz v11, :cond_8

    .line 1099
    const-string v11, "native_crash_"

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 1101
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    if-nez v11, :cond_9

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mIgnoreNativeCrashes:Z

    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z

    if-eqz v11, :cond_f

    :cond_9
    const/4 v11, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    .line 1104
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    if-eqz v11, :cond_b

    .line 1105
    const/4 v7, 0x1

    .line 1107
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    if-eqz v11, :cond_c

    .line 1108
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    .line 1109
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 1111
    :cond_c
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1115
    if-eqz v8, :cond_d

    .line 1116
    const/4 v8, 0x0

    .line 1117
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->reportAnrTraces()V

    .line 1120
    :cond_d
    if-eqz v9, :cond_e

    .line 1121
    const/4 v9, 0x0

    .line 1122
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->reportDumpsysMemInfo()V

    .line 1125
    :cond_e
    if-eqz v7, :cond_10

    .line 1126
    const/4 v7, 0x0

    .line 1127
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "** Monkey aborted due to error."

    invoke-virtual {v11, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1128
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Events injected: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1197
    :goto_2
    return v5

    .line 1101
    :cond_f
    const/4 v11, 0x0

    goto :goto_1

    .line 1111
    :catchall_0
    move-exception v11

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 1135
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mSendNoEvents:Z

    if-eqz v11, :cond_11

    .line 1136
    add-int/lit8 v5, v5, 0x1

    .line 1137
    add-int/lit8 v3, v3, 0x1

    .line 1138
    goto/16 :goto_0

    .line 1141
    :cond_11
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v11, :cond_12

    rem-int/lit8 v11, v5, 0x64

    if-nez v11, :cond_12

    if-eqz v5, :cond_12

    .line 1142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/android/commands/monkey/MonkeyUtils;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v2

    .line 1143
    .local v2, "calendarTime":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 1144
    .local v12, "systemUpTime":J
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    //[calendar_time:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " system_uptime:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1146
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    // Sending event #"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1149
    .end local v2    # "calendarTime":Ljava/lang/String;
    .end local v12    # "systemUpTime":J
    :cond_12
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    invoke-interface {v11}, Lcom/android/commands/monkey/MonkeyEventSource;->getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;

    move-result-object v4

    .line 1150
    .local v4, "ev":Lcom/android/commands/monkey/MonkeyEvent;
    if-eqz v4, :cond_1a

    .line 1151
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-virtual {v4, v11, v14, v15}, Lcom/android/commands/monkey/MonkeyEvent;->injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I

    move-result v6

    .line 1152
    .local v6, "injectCode":I
    if-nez v6, :cond_17

    .line 1153
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "    // Injection Failed"

    invoke-virtual {v11, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1154
    instance-of v11, v4, Lcom/android/commands/monkey/MonkeyKeyEvent;

    if-eqz v11, :cond_14

    .line 1155
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    .line 1174
    :cond_13
    :goto_3
    instance-of v11, v4, Lcom/android/commands/monkey/MonkeyThrottleEvent;

    if-nez v11, :cond_0

    .line 1175
    add-int/lit8 v5, v5, 0x1

    .line 1176
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    if-eqz v11, :cond_0

    .line 1177
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1156
    :cond_14
    instance-of v11, v4, Lcom/android/commands/monkey/MonkeyMotionEvent;

    if-eqz v11, :cond_15

    .line 1157
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    goto :goto_3

    .line 1158
    :cond_15
    instance-of v11, v4, Lcom/android/commands/monkey/MonkeyFlipEvent;

    if-eqz v11, :cond_16

    .line 1159
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    goto :goto_3

    .line 1160
    :cond_16
    instance-of v11, v4, Lcom/android/commands/monkey/MonkeyRotationEvent;

    if-eqz v11, :cond_13

    .line 1161
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/commands/monkey/Monkey;->mDroppedRotationEvents:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/commands/monkey/Monkey;->mDroppedRotationEvents:J

    goto :goto_3

    .line 1163
    :cond_17
    const/4 v11, -0x1

    if-ne v6, v11, :cond_18

    .line 1164
    const/4 v10, 0x1

    .line 1165
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v14, "** Error: RemoteException while injecting event."

    invoke-virtual {v11, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1166
    :cond_18
    const/4 v11, -0x2

    if-ne v6, v11, :cond_13

    .line 1167
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mIgnoreSecurityExceptions:Z

    if-nez v11, :cond_19

    const/4 v10, 0x1

    .line 1168
    :goto_4
    if-eqz v10, :cond_13

    .line 1169
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v14, "** Error: SecurityException while injecting event."

    invoke-virtual {v11, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1167
    :cond_19
    const/4 v10, 0x0

    goto :goto_4

    .line 1181
    .end local v6    # "injectCode":I
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    if-nez v11, :cond_1b

    .line 1182
    add-int/lit8 v3, v3, 0x1

    .line 1183
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/commands/monkey/Monkey;->writeScriptLog(I)V

    .line 1185
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mGetPeriodicBugreport:Z

    if-eqz v11, :cond_0

    .line 1186
    int-to-long v14, v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/Monkey;->mBugreportFrequency:J

    move-wide/from16 v16, v0

    rem-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_0

    .line 1187
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    goto/16 :goto_0

    .line 1196
    .end local v4    # "ev":Lcom/android/commands/monkey/MonkeyEvent;
    :cond_1b
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Events injected: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private showUsage()V
    .locals 3

    .prologue
    .line 1343
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1344
    .local v0, "usage":Ljava/lang/StringBuffer;
    const-string v1, "usage: monkey [-p ALLOWED_PACKAGE [-p ALLOWED_PACKAGE] ...]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1345
    const-string v1, "              [-c MAIN_CATEGORY [-c MAIN_CATEGORY] ...]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1346
    const-string v1, "              [--ignore-crashes] [--ignore-timeouts]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1347
    const-string v1, "              [--ignore-security-exceptions]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1348
    const-string v1, "              [--monitor-native-crashes] [--ignore-native-crashes]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1349
    const-string v1, "              [--kill-process-after-error] [--hprof]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1350
    const-string v1, "              [--pct-touch PERCENT] [--pct-motion PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1351
    const-string v1, "              [--pct-trackball PERCENT] [--pct-syskeys PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1352
    const-string v1, "              [--pct-nav PERCENT] [--pct-majornav PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1353
    const-string v1, "              [--pct-appswitch PERCENT] [--pct-flip PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1354
    const-string v1, "              [--pct-anyevent PERCENT] [--pct-pinchzoom PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1355
    const-string v1, "              [--pkg-blacklist-file PACKAGE_BLACKLIST_FILE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1356
    const-string v1, "              [--pkg-whitelist-file PACKAGE_WHITELIST_FILE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1357
    const-string v1, "              [--wait-dbg] [--dbg-no-events]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1358
    const-string v1, "              [--setup scriptfile] [-f scriptfile [-f scriptfile] ...]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1359
    const-string v1, "              [--port port]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1360
    const-string v1, "              [-s SEED] [-v [-v] ...]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1361
    const-string v1, "              [--throttle MILLISEC] [--randomize-throttle]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1362
    const-string v1, "              [--profile-wait MILLISEC]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1363
    const-string v1, "              [--device-sleep-time MILLISEC]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1364
    const-string v1, "              [--randomize-script]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1365
    const-string v1, "              [--script-log]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1366
    const-string v1, "              [--bugreport]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1367
    const-string v1, "              [--periodic-bugreport]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1368
    const-string v1, "              COUNT\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1369
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1370
    return-void
.end method

.method private signalPersistentProcesses()V
    .locals 4

    .prologue
    .line 1206
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->signalPersistentProcesses(I)V

    .line 1208
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1209
    const-wide/16 v2, 0x7d0

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 1210
    monitor-exit p0

    .line 1215
    :goto_0
    return-void

    .line 1210
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1211
    :catch_0
    move-exception v0

    .line 1212
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "** Failed talking with activity manager!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1213
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private writeScriptLog(I)V
    .locals 6
    .param p1, "count"    # I

    .prologue
    .line 483
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "scriptlog.txt"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 485
    .local v1, "output":Ljava/io/Writer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iteration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/commands/monkey/MonkeyUtils;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    .end local v1    # "output":Ljava/io/Writer;
    :goto_0
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
