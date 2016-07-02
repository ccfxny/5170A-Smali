.class Lcom/meizu/app/AccessApplication$10;
.super Ljava/lang/Object;
.source "AccessApplication.java"

# interfaces
.implements Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/app/AccessApplication;->createIdentifyCallback()Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/app/AccessApplication;


# direct methods
.method constructor <init>(Lcom/meizu/app/AccessApplication;)V
    .locals 0

    .prologue
    .line 786
    iput-object p1, p0, Lcom/meizu/app/AccessApplication$10;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIdentified(IZ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "updated"    # Z

    .prologue
    .line 790
    const-string v0, "AccessApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIdentified!, fingerId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$10;->this$0:Lcom/meizu/app/AccessApplication;

    # getter for: Lcom/meizu/app/AccessApplication;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->access$1200(Lcom/meizu/app/AccessApplication;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/app/AccessApplication$10;->this$0:Lcom/meizu/app/AccessApplication;

    # getter for: Lcom/meizu/app/AccessApplication;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/app/AccessApplication;->access$1200(Lcom/meizu/app/AccessApplication;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 793
    return-void
.end method

.method public onNoMatch()V
    .locals 5

    .prologue
    .line 797
    const-string v0, "AccessApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNoMatch! handler:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/app/AccessApplication$10;->this$0:Lcom/meizu/app/AccessApplication;

    # getter for: Lcom/meizu/app/AccessApplication;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/meizu/app/AccessApplication;->access$1200(Lcom/meizu/app/AccessApplication;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$10;->this$0:Lcom/meizu/app/AccessApplication;

    # getter for: Lcom/meizu/app/AccessApplication;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->access$1200(Lcom/meizu/app/AccessApplication;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/app/AccessApplication$10;->this$0:Lcom/meizu/app/AccessApplication;

    # getter for: Lcom/meizu/app/AccessApplication;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/app/AccessApplication;->access$1200(Lcom/meizu/app/AccessApplication;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 800
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$10;->this$0:Lcom/meizu/app/AccessApplication;

    # getter for: Lcom/meizu/app/AccessApplication;->mFM:Lcom/fingerprints/service/FingerprintManager;
    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->access$1300(Lcom/meizu/app/AccessApplication;)Lcom/fingerprints/service/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$10;->this$0:Lcom/meizu/app/AccessApplication;

    # getter for: Lcom/meizu/app/AccessApplication;->mFM:Lcom/fingerprints/service/FingerprintManager;
    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->access$1300(Lcom/meizu/app/AccessApplication;)Lcom/fingerprints/service/FingerprintManager;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/app/AccessApplication$10;->this$0:Lcom/meizu/app/AccessApplication;

    # getter for: Lcom/meizu/app/AccessApplication;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v1}, Lcom/meizu/app/AccessApplication;->access$1400(Lcom/meizu/app/AccessApplication;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/app/AccessApplication$10;->this$0:Lcom/meizu/app/AccessApplication;

    # getter for: Lcom/meizu/app/AccessApplication;->mFM:Lcom/fingerprints/service/FingerprintManager;
    invoke-static {v2}, Lcom/meizu/app/AccessApplication;->access$1300(Lcom/meizu/app/AccessApplication;)Lcom/fingerprints/service/FingerprintManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fingerprints/service/FingerprintManager;->getIds()[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fingerprints/service/FingerprintManager;->startIdentify(Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;[I)V

    .line 805
    :goto_0
    return-void

    .line 803
    :cond_0
    const-string v0, "AccessApplication"

    const-string v1, "mFM is null while calling IdentifyCallback.onNoMatch()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
