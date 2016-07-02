.class public Lcom/android/server/hips/core/InterceptInterface;
.super Ljava/lang/Object;
.source "InterceptInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleIntent(Landroid/content/Intent;)Z
    .locals 21
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 11
    const/4 v10, 0x0

    .line 12
    .local v10, "bRet":Z
    if-eqz p0, :cond_0

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    .line 15
    .local v16, "szAct":Ljava/lang/String;
    if-eqz v16, :cond_0

    .line 16
    const-string v19, "act.intercept.SWITCH"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_2

    .line 17
    const-string v19, "api.intercept.switch.turn-off"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 19
    .local v11, "bSwitchOff":Z
    const-string v19, "api.intercept.switch.turn-on"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 21
    .local v12, "bSwitchOn":Z
    if-eqz v12, :cond_1

    .line 22
    const/4 v10, 0x1

    .line 23
    invoke-static {}, Lcom/android/server/hips/core/InterceptFactory;->getInstance()Lcom/android/server/hips/core/InterceptFactory;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/hips/core/InterceptFactory;->setInterceptSwitchStatus(Z)V

    .line 102
    .end local v11    # "bSwitchOff":Z
    .end local v12    # "bSwitchOn":Z
    .end local v16    # "szAct":Ljava/lang/String;
    :cond_0
    :goto_0
    return v10

    .line 25
    .restart local v11    # "bSwitchOff":Z
    .restart local v12    # "bSwitchOn":Z
    .restart local v16    # "szAct":Ljava/lang/String;
    :cond_1
    if-eqz v11, :cond_0

    .line 26
    const/4 v10, 0x1

    .line 27
    invoke-static {}, Lcom/android/server/hips/core/InterceptFactory;->getInstance()Lcom/android/server/hips/core/InterceptFactory;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/hips/core/InterceptFactory;->setInterceptSwitchStatus(Z)V

    goto :goto_0

    .line 30
    .end local v11    # "bSwitchOff":Z
    .end local v12    # "bSwitchOn":Z
    :cond_2
    const-string v19, "act.intercept.MODE"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_4

    .line 31
    const-string v19, "api.intercept.mode.power-saving"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 33
    .local v9, "bModePowerSaving":Z
    const-string v19, "api.intercept.mode.normal"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 36
    .local v8, "bModeNormal":Z
    if-eqz v9, :cond_3

    .line 37
    invoke-static {}, Lcom/android/server/hips/core/InterceptFactory;->getInstance()Lcom/android/server/hips/core/InterceptFactory;

    move-result-object v19

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/hips/core/InterceptFactory;->changeMode(I)V

    goto :goto_0

    .line 39
    :cond_3
    if-eqz v8, :cond_0

    .line 40
    invoke-static {}, Lcom/android/server/hips/core/InterceptFactory;->getInstance()Lcom/android/server/hips/core/InterceptFactory;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/hips/core/InterceptFactory;->changeMode(I)V

    goto :goto_0

    .line 43
    .end local v8    # "bModeNormal":Z
    .end local v9    # "bModePowerSaving":Z
    :cond_4
    const-string v19, "act.intercept.OPERATION"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_6

    .line 44
    const-string v19, "api.intercept.item.insert"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 46
    .local v6, "bItemInsert":Z
    const-string v19, "api.intercept.item.remove"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 49
    .local v7, "bItemRemove":Z
    if-eqz v6, :cond_5

    .line 50
    const/4 v10, 0x1

    .line 51
    const-string v19, "pkg"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 52
    .local v18, "szPkg":Ljava/lang/String;
    const-string v19, "mod"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 54
    .local v14, "nMod":I
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_0

    if-lez v14, :cond_0

    .line 55
    invoke-static {}, Lcom/android/server/hips/core/InterceptFactory;->getInstance()Lcom/android/server/hips/core/InterceptFactory;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/server/hips/core/InterceptFactory;->addPkg(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 57
    .end local v14    # "nMod":I
    .end local v18    # "szPkg":Ljava/lang/String;
    :cond_5
    if-eqz v7, :cond_0

    .line 58
    const/4 v10, 0x1

    .line 59
    const-string v19, "pkg"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 60
    .restart local v18    # "szPkg":Ljava/lang/String;
    const-string v19, "mod"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 62
    .restart local v14    # "nMod":I
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_0

    if-lez v14, :cond_0

    .line 63
    invoke-static {}, Lcom/android/server/hips/core/InterceptFactory;->getInstance()Lcom/android/server/hips/core/InterceptFactory;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/server/hips/core/InterceptFactory;->delPkg(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 66
    .end local v6    # "bItemInsert":Z
    .end local v7    # "bItemRemove":Z
    .end local v14    # "nMod":I
    .end local v18    # "szPkg":Ljava/lang/String;
    :cond_6
    const-string v19, "act.intercept.BATCHOPERATION"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_0

    .line 68
    const-string v19, "api.intercept.bulk.insert"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 70
    .local v4, "bBulkInsert":Z
    const-string v19, "api.intercept.bulk.remove"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 73
    .local v5, "bBulkRemove":Z
    if-eqz v4, :cond_7

    .line 74
    const-string v19, "packages"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 75
    .local v17, "szPackages":Ljava/lang/String;
    const-string v19, "mod"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 76
    .restart local v14    # "nMod":I
    const-string v19, "src"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 78
    .local v15, "nSrc":I
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_0

    .line 79
    const-string v19, "#"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "arrTmp":[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    array-length v0, v3

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v13, v0, :cond_0

    .line 81
    invoke-static {}, Lcom/android/server/hips/core/InterceptFactory;->getInstance()Lcom/android/server/hips/core/InterceptFactory;

    move-result-object v19

    aget-object v20, v3, v13

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14, v15}, Lcom/android/server/hips/core/InterceptFactory;->addPkg(Ljava/lang/String;II)V

    .line 80
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 85
    .end local v3    # "arrTmp":[Ljava/lang/String;
    .end local v13    # "i":I
    .end local v14    # "nMod":I
    .end local v15    # "nSrc":I
    .end local v17    # "szPackages":Ljava/lang/String;
    :cond_7
    if-eqz v5, :cond_0

    .line 86
    const-string v19, "packages"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 87
    .restart local v17    # "szPackages":Ljava/lang/String;
    const-string v19, "mod"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 88
    .restart local v14    # "nMod":I
    const-string v19, "src"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 90
    .restart local v15    # "nSrc":I
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_0

    .line 91
    const-string v19, "#"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 92
    .restart local v3    # "arrTmp":[Ljava/lang/String;
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_2
    array-length v0, v3

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v13, v0, :cond_0

    .line 93
    invoke-static {}, Lcom/android/server/hips/core/InterceptFactory;->getInstance()Lcom/android/server/hips/core/InterceptFactory;

    move-result-object v19

    aget-object v20, v3, v13

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14, v15}, Lcom/android/server/hips/core/InterceptFactory;->delPkg(Ljava/lang/String;II)V

    .line 92
    add-int/lit8 v13, v13, 0x1

    goto :goto_2
.end method
