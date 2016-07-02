.class public Lcom/android/server/AlarmAlignManager;
.super Ljava/lang/Object;
.source "AlarmAlignManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;,
        Lcom/android/server/AlarmAlignManager$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ALARM_TYPE_ALIGN_1:I = 0x1

.field private static final ALARM_TYPE_ALIGN_2:I = 0x2

.field private static final ALARM_TYPE_ALIGN_3:I = 0x3

.field private static final ALARM_TYPE_EXTEND_1:I = 0xb

.field private static final ALARM_TYPE_EXTEND_2:I = 0xc

.field private static final ALARM_TYPE_KEEP:I = 0x0

.field private static final ALARM_TYPE_WAKEUP_1:I = 0x15

.field private static final ALARM_TYPE_WAKEUP_2:I = 0x16

.field private static final ALARM_TYPE_WAKEUP_3:I = 0x17

.field private static final ALARM_TYPE_WAKEUP_4:I = 0x18

.field private static final HOUR_NIGHT_BEGIN:I = 0x17

.field private static final HOUR_NIGHT_END:I = 0x6

.field private static final MINI_COUNT:I = 0xa

.field private static final MINI_STATS:I = 0x32

.field private static final MINUTES_1:I = 0xea60

.field private static final MINUTES_2:I = 0x1d4c0

.field private static final MINUTES_3:I = 0x2bf20

.field private static final MINUTES_5:I = 0x493e0

.field private static final SECOND_TURN_IDLE:I = 0x1b7740

.field private static final TAG:Ljava/lang/String; = "AlarmAlignManager"

.field private static mInstance:Lcom/android/server/AlarmAlignManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnableAlarmAlign:Z

.field private mHandle:Landroid/os/Handler;

.field private mIsCharging:I

.field private mPkgAlignMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenOffTime:J

.field private mSettingsObserver:Lcom/android/server/AlarmAlignManager$SettingsObserver;

