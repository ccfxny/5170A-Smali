.class public Lcom/android/commands/uiautomator/DumpCommand;
.super Lcom/android/commands/uiautomator/Launcher$Command;
.source "DumpCommand.java"


# static fields
.field private static final DEFAULT_DUMP_FILE:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "window_dump.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/commands/uiautomator/DumpCommand;->DEFAULT_DUMP_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "dump"

    invoke-direct {p0, v0}, Lcom/android/commands/uiautomator/Launcher$Command;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public detailedOptions()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    dump [--verbose][file]\n      [--compressed]: dumps compressed layout information.\n      [file]: the location where the dumped XML should be stored, default is\n      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/commands/uiautomator/DumpCommand;->DEFAULT_DUMP_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .locals 22
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 62
    sget-object v8, Lcom/android/commands/uiautomator/DumpCommand;->DEFAULT_DUMP_FILE:Ljava/io/File;

    .line 63
    .local v8, "dumpFile":Ljava/io/File;
    const/16 v16, 0x1

    .line 65
    .local v16, "verboseMode":Z
    move-object/from16 v5, p1

    .local v5, "arr$":[Ljava/lang/String;
    array-length v11, v5

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v11, :cond_2

    aget-object v4, v5, v9

    .line 66
    .local v4, "arg":Ljava/lang/String;
    const-string v17, "--compressed"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 67
    const/16 v16, 0x0

    .line 65
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 68
    :cond_1
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 69
    new-instance v8, Ljava/io/File;

    .end local v8    # "dumpFile":Ljava/io/File;
    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v8    # "dumpFile":Ljava/io/File;
    goto :goto_1

    .line 73
    .end local v4    # "arg":Ljava/lang/String;
    :cond_2
    new-instance v6, Lcom/android/uiautomator/core/UiAutomationShellWrapper;

    invoke-direct {v6}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;-><init>()V

    .line 74
    .local v6, "automationWrapper":Lcom/android/uiautomator/core/UiAutomationShellWrapper;
    invoke-virtual {v6}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->connect()V

    .line 75
    if-eqz v16, :cond_3

    .line 77
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->setCompressedLayoutHierarchy(Z)V

    .line 86
    :goto_2
    :try_start_0
    invoke-virtual {v6}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v15

    .line 87
    .local v15, "uiAutomation":Landroid/app/UiAutomation;
    const-wide/16 v18, 0x3e8

    const-wide/16 v20, 0x2710

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/UiAutomation;->waitForIdle(JJ)V

    .line 88
    invoke-virtual {v15}, Landroid/app/UiAutomation;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v10

    .line 89
    .local v10, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v10, :cond_4

    .line 90
    sget-object v17, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v18, "ERROR: null root node returned by UiTestAutomationBridge."

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-virtual {v6}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->disconnect()V

    .line 108
    .end local v10    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v15    # "uiAutomation":Landroid/app/UiAutomation;
    :goto_3
    return-void

    .line 79
    :cond_3
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->setCompressedLayoutHierarchy(Z)V

    goto :goto_2

    .line 94
    .restart local v10    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v15    # "uiAutomation":Landroid/app/UiAutomation;
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v7

    .line 96
    .local v7, "display":Landroid/view/Display;
    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v13

    .line 97
    .local v13, "rotation":I
    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14}, Landroid/graphics/Point;-><init>()V

    .line 98
    .local v14, "size":Landroid/graphics/Point;
    invoke-virtual {v7, v14}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 99
    iget v0, v14, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    iget v0, v14, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v10, v8, v13, v0, v1}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpWindowToFile(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/io/File;III)V
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    invoke-virtual {v6}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->disconnect()V

    .line 106
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v18, "UI hierchary dumped to: %s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 100
    .end local v7    # "display":Landroid/view/Display;
    .end local v10    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v13    # "rotation":I
    .end local v14    # "size":Landroid/graphics/Point;
    .end local v15    # "uiAutomation":Landroid/app/UiAutomation;
    :catch_0
    move-exception v12

    .line 101
    .local v12, "re":Ljava/util/concurrent/TimeoutException;
    :try_start_2
    sget-object v17, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v18, "ERROR: could not get idle state."

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    invoke-virtual {v6}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->disconnect()V

    goto :goto_3

    .end local v12    # "re":Ljava/util/concurrent/TimeoutException;
    :catchall_0
    move-exception v17

    invoke-virtual {v6}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->disconnect()V

    throw v17
.end method

.method public shortHelp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "creates an XML dump of current UI hierarchy"

    return-object v0
.end method
