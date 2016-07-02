.class Lcom/android/commands/pm/Pm$LocalIntentReceiver$1;
.super Landroid/content/IIntentSender$Stub;
.source "Pm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/pm/Pm$LocalIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/commands/pm/Pm$LocalIntentReceiver;


# direct methods
.method constructor <init>(Lcom/android/commands/pm/Pm$LocalIntentReceiver;)V
    .locals 0

    .prologue
    .line 1732
    iput-object p1, p0, Lcom/android/commands/pm/Pm$LocalIntentReceiver$1;->this$0:Lcom/android/commands/pm/Pm$LocalIntentReceiver;

    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;)I
    .locals 5
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p5, "requiredPermission"    # Ljava/lang/String;

    .prologue
    .line 1737
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/pm/Pm$LocalIntentReceiver$1;->this$0:Lcom/android/commands/pm/Pm$LocalIntentReceiver;

    # getter for: Lcom/android/commands/pm/Pm$LocalIntentReceiver;->mResult:Ljava/util/concurrent/SynchronousQueue;
    invoke-static {v1}, Lcom/android/commands/pm/Pm$LocalIntentReceiver;->access$100(Lcom/android/commands/pm/Pm$LocalIntentReceiver;)Ljava/util/concurrent/SynchronousQueue;

    move-result-object v1

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p2, v2, v3, v4}, Ljava/util/concurrent/SynchronousQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1741
    const/4 v1, 0x0

    return v1

    .line 1738
    :catch_0
    move-exception v0

    .line 1739
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
