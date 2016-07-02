.class public final Lcom/android/commands/pm/Pm;
.super Ljava/lang/Object;
.source "Pm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/pm/Pm$LocalIntentReceiver;,
        Lcom/android/commands/pm/Pm$ClearCacheObserver;,
        Lcom/android/commands/pm/Pm$ClearDataObserver;,
        Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;
    }
.end annotation


# static fields
.field private static final PM_NOT_RUNNING_ERR:Ljava/lang/String; = "Error: Could not access the Package Manager.  Is the system running?"

.field private static final TAG:Ljava/lang/String; = "Pm"


# instance fields
.field private mArgs:[Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;

.field mInstaller:Landroid/content/pm/IPackageInstaller;

.field private mNextArg:I

.field mPm:Landroid/content/pm/IPackageManager;

.field private mResourceCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field mUm:Landroid/os/IUserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/commands/pm/Pm;->mResourceCache:Ljava/util/WeakHashMap;

    .line 1729
    return-void
.end method

.method private static checkAbiArgument(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "abi"    # Ljava/lang/String;

    .prologue
    .line 1711
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1712
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Missing ABI argument"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1715
    :cond_0
    const-string v5, "-"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1722
    :cond_1
    return-object p0

    .line 1719
    :cond_2
    sget-object v4, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 1720
    .local v4, "supportedAbis":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 1721
    .local v3, "supportedAbi":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1720
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1726
    .end local v3    # "supportedAbi":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ABI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not supported on this device"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private displayPackageFilePath(Ljava/lang/String;)I
    .locals 10
    .param p1, "pckg"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1673
    :try_start_0
    iget-object v7, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v7, p1, v8, v9}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1674
    .local v3, "info":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_0

    .line 1675
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "package:"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1676
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1677
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1678
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .line 1679
    .local v5, "splitSourceDir":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "package:"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1680
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1678
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1685
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    .end local v4    # "len$":I
    .end local v5    # "splitSourceDir":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1686
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1687
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1689
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v6, 0x1

    :cond_1
    return v6
.end method

.method private doListPermissions(Ljava/util/ArrayList;ZZZII)V
    .locals 16
    .param p2, "groups"    # Z
    .param p3, "labels"    # Z
    .param p4, "summary"    # Z
    .param p5, "startProtectionLevel"    # I
    .param p6, "endProtectionLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;ZZZII)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 643
    .local p1, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_11

    .line 644
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 645
    .local v4, "groupName":Ljava/lang/String;
    const-string v9, ""

    .line 646
    .local v9, "prefix":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 647
    if-lez v5, :cond_0

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 648
    :cond_0
    if-eqz v4, :cond_7

    .line 649
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v13, 0x0

    invoke-interface {v12, v4, v13}, Landroid/content/pm/IPackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v7

    .line 651
    .local v7, "pgi":Landroid/content/pm/PermissionGroupInfo;
    if-eqz p4, :cond_5

    .line 652
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/commands/pm/Pm;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v11

    .line 653
    .local v11, "res":Landroid/content/res/Resources;
    if-eqz v11, :cond_4

    .line 654
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v7, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    iget-object v15, v7, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v14, v15}, Lcom/android/commands/pm/Pm;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 680
    .end local v7    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    .end local v11    # "res":Landroid/content/res/Resources;
    :cond_1
    :goto_1
    const-string v9, "  "

    .line 682
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-interface {v13, v12, v14}, Landroid/content/pm/IPackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    .line 684
    .local v10, "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    .line 685
    .local v2, "count":I
    const/4 v3, 0x1

    .line 686
    .local v3, "first":Z
    const/4 v6, 0x0

    .local v6, "p":I
    :goto_2
    if-ge v6, v2, :cond_f

    .line 687
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PermissionInfo;

    .line 688
    .local v8, "pi":Landroid/content/pm/PermissionInfo;
    if-eqz p2, :cond_9

    if-nez v4, :cond_9

    iget-object v12, v8, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v12, :cond_9

    .line 686
    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 657
    .end local v2    # "count":I
    .end local v3    # "first":Z
    .end local v6    # "p":I
    .end local v8    # "pi":Landroid/content/pm/PermissionInfo;
    .end local v10    # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .restart local v7    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    .restart local v11    # "res":Landroid/content/res/Resources;
    :cond_4
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v7, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 661
    .end local v11    # "res":Landroid/content/res/Resources;
    :cond_5
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_6

    const-string v12, "+ "

    :goto_4
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "group:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v7, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 663
    if-eqz p3, :cond_1

    .line 664
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  package:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v7, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 665
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/commands/pm/Pm;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v11

    .line 666
    .restart local v11    # "res":Landroid/content/res/Resources;
    if-eqz v11, :cond_1

    .line 667
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  label:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    iget-object v15, v7, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v14, v15}, Lcom/android/commands/pm/Pm;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 670
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  description:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    iget-object v15, v7, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v14, v15}, Lcom/android/commands/pm/Pm;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 661
    .end local v11    # "res":Landroid/content/res/Resources;
    :cond_6
    const-string v12, ""

    goto/16 :goto_4

    .line 677
    .end local v7    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    :cond_7
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_8

    if-nez p4, :cond_8

    const-string v12, "+ "

    :goto_5
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "ungrouped:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v12, ""

    goto :goto_5

    .line 691
    .restart local v2    # "count":I
    .restart local v3    # "first":Z
    .restart local v6    # "p":I
    .restart local v8    # "pi":Landroid/content/pm/PermissionInfo;
    .restart local v10    # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :cond_9
    iget v12, v8, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v1, v12, 0xf

    .line 692
    .local v1, "base":I
    move/from16 v0, p5

    if-lt v1, v0, :cond_3

    move/from16 v0, p6

    if-gt v1, v0, :cond_3

    .line 696
    if-eqz p4, :cond_c

    .line 697
    if-eqz v3, :cond_a

    .line 698
    const/4 v3, 0x0

    .line 702
    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/commands/pm/Pm;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v11

    .line 703
    .restart local v11    # "res":Landroid/content/res/Resources;
    if-eqz v11, :cond_b

    .line 704
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v13, v8, Landroid/content/pm/PermissionInfo;->labelRes:I

    iget-object v14, v8, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13, v14}, Lcom/android/commands/pm/Pm;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 700
    .end local v11    # "res":Landroid/content/res/Resources;
    :cond_a
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_6

    .line 707
    .restart local v11    # "res":Landroid/content/res/Resources;
    :cond_b
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v13, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 710
    .end local v11    # "res":Landroid/content/res/Resources;
    :cond_c
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-eqz p3, :cond_e

    const-string v12, "+ "

    :goto_7
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "permission:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 712
    if-eqz p3, :cond_3

    .line 713
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  package:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v8, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 714
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/commands/pm/Pm;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v11

    .line 715
    .restart local v11    # "res":Landroid/content/res/Resources;
    if-eqz v11, :cond_d

    .line 716
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  label:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Landroid/content/pm/PermissionInfo;->labelRes:I

    iget-object v15, v8, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14, v15}, Lcom/android/commands/pm/Pm;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 719
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  description:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    iget-object v15, v8, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14, v15}, Lcom/android/commands/pm/Pm;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 723
    :cond_d
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  protectionLevel:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v14}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 710
    .end local v11    # "res":Landroid/content/res/Resources;
    :cond_e
    const-string v12, ""

    goto/16 :goto_7

    .line 729
    .end local v1    # "base":I
    .end local v8    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_f
    if-eqz p4, :cond_10

    .line 730
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 643
    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 733
    .end local v2    # "count":I
    .end local v3    # "first":Z
    .end local v4    # "groupName":Ljava/lang/String;
    .end local v6    # "p":I
    .end local v9    # "prefix":Ljava/lang/String;
    .end local v10    # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :cond_11
    return-void
.end method

.method private static enabledSettingToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 1424
    packed-switch p0, :pswitch_data_0

    .line 1436
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 1426
    :pswitch_0
    const-string v0, "default"

    goto :goto_0

    .line 1428
    :pswitch_1
    const-string v0, "enabled"

    goto :goto_0

    .line 1430
    :pswitch_2
    const-string v0, "disabled"

    goto :goto_0

    .line 1432
    :pswitch_3
    const-string v0, "disabled-user"

    goto :goto_0

    .line 1434
    :pswitch_4
    const-string v0, "disabled-until-used"

    goto :goto_0

    .line 1424
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getInstalledPackages(Landroid/content/pm/IPackageManager;II)Ljava/util/List;
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/IPackageManager;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 388
    invoke-interface {p1, p2, p3}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 389
    .local v0, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;
    .locals 10
    .param p1, "pii"    # Landroid/content/pm/PackageItemInfo;

    .prologue
    const/4 v5, 0x0

    .line 1693
    iget-object v6, p0, Lcom/android/commands/pm/Pm;->mResourceCache:Ljava/util/WeakHashMap;

    iget-object v7, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    .line 1694
    .local v3, "res":Landroid/content/res/Resources;
    if-eqz v3, :cond_0

    move-object v4, v3

    .line 1706
    :goto_0
    return-object v4

    .line 1697
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    iget-object v7, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1698
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V

    .line 1699
    .local v1, "am":Landroid/content/res/AssetManager;
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 1700
    new-instance v4, Landroid/content/res/Resources;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v1, v6, v7}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1701
    .end local v3    # "res":Landroid/content/res/Resources;
    .local v4, "res":Landroid/content/res/Resources;
    :try_start_1
    iget-object v6, p0, Lcom/android/commands/pm/Pm;->mResourceCache:Ljava/util/WeakHashMap;

    iget-object v7, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 1702
    .end local v4    # "res":Landroid/content/res/Resources;
    .restart local v3    # "res":Landroid/content/res/Resources;
    goto :goto_0

    .line 1703
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "am":Landroid/content/res/AssetManager;
    :catch_0
    move-exception v2

    .line 1704
    .local v2, "e":Landroid/os/RemoteException;
    :goto_1
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1705
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v4, v5

    .line 1706
    goto :goto_0

    .line 1703
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "res":Landroid/content/res/Resources;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "am":Landroid/content/res/AssetManager;
    .restart local v4    # "res":Landroid/content/res/Resources;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4    # "res":Landroid/content/res/Resources;
    .restart local v3    # "res":Landroid/content/res/Resources;
    goto :goto_1
