.class public Lcom/android/server/AlarmAlignStore;
.super Ljava/lang/Object;
.source "AlarmAlignStore.java"


# static fields
.field public static final ACTIVE:Ljava/lang/String; = "active"

.field public static final AUTHORITY:Ljava/lang/String; = "com.meizu.safe.provider"

.field public static final IDLE:Ljava/lang/String; = "idle"

.field public static final INT_FALSE:I = 0x0

.field public static final INT_NULL:I = -0x1

.field public static final INT_TRUE:I = 0x1

.field public static final NIGHT:Ljava/lang/String; = "night"

.field public static final O_VALID:Ljava/lang/String; = "o_valid"

.field public static final PATH:Ljava/lang/String; = "alarm_align"

.field public static final PKG_NAME:Ljava/lang/String; = "package_name"

.field public static final TABLE_NAME:Ljava/lang/String; = "alarm_align"

.field public static final URI:Landroid/net/Uri;

.field public static final VALID:Ljava/lang/String; = "valid"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "content://com.meizu.safe.provider/alarm_align"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmAlignStore;->URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Str2MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 106
    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 115
    .local v3, "hash":[B
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v7, v3

    mul-int/lit8 v7, v7, 0x2

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 116
    .local v4, "hex":Ljava/lang/StringBuilder;
    move-object v0, v3

    .local v0, "arr$":[B
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-byte v1, v0, v5

    .line 117
    .local v1, "b":B
    and-int/lit16 v7, v1, 0xff

    const/16 v8, 0x10

    if-ge v7, v8, :cond_0

    .line 118
    const-string v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_0
    and-int/lit16 v7, v1, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v3    # "hash":[B
    .end local v4    # "hex":Ljava/lang/StringBuilder;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 122
    :goto_1
    return-object p0

    .line 110
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 111
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 122
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "arr$":[B
    .restart local v3    # "hash":[B
    .restart local v4    # "hex":Ljava/lang/StringBuilder;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static addPowerModeDetail(Landroid/content/Context;Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;

    .prologue
    const/4 v4, 0x1

    .line 45
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 46
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "package_name"

    iget-object v3, p1, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v2, "o_valid"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 48
    const-string v2, "valid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 49
    const-string v2, "active"

    iget v3, p1, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->active:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50
    const-string v2, "active"

    iget v3, p1, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->active:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 51
    const-string v2, "idle"

    iget v3, p1, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->idle:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    const-string v2, "night"

    iget v3, p1, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->night:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 56
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/server/AlarmAlignStore;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 57
    return v4
.end method

.method public static permissionExit(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 83
    new-array v2, v8, [Ljava/lang/String;

    const-string v1, "package_name"

    aput-object v1, v2, v5

    .line 84
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "package_name = ? "

    .line 85
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v5

    .line 86
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 88
    .local v6, "bExit":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 89
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/server/AlarmAlignStore;->URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 91
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, v8, :cond_2

    .line 92
    :cond_0
    const/4 v6, 0x0

    .line 96
    :goto_0
    if-eqz v7, :cond_1

    .line 97
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 99
    :cond_1
    return v6

    .line 94
    :cond_2
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public static updatePkgAlignPermission(Landroid/content/Context;Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 61
    const-string v2, "valid = ? "

    .line 62
    .local v2, "selection":Ljava/lang/String;
    new-array v3, v7, [Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    .line 64
    .local v3, "selectionArgs":[Ljava/lang/String;
    iget-object v5, p1, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->pkgName:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/android/server/AlarmAlignStore;->permissionExit(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 65
    .local v0, "bExit":Z
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 66
    .local v4, "values":Landroid/content/ContentValues;
    if-nez v0, :cond_0

    .line 67
    const-string v5, "package_name"

    iget-object v6, p1, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v5, "o_valid"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    :cond_0
    const-string v5, "valid"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    const-string v5, "active"

    iget v6, p1, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->active:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    const-string v5, "idle"

    iget v6, p1, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->idle:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    const-string v5, "night"

    iget v6, p1, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->night:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 76
    .local v1, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 77
    sget-object v5, Lcom/android/server/AlarmAlignStore;->URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v4, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_1
    sget-object v5, Lcom/android/server/AlarmAlignStore;->URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method
