.class final Lcom/android/server/twilight/TwilightService$LocationHandler;
.super Landroid/os/Handler;
.source "TwilightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/twilight/TwilightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocationHandler"
.end annotation


# static fields
.field private static final FACTOR_GMT_OFFSET_LONGITUDE:D = 0.004166666666666667

.field private static final LOCATION_UPDATE_DISTANCE_METER:F = 20000.0f

.field private static final LOCATION_UPDATE_ENABLE_INTERVAL_MAX:J = 0xdbba0L

.field private static final LOCATION_UPDATE_ENABLE_INTERVAL_MIN:J = 0x1388L

.field private static final LOCATION_UPDATE_MS:J = 0x5265c00L

.field private static final MIN_LOCATION_UPDATE_MS:J = 0x1b7740L

.field private static final MSG_DO_APPROXIMATELY_TWILIGHT_UPDATE:I = 0x5

.field private static final MSG_DO_TWILIGHT_UPDATE:I = 0x4

.field private static final MSG_ENABLE_LOCATION_UPDATES:I = 0x1

.field private static final MSG_GET_NEW_LOCATION_UPDATE:I = 0x2

.field private static final MSG_PROCESS_NEW_LOCATION:I = 0x3


# instance fields
.field private mApproximatelyLocation:Landroid/location/Location;

.field private mDidFirstInit:Z

.field private mLastNetworkRegisterTime:J

.field private mLastUpdateInterval:J

.field private mLocation:Landroid/location/Location;

.field private mNetworkListenerEnabled:Z

.field private mPassiveListenerEnabled:Z

.field private final mTwilightCalculator:Lcom/android/server/TwilightCalculator;

.field private pendingApproximatelyTwilightIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/server/twilight/TwilightService;

.field private updateApproximatelyTwilightIntent:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Lcom/android/server/twilight/TwilightService;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.action.UPDATE_APPROXIMATELY_TWILIGHT_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->updateApproximatelyTwilightIntent:Landroid/content/Intent;

    .line 223
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->updateApproximatelyTwilightIntent:Landroid/content/Intent;

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->pendingApproximatelyTwilightIntent:Landroid/app/PendingIntent;

    .line 239
    const-wide/32 v0, -0x1b7740

    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastNetworkRegisterTime:J

    .line 242
    new-instance v0, Lcom/android/server/TwilightCalculator;

    invoke-direct {v0}, Lcom/android/server/TwilightCalculator;-><init>()V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/twilight/TwilightService;
    .param p2, "x1"    # Lcom/android/server/twilight/TwilightService$1;

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/android/server/twilight/TwilightService$LocationHandler;-><init>(Lcom/android/server/twilight/TwilightService;)V

    return-void
.end method