.end method

.method private installFailureToString(Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;)Ljava/lang/String;
    .locals 11
    .param p1, "obs"    # Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;

    .prologue
    .line 781
    iget v7, p1, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;->result:I

    .line 782
    .local v7, "result":I
    const-class v9, Landroid/content/pm/PackageManager;

    invoke-virtual {v9}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 783
    .local v3, "fields":[Ljava/lang/reflect/Field;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_4

    aget-object v1, v0, v4

    .line 784
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_3

    .line 785
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    .line 787
    .local v6, "modifiers":I
    and-int/lit8 v9, v6, 0x10

    if-eqz v9, :cond_3

    and-int/lit8 v9, v6, 0x1

    if-eqz v9, :cond_3

    and-int/lit8 v9, v6, 0x8

    if-eqz v9, :cond_3

    .line 790
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 791
    .local v2, "fieldName":Ljava/lang/String;
    const-string v9, "INSTALL_FAILED_"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "INSTALL_PARSE_FAILED_"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 795
    :cond_0
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    if-ne v7, v9, :cond_3

    .line 796
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x40

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 797
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    iget-object v9, p1, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;->extraPermission:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 799
    const-string v9, " perm="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    iget-object v9, p1, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;->extraPermission:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    :cond_1
    iget-object v9, p1, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;->extraPackage:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 803
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " pkg="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;->extraPackage:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    :cond_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 816
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "fieldName":Ljava/lang/String;
    .end local v6    # "modifiers":I
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v9

    .line 807
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    .restart local v2    # "fieldName":Ljava/lang/String;
    .restart local v6    # "modifiers":I
    :catch_0
    move-exception v9

    .line 783
    .end local v2    # "fieldName":Ljava/lang/String;
    .end local v6    # "modifiers":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 816
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1
.end method

.method private static isNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1441
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1445
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1442
    :catch_0
    move-exception v0

    .line 1443
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p1, "pii"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "res"    # I
    .param p3, "nonLocalized"    # Ljava/lang/CharSequence;

    .prologue
    .line 551
    if-eqz p3, :cond_0

    .line 552
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 560
    :goto_0
    return-object v1

    .line 554
    :cond_0
    if-eqz p2, :cond_1

    .line 555
    invoke-direct {p0, p1}, Lcom/android/commands/pm/Pm;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 556
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz v0, :cond_1

    .line 557
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 560
    .end local v0    # "r":Landroid/content/res/Resources;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 104
    const/4 v1, 0x1

    .line 106
    .local v1, "exitCode":I
    :try_start_0
    new-instance v2, Lcom/android/commands/pm/Pm;

    invoke-direct {v2}, Lcom/android/commands/pm/Pm;-><init>()V

    invoke-virtual {v2, p0}, Lcom/android/commands/pm/Pm;->run([Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 114
    :cond_0
    :goto_0
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 115
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Pm"

    const-string v3, "Error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    instance-of v2, v0, Landroid/os/RemoteException;

    if-eqz v2, :cond_0

    .line 111
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private nextArg()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1796
    iget v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1797
    const/4 v0, 0x0

    .line 1801
    :goto_0
    return-object v0

    .line 1799
    :cond_0
    iget-object v1, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    aget-object v0, v1, v2

    .line 1800
    .local v0, "arg":Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    goto :goto_0
.end method

.method private nextOption()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 1759
    iget v2, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    iget-object v3, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    move-object v0, v1

    .line 1780
    :goto_0
    return-object v0

    .line 1762
    :cond_0
    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    aget-object v0, v2, v3

    .line 1763
    .local v0, "arg":Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 1764
    goto :goto_0

    .line 1766
    :cond_1
    iget v2, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    .line 1767
    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 1768
    goto :goto_0

    .line 1770
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_4

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_4

    .line 1771
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 1772
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/pm/Pm;->mCurArgData:Ljava/lang/String;

    .line 1773
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1775
    :cond_3
    iput-object v1, p0, Lcom/android/commands/pm/Pm;->mCurArgData:Ljava/lang/String;

    goto :goto_0

    .line 1779
    :cond_4
    iput-object v1, p0, Lcom/android/commands/pm/Pm;->mCurArgData:Ljava/lang/String;

    goto :goto_0
.end method

.method private nextOptionData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1784
    iget-object v1, p0, Lcom/android/commands/pm/Pm;->mCurArgData:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1785
    iget-object v0, p0, Lcom/android/commands/pm/Pm;->mCurArgData:Ljava/lang/String;

    .line 1792
    :goto_0
    return-object v0

    .line 1787
    :cond_0
    iget v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 1788
    const/4 v0, 0x0

    goto :goto_0

    .line 1790
    :cond_1
    iget-object v1, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    aget-object v0, v1, v2

    .line 1791
    .local v0, "data":Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    goto :goto_0
.end method

.method private runClear()I
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 1377
    const/4 v5, 0x0

    .line 1378
    .local v5, "userId":I
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    move-result-object v2

    .line 1379
    .local v2, "option":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v7, "--user"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1380
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    move-result-object v3

    .line 1381
    .local v3, "optionData":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/android/commands/pm/Pm;->isNumber(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1382
    :cond_0
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "Error: no USER_ID specified"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1383
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    .line 1419
    .end local v3    # "optionData":Ljava/lang/String;
    :goto_0
    return v6

    .line 1386
    .restart local v3    # "optionData":Ljava/lang/String;
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1390
    .end local v3    # "optionData":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v4

    .line 1391
    .local v4, "pkg":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 1392
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "Error: no package specified"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1393
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    goto :goto_0

    .line 1397
    :cond_3
    new-instance v1, Lcom/android/commands/pm/Pm$ClearDataObserver;

    invoke-direct {v1}, Lcom/android/commands/pm/Pm$ClearDataObserver;-><init>()V

    .line 1399
    .local v1, "obs":Lcom/android/commands/pm/Pm$ClearDataObserver;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7, v4, v1, v5}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    .line 1400
    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1401
    :goto_1
    :try_start_1
    iget-boolean v7, v1, Lcom/android/commands/pm/Pm$ClearDataObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_4

    .line 1403
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1404
    :catch_0
    move-exception v7

    goto :goto_1

    .line 1407
    :cond_4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1409
    :try_start_4
    iget-boolean v7, v1, Lcom/android/commands/pm/Pm$ClearDataObserver;->result:Z

    if-eqz v7, :cond_5

    .line 1410
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Success"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1411
    const/4 v6, 0x0

    goto :goto_0

    .line 1407
    :catchall_0
    move-exception v7

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v7
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1416
    :catch_1
    move-exception v0

    .line 1417
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1418
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1413
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    :try_start_7
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "Failed"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0
.end method

.method private runDump()I
    .locals 3

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 747
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error: no package specified"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 748
    const/4 v1, 0x1

    .line 751
    :goto_0
    return v1

    .line 750
    :cond_0
    sget-object v1, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    invoke-static {v1, v0}, Landroid/app/ActivityManager;->dumpPackageStateStatic(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 751
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private runGetInstallLocation()I
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 848
    :try_start_0
    iget-object v4, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v4}, Landroid/content/pm/IPackageManager;->getInstallLocation()I

    move-result v1

    .line 849
    .local v1, "loc":I
    const-string v2, "invalid"

    .line 850
    .local v2, "locStr":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 851
    const-string v2, "auto"

    .line 857
    :cond_0
    :goto_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 858
    const/4 v3, 0x0

    .line 862
    .end local v1    # "loc":I
    .end local v2    # "locStr":Ljava/lang/String;
    :goto_1
    return v3

    .line 852
    .restart local v1    # "loc":I
    .restart local v2    # "locStr":Ljava/lang/String;
    :cond_1
    if-ne v1, v3, :cond_2

    .line 853
    const-string v2, "internal"

    goto :goto_0

    .line 854
    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 855
    const-string v2, "external"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 859
    .end local v1    # "loc":I
    .end local v2    # "locStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 860
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 861
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private runGrantRevokePermission(Z)I
    .locals 7
    .param p1, "grant"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1530
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v2

    .line 1531
    .local v2, "pkg":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1532
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Error: no package specified"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1533
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    .line 1559
    :goto_0
    return v3

    .line 1536
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v1

    .line 1537
    .local v1, "perm":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1538
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Error: no permission specified"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1539
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    goto :goto_0

    .line 1543
    :cond_1
    if-eqz p1, :cond_2

    .line 1544
    :try_start_0
    iget-object v4, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v2, v1}, Landroid/content/pm/IPackageManager;->grantPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1546
    :cond_2
    iget-object v4, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v2, v1}, Landroid/content/pm/IPackageManager;->revokePermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 1549
    :catch_0
    move-exception v0

    .line 1550
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1551
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1553
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1554
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad argument: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1555
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    goto :goto_0

    .line 1557
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1558
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Operation not allowed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private runInstall()I
    .locals 20

    .prologue
    .line 867
    const/4 v8, 0x0

    .line 868
    .local v8, "installFlags":I
    const/4 v12, -0x1

    .line 869
    .local v12, "userId":I
    const/4 v9, 0x0

    .line 873
    .local v9, "installerPackageName":Ljava/lang/String;
    const/16 v17, 0x0

    .line 874
    .local v17, "originatingUriString":Ljava/lang/String;
    const/16 v18, 0x0

    .line 875
    .local v18, "referrer":Ljava/lang/String;
    const/4 v11, 0x0

    .line 877
    .local v11, "abi":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    move-result-object v16

    .local v16, "opt":Ljava/lang/String;
    if-eqz v16, :cond_c

    .line 878
    const-string v5, "-l"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 879
    or-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 880
    :cond_1
    const-string v5, "-r"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 881
    or-int/lit8 v8, v8, 0x2

    goto :goto_0

    .line 882
    :cond_2
    const-string v5, "-i"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 883
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    move-result-object v9

    .line 884
    if-nez v9, :cond_0

    .line 885
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error: no value specified for -i"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 886
    const/4 v5, 0x1

    .line 986
    :goto_1
    return v5

    .line 888
    :cond_3
    const-string v5, "-t"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 889
    or-int/lit8 v8, v8, 0x4

    goto :goto_0

    .line 890
    :cond_4
    const-string v5, "-s"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 892
    or-int/lit8 v8, v8, 0x8

    goto :goto_0

    .line 893
    :cond_5
    const-string v5, "-f"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 895
    or-int/lit8 v8, v8, 0x10

    goto :goto_0

    .line 896
    :cond_6
    const-string v5, "-d"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 897
    or-int/lit16 v8, v8, 0x80

    goto :goto_0

    .line 898
    :cond_7
    const-string v5, "--originating-uri"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 899
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    move-result-object v17

    .line 900
    if-nez v17, :cond_0

    .line 901
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error: must supply argument for --originating-uri"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 902
    const/4 v5, 0x1

    goto :goto_1

    .line 904
    :cond_8
    const-string v5, "--referrer"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 905
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    move-result-object v18

    .line 906
    if-nez v18, :cond_0

    .line 907
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error: must supply argument for --referrer"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 908
    const/4 v5, 0x1

    goto :goto_1

    .line 910
    :cond_9
    const-string v5, "--abi"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 911
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/commands/pm/Pm;->checkAbiArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 912
    :cond_a
    const-string v5, "--user"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 913
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    goto/16 :goto_0

    .line 915
    :cond_b
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: Unknown option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 916
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 920
    :cond_c
    const/4 v5, -0x1

    if-ne v12, v5, :cond_d

    .line 921
    const/4 v12, 0x0

    .line 922
    or-int/lit8 v8, v8, 0x40

    .line 929
    :cond_d
    if-eqz v17, :cond_e

    .line 930
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 935
    .local v3, "originatingURI":Landroid/net/Uri;
    :goto_2
    if-eqz v18, :cond_f

    .line 936
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 942
    .local v4, "referrerURI":Landroid/net/Uri;
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v13

    .line 943
    .local v13, "apkFilePath":Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tpkg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 944
    if-nez v13, :cond_10

    .line 945
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error: no package specified"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 946
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 932
    .end local v3    # "originatingURI":Landroid/net/Uri;
    .end local v4    # "referrerURI":Landroid/net/Uri;
    .end local v13    # "apkFilePath":Ljava/lang/String;
    :cond_e
    const/4 v3, 0x0

    .restart local v3    # "originatingURI":Landroid/net/Uri;
    goto :goto_2

    .line 938
    :cond_f
    const/4 v4, 0x0

    .restart local v4    # "referrerURI":Landroid/net/Uri;
    goto :goto_3

    .line 950
    .restart local v13    # "apkFilePath":Ljava/lang/String;
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v19

    .line 951
    .local v19, "verificationFilePath":Ljava/lang/String;
    if-eqz v19, :cond_11

    .line 952
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tver: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 953
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 958
    .local v2, "verificationURI":Landroid/net/Uri;
    :goto_4
    new-instance v15, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;-><init>(Lcom/android/commands/pm/Pm;)V

    .line 960
    .local v15, "obs":Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;
    :try_start_0
    new-instance v1, Landroid/content/pm/VerificationParams;

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/content/pm/VerificationParams;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ILandroid/content/pm/ManifestDigest;)V

    .line 963
    .local v1, "verificationParams":Landroid/content/pm/VerificationParams;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-virtual {v15}, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;->getBinder()Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v7

    move-object v6, v13

    move-object v10, v1

    invoke-interface/range {v5 .. v12}, Landroid/content/pm/IPackageManager;->installPackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;I)V

    .line 966
    monitor-enter v15
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 967
    :goto_5
    :try_start_1
    iget-boolean v5, v15, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_12

    .line 969
    :try_start_2
    invoke-virtual {v15}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 970
    :catch_0
    move-exception v5

    goto :goto_5

    .line 955
    .end local v1    # "verificationParams":Landroid/content/pm/VerificationParams;
    .end local v2    # "verificationURI":Landroid/net/Uri;
    .end local v15    # "obs":Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;
    :cond_11
    const/4 v2, 0x0

    .restart local v2    # "verificationURI":Landroid/net/Uri;
    goto :goto_4

    .line 973
    .restart local v1    # "verificationParams":Landroid/content/pm/VerificationParams;
    .restart local v15    # "obs":Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;
    :cond_12
    :try_start_3
    iget v5, v15, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;->result:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_13

    .line 974
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Success"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 975
    const/4 v5, 0x0

    monitor-exit v15

    goto/16 :goto_1

    .line 982
    :catchall_0
    move-exception v5

    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 983
    .end local v1    # "verificationParams":Landroid/content/pm/VerificationParams;
    :catch_1
    move-exception v14

    .line 984
    .local v14, "e":Landroid/os/RemoteException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v14}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 985
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 986
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 977
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v1    # "verificationParams":Landroid/content/pm/VerificationParams;
    :cond_13
    :try_start_5
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/commands/pm/Pm;->installFailureToString(Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 980
    const/4 v5, 0x1

    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1
.end method

.method private runInstallAbandon()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1139
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1141
    .local v2, "sessionId":I
    const/4 v0, 0x0

    .line 1143
    .local v0, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_0
    new-instance v1, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/android/commands/pm/Pm;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v3, v2}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    .end local v0    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_1
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->abandon()V

    .line 1145
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Success"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1146
    const/4 v3, 0x0

    .line 1148
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v3

    .end local v1    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v0    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_0
    move-exception v3

    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .end local v0    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v1    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v0    # "session":Landroid/content/pm/PackageInstaller$Session;
    goto :goto_0
