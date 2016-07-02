.class public Lcom/meizu/mpay/service/MzMPayHelper;
.super Ljava/lang/Object;
.source "MzMPayHelper.java"


# static fields
.field public static final ALIPAY_ACCOUNT_TYPE:Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field public static final ALIPAY_APP_CENTER_ID:Ljava/lang/String; = "2a205e8d24e941ecaf19beedded59e47"

.field public static final ALIPAY_PACKAGE_NAME:Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field protected static final BIT_FLAG_PAY_TYPE:I = 0xf

.field protected static final BIT_SIZE_PAY_TYPE:I = 0x4

.field public static final EXTRA_BANK_NAME:Ljava/lang/String; = "BankName"

.field public static final EXTRA_BUSINESS_TYPE:Ljava/lang/String; = "BusinessType"

.field public static final EXTRA_CARD_NUM:Ljava/lang/String; = "CardNum"

.field public static final EXTRA_CARD_PAYMENT_AMOUNT:Ljava/lang/String; = "CardPaymentAmount"

.field public static final EXTRA_CONTENT:Ljava/lang/String; = "SmsContent"

.field public static final EXTRA_NUMBER:Ljava/lang/String; = "SmsNum"

.field public static final EXTRA_PAY_WAY:Ljava/lang/String; = "PayWay"

.field public static final EXTRA_RECHARGE_AMOUNT:Ljava/lang/String; = "RechargeAmount"

.field public static final EXTRA_RECHARGE_NUMBER:Ljava/lang/String; = "RechargeNumber"

.field public static final EXTRA_TRANS_NUM:Ljava/lang/String; = "TransferNum"

.field protected static final FLAG_SHIFT_LEFT:I = 0xa

.field public static final KEY_CHECK_RESULT:Ljava/lang/String; = "checkResult"

.field public static final KEY_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field public static final KEY_TRANSFER_INTENT:Ljava/lang/String; = "transferIntent"

.field public static final LAKALA_ACCOUNT_TYPE:Ljava/lang/String; = "com.lakala.android.meizu"

.field public static final LAKALA_APP_CENTER_ID:Ljava/lang/String; = "ddb9175a8222438c849ac14f23dca946"

.field public static final LAKALA_PACKAGE_NAME:Ljava/lang/String; = "com.lakala.meizu"

.field private static final MPAY_APP_PACKAGE:Ljava/lang/String; = "com.meizu.mpay"

.field public static final PAY_TYPE_ALI_CHECK:I = 0x4

.field public static final PAY_TYPE_ALI_FOR_OTHERS:I = 0x5

.field public static final PAY_TYPE_ALI_PAYMENT:I = 0x6

.field public static final PAY_TYPE_NONE:I = 0x0

.field public static final PAY_TYPE_PAY_FEE:I = 0x3

.field public static final PAY_TYPE_RECHARGE:I = 0x1

.field public static final PAY_TYPE_REPAYMENT:I = 0x2

.field public static final PAY_WAY_ALIPAY:I = 0x1

.field public static final PAY_WAY_LAKALA:I = 0x2

.field public static final PENDING_RESULT_ERROR:I = -0x1