.method private retrieveApproximatelyLocation()V
    .locals 12

    .prologue
    .line 498
    const/4 v4, 0x0

    .line 499
    .local v4, "location":Landroid/location/Location;
    iget-object v6, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v6, v6, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    new-instance v7, Landroid/location/Criteria;

    invoke-direct {v7}, Landroid/location/Criteria;-><init>()V

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 501
    .local v5, "providers":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 502
    iget-object v6, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v7, v6, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 505
    .local v1, "lastKnownLocation":Landroid/location/Location;
    if-eqz v4, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v4}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 508
    :cond_1
    move-object v4, v1

    .line 512
    iget-object v6, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v6, v6, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v7, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->pendingApproximatelyTwilightIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 537
    .end local v1    # "lastKnownLocation":Landroid/location/Location;
    :goto_0
    return-void

    .line 520
    :cond_2
    if-nez v4, :cond_3

    .line 521
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 522
    .local v0, "currentTime":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 523
    const-wide v8, 0x3f71111111111111L    # 0.004166666666666667

    iget-wide v10, v0, Landroid/text/format/Time;->gmtoff:J

    iget v6, v0, Landroid/text/format/Time;->isDst:I

    if-lez v6, :cond_4

    const/16 v6, 0xe10

    :goto_1
    int-to-long v6, v6

    sub-long v6, v10, v6

    long-to-double v6, v6

    mul-double v2, v8, v6

    .line 524
    .local v2, "lngOffset":D
    new-instance v4, Landroid/location/Location;

    .end local v4    # "location":Landroid/location/Location;
    const-string v6, "GuangZhou China"

    invoke-direct {v4, v6}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 525
    .restart local v4    # "location":Landroid/location/Location;
    invoke-virtual {v4, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 526
    const-wide/high16 v6, 0x4037000000000000L    # 23.0

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 527
    const v6, 0x48cb9d00    # 417000.0f

    invoke-virtual {v4, v6}, Landroid/location/Location;->setAccuracy(F)V

    .line 528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setTime(J)V

    .line 529
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 536
    .end local v0    # "currentTime":Landroid/text/format/Time;
    .end local v2    # "lngOffset":D
    :cond_3
    iput-object v4, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mApproximatelyLocation:Landroid/location/Location;

    goto :goto_0

    .line 523
    .restart local v0    # "currentTime":Landroid/text/format/Time;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private retrieveLocation()V
    .locals 12

    .prologue
    .line 386
    const/4 v4, 0x0

    .line 387
    .local v4, "location":Landroid/location/Location;
    iget-object v6, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v6, v6, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    new-instance v7, Landroid/location/Criteria;

    invoke-direct {v7}, Landroid/location/Criteria;-><init>()V

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 389
    .local v5, "providers":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 390
    iget-object v6, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v7, v6, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 393
    .local v1, "lastKnownLocation":Landroid/location/Location;
    if-eqz v4, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v4}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 396
    :cond_1
    move-object v4, v1

    goto :goto_0

    .line 403
    .end local v1    # "lastKnownLocation":Landroid/location/Location;
    :cond_2
    if-nez v4, :cond_3

    .line 404
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 405
    .local v0, "currentTime":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 406
    const-wide v8, 0x3f71111111111111L    # 0.004166666666666667

    iget-wide v10, v0, Landroid/text/format/Time;->gmtoff:J

    iget v6, v0, Landroid/text/format/Time;->isDst:I

    if-lez v6, :cond_4

    const/16 v6, 0xe10

    :goto_1
    int-to-long v6, v6

    sub-long v6, v10, v6

    long-to-double v6, v6

    mul-double v2, v8, v6

    .line 408
    .local v2, "lngOffset":D
    new-instance v4, Landroid/location/Location;

    .end local v4    # "location":Landroid/location/Location;
    const-string v6, "fake"

    invoke-direct {v4, v6}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 409
    .restart local v4    # "location":Landroid/location/Location;
    invoke-virtual {v4, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 410
    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 411
    const v6, 0x48cb9d00    # 417000.0f

    invoke-virtual {v4, v6}, Landroid/location/Location;->setAccuracy(F)V

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setTime(J)V

    .line 413
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 420
    .end local v0    # "currentTime":Landroid/text/format/Time;
    .end local v2    # "lngOffset":D
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/server/twilight/TwilightService$LocationHandler;->setLocation(Landroid/location/Location;)V

    .line 421
    return-void

    .line 406
    .restart local v0    # "currentTime":Landroid/text/format/Time;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    .line 425
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->updateTwilightState()V

    .line 426
    return-void
.end method

.method private updateApproximatelyTwilightState()V
    .locals 24

    .prologue
    .line 540
    invoke-direct/range {p0 .. p0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->retrieveApproximatelyLocation()V

    .line 542
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mApproximatelyLocation:Landroid/location/Location;

    if-nez v3, :cond_0

    .line 597
    :goto_0
    return-void

    .line 545
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 548
    .local v16, "now":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    const-wide/32 v4, 0x5265c00

    sub-long v4, v16, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mApproximatelyLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mApproximatelyLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    .line 550
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget-wide v0, v3, Lcom/android/server/TwilightCalculator;->mSunset:J

    move-wide/from16 v22, v0

    .line 553
    .local v22, "yesterdaySunset":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mApproximatelyLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mApproximatelyLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    move-wide/from16 v4, v16

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    .line 555
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget v3, v3, Lcom/android/server/TwilightCalculator;->mState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v12, 0x1

    .line 556
    .local v12, "isNight":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget-wide v0, v3, Lcom/android/server/TwilightCalculator;->mSunrise:J

    move-wide/from16 v18, v0

    .line 557
    .local v18, "todaySunrise":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget-wide v0, v3, Lcom/android/server/TwilightCalculator;->mSunset:J

    move-wide/from16 v20, v0

    .line 560
    .local v20, "todaySunset":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    const-wide/32 v4, 0x5265c00

    add-long v4, v4, v16

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mApproximatelyLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mApproximatelyLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    .line 562
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget-wide v10, v3, Lcom/android/server/TwilightCalculator;->mSunrise:J

    .line 565
    .local v10, "tomorrowSunrise":J
    new-instance v2, Lcom/android/server/twilight/TwilightState;

    move v3, v12

    move-wide/from16 v4, v22

    move-wide/from16 v6, v18

    move-wide/from16 v8, v20

    invoke-direct/range {v2 .. v11}, Lcom/android/server/twilight/TwilightState;-><init>(ZJJJJ)V

    .line 571
    .local v2, "state":Lcom/android/server/twilight/TwilightState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iput-object v2, v3, Lcom/android/server/twilight/TwilightService;->mApproximatelyTwilightState:Lcom/android/server/twilight/TwilightState;

    .line 574
    const-wide/16 v14, 0x0

    .line 575
    .local v14, "nextUpdate":J
    const-wide/16 v4, -0x1

    cmp-long v3, v18, v4

    if-eqz v3, :cond_1

    const-wide/16 v4, -0x1

    cmp-long v3, v20, v4

    if-nez v3, :cond_3

    .line 577
    :cond_1
    const-wide/32 v4, 0x2932e00

    add-long v14, v16, v4

    .line 595
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v3, v3, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->pendingApproximatelyTwilightIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v3, v3, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->pendingApproximatelyTwilightIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v14, v15, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 555
    .end local v2    # "state":Lcom/android/server/twilight/TwilightState;
    .end local v10    # "tomorrowSunrise":J
    .end local v12    # "isNight":Z
    .end local v14    # "nextUpdate":J
    .end local v18    # "todaySunrise":J
    .end local v20    # "todaySunset":J
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 580
    .restart local v2    # "state":Lcom/android/server/twilight/TwilightState;
    .restart local v10    # "tomorrowSunrise":J
    .restart local v12    # "isNight":Z
    .restart local v14    # "nextUpdate":J
    .restart local v18    # "todaySunrise":J
    .restart local v20    # "todaySunset":J
    :cond_3
    const-wide/32 v4, 0xea60

    add-long/2addr v14, v4

    .line 582
    cmp-long v3, v16, v20

    if-lez v3, :cond_4

    .line 583
    add-long/2addr v14, v10

    goto :goto_2

    .line 584
    :cond_4
    cmp-long v3, v16, v18

    if-lez v3, :cond_5

    .line 585
    add-long v14, v14, v20

    goto :goto_2

    .line 587
    :cond_5
    add-long v14, v14, v18

    goto :goto_2
.end method

.method private updateTwilightState()V
    .locals 26

    .prologue
    .line 429
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    if-nez v3, :cond_0

    .line 430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    const/4 v4, 0x0

    # invokes: Lcom/android/server/twilight/TwilightService;->setTwilightState(Lcom/android/server/twilight/TwilightState;)V
    invoke-static {v3, v4}, Lcom/android/server/twilight/TwilightService;->access$400(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)V

    .line 494
    :goto_0
    return-void

    .line 434
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 437
    .local v16, "now":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    const-wide/32 v4, 0x5265c00

    sub-long v4, v16, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    .line 439
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget-wide v0, v3, Lcom/android/server/TwilightCalculator;->mSunset:J

    move-wide/from16 v24, v0

    .line 442
    .local v24, "yesterdaySunset":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    move-wide/from16 v4, v16

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    .line 444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget v3, v3, Lcom/android/server/TwilightCalculator;->mState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v12, 0x1

    .line 445
    .local v12, "isNight":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget-wide v0, v3, Lcom/android/server/TwilightCalculator;->mSunrise:J

    move-wide/from16 v18, v0

    .line 446
    .local v18, "todaySunrise":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget-wide v0, v3, Lcom/android/server/TwilightCalculator;->mSunset:J

    move-wide/from16 v20, v0

    .line 449
    .local v20, "todaySunset":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    const-wide/32 v4, 0x5265c00

    add-long v4, v4, v16

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    .line 451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget-wide v10, v3, Lcom/android/server/TwilightCalculator;->mSunrise:J

    .line 454
    .local v10, "tomorrowSunrise":J
    new-instance v2, Lcom/android/server/twilight/TwilightState;

    move v3, v12

    move-wide/from16 v4, v24

    move-wide/from16 v6, v18

    move-wide/from16 v8, v20

    invoke-direct/range {v2 .. v11}, Lcom/android/server/twilight/TwilightState;-><init>(ZJJJJ)V

    .line 459
    .local v2, "state":Lcom/android/server/twilight/TwilightState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    # invokes: Lcom/android/server/twilight/TwilightService;->setTwilightState(Lcom/android/server/twilight/TwilightState;)V
    invoke-static {v3, v2}, Lcom/android/server/twilight/TwilightService;->access$400(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)V

    .line 462
    const-wide/16 v14, 0x0

    .line 463
    .local v14, "nextUpdate":J
    const-wide/16 v4, -0x1

    cmp-long v3, v18, v4

    if-eqz v3, :cond_1

    const-wide/16 v4, -0x1

    cmp-long v3, v20, v4

    if-nez v3, :cond_3

    .line 465
    :cond_1
    const-wide/32 v4, 0x2932e00

    add-long v14, v16, v4

    .line 483
    :goto_2
    new-instance v22, Landroid/content/Intent;

    const-string v3, "com.android.server.action.UPDATE_TWILIGHT_STATE"

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    .local v22, "updateIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v3}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 486
    .local v13, "pendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v3, v3, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v13}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v3, v3, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v14, v15, v13}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v3, v3, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->pendingApproximatelyTwilightIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 444
    .end local v2    # "state":Lcom/android/server/twilight/TwilightState;
    .end local v10    # "tomorrowSunrise":J
    .end local v12    # "isNight":Z
    .end local v13    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v14    # "nextUpdate":J
    .end local v18    # "todaySunrise":J
    .end local v20    # "todaySunset":J
    .end local v22    # "updateIntent":Landroid/content/Intent;
    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 468
    .restart local v2    # "state":Lcom/android/server/twilight/TwilightState;
    .restart local v10    # "tomorrowSunrise":J
    .restart local v12    # "isNight":Z
    .restart local v14    # "nextUpdate":J
    .restart local v18    # "todaySunrise":J
    .restart local v20    # "todaySunset":J
    :cond_3
    const-wide/32 v4, 0xea60

    add-long/2addr v14, v4

    .line 470
    cmp-long v3, v16, v20

    if-lez v3, :cond_4

    .line 471
    add-long/2addr v14, v10

    goto :goto_2

    .line 472
    :cond_4
    cmp-long v3, v16, v18

    if-lez v3, :cond_5

    .line 473
    add-long v14, v14, v20

    goto :goto_2

    .line 475
    :cond_5
    add-long v14, v14, v18

    goto :goto_2
.end method


# virtual methods
.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendEmptyMessage(I)Z

    .line 251
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 269
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 271
    :pswitch_0
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/location/Location;

    .line 272
    .local v9, "location":Landroid/location/Location;
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    # invokes: Lcom/android/server/twilight/TwilightService;->hasMoved(Landroid/location/Location;Landroid/location/Location;)Z
    invoke-static {v0, v9}, Lcom/android/server/twilight/TwilightService;->access$100(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v8

    .line 273
    .local v8, "hasMoved":Z
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    invoke-virtual {v9}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    :cond_1
    const/4 v7, 0x1

    .line 280
    .local v7, "hasBetterAccuracy":Z
    :goto_1
    if-nez v8, :cond_2

    if-eqz v7, :cond_0

    .line 281
    :cond_2
    invoke-direct {p0, v9}, Lcom/android/server/twilight/TwilightService$LocationHandler;->setLocation(Landroid/location/Location;)V

    goto :goto_0

    .line 273
    .end local v7    # "hasBetterAccuracy":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 287
    .end local v8    # "hasMoved":Z
    .end local v9    # "location":Landroid/location/Location;
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    if-eqz v0, :cond_0

    .line 292
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastNetworkRegisterTime:J

    const-wide/32 v2, 0x1b7740

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    .line 302
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    # getter for: Lcom/android/server/twilight/TwilightService;->mEmptyLocationListener:Landroid/location/LocationListener;
    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->access$200(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 310
    :pswitch_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 317
    .local v12, "networkLocationEnabled":Z
    :goto_2
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    if-nez v0, :cond_4

    if-eqz v12, :cond_4

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    .line 319
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastNetworkRegisterTime:J

    .line 321
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 323
    .local v10, "identity":J
    :try_start_1
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/32 v2, 0x5265c00

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    # getter for: Lcom/android/server/twilight/TwilightService;->mEmptyLocationListener:Landroid/location/LocationListener;
    invoke-static {v5}, Lcom/android/server/twilight/TwilightService;->access$200(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 330
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mDidFirstInit:Z

    if-nez v0, :cond_4

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mDidFirstInit:Z

    .line 332
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_4

    .line 333
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->retrieveLocation()V

    .line 342
    .end local v10    # "identity":J
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "passive"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v13

    .line 350
    .local v13, "passiveLocationEnabled":Z
    :goto_3
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mPassiveListenerEnabled:Z

    if-nez v0, :cond_5

    if-eqz v13, :cond_5

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mPassiveListenerEnabled:Z

    .line 353
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 355
    .restart local v10    # "identity":J
    :try_start_3
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "passive"

    const-wide/16 v2, 0x0

    const v4, 0x469c4000    # 20000.0f

    iget-object v5, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    # getter for: Lcom/android/server/twilight/TwilightService;->mLocationListener:Landroid/location/LocationListener;
    invoke-static {v5}, Lcom/android/server/twilight/TwilightService;->access$300(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 358
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 363
    .end local v10    # "identity":J
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mPassiveListenerEnabled:Z

    if-nez v0, :cond_0

    .line 364
    :cond_6
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    .line 365
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    .line 366
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    .line 370
    :cond_7
    :goto_4
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 312
    .end local v12    # "networkLocationEnabled":Z
    .end local v13    # "passiveLocationEnabled":Z
    :catch_0
    move-exception v6

    .line 315
    .local v6, "e":Ljava/lang/Exception;
    const/4 v12, 0x0

    .restart local v12    # "networkLocationEnabled":Z
    goto/16 :goto_2

    .line 326
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v10    # "identity":J
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 344
    .end local v10    # "identity":J
    :catch_1
    move-exception v6

    .line 347
    .restart local v6    # "e":Ljava/lang/Exception;
    const/4 v13, 0x0

    .restart local v13    # "passiveLocationEnabled":Z
    goto :goto_3

    .line 358
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v10    # "identity":J
    :catchall_1
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 367
    .end local v10    # "identity":J
    :cond_8
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    .line 368
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    goto :goto_4

    .line 375
    .end local v12    # "networkLocationEnabled":Z
    .end local v13    # "passiveLocationEnabled":Z
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->updateTwilightState()V

    goto/16 :goto_0

    .line 379
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->updateApproximatelyTwilightState()V

    goto/16 :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public processNewLocation(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 245
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1}, Lcom/android/server/twilight/TwilightService$LocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 246
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 247
    return-void
.end method

.method public requestApproximatelyTwilightUpdate()V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendEmptyMessage(I)Z

    .line 264
    return-void
.end method

.method public requestLocationUpdate()V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendEmptyMessage(I)Z

    .line 255
    return-void
.end method

.method public requestTwilightUpdate()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendEmptyMessage(I)Z

    .line 259
    return-void
.end method