.end method

.method private runInstallCommit()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1112
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1114
    .local v4, "sessionId":I
    const/4 v2, 0x0

    .line 1116
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_0
    new-instance v3, Landroid/content/pm/PackageInstaller$Session;

    iget-object v7, p0, Lcom/android/commands/pm/Pm;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v7, v4}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1118
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v3, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_1
    new-instance v0, Lcom/android/commands/pm/Pm$LocalIntentReceiver;

    const/4 v7, 0x0

    invoke-direct {v0, v7}, Lcom/android/commands/pm/Pm$LocalIntentReceiver;-><init>(Lcom/android/commands/pm/Pm$1;)V

    .line 1119
    .local v0, "receiver":Lcom/android/commands/pm/Pm$LocalIntentReceiver;
    invoke-virtual {v0}, Lcom/android/commands/pm/Pm$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 1121
    invoke-virtual {v0}, Lcom/android/commands/pm/Pm$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v1

    .line 1122
    .local v1, "result":Landroid/content/Intent;
    const-string v7, "android.content.pm.extra.STATUS"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1124
    .local v5, "status":I
    if-nez v5, :cond_0

    .line 1125
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Success"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1126
    const/4 v6, 0x0

    .line 1134
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_0
    return v6

    .line 1128
    :cond_0
    :try_start_2
    const-string v7, "Pm"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure details: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1134
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .end local v0    # "receiver":Lcom/android/commands/pm/Pm$LocalIntentReceiver;
    .end local v1    # "result":Landroid/content/Intent;
    .end local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v5    # "status":I
    .restart local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_0
    move-exception v6

    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v6

    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    goto :goto_1
.end method

.method private runInstallCreate()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 991
    const/4 v4, -0x1

    .line 992
    .local v4, "userId":I
    const/4 v0, 0x0

    .line 994
    .local v0, "installerPackageName":Ljava/lang/String;
    new-instance v2, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v5, 0x1

    invoke-direct {v2, v5}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 997
    .local v2, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    move-result-object v1

    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_e

    .line 998
    const-string v5, "-l"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 999
    iget v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_0

    .line 1000
    :cond_1
    const-string v5, "-r"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1001
    iget v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_0

    .line 1002
    :cond_2
    const-string v5, "-i"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1003
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 1004
    if-nez v0, :cond_0

    .line 1005
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Missing installer package"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1007
    :cond_3
    const-string v5, "-t"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1008
    iget v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_0

    .line 1009
    :cond_4
    const-string v5, "-s"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1010
    iget v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_0

    .line 1011
    :cond_5
    const-string v5, "-f"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1012
    iget v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_0

    .line 1013
    :cond_6
    const-string v5, "-d"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1014
    iget v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_0

    .line 1015
    :cond_7
    const-string v5, "--originating-uri"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1016
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 1017
    :cond_8
    const-string v5, "--referrer"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1018
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 1019
    :cond_9
    const-string v5, "-p"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1020
    const/4 v5, 0x2

    iput v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 1021
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 1022
    iget-object v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 1023
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Missing inherit package name"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1025
    :cond_a
    const-string v5, "-S"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1026
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    goto/16 :goto_0

    .line 1027
    :cond_b
    const-string v5, "--abi"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1028
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/commands/pm/Pm;->checkAbiArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    goto/16 :goto_0

    .line 1029
    :cond_c
    const-string v5, "--user"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1030
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 1032
    :cond_d
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown option "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1036
    :cond_e
    const/4 v5, -0x1

    if-ne v4, v5, :cond_f

    .line 1037
    const/4 v4, 0x0

    .line 1038
    iget v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1041
    :cond_f
    iget-object v5, p0, Lcom/android/commands/pm/Pm;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v5, v2, v0, v4}, Landroid/content/pm/IPackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v3

    .line 1044
    .local v3, "sessionId":I
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Success: created install session ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1045
    const/4 v5, 0x0

    return v5
