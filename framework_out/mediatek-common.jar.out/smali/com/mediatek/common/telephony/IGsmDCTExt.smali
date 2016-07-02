.class public interface abstract Lcom/mediatek/common/telephony/IGsmDCTExt;
.super Ljava/lang/Object;
.source "IGsmDCTExt.java"


# virtual methods
.method public abstract doSmRetry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract getDelayTime()I
.end method

.method public abstract getFDForceFlag(Z)Z
.end method

.method public abstract getIPv6Valid(Ljava/lang/Object;)J
.end method

.method public abstract getOptPreferredApn(Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
.end method

.method public abstract getPsAttachSimWhenRadioOn()I
.end method

.method public abstract isCctSmRetry()Z
.end method

.method public abstract isDataAllowedAsOff(Ljava/lang/String;)Z
.end method

.method public abstract isDomesticRoamingEnabled()Z
.end method

.method public abstract isFdnEnableSupport()Z
.end method

.method public abstract isPermanentFail(Ljava/lang/Object;)Z
.end method

.method public abstract isPsDetachWhenAllPdpDeactivated()Z
.end method

.method public abstract needDelayedRetry(I)Z
.end method

.method public abstract needRacUpdate()Z
.end method

.method public abstract needSmRetry(Ljava/lang/Object;)Z
.end method

.method public abstract onDcActivated([Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDcDeactivated([Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setSmRetryConfig(Ljava/lang/Object;)Z
.end method
