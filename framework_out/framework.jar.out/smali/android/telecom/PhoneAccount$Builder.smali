.class public Landroid/telecom/PhoneAccount$Builder;
.super Ljava/lang/Object;
.source "PhoneAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/PhoneAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mAddress:Landroid/net/Uri;

.field private mCapabilities:I

.field private mHighlightColor:I

.field private mIconBitmap:Landroid/graphics/Bitmap;

.field private mIconPackageName:Ljava/lang/String;

.field private mIconResId:I

.field private mIconTint:I

.field private mLabel:Ljava/lang/CharSequence;

.field private mShortDescription:Ljava/lang/CharSequence;

.field private mSubscriptionAddress:Landroid/net/Uri;

.field private mSupportedUriSchemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/telecom/PhoneAccount;)V
    .locals 2
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccount;

    .prologue
    const/4 v0, 0x0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mIconTint:I

    .line 198
    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    .line 218
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 219
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mAddress:Landroid/net/Uri;

    .line 220
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSubscriptionAddress:Landroid/net/Uri;

    .line 221
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getCapabilities()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mCapabilities:I

    .line 222
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getIconResId()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mIconResId:I

    .line 223
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getIconPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mIconPackageName:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 225
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getIconTint()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mIconTint:I

    .line 226
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getHighlightColor()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    .line 227
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mLabel:Ljava/lang/CharSequence;

    .line 228
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getShortDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mShortDescription:Ljava/lang/CharSequence;

    .line 229
    iget-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getSupportedUriSchemes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mIconTint:I

    .line 198
    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    .line 207
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 208
    iput-object p2, p0, Landroid/telecom/PhoneAccount$Builder;->mLabel:Ljava/lang/CharSequence;

    .line 209
    return-void
.end method


# virtual methods
.method public addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;
    .locals 1
    .param p1, "uriScheme"    # Ljava/lang/String;

    .prologue
    .line 364
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_0
    return-object p0
.end method

.method public build()Landroid/telecom/PhoneAccount;
    .locals 14

    .prologue
    .line 394
    iget-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    const-string/jumbo v0, "tel"

    invoke-virtual {p0, v0}, Landroid/telecom/PhoneAccount$Builder;->addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;

    .line 398
    :cond_0
    new-instance v0, Landroid/telecom/PhoneAccount;

    iget-object v1, p0, Landroid/telecom/PhoneAccount$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v2, p0, Landroid/telecom/PhoneAccount$Builder;->mAddress:Landroid/net/Uri;

    iget-object v3, p0, Landroid/telecom/PhoneAccount$Builder;->mSubscriptionAddress:Landroid/net/Uri;

    iget v4, p0, Landroid/telecom/PhoneAccount$Builder;->mCapabilities:I

    iget v5, p0, Landroid/telecom/PhoneAccount$Builder;->mIconResId:I

    iget-object v6, p0, Landroid/telecom/PhoneAccount$Builder;->mIconPackageName:Ljava/lang/String;

    iget-object v7, p0, Landroid/telecom/PhoneAccount$Builder;->mIconBitmap:Landroid/graphics/Bitmap;

    iget v8, p0, Landroid/telecom/PhoneAccount$Builder;->mIconTint:I

    iget v9, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    iget-object v10, p0, Landroid/telecom/PhoneAccount$Builder;->mLabel:Ljava/lang/CharSequence;

    iget-object v11, p0, Landroid/telecom/PhoneAccount$Builder;->mShortDescription:Ljava/lang/CharSequence;

    iget-object v12, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v13}, Landroid/telecom/PhoneAccount;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/net/Uri;IILjava/lang/String;Landroid/graphics/Bitmap;IILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Landroid/telecom/PhoneAccount$1;)V

    return-object v0
.end method

.method public setAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 234
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 235
    return-object p0
.end method

.method public setAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "value"    # Landroid/net/Uri;

    .prologue
    .line 245
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mAddress:Landroid/net/Uri;

    .line 246
    return-object p0
.end method

.method public setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 267
    iput p1, p0, Landroid/telecom/PhoneAccount$Builder;->mCapabilities:I

    .line 268
    return-object p0
.end method

.method public setHighlightColor(I)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 341
    iput p1, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    .line 342
    return-object p0
.end method

.method public setIcon(Landroid/content/Context;I)Landroid/telecom/PhoneAccount$Builder;
    .locals 1
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "iconResId"    # I

    .prologue
    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/telecom/PhoneAccount$Builder;->setIcon(Ljava/lang/String;I)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/content/Context;II)Landroid/telecom/PhoneAccount$Builder;
    .locals 1
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "iconResId"    # I
    .param p3, "iconTint"    # I

    .prologue
    .line 302
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/telecom/PhoneAccount$Builder;->setIcon(Ljava/lang/String;II)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/Bitmap;)Landroid/telecom/PhoneAccount$Builder;
    .locals 1
    .param p1, "iconBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 327
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mIconPackageName:Ljava/lang/String;

    .line 329
    const/4 v0, -0x1

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mIconResId:I

    .line 330
    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mIconTint:I

    .line 331
    return-object p0
.end method

.method public setIcon(Ljava/lang/String;I)Landroid/telecom/PhoneAccount$Builder;
    .locals 1
    .param p1, "iconPackageName"    # Ljava/lang/String;
    .param p2, "iconResId"    # I

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/telecom/PhoneAccount$Builder;->setIcon(Ljava/lang/String;II)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Ljava/lang/String;II)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "iconPackageName"    # Ljava/lang/String;
    .param p2, "iconResId"    # I
    .param p3, "iconTint"    # I

    .prologue
    .line 314
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mIconPackageName:Ljava/lang/String;

    .line 315
    iput p2, p0, Landroid/telecom/PhoneAccount$Builder;->mIconResId:I

    .line 316
    iput p3, p0, Landroid/telecom/PhoneAccount$Builder;->mIconTint:I

    .line 317
    return-object p0
.end method

.method public setShortDescription(Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 352
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mShortDescription:Ljava/lang/CharSequence;

    .line 353
    return-object p0
.end method

.method public setSubscriptionAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "value"    # Landroid/net/Uri;

    .prologue
    .line 256
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mSubscriptionAddress:Landroid/net/Uri;

    .line 257
    return-object p0
.end method

.method public setSupportedUriSchemes(Ljava/util/List;)Landroid/telecom/PhoneAccount$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telecom/PhoneAccount$Builder;"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, "uriSchemes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 379
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 380
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 381
    .local v1, "uriScheme":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount$Builder;->addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;

    goto :goto_0

    .line 384
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "uriScheme":Ljava/lang/String;
    :cond_0
    return-object p0
.end method