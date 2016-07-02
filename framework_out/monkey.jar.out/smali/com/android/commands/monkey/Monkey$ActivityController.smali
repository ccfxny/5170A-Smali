.class Lcom/android/commands/monkey/Monkey$ActivityController;
.super Landroid/app/IActivityController$Stub;
.source "Monkey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/Monkey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/commands/monkey/Monkey;


# direct methods
.method private constructor <init>(Lcom/android/commands/monkey/Monkey;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-direct {p0}, Landroid/app/IActivityController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/Monkey;Lcom/android/commands/monkey/Monkey$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/commands/monkey/Monkey;
    .param p2, "x1"    # Lcom/android/commands/monkey/Monkey$1;

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/android/commands/monkey/Monkey$ActivityController;-><init>(Lcom/android/commands/monkey/Monkey;)V

    return-void
.end method


# virtual methods
.method public activityResuming(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 302
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 303
    .local v1, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    // activityResuming("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    # invokes: Lcom/android/commands/monkey/Monkey;->checkEnteringPackage(Ljava/lang/String;)Z
    invoke-static {v2, p1}, Lcom/android/commands/monkey/Monkey;->access$000(Lcom/android/commands/monkey/Monkey;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 305
    .local v0, "allow":Z
    :goto_0
    if-nez v0, :cond_0

    .line 306
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    # getter for: Lcom/android/commands/monkey/Monkey;->mVerbose:I
    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->access$100(Lcom/android/commands/monkey/Monkey;)I

    move-result v2

    if-lez v2, :cond_0

    .line 307
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    // "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_2

    const-string v2, "Allowing"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " resume of package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 311
    :cond_0
    sput-object p1, Lcom/android/commands/monkey/Monkey;->currentPackage:Ljava/lang/String;

    .line 312
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 313
    return v0

    .line 304
    .end local v0    # "allow":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 307
    .restart local v0    # "allow":Z
    :cond_2
    const-string v2, "Rejecting"

    goto :goto_1
.end method

.method public activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 283
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    # invokes: Lcom/android/commands/monkey/Monkey;->checkEnteringPackage(Ljava/lang/String;)Z
    invoke-static {v2, p2}, Lcom/android/commands/monkey/Monkey;->access$000(Lcom/android/commands/monkey/Monkey;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 284
    .local v0, "allow":Z
    :goto_0
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    # getter for: Lcom/android/commands/monkey/Monkey;->mVerbose:I
    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->access$100(Lcom/android/commands/monkey/Monkey;)I

    move-result v2

    if-lez v2, :cond_0

    .line 291
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 292
    .local v1, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    // "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_2

    const-string v2, "Allowing"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " start of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " in package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 294
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 296
    .end local v1    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_0
    sput-object p2, Lcom/android/commands/monkey/Monkey;->currentPackage:Ljava/lang/String;

    .line 297
    sput-object p1, Lcom/android/commands/monkey/Monkey;->currentIntent:Landroid/content/Intent;

    .line 298
    return v0

    .line 283
    .end local v0    # "allow":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 292
    .restart local v0    # "allow":Z
    .restart local v1    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_2
    const-string v2, "Rejecting"

    goto :goto_1
.end method

.method public appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 8
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "timeMillis"    # J
    .param p7, "stackTrace"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 319
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 320
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "// CRASH: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 321
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "// Short Msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 322
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "// Long Msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 323
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "// Build Label: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 324
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "// Build Changelist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 325
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "// Build Time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v6, Landroid/os/Build;->TIME:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 326
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "// "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    const-string v6, "\n// "

    invoke-virtual {p7, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 327
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 329
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    # getter for: Lcom/android/commands/monkey/Monkey;->mIgnoreCrashes:Z
    invoke-static {v3}, Lcom/android/commands/monkey/Monkey;->access$200(Lcom/android/commands/monkey/Monkey;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    # getter for: Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z
    invoke-static {v3}, Lcom/android/commands/monkey/Monkey;->access$300(Lcom/android/commands/monkey/Monkey;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 330
    :cond_0
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    monitor-enter v3

    .line 331
    :try_start_0
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    # getter for: Lcom/android/commands/monkey/Monkey;->mIgnoreCrashes:Z
    invoke-static {v4}, Lcom/android/commands/monkey/Monkey;->access$200(Lcom/android/commands/monkey/Monkey;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 332
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    const/4 v5, 0x1

    # setter for: Lcom/android/commands/monkey/Monkey;->mAbort:Z
    invoke-static {v4, v5}, Lcom/android/commands/monkey/Monkey;->access$402(Lcom/android/commands/monkey/Monkey;Z)Z

    .line 334
    :cond_1
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    # getter for: Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z
    invoke-static {v4}, Lcom/android/commands/monkey/Monkey;->access$300(Lcom/android/commands/monkey/Monkey;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 335
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    const/4 v5, 0x1

    # setter for: Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z
    invoke-static {v4, v5}, Lcom/android/commands/monkey/Monkey;->access$502(Lcom/android/commands/monkey/Monkey;Z)Z

    .line 336
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    # setter for: Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;
    invoke-static {v4, p1}, Lcom/android/commands/monkey/Monkey;->access$602(Lcom/android/commands/monkey/Monkey;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    # getter for: Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z
    invoke-static {v3}, Lcom/android/commands/monkey/Monkey;->access$700(Lcom/android/commands/monkey/Monkey;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_0
    move v2, v1

    .line 341
    :cond_3
    return v2

    .line 338
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_4
    move v1, v2

    .line 339
    goto :goto_0
.end method

.method public appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "annotation"    # Ljava/lang/String;

    .prologue
    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public appNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "processStats"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 349
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 350
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "// NOT RESPONDING: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 351
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 352
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 354
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    monitor-enter v2

    .line 355
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    const/4 v4, 0x1

    # setter for: Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z
    invoke-static {v3, v4}, Lcom/android/commands/monkey/Monkey;->access$802(Lcom/android/commands/monkey/Monkey;Z)Z

    .line 356
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    const/4 v4, 0x1

    # setter for: Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z
    invoke-static {v3, v4}, Lcom/android/commands/monkey/Monkey;->access$902(Lcom/android/commands/monkey/Monkey;Z)Z

    .line 357
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    const/4 v4, 0x1

    # setter for: Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z
    invoke-static {v3, v4}, Lcom/android/commands/monkey/Monkey;->access$1002(Lcom/android/commands/monkey/Monkey;Z)Z

    .line 358
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    # getter for: Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z
    invoke-static {v3}, Lcom/android/commands/monkey/Monkey;->access$300(Lcom/android/commands/monkey/Monkey;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 359
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    const/4 v4, 0x1

    # setter for: Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z
    invoke-static {v3, v4}, Lcom/android/commands/monkey/Monkey;->access$1102(Lcom/android/commands/monkey/Monkey;Z)Z

    .line 360
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    # setter for: Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/android/commands/monkey/Monkey;->access$602(Lcom/android/commands/monkey/Monkey;Ljava/lang/String;)Ljava/lang/String;

    .line 362
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    # getter for: Lcom/android/commands/monkey/Monkey;->mIgnoreTimeouts:Z
    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->access$1200(Lcom/android/commands/monkey/Monkey;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 364
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    monitor-enter v2

    .line 365
    :try_start_1
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    const/4 v4, 0x1

    # setter for: Lcom/android/commands/monkey/Monkey;->mAbort:Z
    invoke-static {v3, v4}, Lcom/android/commands/monkey/Monkey;->access$402(Lcom/android/commands/monkey/Monkey;Z)Z

    .line 366
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 368
    :cond_1
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    # getter for: Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z
    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->access$700(Lcom/android/commands/monkey/Monkey;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, -0x1

    :cond_2
    return v1

    .line 362
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 366
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public systemNotResponding(Ljava/lang/String;)I
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 372
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 373
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "// WATCHDOG: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 376
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    monitor-enter v2

    .line 377
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    # getter for: Lcom/android/commands/monkey/Monkey;->mIgnoreCrashes:Z
    invoke-static {v3}, Lcom/android/commands/monkey/Monkey;->access$200(Lcom/android/commands/monkey/Monkey;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 378
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    const/4 v4, 0x1

    # setter for: Lcom/android/commands/monkey/Monkey;->mAbort:Z
    invoke-static {v3, v4}, Lcom/android/commands/monkey/Monkey;->access$402(Lcom/android/commands/monkey/Monkey;Z)Z

    .line 380
    :cond_0
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    # getter for: Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z
    invoke-static {v3}, Lcom/android/commands/monkey/Monkey;->access$300(Lcom/android/commands/monkey/Monkey;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 381
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    const/4 v4, 0x1

    # setter for: Lcom/android/commands/monkey/Monkey;->mRequestWatchdogBugreport:Z
    invoke-static {v3, v4}, Lcom/android/commands/monkey/Monkey;->access$1302(Lcom/android/commands/monkey/Monkey;Z)Z

    .line 383
    :cond_1
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    const/4 v4, 0x1

    # setter for: Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z
    invoke-static {v3, v4}, Lcom/android/commands/monkey/Monkey;->access$1402(Lcom/android/commands/monkey/Monkey;Z)Z

    .line 384
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    monitor-enter v2

    .line 386
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    # getter for: Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z
    invoke-static {v3}, Lcom/android/commands/monkey/Monkey;->access$1400(Lcom/android/commands/monkey/Monkey;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-eqz v3, :cond_2

    .line 388
    :try_start_2
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 389
    :catch_0
    move-exception v3

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 392
    :cond_2
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 393
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    # getter for: Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z
    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->access$700(Lcom/android/commands/monkey/Monkey;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, -0x1

    :cond_3
    return v1

    .line 392
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method
