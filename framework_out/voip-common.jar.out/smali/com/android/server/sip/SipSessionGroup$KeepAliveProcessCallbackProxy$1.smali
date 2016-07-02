.class Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->onResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

.field final synthetic val$portChanged:Z


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;Z)V
    .locals 0

    .prologue
    .line 1833
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;->this$0:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

    iput-boolean p2, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;->val$portChanged:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1837
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;->this$0:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

    # getter for: Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->mCallback:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->access$3200(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;)Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;->val$portChanged:Z

    invoke-interface {v1, v2}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;->onResponse(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1841
    :goto_0
    return-void

    .line 1838
    :catch_0
    move-exception v0

    .line 1839
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;->this$0:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

    const-string v2, "onResponse"

    # invokes: Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->access$3300(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
