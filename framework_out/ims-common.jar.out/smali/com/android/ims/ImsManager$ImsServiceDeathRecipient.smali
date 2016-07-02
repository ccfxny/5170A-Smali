.class Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;
.super Ljava/lang/Object;
.source "ImsManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsServiceDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/ImsManager;


# direct methods
.method private constructor <init>(Lcom/android/ims/ImsManager;)V
    .locals 0

    .prologue
    .line 953
    iput-object p1, p0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;->this$0:Lcom/android/ims/ImsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/ims/ImsManager;
    .param p2, "x1"    # Lcom/android/ims/ImsManager$1;

    .prologue
    .line 953
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;-><init>(Lcom/android/ims/ImsManager;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 956
    iget-object v1, p0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;->this$0:Lcom/android/ims/ImsManager;

    # setter for: Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;
    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->access$102(Lcom/android/ims/ImsManager;Lcom/android/ims/internal/IImsService;)Lcom/android/ims/internal/IImsService;

    .line 957
    iget-object v1, p0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;->this$0:Lcom/android/ims/ImsManager;

    # setter for: Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;
    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->access$202(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsUt;)Lcom/android/ims/ImsUt;

    .line 958
    iget-object v1, p0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;->this$0:Lcom/android/ims/ImsManager;

    # setter for: Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;
    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->access$302(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsConfig;)Lcom/android/ims/ImsConfig;

    .line 959
    iget-object v1, p0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;->this$0:Lcom/android/ims/ImsManager;

    # setter for: Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;
    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->access$402(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsEcbm;)Lcom/android/ims/ImsEcbm;

    .line 961
    iget-object v1, p0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;->this$0:Lcom/android/ims/ImsManager;

    # getter for: Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/ims/ImsManager;->access$500(Lcom/android/ims/ImsManager;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 962
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 963
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android:phone_id"

    iget-object v2, p0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;->this$0:Lcom/android/ims/ImsManager;

    # getter for: Lcom/android/ims/ImsManager;->mPhoneId:I
    invoke-static {v2}, Lcom/android/ims/ImsManager;->access$600(Lcom/android/ims/ImsManager;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 964
    iget-object v1, p0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;->this$0:Lcom/android/ims/ImsManager;

    # getter for: Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/ims/ImsManager;->access$500(Lcom/android/ims/ImsManager;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 966
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
