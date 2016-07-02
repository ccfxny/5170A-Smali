.class Lcom/android/server/BatteryService$Injector;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Injector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/BatteryService$Injector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService$Injector;

    .prologue
    .line 1021
    invoke-direct {p0}, Lcom/android/server/BatteryService$Injector;->isOverLowVolt()Z

    move-result v0

    return v0
.end method

.method private isOverLowVolt()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1111
    new-instance v1, Lcom/android/internal/os/PowerProfile;

    iget-object v3, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 1112
    .local v1, "powerProfile":Lcom/android/internal/os/PowerProfile;
    const-string v3, "battery.low.volt"

    invoke-virtual {v1, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 1113
    .local v0, "overLowVolt":Ljava/lang/Double;
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "over low volt is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-nez v3, :cond_1

    .line 1117
    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v3

    iget v3, v3, Landroid/os/BatteryProperties;->batteryVoltage:I

    int-to-double v4, v3

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v3, v4, v6

    if-gez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private shutdownIfLowTempLocked()V
    .locals 2

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v0

    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    const/16 v1, -0xc8

    if-ge v0, v1, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$2900(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/BatteryService$Injector$3;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$Injector$3;-><init>(Lcom/android/server/BatteryService$Injector;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1137
    :cond_0
    return-void
.end method


# virtual methods
.method onBatteryLow(IZ)V
    .locals 9
    .param p1, "levelCritical"    # I
    .param p2, "plugged"    # Z

    .prologue
    const/16 v8, 0x14

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1023
    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v6

    iget v6, v6, Landroid/os/BatteryProperties;->batteryLevel:I

    if-gt v6, v8, :cond_2

    if-nez p2, :cond_2

    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v6

    iget v6, v6, Landroid/os/BatteryProperties;->batteryStatus:I

    if-eq v6, v4, :cond_2

    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSystemReady:Z
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$2400(Lcom/android/server/BatteryService;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v4

    .line 1028
    .local v2, "sendBatteryLowWarningDialog":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 1029
    const/16 v3, 0x14

    .line 1030
    .local v3, "warningLevel":I
    const/4 v0, 0x1

    .line 1031
    .local v0, "isBatteryLow":Z
    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v6

    iget v6, v6, Landroid/os/BatteryProperties;->batteryLevel:I

    if-gt v6, p1, :cond_3

    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryLow5:Z
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$2500(Lcom/android/server/BatteryService;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1032
    move v3, p1

    .line 1035
    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mBatteryLow5:Z
    invoke-static {v6, v4}, Lcom/android/server/BatteryService;->access$2502(Lcom/android/server/BatteryService;Z)Z

    .line 1036
    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mBatteryLow10:Z
    invoke-static {v6, v4}, Lcom/android/server/BatteryService;->access$2602(Lcom/android/server/BatteryService;Z)Z

    .line 1037
    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mBatteryLow20:Z
    invoke-static {v6, v4}, Lcom/android/server/BatteryService;->access$2702(Lcom/android/server/BatteryService;Z)Z

    .line 1049
    :goto_1
    if-eqz v0, :cond_0

    .line 1050
    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mSendBatteryLowWarningDialog:Z
    invoke-static {v6, v4}, Lcom/android/server/BatteryService;->access$2802(Lcom/android/server/BatteryService;Z)Z

    .line 1051
    move v1, v3

    .line 1052
    .local v1, "runlevel":I
    iget-object v4, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$2900(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v4

    new-instance v6, Lcom/android/server/BatteryService$Injector$1;

    invoke-direct {v6, p0, v1}, Lcom/android/server/BatteryService$Injector$1;-><init>(Lcom/android/server/BatteryService$Injector;I)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1064
    .end local v0    # "isBatteryLow":Z
    .end local v1    # "runlevel":I
    .end local v3    # "warningLevel":I
    :cond_0
    iget-object v4, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSendBatteryLowWarningDialog:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$2800(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    .line 1065
    iget-object v4, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mSendBatteryLowWarningDialog:Z
    invoke-static {v4, v5}, Lcom/android/server/BatteryService;->access$2802(Lcom/android/server/BatteryService;Z)Z

    .line 1066
    iget-object v4, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$2900(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v4

    new-instance v6, Lcom/android/server/BatteryService$Injector$2;

    invoke-direct {v6, p0}, Lcom/android/server/BatteryService$Injector$2;-><init>(Lcom/android/server/BatteryService$Injector;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1075
    iget-object v4, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mBatteryLow20:Z
    invoke-static {v4, v5}, Lcom/android/server/BatteryService;->access$2702(Lcom/android/server/BatteryService;Z)Z

    .line 1076
    iget-object v4, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mBatteryLow10:Z
    invoke-static {v4, v5}, Lcom/android/server/BatteryService;->access$2602(Lcom/android/server/BatteryService;Z)Z

    .line 1077
    iget-object v4, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mBatteryLow5:Z
    invoke-static {v4, v5}, Lcom/android/server/BatteryService;->access$2502(Lcom/android/server/BatteryService;Z)Z

    .line 1079
    :cond_1
    return-void

    .end local v2    # "sendBatteryLowWarningDialog":Z
    :cond_2
    move v2, v5

    .line 1023
    goto :goto_0

    .line 1038
    .restart local v0    # "isBatteryLow":Z
    .restart local v2    # "sendBatteryLowWarningDialog":Z
    .restart local v3    # "warningLevel":I
    :cond_3
    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v6

    iget v6, v6, Landroid/os/BatteryProperties;->batteryLevel:I

    const/16 v7, 0xa

    if-ge v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryLow10:Z
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$2600(Lcom/android/server/BatteryService;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1039
    const/16 v3, 0xa

    .line 1040
    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mBatteryLow10:Z
    invoke-static {v6, v4}, Lcom/android/server/BatteryService;->access$2602(Lcom/android/server/BatteryService;Z)Z

    .line 1041
    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mBatteryLow20:Z
    invoke-static {v6, v4}, Lcom/android/server/BatteryService;->access$2702(Lcom/android/server/BatteryService;Z)Z

    goto :goto_1

    .line 1042
    :cond_4
    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v6

    iget v6, v6, Landroid/os/BatteryProperties;->batteryLevel:I

    if-ge v6, v8, :cond_5

    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryLow20:Z
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$2700(Lcom/android/server/BatteryService;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1043
    const/16 v3, 0x14

    .line 1044
    iget-object v6, p0, Lcom/android/server/BatteryService$Injector;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mBatteryLow20:Z
    invoke-static {v6, v4}, Lcom/android/server/BatteryService;->access$2702(Lcom/android/server/BatteryService;Z)Z

    goto :goto_1

    .line 1046
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method writeMessageToFile(Ljava/lang/String;)V
    .locals 10
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1083
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v8, "/data/system/"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1084
    .local v5, "root":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v8, "close_message.txt"

    invoke-direct {v4, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1085
    .local v4, "mFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_0

    .line 1087
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1095
    :cond_0
    :goto_0
    :try_start_2
    new-instance v7, Ljava/io/FileOutputStream;

    const/4 v8, 0x1

    invoke-direct {v7, v4, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 1096
    .local v7, "stream":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy\u5e74MM\u6708dd\u65e5   HH:mm:ss     "

    invoke-direct {v3, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1098
    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 1099
    .local v1, "curDate":Ljava/util/Date;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Time : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1100
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1101
    .local v0, "buf":[B
    invoke-virtual {v7, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1102
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1107
    .end local v0    # "buf":[B
    .end local v1    # "curDate":Ljava/util/Date;
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v4    # "mFile":Ljava/io/File;
    .end local v5    # "root":Ljava/io/File;
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 1103
    :catch_0
    move-exception v2

    .line 1105
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1089
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "mFile":Ljava/io/File;
    .restart local v5    # "root":Ljava/io/File;
    :catch_1
    move-exception v8

    goto :goto_0
.end method