.field public static final PENDING_RESULT_OK:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlipayCardPaymentIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "cardNumber"    # Ljava/lang/String;
    .param p2, "bankName"    # Ljava/lang/String;
    .param p3, "amount"    # I

    .prologue
    .line 202
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/meizu/mpay/service/MzMPayHelper;->getCardPaymentIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getAlipayIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/meizu/mpay/service/MzMPayHelper;->getTargetActivityIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getAlipayRechargeIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "rechargeNumber"    # Ljava/lang/String;
    .param p2, "amount"    # I

    .prologue
    .line 175
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/meizu/mpay/service/MzMPayHelper;->getRechargeIntent(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getAlipayTransferIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "phoneNum"    # Ljava/lang/String;

    .prologue
    .line 146
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/meizu/mpay/service/MzMPayHelper;->getTransferIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getCardPaymentIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "cardNumber"    # Ljava/lang/String;
    .param p2, "bankName"    # Ljava/lang/String;
    .param p3, "amount"    # I
    .param p4, "payWay"    # I

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.meizu.mpay"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v1, "com.meizu.mpay.repayment.start"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v1, "SmsNum"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v1, "CardNum"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v1, "BankName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v1, "PayWay"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 217
    const-string v1, "CardPaymentAmount"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    return-object v0
.end method

.method public static getLakalaCardPaymentIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "cardNumber"    # Ljava/lang/String;
    .param p2, "bankName"    # Ljava/lang/String;
    .param p3, "amount"    # I

    .prologue
    .line 206
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, p3, v0}, Lcom/meizu/mpay/service/MzMPayHelper;->getCardPaymentIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getLakalaIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 127
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/meizu/mpay/service/MzMPayHelper;->getTargetActivityIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getLakalaRechargeIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "rechargeNumber"    # Ljava/lang/String;
    .param p2, "amount"    # I

    .prologue
    .line 179
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0}, Lcom/meizu/mpay/service/MzMPayHelper;->getRechargeIntent(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getLakalaTransferIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "phoneNum"    # Ljava/lang/String;

    .prologue
    .line 155
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/meizu/mpay/service/MzMPayHelper;->getTransferIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static final getOriginalFlag(I)I
    .locals 1
    .param p0, "flag"    # I

    .prologue
    .line 107
    shr-int/lit8 v0, p0, 0xa

    return v0
.end method

.method public static final getPaymentType(I)I
    .locals 2
    .param p0, "flag"    # I

    .prologue
    .line 72
    invoke-static {p0}, Lcom/meizu/mpay/service/MzMPayHelper;->getOriginalFlag(I)I

    move-result p0

    .line 73
    and-int/lit8 v0, p0, 0xf

    .line 74
    .local v0, "typeFlag":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 80
    .end local v0    # "typeFlag":I
    :cond_0
    :goto_0
    return v0

    .restart local v0    # "typeFlag":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static getRechargeIntent(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "rechargeNumber"    # Ljava/lang/String;
    .param p2, "amount"    # I
    .param p3, "payWay"    # I

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 184
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.meizu.mpay"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v1, "com.meizu.mpay.recharge.start"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v1, "SmsNum"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v1, "PayWay"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    const-string v1, "RechargeNumber"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v1, "RechargeAmount"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    return-object v0
.end method

.method protected static getTargetActivityIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "payWay"    # I

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.meizu.mpay"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v1, "com.meizu.mpay.payment.start"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v1, "SmsNum"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v1, "SmsContent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v1, "PayWay"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    return-object v0
.end method

.method protected static getTransferIntent(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2
    .param p0, "phoneNum"    # Ljava/lang/String;
    .param p1, "businessType"    # I

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 160
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.meizu.mpay"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v1, "com.meizu.mpay.transfer.start"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v1, "TransferNum"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v1, "BusinessType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    return-object v0
.end method

.method private static final hasAccountByType(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 236
    const-string v2, "account"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManager;

    .line 237
    .local v1, "am":Landroid/accounts/AccountManager;
    invoke-virtual {v1, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 238
    .local v0, "accounts":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final hasAlipayAccount(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    const-string v0, "com.eg.android.AlipayGphone"

    invoke-static {p0, v0}, Lcom/meizu/mpay/service/MzMPayHelper;->hasAccountByType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final hasLakalaAccount(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    const-string v0, "com.lakala.android.meizu"

    invoke-static {p0, v0}, Lcom/meizu/mpay/service/MzMPayHelper;->hasAccountByType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isAlipayClientAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 245
    const-string v0, "com.eg.android.AlipayGphone"

    invoke-static {p0, v0}, Lcom/meizu/mpay/service/MzMPayHelper;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isAlipaySupport(I)Z
    .locals 3
    .param p0, "flag"    # I

    .prologue
    const/4 v1, 0x1

    .line 90
    invoke-static {p0}, Lcom/meizu/mpay/service/MzMPayHelper;->getOriginalFlag(I)I

    move-result p0

    .line 91
    shr-int/lit8 v0, p0, 0x4

    .line 92
    .local v0, "supportFlag":I
    and-int/lit8 v2, v0, 0x1

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isLakalaClientAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    const-string v0, "com.lakala.meizu"

    invoke-static {p0, v0}, Lcom/meizu/mpay/service/MzMPayHelper;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isLakalaSupport(I)Z
    .locals 3
    .param p0, "flag"    # I

    .prologue
    .line 101
    invoke-static {p0}, Lcom/meizu/mpay/service/MzMPayHelper;->getOriginalFlag(I)I

    move-result p0

    .line 102
    shr-int/lit8 v0, p0, 0x4

    .line 103
    .local v0, "supportFlag":I
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static final isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 257
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 258
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 261
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v1

    .line 259
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static final startAlipayDownloadActivity(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 268
    const-string v0, "2a205e8d24e941ecaf19beedded59e47"

    invoke-static {p0, v0}, Lcom/meizu/mpay/service/MzMPayHelper;->startAppDownloadActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method private static final startAppDownloadActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mstore:http://app.meizu.com/phone/apps/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 280
    .local v1, "mstoreUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 281
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 282
    return-void
.end method

.method public static final startLakalaDownloadActivity(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 275
    const-string v0, "ddb9175a8222438c849ac14f23dca946"

    invoke-static {p0, v0}, Lcom/meizu/mpay/service/MzMPayHelper;->startAppDownloadActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 276
    return-void
.end method