.field private packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/AlarmAlignManager;->mInstance:Lcom/android/server/AlarmAlignManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AlarmAlignManager;->mEnableAlarmAlign:Z

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/AlarmAlignManager;->mIsCharging:I

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/AlarmAlignManager;->mScreenOffTime:J

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmAlignManager;->mPkgAlignMap:Ljava/util/Map;

    .line 353
    new-instance v0, Lcom/android/server/AlarmAlignManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmAlignManager$1;-><init>(Lcom/android/server/AlarmAlignManager;)V

    iput-object v0, p0, Lcom/android/server/AlarmAlignManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 397
    new-instance v0, Lcom/android/server/AlarmAlignManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmAlignManager$2;-><init>(Lcom/android/server/AlarmAlignManager;)V

    iput-object v0, p0, Lcom/android/server/AlarmAlignManager;->mHandle:Landroid/os/Handler;

    .line 84
    iput-object p1, p0, Lcom/android/server/AlarmAlignManager;->mContext:Landroid/content/Context;

    .line 85
    invoke-direct {p0}, Lcom/android/server/AlarmAlignManager;->initFilter()V

    .line 86
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/AlarmAlignManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmAlignManager;
    .param p1, "x1"    # J

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/android/server/AlarmAlignManager;->mScreenOffTime:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/android/server/AlarmAlignManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmAlignManager;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/android/server/AlarmAlignManager;->mIsCharging:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/AlarmAlignManager;Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmAlignManager;
    .param p1, "x1"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/server/AlarmAlignManager;->packageManager:Landroid/content/pm/PackageManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/AlarmAlignManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmAlignManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/AlarmAlignManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/AlarmAlignManager;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmAlignManager;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/AlarmAlignManager;->initPkgAlignPermissionMap(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/AlarmAlignManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmAlignManager;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/AlarmAlignManager;->initData()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/AlarmAlignManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmAlignManager;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/server/AlarmAlignManager;->mEnableAlarmAlign:Z

    return p1
.end method

.method private adjustAlarmByPermission(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$BroadcastStats;)Z
    .locals 9
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "stats"    # Lcom/android/server/AlarmManagerService$BroadcastStats;

    .prologue
    .line 144
    const/4 v7, 0x0

    .line 146
    .local v7, "ret":Z
    iget-object v0, p0, Lcom/android/server/AlarmAlignManager;->mPkgAlignMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService$Alarm;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/AlarmAlignStore;->Str2MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;

    .line 147
    .local v6, "permission":Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;
    if-eqz v6, :cond_1

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->fixed:Z

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->aligned:Z

    .line 151
    const/4 v8, 0x0

    .line 152
    .local v8, "type":I
    iget-boolean v0, v6, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->valid:Z

    if-eqz v0, :cond_0

    .line 153
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-direct {p0, v6, v0, v1}, Lcom/android/server/AlarmAlignManager;->getAdjustType(Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;J)I

    move-result v8

    .line 155
    :cond_0
    sparse-switch v8, :sswitch_data_0

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->fixed:Z

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->aligned:Z

    .line 204
    :goto_0
    :sswitch_0
    const/4 v7, 0x1

    .line 205
    const-string v0, "AlarmAlignManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustAlarmByPermission type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService$Alarm;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .end local v8    # "type":I
    :cond_1
    return v7

    .line 159
    .restart local v8    # "type":I
    :sswitch_1
    iget v0, p2, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    iget-wide v0, p2, Lcom/android/server/AlarmManagerService$BroadcastStats;->frequence:J

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 160
    const-wide/32 v0, 0x2bf20

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/AlarmAlignManager;->extendAlarmTime(Lcom/android/server/AlarmManagerService$Alarm;JLcom/android/server/AlarmManagerService$BroadcastStats;)V

    .line 162
    :cond_2
    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x7530

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AlarmAlignManager;->adjustAlarmTime(Lcom/android/server/AlarmManagerService$Alarm;JJ)V

    goto :goto_0

    .line 165
    :sswitch_2
    iget v0, p2, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_3

    iget-wide v0, p2, Lcom/android/server/AlarmManagerService$BroadcastStats;->frequence:J

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 166
    const-wide/32 v0, 0x2bf20

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/AlarmAlignManager;->extendAlarmTime(Lcom/android/server/AlarmManagerService$Alarm;JLcom/android/server/AlarmManagerService$BroadcastStats;)V

    .line 168
    :cond_3
    const-wide/32 v2, 0xea60

    const-wide/32 v4, 0xea60

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AlarmAlignManager;->adjustAlarmTime(Lcom/android/server/AlarmManagerService$Alarm;JJ)V

    goto :goto_0

    .line 171
    :sswitch_3
    iget v0, p2, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_4

    iget-wide v0, p2, Lcom/android/server/AlarmManagerService$BroadcastStats;->frequence:J

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 172
    const-wide/32 v0, 0x493e0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/AlarmAlignManager;->extendAlarmTime(Lcom/android/server/AlarmManagerService$Alarm;JLcom/android/server/AlarmManagerService$BroadcastStats;)V

    .line 174
    :cond_4
    const-wide/32 v2, 0x15f90

    const-wide/32 v4, 0x15f90

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AlarmAlignManager;->adjustAlarmTime(Lcom/android/server/AlarmManagerService$Alarm;JJ)V

    goto/16 :goto_0

    .line 177
    :sswitch_4
    const-wide/32 v0, 0x2bf20

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/AlarmAlignManager;->extendAlarmTime(Lcom/android/server/AlarmManagerService$Alarm;JLcom/android/server/AlarmManagerService$BroadcastStats;)V

    .line 178
    const-wide/16 v2, 0x7530

    const-wide/32 v4, 0xea60

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AlarmAlignManager;->adjustAlarmTime(Lcom/android/server/AlarmManagerService$Alarm;JJ)V

    goto/16 :goto_0

    .line 181
    :sswitch_5
    const-wide/32 v0, 0x493e0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/AlarmAlignManager;->extendAlarmTime(Lcom/android/server/AlarmManagerService$Alarm;JLcom/android/server/AlarmManagerService$BroadcastStats;)V

    .line 182
    const-wide/32 v2, 0x15f90

    const-wide/32 v4, 0x2bf20

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AlarmAlignManager;->adjustAlarmTime(Lcom/android/server/AlarmManagerService$Alarm;JJ)V

    goto/16 :goto_0

    .line 185
    :sswitch_6
    const-wide/32 v0, 0x493e0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/AlarmAlignManager;->extendAlarmTime(Lcom/android/server/AlarmManagerService$Alarm;JLcom/android/server/AlarmManagerService$BroadcastStats;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/android/server/AlarmAlignManager;->adjustAlarmNoWakeup(Lcom/android/server/AlarmManagerService$Alarm;)V

    goto/16 :goto_0

    .line 189
    :sswitch_7
    const-wide/32 v0, 0x493e0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/AlarmAlignManager;->extendAlarmTime(Lcom/android/server/AlarmManagerService$Alarm;JLcom/android/server/AlarmManagerService$BroadcastStats;)V

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/AlarmAlignManager;->adjustAlarmNoWakeup(Lcom/android/server/AlarmManagerService$Alarm;)V

    goto/16 :goto_0

    .line 193
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/android/server/AlarmAlignManager;->expendToDayTime(Lcom/android/server/AlarmManagerService$Alarm;)V

    goto/16 :goto_0

    .line 196
    :sswitch_9
    invoke-direct {p0, p1}, Lcom/android/server/AlarmAlignManager;->adjustAlarmNoWakeup(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 197
    const-wide/32 v0, 0x5265c00

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/AlarmAlignManager;->extendAlarmTime(Lcom/android/server/AlarmManagerService$Alarm;JLcom/android/server/AlarmManagerService$BroadcastStats;)V

    goto/16 :goto_0

    .line 155
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0xb -> :sswitch_4
        0xc -> :sswitch_5
        0x15 -> :sswitch_6
        0x16 -> :sswitch_7
        0x17 -> :sswitch_8
        0x18 -> :sswitch_9
    .end sparse-switch
.end method

.method private adjustAlarmByStats(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$BroadcastStats;)Z
    .locals 13
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "stats"    # Lcom/android/server/AlarmManagerService$BroadcastStats;

    .prologue
    const/16 v12, 0x17

    const/16 v11, 0xb

    const/4 v10, 0x3

    const/16 v9, 0xc

    const/16 v8, 0x32

    .line 211
    const/4 v3, 0x0

    .line 213
    .local v3, "ret":Z
    const/4 v0, 0x0

    .line 214
    .local v0, "align":Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService$Alarm;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/AlarmAlignStore;->Str2MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "pkgName":Ljava/lang/String;
    iget v4, p2, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    if-le v4, v8, :cond_2

    iget-wide v4, p2, Lcom/android/server/AlarmManagerService$BroadcastStats;->frequence:J

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 217
    const/16 v4, 0x16

    invoke-direct {p0, v2, v9, v4, v12}, Lcom/android/server/AlarmAlignManager;->initAppPermission(Ljava/lang/String;III)Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;

    move-result-object v0

    .line 218
    iget-object v4, p0, Lcom/android/server/AlarmAlignManager;->mPkgAlignMap:Ljava/util/Map;

    iget-object v5, v0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->pkgName:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v4, "AlarmAlignManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustAlarmByStats:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService$Alarm;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " frequence 1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v3, 0x1

    .line 241
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 243
    :try_start_0
    iget-object v4, p0, Lcom/android/server/AlarmAlignManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/android/server/AlarmAlignStore;->updatePkgAlignPermission(Landroid/content/Context;Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_1
    :goto_1
    return v3

    .line 222
    :cond_2
    iget v4, p2, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    if-le v4, v8, :cond_3

    iget-wide v4, p2, Lcom/android/server/AlarmManagerService$BroadcastStats;->frequence:J

    const-wide/32 v6, 0x1d4c0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    .line 223
    invoke-direct {p0, v2, v11, v9, v12}, Lcom/android/server/AlarmAlignManager;->initAppPermission(Ljava/lang/String;III)Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;

    move-result-object v0

    .line 224
    iget-object v4, p0, Lcom/android/server/AlarmAlignManager;->mPkgAlignMap:Ljava/util/Map;

    iget-object v5, v0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->pkgName:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v4, "AlarmAlignManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustAlarmByStats:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService$Alarm;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " frequence 2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v3, 0x1

    goto :goto_0

    .line 228
    :cond_3
    iget v4, p2, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    if-le v4, v8, :cond_4

    iget-wide v4, p2, Lcom/android/server/AlarmManagerService$BroadcastStats;->frequence:J

    const-wide/32 v6, 0x1d4c0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    iget-wide v4, p2, Lcom/android/server/AlarmManagerService$BroadcastStats;->frequence:J

    const-wide/32 v6, 0x2bf20

    cmp-long v4, v4, v6

    if-gtz v4, :cond_4

    .line 229
    invoke-direct {p0, v2, v10, v11, v9}, Lcom/android/server/AlarmAlignManager;->initAppPermission(Ljava/lang/String;III)Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;

    move-result-object v0

    .line 230
    iget-object v4, p0, Lcom/android/server/AlarmAlignManager;->mPkgAlignMap:Ljava/util/Map;

    iget-object v5, v0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->pkgName:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v4, "AlarmAlignManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustAlarmByStats:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService$Alarm;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " frequence 3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 234
    :cond_4
    iget v4, p2, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    if-le v4, v8, :cond_0

    iget-wide v4, p2, Lcom/android/server/AlarmManagerService$BroadcastStats;->frequence:J

    const-wide/32 v6, 0x2bf20

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget-wide v4, p2, Lcom/android/server/AlarmManagerService$BroadcastStats;->frequence:J

    const-wide/32 v6, 0x493e0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 235
    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct {p0, v2, v4, v5, v10}, Lcom/android/server/AlarmAlignManager;->initAppPermission(Ljava/lang/String;III)Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;

    move-result-object v0

    .line 236
    iget-object v4, p0, Lcom/android/server/AlarmAlignManager;->mPkgAlignMap:Ljava/util/Map;

    iget-object v5, v0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->pkgName:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v4, "AlarmAlignManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustAlarmByStats:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService$Alarm;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " frequence 4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private adjustAlarmNoWakeup(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 1
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 267
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    packed-switch v0, :pswitch_data_0

    .line 275
    :goto_0
    :pswitch_0
    return-void

    .line 269
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    goto :goto_0

    .line 272
    :pswitch_2
    const/4 v0, 0x3

    iput v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private adjustAlarmTime(Lcom/android/server/AlarmManagerService$Alarm;JJ)V
    .locals 2
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "prior"    # J
    .param p4, "backward"    # J

    .prologue
    .line 252
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->start:J

    .line 253
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    add-long/2addr v0, p4

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->end:J

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->fixed:Z

    .line 255
    return-void
.end method

.method private expendToDayTime(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 10
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    const-wide/16 v8, 0x3e8

    const/16 v6, 0xb

    const/4 v5, 0x0

    const/4 v4, 0x6

    .line 278
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 279
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 281
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-lt v1, v4, :cond_0

    .line 282
    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 284
    :cond_0
    invoke-virtual {v0, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 285
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 286
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 287
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 288
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long/2addr v2, v8

    iput-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->start:J

    .line 289
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    add-long/2addr v2, v8

    iput-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->end:J

    .line 290
    const-string v1, "AlarmAlignManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expendToDayTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService$Alarm;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void
.end method

.method private extendAlarmTime(Lcom/android/server/AlarmManagerService$Alarm;JLcom/android/server/AlarmManagerService$BroadcastStats;)V
    .locals 4
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "time"    # J
    .param p4, "stats"    # Lcom/android/server/AlarmManagerService$BroadcastStats;

    .prologue
    .line 258
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v2, p4, Lcom/android/server/AlarmManagerService$BroadcastStats;->lastTime:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, p2

    if-gez v0, :cond_0

    .line 259
    iget-wide v0, p4, Lcom/android/server/AlarmManagerService$BroadcastStats;->lastTime:J

    add-long/2addr v0, p2

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->start:J

    .line 260
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->start:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->end:J

    .line 261
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->start:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 262
    const-string v0, "AlarmAlignManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adjust time to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService$Alarm;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    return-void
.end method

.method private getAdjustType(Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;J)I
    .locals 2
    .param p1, "permission"    # Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;
    .param p2, "whenElapsed"    # J

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/android/server/AlarmAlignManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget v0, p1, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->active:I

    .line 300
    :goto_0
    return v0

    .line 296
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/AlarmAlignManager;->isNight(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    iget v0, p1, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->night:I

    goto :goto_0

    .line 300
    :cond_1
    iget v0, p1, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->idle:I

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/AlarmAlignManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    sget-object v0, Lcom/android/server/AlarmAlignManager;->mInstance:Lcom/android/server/AlarmAlignManager;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/android/server/AlarmAlignManager;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmAlignManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/AlarmAlignManager;->mInstance:Lcom/android/server/AlarmAlignManager;

    .line 76
    :cond_0
    sget-object v0, Lcom/android/server/AlarmAlignManager;->mInstance:Lcom/android/server/AlarmAlignManager;

    return-object v0
.end method

.method private initAppPermission(Ljava/lang/String;III)Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "active"    # I
    .param p3, "idle"    # I
    .param p4, "night"    # I

    .prologue
    .line 431
    new-instance v0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;

    invoke-direct {v0, p0, p1}, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;-><init>(Lcom/android/server/AlarmAlignManager;Ljava/lang/String;)V

    .line 432
    .local v0, "align":Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->valid:Z

    .line 433
    iput p2, v0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->active:I

    .line 434
    iput p3, v0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->idle:I

    .line 435
    iput p4, v0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->night:I

    .line 436
    return-object v0
.end method

.method private initAppPermission(Ljava/lang/String;IIII)Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "valid"    # I
    .param p3, "active"    # I
    .param p4, "idle"    # I
    .param p5, "night"    # I

    .prologue
    const/4 v1, 0x1

    .line 422
    new-instance v0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;

    invoke-direct {v0, p0, p1}, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;-><init>(Lcom/android/server/AlarmAlignManager;Ljava/lang/String;)V

    .line 423
    .local v0, "align":Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;
    if-ne p2, v1, :cond_0

    :goto_0
    iput-boolean v1, v0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->valid:Z

    .line 424
    iput p3, v0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->active:I

    .line 425
    iput p4, v0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->idle:I

    .line 426
    iput p5, v0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->night:I

    .line 427
    return-object v0

    .line 423
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 128
    iget-object v1, p0, Lcom/android/server/AlarmAlignManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 129
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "mz_enable_alarm_align"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 131
    iput-boolean v3, p0, Lcom/android/server/AlarmAlignManager;->mEnableAlarmAlign:Z

    .line 137
    :goto_0
    new-instance v1, Lcom/android/server/AlarmAlignManager$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/AlarmAlignManager;->mHandle:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/AlarmAlignManager$SettingsObserver;-><init>(Lcom/android/server/AlarmAlignManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/AlarmAlignManager;->mSettingsObserver:Lcom/android/server/AlarmAlignManager$SettingsObserver;

    .line 138
    const-string v1, "mz_enable_alarm_align"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AlarmAlignManager;->mSettingsObserver:Lcom/android/server/AlarmAlignManager$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 141
    return-void

    .line 134
    :cond_0
    iput-boolean v4, p0, Lcom/android/server/AlarmAlignManager;->mEnableAlarmAlign:Z

    goto :goto_0
.end method

.method private initFilter()V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 120
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/android/server/AlarmAlignManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/AlarmAlignManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    return-void
.end method

.method private initPkgAlignPermissionMap()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 343
    const-string v1, "com.meizu.alarmtest"

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/server/AlarmAlignManager;->initTestAppPermission(Ljava/lang/String;III)Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;

    move-result-object v0

    .line 344
    .local v0, "align":Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;
    iget-object v1, p0, Lcom/android/server/AlarmAlignManager;->mPkgAlignMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->pkgName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v1, "com.meizu.alarmtest2"

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/server/AlarmAlignManager;->initTestAppPermission(Ljava/lang/String;III)Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/android/server/AlarmAlignManager;->mPkgAlignMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->pkgName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v1, "com.meizu.alarmtest3"

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/server/AlarmAlignManager;->initTestAppPermission(Ljava/lang/String;III)Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/android/server/AlarmAlignManager;->mPkgAlignMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->pkgName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    return-void
.end method

.method private initPkgAlignPermissionMap(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 449
    const-string v3, "valid = ? "

    .line 450
    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 451
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "package_name"

    aput-object v5, v2, v1

    const/4 v1, 0x1

    const-string v5, "valid"

    aput-object v5, v2, v1

    const/4 v1, 0x2

    const-string v5, "active"

    aput-object v5, v2, v1

    const/4 v1, 0x3

    const-string v5, "idle"

    aput-object v5, v2, v1

    const/4 v1, 0x4

    const-string v5, "night"

    aput-object v5, v2, v1

    .line 459
    .local v2, "projection":[Ljava/lang/String;
    const-string v1, "AlarmAlignManager"

    const-string v5, "Load permission from database"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 461
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/server/AlarmAlignStore;->URI:Landroid/net/Uri;

    const-string v5, "package_name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 463
    .local v12, "cursor":Landroid/database/Cursor;
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v5, 0x1

    if-ge v1, v5, :cond_2

    .line 464
    :cond_0
    if-eqz v12, :cond_1

    .line 465
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 482
    :cond_1
    :goto_0
    return-void

    .line 469
    :cond_2
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 470
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v1, 0x2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v1, 0x3

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v1, 0x4

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/AlarmAlignManager;->initAppPermission(Ljava/lang/String;IIII)Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;

    move-result-object v11

    .line 475
    .local v11, "align":Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;
    iget-object v1, p0, Lcom/android/server/AlarmAlignManager;->mPkgAlignMap:Ljava/util/Map;

    iget-object v5, v11, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->pkgName:Ljava/lang/String;

    invoke-interface {v1, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 478
    .end local v11    # "align":Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;
    :cond_3
    if-eqz v12, :cond_4

    .line 479
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 481
    :cond_4
    const-string v1, "AlarmAlignManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initPkgAlignPermissionMap:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/AlarmAlignManager;->mPkgAlignMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initTestAppPermission(Ljava/lang/String;III)Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "active"    # I
    .param p3, "idle"    # I
    .param p4, "night"    # I

    .prologue
    .line 440
    new-instance v0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;

    invoke-static {p1}, Lcom/android/server/AlarmAlignStore;->Str2MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;-><init>(Lcom/android/server/AlarmAlignManager;Ljava/lang/String;)V

    .line 441
    .local v0, "align":Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->valid:Z

    .line 442
    iput p2, v0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->active:I

    .line 443
    iput p3, v0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->idle:I

    .line 444
    iput p4, v0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->night:I

    .line 445
    return-object v0
.end method

.method private isActive()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 317
    iget-wide v4, p0, Lcom/android/server/AlarmAlignManager;->mScreenOffTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 321
    :cond_0
    :goto_0
    return v2

    .line 320
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 321
    .local v0, "now":J
    iget-wide v4, p0, Lcom/android/server/AlarmAlignManager;->mScreenOffTime:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0x1b7740

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNight(J)Z
    .locals 9
    .param p1, "whenElapsed"    # J

    .prologue
    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long v2, p1, v4

    .line 306
    .local v2, "rtc":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 307
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 308
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 309
    .local v1, "hour":I
    const-string v4, "AlarmAlignManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/16 v4, 0x17

    if-ge v1, v4, :cond_0

    const/4 v4, 0x6

    if-ge v1, v4, :cond_1

    .line 311
    :cond_0
    const/4 v4, 0x1

    .line 313
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isSystem(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 325
    iget-object v4, p0, Lcom/android/server/AlarmAlignManager;->packageManager:Landroid/content/pm/PackageManager;

    if-eqz v4, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v2, v3

    .line 339
    :cond_1
    :goto_0
    return v2

    .line 328
    :cond_2
    const-string v4, "com.meizu"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.android"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "android"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 332
    :try_start_0
    iget-object v4, p0, Lcom/android/server/AlarmAlignManager;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 333
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_1

    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    move v2, v3

    .line 339
    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public adjustAlarm(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$BroadcastStats;)V
    .locals 6
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "stats"    # Lcom/android/server/AlarmManagerService$BroadcastStats;

    .prologue
    const-wide/16 v4, 0x3e8

    .line 89
    iget-boolean v0, p0, Lcom/android/server/AlarmAlignManager;->mEnableAlarmAlign:Z

    if-nez v0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget v0, p0, Lcom/android/server/AlarmAlignManager;->mIsCharging:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 95
    iget-wide v0, p0, Lcom/android/server/AlarmAlignManager;->mScreenOffTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 98
    iget-boolean v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->aligned:Z

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService$Alarm;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/AlarmAlignManager;->isSystem(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget v0, p2, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmAlignManager;->adjustAlarmByPermission(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$BroadcastStats;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmAlignManager;->adjustAlarmByStats(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$BroadcastStats;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long/2addr v0, v4

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->start:J

    .line 114
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    add-long/2addr v0, v4

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->end:J

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->fixed:Z

    goto :goto_0
.end method

.method public getInstance()Lcom/android/server/AlarmAlignManager;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/android/server/AlarmAlignManager;->mInstance:Lcom/android/server/AlarmAlignManager;

    return-object v0
.end method
