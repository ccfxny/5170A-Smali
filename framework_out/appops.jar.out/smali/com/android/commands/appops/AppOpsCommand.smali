.class public Lcom/android/commands/appops/AppOpsCommand;
.super Lcom/android/internal/os/BaseCommand;
.source "AppOpsCommand.java"


# static fields
.field private static final ARGUMENT_USER:Ljava/lang/String; = "--user"

.field private static final COMMAND_GET:Ljava/lang/String; = "get"

.field private static final COMMAND_RESET:Ljava/lang/String; = "reset"

.field private static final COMMAND_SET:Ljava/lang/String; = "set"

.field private static final MODE_ALLOW:Ljava/lang/String; = "allow"

.field private static final MODE_DEFAULT:Ljava/lang/String; = "default"

.field private static final MODE_DENY:Ljava/lang/String; = "deny"

.field private static final MODE_IGNORE:Ljava/lang/String; = "ignore"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/os/BaseCommand;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 40
    new-instance v0, Lcom/android/commands/appops/AppOpsCommand;

    invoke-direct {v0}, Lcom/android/commands/appops/AppOpsCommand;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/commands/appops/AppOpsCommand;->run([Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private runGet()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 180
    const/4 v13, 0x0

    .line 181
    .local v13, "packageName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 182
    .local v10, "op":Ljava/lang/String;
    const/16 v17, -0x2

    .line 183
    .local v17, "userId":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/appops/AppOpsCommand;->nextArg()Ljava/lang/String;

    move-result-object v3

    .local v3, "argument":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 184
    const-string v18, "--user"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/appops/AppOpsCommand;->nextArgRequired()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    goto :goto_0

    .line 187
    :cond_0
    if-nez v13, :cond_1

    .line 188
    move-object v13, v3

    goto :goto_0

    .line 189
    :cond_1
    if-nez v10, :cond_2

    .line 190
    move-object v10, v3

    goto :goto_0

    .line 192
    :cond_2
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error: Unsupported argument: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 275
    :cond_3
    :goto_1
    return-void

    .line 198
    :cond_4
    if-nez v13, :cond_5

    .line 199
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v19, "Error: Package name not specified."

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 203
    :cond_5
    if-eqz v10, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/commands/appops/AppOpsCommand;->strOpToOp(Ljava/lang/String;)I

    move-result v11

    .line 207
    .local v11, "opInt":I
    :goto_2
    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 208
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v17

    .line 211
    :cond_6
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v14

    .line 212
    .local v14, "pm":Landroid/content/pm/IPackageManager;
    const-string v18, "appops"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    .line 214
    .local v2, "appOpsService":Lcom/android/internal/app/IAppOpsService;
    move/from16 v0, v17

    invoke-interface {v14, v13, v0}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v16

    .line 215
    .local v16, "uid":I
    if-gez v16, :cond_8

    .line 216
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error: No UID for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " in user "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 203
    .end local v2    # "appOpsService":Lcom/android/internal/app/IAppOpsService;
    .end local v11    # "opInt":I
    .end local v14    # "pm":Landroid/content/pm/IPackageManager;
    .end local v16    # "uid":I
    :cond_7
    const/4 v11, 0x0

    goto :goto_2

    .line 219
    .restart local v2    # "appOpsService":Lcom/android/internal/app/IAppOpsService;
    .restart local v11    # "opInt":I
    .restart local v14    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v16    # "uid":I
    :cond_8
    if-eqz v10, :cond_a

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v11, v18, v19

    :goto_3
    move/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v2, v0, v13, v1}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v12

    .line 221
    .local v12, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v12, :cond_9

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v18

    if-gtz v18, :cond_b

    .line 222
    :cond_9
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v19, "No operations."

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 219
    .end local v12    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_a
    const/16 v18, 0x0

    goto :goto_3

    .line 225
    .restart local v12    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 226
    .local v8, "now":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_3

    .line 227
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v5

    .line 228
    .local v5, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_10

    .line 229
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$OpEntry;

    .line 230
    .local v4, "ent":Landroid/app/AppOpsManager$OpEntry;
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v19

    invoke-static/range {v19 .. v19}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 231
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 246
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v19, "mode="

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 247
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(I)V

    .line 250
    :goto_6
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_c

    .line 251
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v19, "; time="

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 252
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .local v15, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v18

    sub-long v18, v8, v18

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 254
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 255
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v19, " ago"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 257
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_c
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_d

    .line 258
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v19, "; rejectTime="

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 259
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v18

    sub-long v18, v8, v18

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 261
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 262
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v19, " ago"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 264
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_d
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 265
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v19, " (running)"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 272
    :cond_e
    :goto_7
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v18 .. v18}, Ljava/io/PrintStream;->println()V

    .line 228
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    .line 234
    :pswitch_0
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v19, "allow"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 237
    :pswitch_1
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v19, "ignore"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 240
    :pswitch_2
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v19, "deny"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 243
    :pswitch_3
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v19, "default"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 266
    :cond_f
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v18

    if-eqz v18, :cond_e

    .line 267
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v19, "; duration="

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 268
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 270
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    goto :goto_7

    .line 226
    .end local v4    # "ent":Landroid/app/AppOpsManager$OpEntry;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 232
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private runReset()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 278
    const/4 v2, 0x0

    .line 279
    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, -0x2

    .line 280
    .local v3, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/appops/AppOpsCommand;->nextArg()Ljava/lang/String;

    move-result-object v1

    .local v1, "argument":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 281
    const-string v5, "--user"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 282
    invoke-virtual {p0}, Lcom/android/commands/appops/AppOpsCommand;->nextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, "userStr":Ljava/lang/String;
    const-string v5, "all"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 284
    const/4 v3, -0x1

    goto :goto_0

    .line 285
    :cond_0
    const-string v5, "current"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 286
    const/4 v3, -0x2

    goto :goto_0

    .line 287
    :cond_1
    const-string v5, "owner"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 288
    const/4 v3, 0x0

    goto :goto_0

    .line 290
    :cond_2
    invoke-virtual {p0}, Lcom/android/commands/appops/AppOpsCommand;->nextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 293
    .end local v4    # "userStr":Ljava/lang/String;
    :cond_3
    if-nez v2, :cond_4

    .line 294
    move-object v2, v1

    goto :goto_0

    .line 296
    :cond_4
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: Unsupported argument: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 323
    :goto_1
    return-void

    .line 304
    :cond_5
    const/4 v5, -0x2

    if-ne v3, v5, :cond_6

    .line 305
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 308
    :cond_6
    const-string v5, "appops"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    .line 310
    .local v0, "appOpsService":Lcom/android/internal/app/IAppOpsService;
    invoke-interface {v0, v3, v2}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V

    .line 311
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Reset all modes for: "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 312
    const/4 v5, -0x1

    if-ne v3, v5, :cond_7

    .line 313
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "all users"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 317
    :goto_2
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 318
    if-nez v2, :cond_8

    .line 319
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "all packages"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 315
    :cond_7
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "user "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->print(I)V

    goto :goto_2

    .line 321
    :cond_8
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "package "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private runSet()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v6, 0x0

    .line 108
    .local v6, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 109
    .local v4, "op":Ljava/lang/String;
    const/4 v2, 0x0

    .line 110
    .local v2, "mode":Ljava/lang/String;
    const/4 v9, -0x2

    .line 111
    .local v9, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/appops/AppOpsCommand;->nextArg()Ljava/lang/String;

    move-result-object v1

    .local v1, "argument":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 112
    const-string v10, "--user"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/android/commands/appops/AppOpsCommand;->nextArgRequired()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_0

    .line 115
    :cond_0
    if-nez v6, :cond_1

    .line 116
    move-object v6, v1

    goto :goto_0

    .line 117
    :cond_1
    if-nez v4, :cond_2

    .line 118
    move-object v4, v1

    goto :goto_0

    .line 119
    :cond_2
    if-nez v2, :cond_3

    .line 120
    move-object v2, v1

    goto :goto_0

    .line 122
    :cond_3
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error: Unsupported argument: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 177
    :cond_4
    :goto_1
    return-void

    .line 128
    :cond_5
    if-nez v6, :cond_6

    .line 129
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "Error: Package name not specified."

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 131
    :cond_6
    if-nez v4, :cond_7

    .line 132
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "Error: Operation not specified."

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 134
    :cond_7
    if-nez v2, :cond_8

    .line 135
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "Error: Mode not specified."

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 139
    :cond_8
    invoke-direct {p0, v4}, Lcom/android/commands/appops/AppOpsCommand;->strOpToOp(Ljava/lang/String;)I

    move-result v5

    .line 140
    .local v5, "opInt":I
    if-ltz v5, :cond_4

    .line 144
    const/4 v10, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_9
    :goto_2
    packed-switch v10, :pswitch_data_0

    .line 158
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error: Mode "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not valid,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 144
    :sswitch_0
    const-string v11, "allow"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v10, 0x0

    goto :goto_2

    :sswitch_1
    const-string v11, "deny"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v10, 0x1

    goto :goto_2

    :sswitch_2
    const-string v11, "ignore"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v10, 0x2

    goto :goto_2

    :sswitch_3
    const-string v11, "default"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v10, 0x3

    goto :goto_2

    .line 146
    :pswitch_0
    const/4 v3, 0x0

    .line 164
    .local v3, "modeInt":I
    :goto_3
    const/4 v10, -0x2

    if-ne v9, v10, :cond_a

    .line 165
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    .line 168
    :cond_a
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    .line 169
    .local v7, "pm":Landroid/content/pm/IPackageManager;
    const-string v10, "appops"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    .line 171
    .local v0, "appOpsService":Lcom/android/internal/app/IAppOpsService;
    invoke-interface {v7, v6, v9}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v8

    .line 172
    .local v8, "uid":I
    if-gez v8, :cond_b

    .line 173
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error: No UID for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 149
    .end local v0    # "appOpsService":Lcom/android/internal/app/IAppOpsService;
    .end local v3    # "modeInt":I
    .end local v7    # "pm":Landroid/content/pm/IPackageManager;
    .end local v8    # "uid":I
    :pswitch_1
    const/4 v3, 0x2

    .line 150
    .restart local v3    # "modeInt":I
    goto :goto_3

    .line 152
    .end local v3    # "modeInt":I
    :pswitch_2
    const/4 v3, 0x1

    .line 153
    .restart local v3    # "modeInt":I
    goto :goto_3

    .line 155
    .end local v3    # "modeInt":I
    :pswitch_3
    const/4 v3, 0x3

    .line 156
    .restart local v3    # "modeInt":I
    goto :goto_3

    .line 176
    .restart local v0    # "appOpsService":Lcom/android/internal/app/IAppOpsService;
    .restart local v7    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v8    # "uid":I
    :cond_b
    invoke-interface {v0, v5, v8, v6, v3}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V

    goto/16 :goto_1

    .line 144
    nop

    :sswitch_data_0
    .sparse-switch
        -0x46f4022e -> :sswitch_2
        0x2efe0c -> :sswitch_1
        0x589a349 -> :sswitch_0
        0x5c13d641 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private strOpToOp(Ljava/lang/String;)I
    .locals 4
    .param p1, "op"    # Ljava/lang/String;

    .prologue
    .line 91
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 102
    :goto_0
    return v1

    .line 92
    :catch_0
    move-exception v1

    .line 95
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 96
    :catch_1
    move-exception v1

    .line 99
    :try_start_2
    invoke-static {p1}, Landroid/app/AppOpsManager;->strDebugOpToOp(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    goto :goto_0

    .line 100
    :catch_2
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public onRun()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/commands/appops/AppOpsCommand;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "command":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 76
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown command: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    :goto_1
    return-void

    .line 62
    :sswitch_0
    const-string v2, "set"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "get"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "reset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 64
    :pswitch_0
    invoke-direct {p0}, Lcom/android/commands/appops/AppOpsCommand;->runSet()V

    goto :goto_1

    .line 68
    :pswitch_1
    invoke-direct {p0}, Lcom/android/commands/appops/AppOpsCommand;->runGet()V

    goto :goto_1

    .line 72
    :pswitch_2
    invoke-direct {p0}, Lcom/android/commands/appops/AppOpsCommand;->runReset()V

    goto :goto_1

    .line 62
    :sswitch_data_0
    .sparse-switch
        0x18f56 -> :sswitch_1
        0x1bc62 -> :sswitch_0
        0x6761d4f -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onShowUsage(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 45
    const-string v0, "usage: appops set [--user <USER_ID>] <PACKAGE> <OP> <MODE>\n       appops get [--user <USER_ID>] <PACKAGE> [<OP>]\n       appops reset [--user <USER_ID>] [<PACKAGE>]\n  <PACKAGE> an Android package name.\n  <OP>      an AppOps operation.\n  <MODE>    one of allow, ignore, deny, or default\n  <USER_ID> the user id under which the package is installed. If --user is not\n            specified, the current user is assumed.\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    return-void
.end method
