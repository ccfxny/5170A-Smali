.class public Landroid/content/ContentProvider$Injector;
.super Ljava/lang/Object;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCurentLockApp(Landroid/content/ContentProvider;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 16
    .param p0, "dst"    # Landroid/content/ContentProvider;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callingPkg"    # Ljava/lang/String;

    .prologue
    .line 2040
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 2041
    .local v11, "uid":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->mzGetMyUid()I

    move-result v12

    invoke-static {v11, v12}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2042
    const/4 v12, 0x0

    .line 2101
    :goto_0
    return v12

    .line 2045
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/content/ContentProvider;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    if-nez v12, :cond_1

    .line 2046
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->mzGetContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "access_control"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmeizu/security/AccessControlManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/content/ContentProvider;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    .line 2048
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/content/ContentProvider;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    if-nez v12, :cond_2

    .line 2049
    const/4 v12, 0x0

    goto :goto_0

    .line 2052
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    .line 2053
    .local v7, "name":Ljava/lang/String;
    if-nez v7, :cond_3

    .line 2054
    const/4 v12, 0x0

    goto :goto_0

    .line 2056
    :cond_3
    const/4 v4, 0x0

    .line 2058
    .local v4, "cpi":Landroid/content/pm/ProviderInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    invoke-interface {v12, v7, v13, v14}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2064
    :goto_1
    if-eqz v4, :cond_a

    .line 2065
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string/jumbo v13, "ownerPackage"

    const-string/jumbo v14, "string"

    iget-object v15, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 2066
    .local v10, "ownerPackageId":I
    const/4 v9, 0x0

    .line 2067
    .local v9, "ownerPackage":Ljava/lang/String;
    if-lez v10, :cond_4

    .line 2068
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2070
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/content/ContentProvider;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    iget-object v13, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lmeizu/security/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/content/ContentProvider;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    invoke-virtual {v12, v9}, Lmeizu/security/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 2071
    :cond_5
    if-eqz v9, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 2072
    const/4 v12, 0x0

    goto :goto_0

    .line 2060
    .end local v9    # "ownerPackage":Ljava/lang/String;
    .end local v10    # "ownerPackageId":I
    :catch_0
    move-exception v5

    .line 2061
    .local v5, "ex":Landroid/os/RemoteException;
    const-string v12, "ContentProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "remoteEx: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2075
    .end local v5    # "ex":Landroid/os/RemoteException;
    .restart local v9    # "ownerPackage":Ljava/lang/String;
    .restart local v10    # "ownerPackageId":I
    :cond_6
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    iget-object v13, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v14, 0x80

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2077
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_7

    iget-object v12, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v12, :cond_7

    .line 2078
    iget-object v12, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v13, "needAccessData"

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 2079
    .local v8, "needAccessData":Z
    if-nez v8, :cond_7

    .line 2080
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2083
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "needAccessData":Z
    :catch_1
    move-exception v12

    .line 2086
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string v13, "believePackages"

    const-string v14, "array"

    iget-object v15, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2087
    .local v2, "believePackageId":I
    if-lez v2, :cond_9

    .line 2088
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 2090
    .local v3, "believePackages":[Ljava/lang/String;
    if-eqz v3, :cond_9

    .line 2091
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v12, v3

    if-ge v6, v12, :cond_9

    .line 2092
    aget-object v12, v3, v6

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 2093
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2091
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2098
    .end local v3    # "believePackages":[Ljava/lang/String;
    .end local v6    # "i":I
    :cond_9
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 2101
    .end local v2    # "believePackageId":I
    .end local v9    # "ownerPackage":Ljava/lang/String;
    .end local v10    # "ownerPackageId":I
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_0
.end method
