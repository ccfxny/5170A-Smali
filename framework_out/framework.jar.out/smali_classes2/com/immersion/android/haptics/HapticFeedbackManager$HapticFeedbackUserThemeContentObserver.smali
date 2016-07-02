.class public Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;
.super Landroid/database/ContentObserver;
.source "HapticFeedbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/android/haptics/HapticFeedbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HapticFeedbackUserThemeContentObserver"
.end annotation


# instance fields
.field protected mHfm:Lcom/immersion/android/haptics/HapticFeedbackManager;

.field final synthetic this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;


# direct methods
.method public constructor <init>(Lcom/immersion/android/haptics/HapticFeedbackManager;Lcom/immersion/android/haptics/HapticFeedbackManager;)V
    .locals 2
    .param p2, "owner"    # Lcom/immersion/android/haptics/HapticFeedbackManager;

    .prologue
    .line 737
    iput-object p1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    .line 738
    # getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mLooper:Landroid/os/Looper;
    invoke-static {p1}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$000(Lcom/immersion/android/haptics/HapticFeedbackManager;)Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    # getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mLooper:Landroid/os/Looper;
    invoke-static {p1}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$000(Lcom/immersion/android/haptics/HapticFeedbackManager;)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 734
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;->mHfm:Lcom/immersion/android/haptics/HapticFeedbackManager;

    .line 739
    iput-object p2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;->mHfm:Lcom/immersion/android/haptics/HapticFeedbackManager;

    .line 740
    return-void

    .line 738
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    .line 745
    :try_start_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 747
    const-string v2, "HapticFeedbackManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 748
    const-string v2, "HapticFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    # getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z
    invoke-static {v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$100(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. onChange() --> Active theme was changed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_0
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    # getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z
    invoke-static {v2}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$200(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 754
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;->mHfm:Lcom/immersion/android/haptics/HapticFeedbackManager;

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    # getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$300(Lcom/immersion/android/haptics/HapticFeedbackManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_theme"

    iget-object v5, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    # getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mCurrentUserID:I
    invoke-static {v5}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$400(Lcom/immersion/android/haptics/HapticFeedbackManager;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->loadActiveTheme(Ljava/lang/String;)V

    .line 757
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.HAPTIC_THEME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 758
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "user_id"

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    # getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mCurrentUserID:I
    invoke-static {v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$400(Lcom/immersion/android/haptics/HapticFeedbackManager;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 759
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    # getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$300(Lcom/immersion/android/haptics/HapticFeedbackManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 761
    :catch_0
    move-exception v0

    .line 762
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HapticFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    # getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z
    invoke-static {v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$100(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. Exception caught in onChange()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
