.class public abstract Landroid/test/ActivityInstrumentationTestCase2;
.super Landroid/test/ActivityTestCase;
.source "ActivityInstrumentationTestCase2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Activity;",
        ">",
        "Landroid/test/ActivityTestCase;"
    }
.end annotation


# instance fields
.field mActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field mActivityIntent:Landroid/content/Intent;

.field mInitialTouchMode:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Landroid/test/ActivityInstrumentationTestCase2;, "Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    .local p1, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Landroid/test/ActivityTestCase;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/test/ActivityInstrumentationTestCase2;->mInitialTouchMode:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityIntent:Landroid/content/Intent;

    .line 74
    iput-object p1, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityClass:Ljava/lang/Class;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Landroid/test/ActivityInstrumentationTestCase2;, "Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    .local p2, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p2}, Landroid/test/ActivityInstrumentationTestCase2;-><init>(Ljava/lang/Class;)V

    .line 65
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Landroid/test/ActivityInstrumentationTestCase2;, "Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    invoke-super {p0}, Landroid/test/ActivityTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 98
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase2;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    iget-boolean v3, p0, Landroid/test/ActivityInstrumentationTestCase2;->mInitialTouchMode:Z

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->setInTouchMode(Z)V

    .line 101
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase2;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "targetPackage":Ljava/lang/String;
    iget-object v2, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityIntent:Landroid/content/Intent;

    if-nez v2, :cond_1

    .line 104
    iget-object v2, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityClass:Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/test/ActivityInstrumentationTestCase2;->launchActivity(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/app/Activity;

    move-result-object v0

    .line 108
    :goto_0
    invoke-virtual {p0, v0}, Landroid/test/ActivityInstrumentationTestCase2;->setActivity(Landroid/app/Activity;)V

    .line 110
    .end local v1    # "targetPackage":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 106
    .restart local v1    # "targetPackage":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityClass:Ljava/lang/Class;

    iget-object v3, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2, v3}, Landroid/test/ActivityInstrumentationTestCase2;->launchActivityWithIntent(Ljava/lang/String;Ljava/lang/Class;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method protected runTest()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Landroid/test/ActivityInstrumentationTestCase2;, "Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase2;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 186
    .local v0, "method":Ljava/lang/reflect/Method;
    const-class v1, Landroid/test/UiThreadTest;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase2;->getActivity()Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/test/ActivityTestCase;->runTest()V

    .line 193
    return-void

    .line 189
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setActivityInitialTouchMode(Z)V
    .locals 0
    .param p1, "initialTouchMode"    # Z

    .prologue
    .line 149
    .local p0, "this":Landroid/test/ActivityInstrumentationTestCase2;, "Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    iput-boolean p1, p0, Landroid/test/ActivityInstrumentationTestCase2;->mInitialTouchMode:Z

    .line 150
    return-void
.end method

.method public setActivityIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 132
    .local p0, "this":Landroid/test/ActivityInstrumentationTestCase2;, "Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    iput-object p1, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityIntent:Landroid/content/Intent;

    .line 133
    return-void
.end method

.method protected setUp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Landroid/test/ActivityInstrumentationTestCase2;, "Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    invoke-super {p0}, Landroid/test/ActivityTestCase;->setUp()V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/test/ActivityInstrumentationTestCase2;->mInitialTouchMode:Z

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityIntent:Landroid/content/Intent;

    .line 158
    return-void
.end method

.method protected tearDown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Landroid/test/ActivityInstrumentationTestCase2;, "Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    invoke-super {p0}, Landroid/test/ActivityTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 164
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 166
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/test/ActivityInstrumentationTestCase2;->setActivity(Landroid/app/Activity;)V

    .line 172
    :cond_0
    const-class v1, Landroid/test/ActivityInstrumentationTestCase2;

    invoke-virtual {p0, v1}, Landroid/test/ActivityInstrumentationTestCase2;->scrubClass(Ljava/lang/Class;)V

    .line 174
    invoke-super {p0}, Landroid/test/ActivityTestCase;->tearDown()V

    .line 175
    return-void
.end method
