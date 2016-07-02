.class public Landroid/test/LaunchPerformanceBase;
.super Landroid/app/Instrumentation;
.source "LaunchPerformanceBase.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "Launch Performance"


# instance fields
.field protected mIntent:Landroid/content/Intent;

.field protected mResults:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/test/LaunchPerformanceBase;->mResults:Landroid/os/Bundle;

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/test/LaunchPerformanceBase;->mIntent:Landroid/content/Intent;

    .line 39
    iget-object v0, p0, Landroid/test/LaunchPerformanceBase;->mIntent:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0}, Landroid/test/LaunchPerformanceBase;->setAutomaticPerformanceSnapshots()V

    .line 41
    return-void
.end method


# virtual methods
.method protected LaunchApp()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Landroid/test/LaunchPerformanceBase;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/test/LaunchPerformanceBase;->startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;

    .line 50
    invoke-virtual {p0}, Landroid/test/LaunchPerformanceBase;->waitForIdleSync()V

    .line 51
    return-void
.end method
