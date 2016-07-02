.class public final Landroid/provider/MzContactsContract$MzAccounts;
.super Ljava/lang/Object;
.source "MzContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MzContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MzAccounts"
.end annotation


# static fields
.field public static final DEVICES_ONLY_ACCOUNT:Landroid/accounts/Account;

.field private static final DEVICES_ONLY_ACCOUNT_NAME:Ljava/lang/String; = "DeviceOnly"

.field private static final DEVICES_ONLY_ACCOUNT_TYPE:Ljava/lang/String; = "DeviceOnly"

.field public static final FLYME_ACCOUNT_TYPE:Ljava/lang/String; = "com.meizu.account"

.field public static final SIM_ACCOUNT_TYPE:Ljava/lang/String; = "com.meizu.sim"

.field public static final SINA_ACCOUNT_TYPE:Ljava/lang/String; = "com.meizu.sns.sina"

.field public static final VENDER_ACCOUNT:Landroid/accounts/Account;

.field private static final VENDER_ACCOUNT_NAME:Ljava/lang/String; = "account.vender"

.field public static final VENDER_ACCOUNT_TYPE:Ljava/lang/String; = "account.vender"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1143
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "DeviceOnly"

    const-string v2, "DeviceOnly"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/provider/MzContactsContract$MzAccounts;->DEVICES_ONLY_ACCOUNT:Landroid/accounts/Account;

    .line 1148
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "account.vender"

    const-string v2, "account.vender"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/provider/MzContactsContract$MzAccounts;->VENDER_ACCOUNT:Landroid/accounts/Account;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1135
    return-void
.end method

.method public static addDeviceOnlyAccount([Landroid/accounts/Account;)[Landroid/accounts/Account;
    .locals 9
    .param p0, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 1152
    array-length v7, p0

    add-int/lit8 v7, v7, 0x1

    new-array v6, v7, [Landroid/accounts/Account;

    .line 1153
    .local v6, "newAccount":[Landroid/accounts/Account;
    const/4 v7, 0x0

    sget-object v8, Landroid/provider/MzContactsContract$MzAccounts;->DEVICES_ONLY_ACCOUNT:Landroid/accounts/Account;

    aput-object v8, v6, v7

    .line 1154
    const/4 v2, 0x1

    .line 1155
    .local v2, "i":I
    move-object v1, p0

    .local v1, "arr$":[Landroid/accounts/Account;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 1156
    .local v0, "account":Landroid/accounts/Account;
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-object v0, v6, v3

    .line 1155
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 1158
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    return-object v6
.end method

.method public static isFlymeAccount(Landroid/accounts/Account;)Z
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;

    .prologue
    .line 1162
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v1, "com.meizu.account"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1163
    const/4 v0, 0x1

    .line 1165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
