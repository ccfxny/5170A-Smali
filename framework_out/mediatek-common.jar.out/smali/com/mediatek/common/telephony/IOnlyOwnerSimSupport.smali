.class public interface abstract Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;
.super Ljava/lang/Object;
.source "IOnlyOwnerSimSupport.java"


# static fields
.field public static final MTK_NORMALUSER_CB_ACTION:Ljava/lang/String; = "mediatek.Telephony.NORMALUSER_CB_RECEIVED"

.field public static final MTK_NORMALUSER_MMS_ACTION:Ljava/lang/String; = "mediatek.Telephony.NORMALUSER_MMS_RECEIVED"

.field public static final MTK_NORMALUSER_SMS_ACTION:Ljava/lang/String; = "mediatek.Telephony.NORMALUSER_SMS_RECEIVED"


# virtual methods
.method public abstract dispatchMsgOwner(Landroid/content/Intent;ILjava/lang/String;I)V
.end method

.method public abstract intercept(Ljava/lang/Object;I)V
.end method

.method public abstract isCurrentUserOwner()Z
.end method

.method public abstract isMsgDispatchOwner(Landroid/content/Intent;Ljava/lang/String;I)Z
.end method

.method public abstract isNetworkTypeMobile(I)Z
.end method

.method public abstract isOnlyOwnerSimSupport()Z
.end method
