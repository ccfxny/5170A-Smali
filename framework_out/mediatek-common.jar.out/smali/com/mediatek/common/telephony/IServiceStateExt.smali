.class public interface abstract Lcom/mediatek/common/telephony/IServiceStateExt;
.super Ljava/lang/Object;
.source "IServiceStateExt.java"


# virtual methods
.method public abstract allowSpnDisplayed()Z
.end method

.method public abstract ignoreDomesticRoaming()Z
.end method

.method public abstract isBroadcastEmmrrsPsResume(I)Z
.end method

.method public abstract isImeiLocked()Z
.end method

.method public abstract isSupportRatBalancing()Z
.end method

.method public abstract loadSpnOverrides()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract mapGsmSignalDbm(II)I
.end method

.method public abstract mapGsmSignalLevel(II)I
.end method

.method public abstract mapLteSignalLevel(III)I
.end method

.method public abstract needAutoSwitchRatMode(ILjava/lang/String;)I
.end method

.method public abstract needBrodcastAcmt(II)Z
.end method

.method public abstract needEMMRRS()Z
.end method

.method public abstract needIccCardTypeNotification(Ljava/lang/String;)Z
.end method

.method public abstract needIgnoredState(III)Z
.end method

.method public abstract needRejectCauseNotification(I)Z
.end method

.method public abstract needSpnRuleShowPlmnOnly()Z
.end method

.method public abstract onUpdateSpnDisplay(Ljava/lang/String;Landroid/telephony/ServiceState;I)Ljava/lang/String;
.end method

.method public abstract supportEccForEachSIM()Z
.end method

.method public abstract updateOplmn(Landroid/content/Context;Ljava/lang/Object;)V
.end method