.end method

.method private runInstallWrite()I
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1049
    const-wide/16 v6, -0x1

    .line 1052
    .local v6, "sizeBytes":J
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    move-result-object v15

    .local v15, "opt":Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 1053
    const-string v4, "-S"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1054
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_0

    .line 1056
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unknown option: "

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1060
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 1061
    .local v19, "sessionId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v3

    .line 1063
    .local v3, "splitName":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v17

    .line 1064
    .local v17, "path":Ljava/lang/String;
    const-string v4, "-"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1065
    const/16 v17, 0x0

    .line 1073
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/commands/pm/Pm;->mInstaller:Landroid/content/pm/IPackageInstaller;

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v14

    .line 1075
    .local v14, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    const/16 v18, 0x0

    .line 1076
    .local v18, "session":Landroid/content/pm/PackageInstaller$Session;
    const/4 v12, 0x0

    .line 1077
    .local v12, "in":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 1079
    .local v16, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/commands/pm/Pm;->mInstaller:Landroid/content/pm/IPackageInstaller;

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1081
    .end local v18    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    if-eqz v17, :cond_5

    .line 1082
    :try_start_1
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .end local v12    # "in":Ljava/io/InputStream;
    .local v13, "in":Ljava/io/InputStream;
    move-object v12, v13

    .line 1086
    .end local v13    # "in":Ljava/io/InputStream;
    .restart local v12    # "in":Ljava/io/InputStream;
    :goto_2
    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v16

    .line 1088
    const/16 v20, 0x0

    .line 1089
    .local v20, "total":I
    const/high16 v4, 0x10000

    new-array v8, v4, [B

    .line 1091
    .local v8, "buffer":[B
    :cond_3
    :goto_3
    invoke-virtual {v12, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, "c":I
    const/4 v4, -0x1

    if-eq v9, v4, :cond_6

    .line 1092
    add-int v20, v20, v9

    .line 1093
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v4, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 1095
    iget-wide v4, v14, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    const-wide/16 v22, 0x0

    cmp-long v4, v4, v22

    if-lez v4, :cond_3

    .line 1096
    int-to-float v4, v9

    iget-wide v0, v14, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-float v5, v0

    div-float v11, v4, v5

    .line 1097
    .local v11, "fraction":F
    invoke-virtual {v2, v11}, Landroid/content/pm/PackageInstaller$Session;->addProgress(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1105
    .end local v8    # "buffer":[B
    .end local v9    # "c":I
    .end local v11    # "fraction":F
    .end local v20    # "total":I
    :catchall_0
    move-exception v4

    :goto_4
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1106
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1107
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    .line 1066
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v12    # "in":Ljava/io/InputStream;
    .end local v14    # "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    .end local v16    # "out":Ljava/io/OutputStream;
    :cond_4
    if-eqz v17, :cond_2

    .line 1067
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1068
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1069
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v6

    goto :goto_1

    .line 1084
    .end local v10    # "file":Ljava/io/File;
    .restart local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v12    # "in":Ljava/io/InputStream;
    .restart local v14    # "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    .restart local v16    # "out":Ljava/io/OutputStream;
    :cond_5
    :try_start_2
    new-instance v13, Lcom/android/internal/util/SizedInputStream;

    sget-object v4, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v13, v4, v6, v7}, Lcom/android/internal/util/SizedInputStream;-><init>(Ljava/io/InputStream;J)V

    .end local v12    # "in":Ljava/io/InputStream;
    .restart local v13    # "in":Ljava/io/InputStream;
    move-object v12, v13

    .end local v13    # "in":Ljava/io/InputStream;
    .restart local v12    # "in":Ljava/io/InputStream;
    goto :goto_2

    .line 1100
    .restart local v8    # "buffer":[B
    .restart local v9    # "c":I
    .restart local v20    # "total":I
    :cond_6
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V

    .line 1102
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Success: streamed "

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v21, " bytes"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1103
    const/4 v4, 0x0

    .line 1105
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1106
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1107
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v4

    .line 1105
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v8    # "buffer":[B
    .end local v9    # "c":I
    .end local v20    # "total":I
    .restart local v18    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_1
    move-exception v4

    move-object/from16 v2, v18

    .end local v18    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    goto :goto_4
.end method

.method private runList()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 280
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "type":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 282
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: didn\'t specify type of data to list"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 301
    :goto_0
    return v1

    .line 285
    :cond_0
    const-string v2, "package"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "packages"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 286
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/commands/pm/Pm;->runListPackages(Z)I

    move-result v1

    goto :goto_0

    .line 287
    :cond_2
    const-string v2, "permission-groups"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 288
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runListPermissionGroups()I

    move-result v1

    goto :goto_0

    .line 289
    :cond_3
    const-string v2, "permissions"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 290
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runListPermissions()I

    move-result v1

    goto :goto_0

    .line 291
    :cond_4
    const-string v2, "features"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 292
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runListFeatures()I

    move-result v1

    goto :goto_0

    .line 293
    :cond_5
    const-string v2, "libraries"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 294
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runListLibraries()I

    move-result v1

    goto :goto_0

    .line 295
    :cond_6
    const-string v2, "instrumentation"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 296
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runListInstrumentation()I

    move-result v1

    goto :goto_0

    .line 297
    :cond_7
    const-string v2, "users"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 298
    invoke-virtual {p0}, Lcom/android/commands/pm/Pm;->runListUsers()I

    move-result v1

    goto :goto_0

    .line 300
    :cond_8
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown list type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private runListFeatures()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 399
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/FeatureInfo;>;"
    iget-object v8, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v8}, Landroid/content/pm/IPackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v6

    .line 401
    .local v6, "rawList":[Landroid/content/pm/FeatureInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v6

    if-ge v3, v8, :cond_0

    .line 402
    aget-object v8, v6, v3

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 407
    :cond_0
    new-instance v8, Lcom/android/commands/pm/Pm$1;

    invoke-direct {v8, p0}, Lcom/android/commands/pm/Pm$1;-><init>(Lcom/android/commands/pm/Pm;)V

    invoke-static {v4, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 416
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 417
    .local v0, "count":I
    :goto_1
    const/4 v5, 0x0

    .local v5, "p":I
    :goto_2
    if-ge v5, v0, :cond_3

    .line 418
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/FeatureInfo;

    .line 419
    .local v2, "fi":Landroid/content/pm/FeatureInfo;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "feature:"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 420
    iget-object v8, v2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v8, :cond_2

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v9, v2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 417
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v0    # "count":I
    .end local v2    # "fi":Landroid/content/pm/FeatureInfo;
    .end local v5    # "p":I
    :cond_1
    move v0, v7

    .line 416
    goto :goto_1

    .line 421
    .restart local v0    # "count":I
    .restart local v2    # "fi":Landroid/content/pm/FeatureInfo;
    .restart local v5    # "p":I
    :cond_2
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reqGlEsVersion=0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 425
    .end local v0    # "count":I
    .end local v2    # "fi":Landroid/content/pm/FeatureInfo;
    .end local v3    # "i":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/FeatureInfo;>;"
    .end local v5    # "p":I
    .end local v6    # "rawList":[Landroid/content/pm/FeatureInfo;
    :catch_0
    move-exception v1

    .line 426
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 427
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 428
    const/4 v7, 0x1

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    return v7
.end method

.method private runListInstrumentation()I
    .locals 15

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 476
    const/4 v4, 0x0

    .line 477
    .local v4, "flags":I
    const/4 v9, 0x0

    .line 478
    .local v9, "showPackage":Z
    const/4 v10, 0x0

    .line 482
    .local v10, "targetPackage":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v7

    .local v7, "opt":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 483
    const-string v13, "-f"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 484
    const/4 v9, 0x1

    goto :goto_0

    .line 485
    :cond_0
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x2d

    if-eq v13, v14, :cond_1

    .line 486
    move-object v10, v7

    goto :goto_0

    .line 488
    :cond_1
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error: Unknown option: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v11, v12

    .line 525
    .end local v7    # "opt":Ljava/lang/String;
    :cond_2
    :goto_1
    return v11

    .line 492
    :catch_0
    move-exception v3

    .line 493
    .local v3, "ex":Ljava/lang/RuntimeException;
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v11, v12

    .line 494
    goto :goto_1

    .line 498
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    .restart local v7    # "opt":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v13, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v13, v10, v4}, Landroid/content/pm/IPackageManager;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 501
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    new-instance v13, Lcom/android/commands/pm/Pm$3;

    invoke-direct {v13, p0}, Lcom/android/commands/pm/Pm$3;-><init>(Lcom/android/commands/pm/Pm;)V

    invoke-static {v6, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 507
    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 508
    .local v1, "count":I
    :goto_2
    const/4 v8, 0x0

    .local v8, "p":I
    :goto_3
    if-ge v8, v1, :cond_2

    .line 509
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/InstrumentationInfo;

    .line 510
    .local v5, "ii":Landroid/content/pm/InstrumentationInfo;
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "instrumentation:"

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 511
    if-eqz v9, :cond_4

    .line 512
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v14, v5, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 513
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 515
    :cond_4
    new-instance v0, Landroid/content/ComponentName;

    iget-object v13, v5, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iget-object v14, v5, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    .local v0, "cn":Landroid/content/ComponentName;
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 517
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, " (target="

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 518
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v14, v5, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 519
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 508
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "count":I
    .end local v5    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v8    # "p":I
    :cond_5
    move v1, v11

    .line 507
    goto :goto_2

    .line 522
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    :catch_1
    move-exception v2

    .line 523
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 524
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v11, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v11, v12

    .line 525
    goto/16 :goto_1
.end method

.method private runListLibraries()I
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 439
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v8}, Landroid/content/pm/IPackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v6

    .line 441
    .local v6, "rawList":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, v6

    if-ge v2, v8, :cond_0

    .line 442
    aget-object v8, v6, v2

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 447
    :cond_0
    new-instance v8, Lcom/android/commands/pm/Pm$2;

    invoke-direct {v8, p0}, Lcom/android/commands/pm/Pm$2;-><init>(Lcom/android/commands/pm/Pm;)V

    invoke-static {v4, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 456
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 457
    .local v0, "count":I
    :goto_1
    const/4 v5, 0x0

    .local v5, "p":I
    :goto_2
    if-ge v5, v0, :cond_2

    .line 458
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 459
    .local v3, "lib":Ljava/lang/String;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "library:"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 460
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v0    # "count":I
    .end local v3    # "lib":Ljava/lang/String;
    .end local v5    # "p":I
    :cond_1
    move v0, v7

    .line 456
    goto :goto_1

    .line 463
    .end local v2    # "i":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "rawList":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 464
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 465
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 466
    const/4 v7, 0x1

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    return v7
.end method

.method private runListPackages(Z)I
    .locals 22
    .param p1, "showApplicationPackage"    # Z

    .prologue
    .line 309
    const/4 v7, 0x0

    .line 310
    .local v7, "getFlags":I
    const/4 v10, 0x0

    .local v10, "listDisabled":Z
    const/4 v11, 0x0

    .line 311
    .local v11, "listEnabled":Z
    const/4 v13, 0x0

    .local v13, "listSystem":Z
    const/4 v14, 0x0

    .line 312
    .local v14, "listThirdParty":Z
    const/4 v12, 0x0

    .line 313
    .local v12, "listInstaller":Z
    const/16 v18, 0x0

    .line 316
    .local v18, "userId":I
    :cond_0
    :goto_0
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    move-result-object v15

    .local v15, "opt":Ljava/lang/String;
    if-eqz v15, :cond_a

    .line 317
    const-string v19, "-l"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 319
    const-string v19, "-lf"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 320
    const/16 p1, 0x1

    goto :goto_0

    .line 321
    :cond_1
    const-string v19, "-f"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 322
    const/16 p1, 0x1

    goto :goto_0

    .line 323
    :cond_2
    const-string v19, "-d"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 324
    const/4 v10, 0x1

    goto :goto_0

    .line 325
    :cond_3
    const-string v19, "-e"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 326
    const/4 v11, 0x1

    goto :goto_0

    .line 327
    :cond_4
    const-string v19, "-s"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 328
    const/4 v13, 0x1

    goto :goto_0

    .line 329
    :cond_5
    const-string v19, "-3"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 330
    const/4 v14, 0x1

    goto :goto_0

    .line 331
    :cond_6
    const-string v19, "-i"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 332
    const/4 v12, 0x1

    goto :goto_0

    .line 333
    :cond_7
    const-string v19, "--user"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 334
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    goto :goto_0

    .line 335
    :cond_8
    const-string v19, "-u"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 336
    or-int/lit16 v7, v7, 0x2000

    goto/16 :goto_0

    .line 338
    :cond_9
    sget-object v19, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error: Unknown option: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    const/16 v19, 0x1

    .line 381
    .end local v15    # "opt":Ljava/lang/String;
    :goto_1
    return v19

    .line 342
    :catch_0
    move-exception v5

    .line 343
    .local v5, "ex":Ljava/lang/RuntimeException;
    sget-object v19, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 344
    const/16 v19, 0x1

    goto :goto_1

    .line 347
    .end local v5    # "ex":Ljava/lang/RuntimeException;
    .restart local v15    # "opt":Ljava/lang/String;
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v6

    .line 350
    .local v6, "filter":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v7, v2}, Lcom/android/commands/pm/Pm;->getInstalledPackages(Landroid/content/pm/IPackageManager;II)Ljava/util/List;

    move-result-object v17

    .line 352
    .local v17, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    .line 353
    .local v3, "count":I
    const/16 v16, 0x0

    .local v16, "p":I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v3, :cond_14

    .line 354
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 355
    .local v8, "info":Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_c

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_c

    .line 353
    :cond_b
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 358
    :cond_c
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_13

    const/4 v9, 0x1

    .line 360
    .local v9, "isSystem":Z
    :goto_4
    if-eqz v10, :cond_d

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    :cond_d
    if-eqz v11, :cond_e

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    :cond_e
    if-eqz v13, :cond_f

    if-eqz v9, :cond_b

    :cond_f
    if-eqz v14, :cond_10

    if-nez v9, :cond_b

    .line 364
    :cond_10
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "package:"

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 365
    if-eqz p1, :cond_11

    .line 366
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 367
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "="

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 369
    :cond_11
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 370
    if-eqz v12, :cond_12

    .line 371
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "  installer="

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 372
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    move-object/from16 v20, v0

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 374
    :cond_12
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v19 .. v19}, Ljava/io/PrintStream;->println()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 378
    .end local v3    # "count":I
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    .end local v9    # "isSystem":Z
    .end local v16    # "p":I
    .end local v17    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_1
    move-exception v4

    .line 379
    .local v4, "e":Landroid/os/RemoteException;
    sget-object v19, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 380
    sget-object v19, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v20, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 381
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 358
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v3    # "count":I
    .restart local v8    # "info":Landroid/content/pm/PackageInfo;
    .restart local v16    # "p":I
    .restart local v17    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 377
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    :cond_14
    const/16 v19, 0x0

    goto/16 :goto_1
.end method

.method private runListPermissionGroups()I
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 534
    :try_start_0
    iget-object v6, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v4

    .line 536
    .local v4, "pgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 537
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "p":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 538
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PermissionGroupInfo;

    .line 539
    .local v3, "pgi":Landroid/content/pm/PermissionGroupInfo;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "permission group:"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 540
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v7, v3, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 543
    .end local v0    # "count":I
    .end local v2    # "p":I
    .end local v3    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    .end local v4    # "pgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    :catch_0
    move-exception v1

    .line 544
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 545
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 546
    const/4 v5, 0x1

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    return v5
.end method

.method private runListPermissions()I
    .locals 14

    .prologue
    .line 568
    const/4 v3, 0x0

    .line 569
    .local v3, "labels":Z
    const/4 v2, 0x0

    .line 570
    .local v2, "groups":Z
    const/4 v13, 0x0

    .line 571
    .local v13, "userOnly":Z
    const/4 v4, 0x0

    .line 572
    .local v4, "summary":Z
    const/4 v7, 0x0

    .line 574
    .local v7, "dangerousOnly":Z
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    move-result-object v12

    .local v12, "opt":Ljava/lang/String;
    if-eqz v12, :cond_5

    .line 575
    const-string v0, "-f"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    const/4 v3, 0x1

    goto :goto_0

    .line 577
    :cond_0
    const-string v0, "-g"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    const/4 v2, 0x1

    goto :goto_0

    .line 579
    :cond_1
    const-string v0, "-s"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 580
    const/4 v2, 0x1

    .line 581
    const/4 v3, 0x1

    .line 582
    const/4 v4, 0x1

    goto :goto_0

    .line 583
    :cond_2
    const-string v0, "-u"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 584
    const/4 v13, 0x1

    goto :goto_0

    .line 585
    :cond_3
    const-string v0, "-d"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 586
    const/4 v7, 0x1

    goto :goto_0

    .line 588
    :cond_4
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 589
    const/4 v0, 0x1

    .line 635
    .end local v12    # "opt":Ljava/lang/String;
    :goto_1
    return v0

    .line 593
    .restart local v12    # "opt":Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    move-result-object v9

    .line 594
    .local v9, "grp":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v1, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_8

    .line 596
    iget-object v0, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v11

    .line 598
    .local v11, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_6

    .line 599
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionGroupInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 601
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    .end local v10    # "i":I
    .end local v11    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    :goto_3
    if-eqz v7, :cond_9

    .line 607
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Dangerous Permissions:"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 608
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 609
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/commands/pm/Pm;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    .line 612
    if-eqz v13, :cond_7

    .line 613
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Normal Permissions:"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 614
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 615
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/commands/pm/Pm;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    .line 631
    :cond_7
    :goto_4
    const/4 v0, 0x0

    goto :goto_1

    .line 603
    :cond_8
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 632
    .end local v1    # "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "grp":Ljava/lang/String;
    .end local v12    # "opt":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 633
    .local v8, "e":Landroid/os/RemoteException;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 634
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 635
    const/4 v0, 0x1

    goto :goto_1

    .line 619
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v1    # "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "grp":Ljava/lang/String;
    .restart local v12    # "opt":Ljava/lang/String;
    :cond_9
    if-eqz v13, :cond_a

    .line 620
    :try_start_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Dangerous and Normal Permissions:"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 621
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 622
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/commands/pm/Pm;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    goto :goto_4

    .line 626
    :cond_a
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "All Permissions:"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 627
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 628
    const/16 v5, -0x2710

    const/16 v6, 0x2710

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/commands/pm/Pm;->doListPermissions(Ljava/util/ArrayList;ZZZII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method private runPath()I
    .locals 3

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 738
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error: no package specified"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 739
    const/4 v1, 0x1

    .line 741
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/commands/pm/Pm;->displayPackageFilePath(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private runSetEnabledSetting(I)I
    .locals 12
    .param p1, "state"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1449
    const/4 v4, 0x0

    .line 1450
    .local v4, "userId":I
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    move-result-object v8

    .line 1451
    .local v8, "option":Ljava/lang/String;
    if-eqz v8, :cond_2

    const-string v0, "--user"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1452
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    move-result-object v9

    .line 1453
    .local v9, "optionData":Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-static {v9}, Lcom/android/commands/pm/Pm;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1454
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error: no USER_ID specified"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1455
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    move v0, v10

    .line 1492
    .end local v9    # "optionData":Ljava/lang/String;
    :goto_0
    return v0

    .line 1458
    .restart local v9    # "optionData":Ljava/lang/String;
    :cond_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1462
    .end local v9    # "optionData":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v1

    .line 1463
    .local v1, "pkg":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 1464
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error: no package or component specified"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1465
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    move v0, v10

    .line 1466
    goto :goto_0

    .line 1468
    :cond_3
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 1469
    .local v6, "cn":Landroid/content/ComponentName;
    if-nez v6, :cond_4

    .line 1471
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shell:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 1473
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v1, v4}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/android/commands/pm/Pm;->enabledSettingToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v11

    .line 1476
    goto :goto_0

    .line 1477
    :catch_0
    move-exception v7

    .line 1478
    .local v7, "e":Landroid/os/RemoteException;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1479
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v10

    .line 1480
    goto :goto_0

    .line 1484
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    invoke-interface {v0, v6, p1, v2, v4}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    .line 1485
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v6, v4}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v3

    invoke-static {v3}, Lcom/android/commands/pm/Pm;->enabledSettingToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v11

    .line 1488
    goto/16 :goto_0

    .line 1489
    :catch_1
    move-exception v7

    .line 1490
    .restart local v7    # "e":Landroid/os/RemoteException;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1491
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v10

    .line 1492
    goto/16 :goto_0
.end method

.method private runSetHiddenSetting(Z)I
    .locals 9
    .param p1, "state"    # Z

    .prologue
    const/4 v5, 0x1

    .line 1498
    const/4 v4, 0x0

    .line 1499
    .local v4, "userId":I
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    move-result-object v1

    .line 1500
    .local v1, "option":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v6, "--user"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1501
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    move-result-object v2

    .line 1502
    .local v2, "optionData":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/commands/pm/Pm;->isNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1503
    :cond_0
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Error: no USER_ID specified"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1504
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    .line 1525
    .end local v2    # "optionData":Ljava/lang/String;
    :goto_0
    return v5

    .line 1507
    .restart local v2    # "optionData":Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1511
    .end local v2    # "optionData":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v3

    .line 1512
    .local v3, "pkg":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 1513
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Error: no package or component specified"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1514
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    goto :goto_0

    .line 1518
    :cond_3
    :try_start_0
    iget-object v6, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v3, p1, v4}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    .line 1519
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " new hidden state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v8, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1521
    const/4 v5, 0x0

    goto :goto_0

    .line 1522
    :catch_0
    move-exception v0

    .line 1523
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1524
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private runSetInstallLocation()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 822
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 824
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Error: no install location specified."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 842
    :goto_0
    return v3

    .line 828
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 834
    .local v2, "loc":I
    :try_start_1
    iget-object v4, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v2}, Landroid/content/pm/IPackageManager;->setInstallLocation(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 835
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Error: install location has to be a number."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 839
    :catch_0
    move-exception v1

    .line 840
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 841
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 829
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "loc":I
    :catch_1
    move-exception v1

    .line 830
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Error: install location has to be a number."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 838
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "loc":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private runSetInstaller()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1153
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v1

    .line 1154
    .local v1, "targetPackage":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 1156
    .local v0, "installerPackageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 1157
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "must provide both target and installer package names"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1161
    :cond_1
    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v1, v0}, Landroid/content/pm/IPackageManager;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Success"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1163
    const/4 v2, 0x0

    return v2
.end method

.method private runSetPermissionEnforced()I
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 1564
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v3

    .line 1565
    .local v3, "permission":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1566
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error: no permission specified"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1567
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    .line 1590
    :goto_0
    return v4

    .line 1570
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v2

    .line 1571
    .local v2, "enforcedRaw":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1572
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error: no enforcement specified"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1573
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    goto :goto_0

    .line 1576
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1578
    .local v1, "enforced":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v3, v1}, Landroid/content/pm/IPackageManager;->setPermissionEnforced(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1579
    const/4 v4, 0x0

    goto :goto_0

    .line 1580
    :catch_0
    move-exception v0

    .line 1581
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1582
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1584
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1585
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad argument: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1586
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    goto :goto_0

    .line 1588
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1589
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Operation not allowed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private runTrimCaches()I
    .locals 14

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 1610
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v6

    .line 1611
    .local v6, "size":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 1612
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "Error: no size specified"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1613
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    .line 1663
    :goto_0
    return v7

    .line 1616
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    .line 1617
    .local v2, "len":I
    const-wide/16 v4, 0x1

    .line 1618
    .local v4, "multiplier":J
    if-le v2, v7, :cond_2

    .line 1619
    add-int/lit8 v11, v2, -0x1

    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1620
    .local v0, "c":C
    const/16 v11, 0x4b

    if-eq v0, v11, :cond_1

    const/16 v11, 0x6b

    if-ne v0, v11, :cond_3

    .line 1621
    :cond_1
    const-wide/16 v4, 0x400

    .line 1631
    :goto_1
    add-int/lit8 v11, v2, -0x1

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1635
    .end local v0    # "c":C
    :cond_2
    :try_start_0
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v12

    mul-long v8, v12, v4

    .line 1641
    .local v8, "sizeVal":J
    new-instance v3, Lcom/android/commands/pm/Pm$ClearDataObserver;

    invoke-direct {v3}, Lcom/android/commands/pm/Pm$ClearDataObserver;-><init>()V

    .line 1643
    .local v3, "obs":Lcom/android/commands/pm/Pm$ClearDataObserver;
    :try_start_1
    iget-object v11, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v11, v8, v9, v3}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V

    .line 1644
    monitor-enter v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1645
    :goto_2
    :try_start_2
    iget-boolean v11, v3, Lcom/android/commands/pm/Pm$ClearDataObserver;->finished:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v11, :cond_8

    .line 1647
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1648
    :catch_0
    move-exception v11

    goto :goto_2

    .line 1622
    .end local v3    # "obs":Lcom/android/commands/pm/Pm$ClearDataObserver;
    .end local v8    # "sizeVal":J
    .restart local v0    # "c":C
    :cond_3
    const/16 v11, 0x4d

    if-eq v0, v11, :cond_4

    const/16 v11, 0x6d

    if-ne v0, v11, :cond_5

    .line 1623
    :cond_4
    const-wide/32 v4, 0x100000

    goto :goto_1

    .line 1624
    :cond_5
    const/16 v11, 0x47

    if-eq v0, v11, :cond_6

    const/16 v11, 0x67

    if-ne v0, v11, :cond_7

    .line 1625
    :cond_6
    const-wide/32 v4, 0x40000000

    goto :goto_1

    .line 1627
    :cond_7
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid suffix: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1628
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    goto :goto_0

    .line 1636
    .end local v0    # "c":C
    :catch_1
    move-exception v1

    .line 1637
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error: expected number at: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1638
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    goto/16 :goto_0

    .line 1651
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "obs":Lcom/android/commands/pm/Pm$ClearDataObserver;
    .restart local v8    # "sizeVal":J
    :cond_8
    :try_start_4
    monitor-exit v3

    move v7, v10

    .line 1652
    goto/16 :goto_0

    .line 1651
    :catchall_0
    move-exception v10

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v10
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1653
    :catch_2
    move-exception v1

    .line 1654
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1655
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1657
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v1

    .line 1658
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad argument: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1659
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    goto/16 :goto_0

    .line 1661
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v1

    .line 1662
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Operation not allowed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private runUninstall()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1283
    const/4 v1, 0x0

    .line 1284
    .local v1, "flags":I
    const/4 v10, -0x1

    .line 1287
    .local v10, "userId":I
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    move-result-object v4

    .local v4, "opt":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 1288
    const-string v13, "-k"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1289
    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1290
    :cond_0
    const-string v13, "--user"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1291
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v5

    .line 1292
    .local v5, "param":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/commands/pm/Pm;->isNumber(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1293
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_0

    .line 1295
    :cond_1
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    .line 1296
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error: Invalid user: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1358
    .end local v5    # "param":Ljava/lang/String;
    :goto_1
    return v11

    .line 1300
    :cond_2
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error: Unknown option: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1305
    :cond_3
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v6

    .line 1306
    .local v6, "pkg":Ljava/lang/String;
    if-nez v6, :cond_4

    .line 1307
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "Error: no package specified"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1308
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    goto :goto_1

    .line 1312
    :cond_4
    const/4 v13, -0x1

    if-ne v10, v13, :cond_6

    .line 1313
    const/4 v10, 0x0

    .line 1314
    or-int/lit8 v1, v1, 0x2

    .line 1345
    :cond_5
    :goto_2
    new-instance v7, Lcom/android/commands/pm/Pm$LocalIntentReceiver;

    const/4 v13, 0x0

    invoke-direct {v7, v13}, Lcom/android/commands/pm/Pm$LocalIntentReceiver;-><init>(Lcom/android/commands/pm/Pm$1;)V

    .line 1346
    .local v7, "receiver":Lcom/android/commands/pm/Pm$LocalIntentReceiver;
    iget-object v13, p0, Lcom/android/commands/pm/Pm;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-virtual {v7}, Lcom/android/commands/pm/Pm$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v14

    invoke-interface {v13, v6, v1, v14, v10}, Landroid/content/pm/IPackageInstaller;->uninstall(Ljava/lang/String;ILandroid/content/IntentSender;I)V

    .line 1348
    invoke-virtual {v7}, Lcom/android/commands/pm/Pm$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v8

    .line 1349
    .local v8, "result":Landroid/content/Intent;
    const-string v13, "android.content.pm.extra.STATUS"

    invoke-virtual {v8, v13, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1351
    .local v9, "status":I
    if-nez v9, :cond_a

    .line 1352
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "Success"

    invoke-virtual {v11, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v11, v12

    .line 1353
    goto :goto_1

    .line 1318
    .end local v7    # "receiver":Lcom/android/commands/pm/Pm$LocalIntentReceiver;
    .end local v8    # "result":Landroid/content/Intent;
    .end local v9    # "status":I
    :cond_6
    :try_start_0
    iget-object v13, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v14, 0x0

    invoke-interface {v13, v6, v14, v10}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1324
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_7

    .line 1325
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failure - not installed for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1319
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 1320
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1321
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1330
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_7
    iget-object v13, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flagsEx:I

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_8

    .line 1331
    and-int/lit8 v1, v1, -0x3

    .line 1335
    :cond_8
    iget-object v13, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_9

    move v3, v11

    .line 1340
    .local v3, "isSystem":Z
    :goto_3
    if-eqz v3, :cond_5

    .line 1341
    or-int/lit8 v1, v1, 0x4

    goto :goto_2

    .end local v3    # "isSystem":Z
    :cond_9
    move v3, v12

    .line 1335
    goto :goto_3

    .line 1355
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .restart local v7    # "receiver":Lcom/android/commands/pm/Pm$LocalIntentReceiver;
    .restart local v8    # "result":Landroid/content/Intent;
    .restart local v9    # "status":I
    :cond_a
    const-string v12, "Pm"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failure details: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failure ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v8, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private static showUsage()I
    .locals 2

    .prologue
    .line 1805
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage: pm list packages [-f] [-d] [-e] [-s] [-3] [-i] [-u] [--user USER_ID] [FILTER]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1806
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm list permission-groups"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1807
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm list permissions [-g] [-f] [-d] [-u] [GROUP]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1808
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm list instrumentation [-f] [TARGET-PACKAGE]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1809
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm list features"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1810
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm list libraries"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1811
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm list users"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1812
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm path PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1813
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm dump PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1814
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm install [-lrtsfd] [-i PACKAGE] [PATH]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1815
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm install-create [-lrtsfdp] [-i PACKAGE] [-S BYTES]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1816
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm install-write [-S BYTES] SESSION_ID SPLIT_NAME [PATH]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1817
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm install-commit SESSION_ID"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1818
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm install-abandon SESSION_ID"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1819
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm uninstall [-k] [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1820
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm set-installer PACKAGE INSTALLER"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1821
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm clear [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1822
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm enable [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1823
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm disable [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1824
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm disable-user [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1825
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm disable-until-used [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1826
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm hide [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1827
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm unhide [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1828
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm grant PACKAGE PERMISSION"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1829
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm revoke PACKAGE PERMISSION"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1830
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm set-install-location [0/auto] [1/internal] [2/external]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1831
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm get-install-location"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1832
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm set-permission-enforced PERMISSION [true|false]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1833
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm trim-caches DESIRED_FREE_SPACE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1834
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm create-user [--profileOf USER_ID] [--managed] USER_NAME"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1835
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm remove-user USER_ID"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1836
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm get-max-users"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1837
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1838
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm list packages: prints all packages, optionally only"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1839
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  those whose package name contains the text in FILTER.  Options:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1840
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -f: see their associated file."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1841
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -d: filter to only show disbled packages."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1842
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -e: filter to only show enabled packages."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1843
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -s: filter to only show system packages."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1844
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -3: filter to only show third party packages."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1845
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -i: see the installer for the packages."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1846
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -u: also include uninstalled packages."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1847
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1848
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm list permission-groups: prints all known permission groups."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1849
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1850
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm list permissions: prints all known permissions, optionally only"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1851
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  those in GROUP.  Options:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1852
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -g: organize by group."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1853
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -f: print all information."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1854
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -s: short summary."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1855
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -d: only list dangerous permissions."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1856
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -u: list only the permissions users will see."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1857
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1858
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm list instrumentation: use to list all test packages; optionally"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1859
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  supply <TARGET-PACKAGE> to list the test packages for a particular"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1860
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  application.  Options:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1861
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -f: list the .apk file for the test package."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1862
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1863
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm list features: prints all features of the system."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1864
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1865
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm list users: prints all users on the system."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1866
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1867
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm path: print the path to the .apk of the given PACKAGE."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1868
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1869
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm dump: print system state associated with the given PACKAGE."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1870
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1871
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm install: install a single legacy package"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1872
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm install-create: create an install session"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1873
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -l: forward lock application"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1874
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -r: replace existing application"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1875
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -t: allow test packages"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1876
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -i: specify the installer package name"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1877
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -s: install application on sdcard"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1878
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -f: install application on internal flash"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1879
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -d: allow version code downgrade"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1880
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -p: partial application install"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1881
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -S: size in bytes of entire session"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1882
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1883
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm install-write: write a package into existing session; path may"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1884
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  be \'-\' to read from stdin"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1885
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -S: size in bytes of package, required for stdin"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1886
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1887
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm install-commit: perform install of fully staged session"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1888
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm install-abandon: abandon session"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1889
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1890
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm set-installer: set installer package name"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1891
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1892
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm uninstall: removes a package from the system. Options:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1893
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    -k: keep the data and cache directories around after package removal."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1894
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1895
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm clear: deletes all data associated with a package."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1896
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1897
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm enable, disable, disable-user, disable-until-used: these commands"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1898
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  change the enabled state of a given package or component (written"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1899
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  as \"package/class\")."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1900
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1901
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm grant, revoke: these commands either grant or revoke permissions"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1902
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  to applications.  Only optional permissions the application has"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1903
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  declared can be granted or revoked."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1904
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1905
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm get-install-location: returns the current install location."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1906
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    0 [auto]: Let system decide the best location"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1907
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    1 [internal]: Install on internal device storage"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1908
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    2 [external]: Install on external media"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1909
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1910
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm set-install-location: changes the default install location."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1911
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  NOTE: this is only intended for debugging; using this can cause"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1912
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  applications to break and other undersireable behavior."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1913
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    0 [auto]: Let system decide the best location"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1914
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    1 [internal]: Install on internal device storage"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1915
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "    2 [external]: Install on external media"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1916
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1917
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm trim-caches: trim cache files to reach the given free space."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1918
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1919
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm create-user: create a new user with the given USER_NAME,"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1920
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  printing the new user identifier of the user."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1921
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1922
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "pm remove-user: remove the user with the given USER_IDENTIFIER,"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1923
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  deleting all data associated with that user"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1924
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1925
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public run([Ljava/lang/String;)I
    .locals 6
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, "validCommand":Z
    array-length v3, p1

    if-ge v3, v2, :cond_1

    .line 120
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    move-result v2

    .line 264
    :cond_0
    :goto_0
    return v2

    .line 123
    :cond_1
    const-string v3, "user"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/commands/pm/Pm;->mUm:Landroid/os/IUserManager;

    .line 124
    const-string v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    .line 125
    iget-object v3, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    if-nez v3, :cond_2

    .line 126
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_2
    iget-object v3, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    iput-object v3, p0, Lcom/android/commands/pm/Pm;->mInstaller:Landroid/content/pm/IPackageInstaller;

    .line 131
    iput-object p1, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    .line 132
    aget-object v0, p1, v4

    .line 133
    .local v0, "op":Ljava/lang/String;
    iput v2, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    .line 135
    const-string v3, "list"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 136
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runList()I

    move-result v2

    goto :goto_0

    .line 139
    :cond_3
    const-string v3, "path"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 140
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runPath()I

    move-result v2

    goto :goto_0

    .line 143
    :cond_4
    const-string v3, "dump"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 144
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runDump()I

    move-result v2

    goto :goto_0

    .line 147
    :cond_5
    const-string v3, "install"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 148
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runInstall()I

    move-result v2

    goto :goto_0

    .line 151
    :cond_6
    const-string v3, "install-create"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 152
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runInstallCreate()I

    move-result v2

    goto :goto_0

    .line 155
    :cond_7
    const-string v3, "install-write"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 156
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runInstallWrite()I

    move-result v2

    goto :goto_0

    .line 159
    :cond_8
    const-string v3, "install-commit"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 160
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runInstallCommit()I

    move-result v2

    goto/16 :goto_0

    .line 163
    :cond_9
    const-string v3, "install-abandon"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "install-destroy"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 164
    :cond_a
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runInstallAbandon()I

    move-result v2

    goto/16 :goto_0

    .line 167
    :cond_b
    const-string v3, "set-installer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 168
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runSetInstaller()I

    move-result v2

    goto/16 :goto_0

    .line 171
    :cond_c
    const-string v3, "uninstall"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 172
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runUninstall()I

    move-result v2

    goto/16 :goto_0

    .line 175
    :cond_d
    const-string v3, "clear"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 176
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runClear()I

    move-result v2

    goto/16 :goto_0

    .line 179
    :cond_e
    const-string v3, "enable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 180
    invoke-direct {p0, v2}, Lcom/android/commands/pm/Pm;->runSetEnabledSetting(I)I

    move-result v2

    goto/16 :goto_0

    .line 183
    :cond_f
    const-string v3, "disable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 184
    invoke-direct {p0, v5}, Lcom/android/commands/pm/Pm;->runSetEnabledSetting(I)I

    move-result v2

    goto/16 :goto_0

    .line 187
    :cond_10
    const-string v3, "disable-user"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 188
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/commands/pm/Pm;->runSetEnabledSetting(I)I

    move-result v2

    goto/16 :goto_0

    .line 191
    :cond_11
    const-string v3, "disable-until-used"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 192
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/commands/pm/Pm;->runSetEnabledSetting(I)I

    move-result v2

    goto/16 :goto_0

    .line 195
    :cond_12
    const-string v3, "hide"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 196
    invoke-direct {p0, v2}, Lcom/android/commands/pm/Pm;->runSetHiddenSetting(Z)I

    move-result v2

    goto/16 :goto_0

    .line 199
    :cond_13
    const-string v3, "unhide"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 200
    invoke-direct {p0, v4}, Lcom/android/commands/pm/Pm;->runSetHiddenSetting(Z)I

    move-result v2

    goto/16 :goto_0

    .line 203
    :cond_14
    const-string v3, "grant"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 204
    invoke-direct {p0, v2}, Lcom/android/commands/pm/Pm;->runGrantRevokePermission(Z)I

    move-result v2

    goto/16 :goto_0

    .line 207
    :cond_15
    const-string v3, "revoke"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 208
    invoke-direct {p0, v4}, Lcom/android/commands/pm/Pm;->runGrantRevokePermission(Z)I

    move-result v2

    goto/16 :goto_0

    .line 211
    :cond_16
    const-string v3, "set-permission-enforced"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 212
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runSetPermissionEnforced()I

    move-result v2

    goto/16 :goto_0

    .line 215
    :cond_17
    const-string v3, "set-install-location"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 216
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runSetInstallLocation()I

    move-result v2

    goto/16 :goto_0

    .line 219
    :cond_18
    const-string v3, "get-install-location"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 220
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runGetInstallLocation()I

    move-result v2

    goto/16 :goto_0

    .line 223
    :cond_19
    const-string v3, "trim-caches"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 224
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runTrimCaches()I

    move-result v2

    goto/16 :goto_0

    .line 227
    :cond_1a
    const-string v3, "create-user"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 228
    invoke-virtual {p0}, Lcom/android/commands/pm/Pm;->runCreateUser()I

    move-result v2

    goto/16 :goto_0

    .line 231
    :cond_1b
    const-string v3, "remove-user"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 232
    invoke-virtual {p0}, Lcom/android/commands/pm/Pm;->runRemoveUser()I

    move-result v2

    goto/16 :goto_0

    .line 235
    :cond_1c
    const-string v3, "get-max-users"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 236
    invoke-virtual {p0}, Lcom/android/commands/pm/Pm;->runGetMaxUsers()I

    move-result v2

    goto/16 :goto_0

    .line 239
    :cond_1d
    const-string v3, "force-dex-opt"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 240
    invoke-virtual {p0}, Lcom/android/commands/pm/Pm;->runForceDexOpt()I

    move-result v2

    goto/16 :goto_0

    .line 244
    :cond_1e
    :try_start_0
    array-length v3, p1

    if-ne v3, v2, :cond_22

    .line 245
    const/4 v3, 0x0

    aget-object v3, p1, v3

    const-string v4, "-l"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 246
    const/4 v1, 0x1

    .line 247
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/commands/pm/Pm;->runListPackages(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 260
    if-nez v1, :cond_0

    .line 261
    if-eqz v0, :cond_1f

    .line 262
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: unknown command \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 264
    :cond_1f
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    goto/16 :goto_0

    .line 248
    :cond_20
    const/4 v3, 0x0

    :try_start_1
    aget-object v3, p1, v3

    const-string v4, "-lf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 249
    const/4 v1, 0x1

    .line 250
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/commands/pm/Pm;->runListPackages(Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 260
    if-nez v1, :cond_0

    .line 261
    if-eqz v0, :cond_21

    .line 262
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: unknown command \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 264
    :cond_21
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    goto/16 :goto_0

    .line 252
    :cond_22
    :try_start_2
    array-length v3, p1

    if-ne v3, v5, :cond_24

    .line 253
    const/4 v3, 0x0

    aget-object v3, p1, v3

    const-string v4, "-p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 254
    const/4 v1, 0x1

    .line 255
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-direct {p0, v2}, Lcom/android/commands/pm/Pm;->displayPackageFilePath(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 260
    if-nez v1, :cond_0

    .line 261
    if-eqz v0, :cond_23

    .line 262
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: unknown command \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 264
    :cond_23
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    goto/16 :goto_0

    .line 260
    :cond_24
    if-nez v1, :cond_0

    .line 261
    if-eqz v0, :cond_25

    .line 262
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: unknown command \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 264
    :cond_25
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    goto/16 :goto_0

    .line 260
    :catchall_0
    move-exception v2

    if-nez v1, :cond_27

    .line 261
    if-eqz v0, :cond_26

    .line 262
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: unknown command \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 264
    :cond_26
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    :cond_27
    throw v2
.end method

.method public runCreateUser()I
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 1168
    const/4 v7, -0x1

    .line 1169
    .local v7, "userId":I
    const/4 v2, 0x0

    .line 1171
    .local v2, "flags":I
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    move-result-object v5

    .local v5, "opt":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 1172
    const-string v8, "--profileOf"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1173
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    move-result-object v6

    .line 1174
    .local v6, "optionData":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-static {v6}, Lcom/android/commands/pm/Pm;->isNumber(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1175
    :cond_0
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Error: no USER_ID specified"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1176
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    .line 1212
    .end local v6    # "optionData":Ljava/lang/String;
    :goto_1
    return v11

    .line 1179
    .restart local v6    # "optionData":Ljava/lang/String;
    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1181
    goto :goto_0

    .end local v6    # "optionData":Ljava/lang/String;
    :cond_2
    const-string v8, "--managed"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1182
    or-int/lit8 v2, v2, 0x20

    goto :goto_0

    .line 1184
    :cond_3
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: unknown option "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1185
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    goto :goto_1

    .line 1189
    :cond_4
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 1190
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_5

    .line 1191
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Error: no user name specified."

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1194
    :cond_5
    move-object v4, v0

    .line 1196
    .local v4, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1197
    .local v3, "info":Landroid/content/pm/UserInfo;
    if-gez v7, :cond_6

    .line 1198
    :try_start_0
    iget-object v8, p0, Lcom/android/commands/pm/Pm;->mUm:Landroid/os/IUserManager;

    invoke-interface {v8, v4, v2}, Landroid/os/IUserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 1202
    :goto_2
    if-eqz v3, :cond_7

    .line 1203
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Success: created user id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1209
    :catch_0
    move-exception v1

    .line 1210
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1211
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1200
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_6
    :try_start_1
    iget-object v8, p0, Lcom/android/commands/pm/Pm;->mUm:Landroid/os/IUserManager;

    invoke-interface {v8, v4, v2, v7}, Landroid/os/IUserManager;->createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v3

    goto :goto_2

    .line 1206
    :cond_7
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Error: couldn\'t create User."

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public runForceDexOpt()I
    .locals 3

    .prologue
    .line 1273
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v1

    .line 1275
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v1}, Landroid/content/pm/IPackageManager;->forceDexOpt(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1276
    const/4 v2, 0x0

    return v2

    .line 1277
    :catch_0
    move-exception v0

    .line 1278
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public runGetMaxUsers()I
    .locals 3

    .prologue
    .line 1268
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum supported users: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1269
    const/4 v0, 0x0

    return v0
.end method

.method public runListUsers()I
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1246
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1248
    .local v0, "am":Landroid/app/IActivityManager;
    iget-object v5, p0, Lcom/android/commands/pm/Pm;->mUm:Landroid/os/IUserManager;

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 1249
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v4, :cond_0

    .line 1250
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Error: couldn\'t get users"

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v5, v6

    .line 1263
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_0
    return v5

    .line 1253
    .restart local v0    # "am":Landroid/app/IActivityManager;
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Users:"

    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1254
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 1255
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    const/4 v8, 0x0

    invoke-interface {v0, v5, v8}, Landroid/app/IActivityManager;->isUserRunning(IZ)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v3, " running"

    .line 1256
    .local v3, "running":Ljava/lang/String;
    :goto_2
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1254
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1255
    .end local v3    # "running":Ljava/lang/String;
    :cond_1
    const-string v3, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    move v5, v7

    .line 1258
    goto :goto_0

    .line 1260
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v2    # "i":I
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v1

    .line 1261
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1262
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v5, v6

    .line 1263
    goto :goto_0
.end method

.method public runRemoveUser()I
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 1218
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 1219
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1220
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Error: no user id specified."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1240
    :goto_0
    return v3

    .line 1224
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1230
    .local v2, "userId":I
    :try_start_1
    iget-object v4, p0, Lcom/android/commands/pm/Pm;->mUm:Landroid/os/IUserManager;

    invoke-interface {v4, v2}, Landroid/os/IUserManager;->removeUser(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1231
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Success: removed user"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1232
    const/4 v3, 0x0

    goto :goto_0

    .line 1225
    .end local v2    # "userId":I
    :catch_0
    move-exception v1

    .line 1226
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: user id \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' is not a number."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1234
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "userId":I
    :cond_1
    :try_start_2
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: couldn\'t remove user id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1237
    :catch_1
    move-exception v1

    .line 1238
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1239
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
