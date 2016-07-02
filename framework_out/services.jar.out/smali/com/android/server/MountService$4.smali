.class Lcom/android/server/MountService$4;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1104
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1105
    .local v1, "action":Ljava/lang/String;
    const-string v18, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1107
    :try_start_0
    const-string v14, "externalvolumeremoved"

    .line 1108
    .local v14, "state":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->access$3000(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v18

    const-string v19, "externalvolume"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "listdisks"

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v18

    const/16 v19, 0x6e

    invoke-static/range {v18 .. v19}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v16

    .line 1112
    .local v16, "vols":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1113
    .local v7, "label":Ljava/lang/String;
    move-object/from16 v2, v16

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v8, :cond_6

    aget-object v17, v2, v4

    .line 1114
    .local v17, "volstr":Ljava/lang/String;
    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1116
    .local v15, "tok":[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v7, v15, v18

    .line 1117
    const/16 v18, 0x2

    aget-object v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1118
    .local v13, "st":I
    if-nez v13, :cond_1

    .line 1119
    const-string v14, "externalvolumeremoved"

    .line 1113
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1120
    :cond_1
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_2

    .line 1121
    const-string v14, "externalvolumeunmounted"

    goto :goto_1

    .line 1122
    :cond_2
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v13, v0, :cond_4

    .line 1123
    const-string v14, "externalvolumemounted"

    .line 1124
    const-string v18, "MountService"

    const-string v19, "Media already mounted on daemon connection"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    if-eqz v14, :cond_0

    if-eqz v7, :cond_0

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->access$3700(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v5, v18, 0x1

    .line 1128
    .local v5, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->access$3800(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v18

    const v19, 0xa0a00d0

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1132
    .local v10, "name":Ljava/lang/String;
    new-instance v6, Landroid/os/storage/DiskInfo;

    invoke-direct {v6, v10, v7}, Landroid/os/storage/DiskInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    .local v6, "info":Landroid/os/storage/DiskInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->access$3700(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1134
    const/16 v18, 0x1

    aget-object v18, v15, v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/os/storage/DiskInfo;->add(Ljava/lang/String;)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/MountService;->updateExternalVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v10, v14}, Lcom/android/server/MountService;->access$3900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1162
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "index":I
    .end local v6    # "info":Landroid/os/storage/DiskInfo;
    .end local v7    # "label":Ljava/lang/String;
    .end local v8    # "len$":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v13    # "st":I
    .end local v14    # "state":Ljava/lang/String;
    .end local v15    # "tok":[Ljava/lang/String;
    .end local v16    # "vols":[Ljava/lang/String;
    .end local v17    # "volstr":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1163
    .local v3, "e":Ljava/lang/Exception;
    const-string v18, "MountService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "e = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    return-void

    .line 1137
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v7    # "label":Ljava/lang/String;
    .restart local v8    # "len$":I
    .restart local v13    # "st":I
    .restart local v14    # "state":Ljava/lang/String;
    .restart local v15    # "tok":[Ljava/lang/String;
    .restart local v16    # "vols":[Ljava/lang/String;
    .restart local v17    # "volstr":Ljava/lang/String;
    :cond_4
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v13, v0, :cond_5

    .line 1138
    :try_start_1
    const-string v14, "externalvolumeunmounting"

    goto/16 :goto_1

    .line 1140
    :cond_5
    new-instance v18, Ljava/lang/Exception;

    const-string v19, "Unexpected state %d"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1145
    .end local v13    # "st":I
    .end local v15    # "tok":[Ljava/lang/String;
    .end local v17    # "volstr":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->access$3000(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v18

    const-string v19, "externalvolume"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "listpartitions"

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v18

    const/16 v19, 0x6e

    invoke-static/range {v18 .. v19}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v11

    .line 1149
    .local v11, "parts":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1150
    .local v9, "mountPoint":Ljava/lang/String;
    move-object v2, v11

    array-length v8, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v8, :cond_3

    aget-object v12, v2, v4

    .line 1151
    .local v12, "partstr":Ljava/lang/String;
    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1153
    .restart local v15    # "tok":[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v7, v15, v18

    .line 1154
    const/16 v18, 0x1

    aget-object v9, v15, v18

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/MountService;->findDiskIndex(Ljava/lang/String;)I
    invoke-static {v0, v7}, Lcom/android/server/MountService;->access$4000(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v5

    .line 1156
    .restart local v5    # "index":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_7

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->access$3700(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/storage/DiskInfo;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/os/storage/DiskInfo;->findPartition(Ljava/lang/String;)I

    move-result v18

    if-gez v18, :cond_7

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->access$3700(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/storage/DiskInfo;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/os/storage/DiskInfo;->add(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1150
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method
