.class public final Landroid/provider/MzContactsContract$MzData;
.super Ljava/lang/Object;
.source "MzContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MzContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MzData"
.end annotation


# static fields
.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 229
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "filter"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzContactsContract$MzData;->CONTENT_FILTER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildUriWithRequestMimetypes(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .param p0, "baseUri"    # Landroid/net/Uri;
    .param p1, "requestMimes"    # [Ljava/lang/String;

    .prologue
    .line 243
    if-eqz p1, :cond_0

    array-length v5, p1

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 265
    .end local p0    # "baseUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object p0

    .line 246
    .restart local p0    # "baseUri":Landroid/net/Uri;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_6

    aget-object v3, v0, v1

    .line 248
    .local v3, "mimeType":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 249
    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    :cond_2
    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 252
    const-string v5, "phone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 253
    :cond_4
    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 254
    const-string v5, "email"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 255
    :cond_5
    const-string v5, "vnd.android.cursor.item/social_profile"

    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 256
    const-string v5, "social_profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 260
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 261
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "request_mimes"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    goto :goto_0
.end method
