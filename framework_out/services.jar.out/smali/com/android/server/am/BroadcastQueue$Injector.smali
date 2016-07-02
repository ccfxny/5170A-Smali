.class public Lcom/android/server/am/BroadcastQueue$Injector;
.super Ljava/lang/Object;
.source "BroadcastQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# static fields
.field private static appWidgetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static r:Lcom/android/server/am/BroadcastRecord;

.field static systemSignature:[Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueue$Injector;->appWidgetList:Ljava/util/ArrayList;

    .line 1491
    sput-object v1, Lcom/android/server/am/BroadcastQueue$Injector;->r:Lcom/android/server/am/BroadcastRecord;

    .line 1492
    sput-object v1, Lcom/android/server/am/BroadcastQueue$Injector;->systemSignature:[Landroid/content/pm/Signature;

    .line 1494
    sget-object v0, Lcom/android/server/am/BroadcastQueue$Injector;->appWidgetList:Ljava/util/ArrayList;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1495
    sget-object v0, Lcom/android/server/am/BroadcastQueue$Injector;->appWidgetList:Ljava/util/ArrayList;

    const-string v1, "android.appwidget.action.APPWIDGET_BIND"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1496
    sget-object v0, Lcom/android/server/am/BroadcastQueue$Injector;->appWidgetList:Ljava/util/ArrayList;

    const-string v1, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1497
    sget-object v0, Lcom/android/server/am/BroadcastQueue$Injector;->appWidgetList:Ljava/util/ArrayList;

    const-string v1, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1498
    sget-object v0, Lcom/android/server/am/BroadcastQueue$Injector;->appWidgetList:Ljava/util/ArrayList;

    const-string v1, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1499
    sget-object v0, Lcom/android/server/am/BroadcastQueue$Injector;->appWidgetList:Ljava/util/ArrayList;

    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1500
    sget-object v0, Lcom/android/server/am/BroadcastQueue$Injector;->appWidgetList:Ljava/util/ArrayList;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1501
    sget-object v0, Lcom/android/server/am/BroadcastQueue$Injector;->appWidgetList:Ljava/util/ArrayList;

    const-string v1, "com.insdio.aqicn.airwidget.intent.action.CLICK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1502
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 7
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .prologue
    .line 1529
    if-nez p0, :cond_1

    .line 1530
    if-nez p1, :cond_0

    const/4 v6, 0x1

    .line 1549
    :goto_0
    return v6

    .line 1530
    :cond_0
    const/4 v6, -0x1

    goto :goto_0

    .line 1534
    :cond_1
    if-nez p1, :cond_2

    .line 1535
    const/4 v6, -0x2

    goto :goto_0

    .line 1537
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1538
    .local v3, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p0

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 1539
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1538
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1541
    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1542
    .local v4, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_4

    aget-object v5, v0, v1

    .line 1543
    .restart local v5    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1542
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1546
    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_4
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1547
    const/4 v6, 0x0

    goto :goto_0

    .line 1549
    :cond_5
    const/4 v6, -0x3

    goto :goto_0
.end method

.method public static interceptForPermissionControl(ILjava/lang/String;)Z
    .locals 8
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1553
    sget-boolean v5, Lcom/android/server/am/BroadcastQueue;->DEBUG_BROADCAST:Z

    if-eqz v5, :cond_0

    .line 1554
    const-string v5, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " r : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/am/BroadcastQueue$Injector;->r:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/am/BroadcastQueue$Injector;->r:Lcom/android/server/am/BroadcastRecord;

    iget-object v7, v7, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 1556
    .local v0, "context":Landroid/content/Context;
    sget-object v5, Lcom/android/server/am/BroadcastQueue$Injector;->r:Lcom/android/server/am/BroadcastRecord;

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/server/am/BroadcastQueue$Injector;->r:Lcom/android/server/am/BroadcastRecord;

    iget-object v5, v5, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/server/am/BroadcastQueue$Injector;->appWidgetList:Ljava/util/ArrayList;

    sget-object v6, Lcom/android/server/am/BroadcastQueue$Injector;->r:Lcom/android/server/am/BroadcastRecord;

    iget-object v6, v6, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1557
    sget-boolean v5, Lcom/android/server/am/BroadcastQueue;->DEBUG_BROADCAST:Z

    if-eqz v5, :cond_1

    .line 1558
    const-string v5, "AUTORUN"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "interceptForPermissionControl: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/am/BroadcastQueue$Injector;->r:Lcom/android/server/am/BroadcastRecord;

    iget-object v7, v7, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    :cond_1
    :goto_0
    return v3

    .line 1562
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1564
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_4

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_3

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_4

    .line 1566
    :cond_3
    const-string v5, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "autorun "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is system return allowed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1569
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v5

    .line 1571
    :cond_4
    const/4 v3, 0x0

    .line 1573
    .local v3, "limit":Z
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_op_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x41

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 1576
    .local v4, "value":I
    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 1577
    const/4 v3, 0x0

    goto :goto_0

    .line 1579
    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    .line 1581
    .end local v4    # "value":I
    :catch_1
    move-exception v1

    .line 1582
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isSystemSignatures(Ljava/lang/String;)Z
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1505
    const/4 v2, 0x0

    .line 1506
    .local v2, "isSystemSignaturesFlag":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 1507
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1508
    .local v3, "pm":Landroid/content/pm/PackageManager;
    sget-object v4, Lcom/android/server/am/BroadcastQueue$Injector;->systemSignature:[Landroid/content/pm/Signature;

    if-nez v4, :cond_0

    .line 1510
    :try_start_0
    const-string v4, "android"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    sput-object v4, Lcom/android/server/am/BroadcastQueue$Injector;->systemSignature:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1515
    :cond_0
    :goto_0
    sget-object v4, Lcom/android/server/am/BroadcastQueue$Injector;->systemSignature:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_1

    .line 1517
    const/16 v4, 0x40

    :try_start_1
    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 1519
    .local v0, "appSignature":[Landroid/content/pm/Signature;
    sget-object v4, Lcom/android/server/am/BroadcastQueue$Injector;->systemSignature:[Landroid/content/pm/Signature;

    invoke-static {v4, v0}, Lcom/android/server/am/BroadcastQueue$Injector;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-nez v4, :cond_1

    .line 1520
    const/4 v2, 0x1

    .line 1525
    .end local v0    # "appSignature":[Landroid/content/pm/Signature;
    :cond_1
    :goto_1
    return v2

    .line 1522
    :catch_0
    move-exception v4

    goto :goto_1

    .line 1511
    :catch_1
    move-exception v4

    goto :goto_0
.end method
