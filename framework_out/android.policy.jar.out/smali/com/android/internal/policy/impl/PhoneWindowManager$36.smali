.class Lcom/android/internal/policy/impl/PhoneWindowManager$36;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 8081
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$36;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 8083
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 8084
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$36;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastCapturePerformanceTime:J
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3500(Lcom/android/internal/policy/impl/PhoneWindowManager;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 8085
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$36;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->capturePerformanceLog()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3600(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 8086
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$36;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastCapturePerformanceTime:J
    invoke-static {v2, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3502(Lcom/android/internal/policy/impl/PhoneWindowManager;J)J

    .line 8088
    :cond_0
    return-void
.end method
