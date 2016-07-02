.class Lcom/android/server/am/ActivityStackSupervisor$Injector;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static interceptForAccessControl(Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    .locals 17
    .param p0, "dst"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "callingUid"    # I

    .prologue
    .line 4597
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v12

    .line 4598
    .local v12, "srcIntentFlag":I
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v13, v12}, Landroid/content/IntentExt;->setAccessSrcFlags(I)V

    .line 4599
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v13}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v6

    .line 4600
    .local v6, "flag":I
    and-int/lit8 v13, v6, 0x10

    if-eqz v13, :cond_2

    const/4 v8, 0x1

    .line 4601
    .local v8, "isLockView":Z
    :goto_0
    and-int/lit8 v13, v6, 0x20

    if-eqz v13, :cond_3

    const/4 v7, 0x1

    .line 4602
    .local v7, "isFastStarting":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 4603
    .local v4, "context":Landroid/content/Context;
    if-eqz p2, :cond_6

    if-eqz v8, :cond_0

    if-nez v7, :cond_6

    .line 4604
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor;->mAcm:Lmeizu/security/AccessControlManager;

    if-nez v13, :cond_1

    .line 4605
    const-string v13, "access_control"

    invoke-virtual {v4, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmeizu/security/AccessControlManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor;->mAcm:Lmeizu/security/AccessControlManager;

    .line 4607
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor;->mRealPm:Lcom/android/server/pm/PackageManagerService;

    if-nez v13, :cond_4

    .line 4608
    const-string v13, "AccessControl"

    const-string v14, " error: "

    new-instance v15, Ljava/lang/RuntimeException;

    const-string v16, "PackManager is null."

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v13, v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v1, p2

    .line 4635
    .end local v4    # "context":Landroid/content/Context;
    .end local v6    # "flag":I
    .end local v7    # "isFastStarting":Z
    .end local v8    # "isLockView":Z
    .end local v12    # "srcIntentFlag":I
    .end local p2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v1, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_2
    return-object v1

    .line 4600
    .end local v1    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v6    # "flag":I
    .restart local v12    # "srcIntentFlag":I
    .restart local p2    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 4601
    .restart local v8    # "isLockView":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 4611
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v7    # "isFastStarting":Z
    :cond_4
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-boolean v10, v13, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    .line 4612
    .local v10, "needAccessControl":Z
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "mz_app_lock_control"

    const/4 v15, 0x0

    const/16 v16, -0x3

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 4614
    .local v3, "appAccessControl":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor;->mAcm:Lmeizu/security/AccessControlManager;

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lmeizu/security/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    if-eqz v10, :cond_6

    if-eqz v3, :cond_6

    .line 4615
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisor;->mRealPm:Lcom/android/server/pm/PackageManagerService;

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/android/server/pm/PackageManagerService;->getAccessInfo(I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 4616
    .local v11, "rInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4617
    .local v2, "activityLabel":Ljava/lang/CharSequence;
    if-nez v2, :cond_5

    .line 4618
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v13, :cond_7

    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4622
    :cond_5
    :goto_3
    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 4623
    .local v9, "mAccessPkg":Ljava/lang/String;
    if-eqz v11, :cond_8

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 p2, v0

    .line 4624
    :goto_4
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iput-object v2, v13, Landroid/content/ActivityInfoExt;->mDisplaytitleString:Ljava/lang/CharSequence;

    .line 4625
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iput-object v9, v13, Landroid/content/ActivityInfoExt;->mAccessPkg:Ljava/lang/String;

    .line 4626
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    iput-object v14, v13, Landroid/content/ActivityInfoExt;->mStartComponentName:Landroid/content/ComponentName;

    .line 4627
    new-instance v13, Landroid/content/ComponentName;

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .end local v2    # "activityLabel":Ljava/lang/CharSequence;
    .end local v3    # "appAccessControl":I
    .end local v4    # "context":Landroid/content/Context;
    .end local v6    # "flag":I
    .end local v7    # "isFastStarting":Z
    .end local v8    # "isLockView":Z
    .end local v9    # "mAccessPkg":Ljava/lang/String;
    .end local v10    # "needAccessControl":Z
    .end local v11    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v12    # "srcIntentFlag":I
    :cond_6
    :goto_5
    move-object/from16 v1, p2

    .line 4635
    .end local p2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto/16 :goto_2

    .line 4618
    .end local v1    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "activityLabel":Ljava/lang/CharSequence;
    .restart local v3    # "appAccessControl":I
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v6    # "flag":I
    .restart local v7    # "isFastStarting":Z
    .restart local v8    # "isLockView":Z
    .restart local v10    # "needAccessControl":Z
    .restart local v11    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v12    # "srcIntentFlag":I
    .restart local p2    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_7
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_3

    .line 4623
    .restart local v9    # "mAccessPkg":Ljava/lang/String;
    :cond_8
    const/16 p2, 0x0

    goto :goto_4

    .line 4631
    .end local v2    # "activityLabel":Ljava/lang/CharSequence;
    .end local v3    # "appAccessControl":I
    .end local v4    # "context":Landroid/content/Context;
    .end local v6    # "flag":I
    .end local v7    # "isFastStarting":Z
    .end local v8    # "isLockView":Z
    .end local v9    # "mAccessPkg":Ljava/lang/String;
    .end local v10    # "needAccessControl":Z
    .end local v11    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v12    # "srcIntentFlag":I
    :catch_0
    move-exception v5

    .line 4632
    .local v5, "e":Ljava/lang/Exception;
    const-string v13, "AccessControl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4633
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method
