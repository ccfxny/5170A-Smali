.class public abstract Landroid/test/ActivityUnitTestCase;
.super Landroid/test/ActivityTestCase;
.source "ActivityUnitTestCase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/ActivityUnitTestCase$1;,
        Landroid/test/ActivityUnitTestCase$MockParent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Activity;",
        ">",
        "Landroid/test/ActivityTestCase;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityUnitTestCase"


# instance fields
.field private mActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mActivityContext:Landroid/content/Context;

.field private mApplication:Landroid/app/Application;

.field private mAttached:Z

.field private mCreated:Z

.field private mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;


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
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    .local p1, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Landroid/test/ActivityTestCase;-><init>()V

    .line 86
    iput-boolean v0, p0, Landroid/test/ActivityUnitTestCase;->mAttached:Z

    .line 87
    iput-boolean v0, p0, Landroid/test/ActivityUnitTestCase;->mCreated:Z

    .line 90
    iput-object p1, p0, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    .line 91
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    invoke-super {p0}, Landroid/test/ActivityTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getFinishedActivityRequest()I
    .locals 1

    .prologue
    .line 256
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    iget v0, v0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinishedActivityRequest:I

    .line 259
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequestedOrientation()I
    .locals 1

    .prologue
    .line 205
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    iget v0, v0, Landroid/test/ActivityUnitTestCase$MockParent;->mRequestedOrientation:I

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStartedActivityIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 218
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    iget-object v0, v0, Landroid/test/ActivityUnitTestCase$MockParent;->mStartedActivityIntent:Landroid/content/Intent;

    .line 221
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStartedActivityRequest()I
    .locals 1

    .prologue
    .line 230
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    iget v0, v0, Landroid/test/ActivityUnitTestCase$MockParent;->mStartedActivityRequest:I

    .line 233
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinishCalled()Z
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    iget-boolean v0, v0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinished:Z

    .line 247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActivityContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "activityContext"    # Landroid/content/Context;

    .prologue
    .line 197
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    iput-object p1, p0, Landroid/test/ActivityUnitTestCase;->mActivityContext:Landroid/content/Context;

    .line 198
    return-void
.end method

.method public setApplication(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 188
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    iput-object p1, p0, Landroid/test/ActivityUnitTestCase;->mApplication:Landroid/app/Application;

    .line 189
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
    .line 100
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    invoke-super {p0}, Landroid/test/ActivityTestCase;->setUp()V

    .line 103
    invoke-virtual {p0}, Landroid/test/ActivityUnitTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/test/ActivityUnitTestCase;->mActivityContext:Landroid/content/Context;

    .line 104
    return-void
.end method

.method protected startActivity(Landroid/content/Intent;Landroid/os/Bundle;Ljava/lang/Object;)Landroid/app/Activity;
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "lastNonConfigurationInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/Bundle;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    const-string v1, "Activity already created"

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/test/ActivityUnitTestCase;->mCreated:Z

    invoke-static {v1, v2}, Landroid/test/ActivityUnitTestCase;->assertFalse(Ljava/lang/String;Z)V

    .line 130
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/test/ActivityUnitTestCase;->mAttached:Z

    if-nez v1, :cond_1

    .line 131
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    invoke-static {v1}, Landroid/test/ActivityUnitTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 132
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/test/ActivityUnitTestCase;->setActivity(Landroid/app/Activity;)V

    .line 133
    const/4 v14, 0x0

    .line 135
    .local v14, "newActivity":Landroid/app/Activity;, "TT;"
    const/4 v4, 0x0

    .line 136
    .local v4, "token":Landroid/os/IBinder;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/test/ActivityUnitTestCase;->mApplication:Landroid/app/Application;

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Landroid/test/mock/MockApplication;

    invoke-direct {v1}, Landroid/test/mock/MockApplication;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/test/ActivityUnitTestCase;->setApplication(Landroid/app/Application;)V

    .line 139
    :cond_0
    new-instance v12, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .local v12, "cn":Landroid/content/ComponentName;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 142
    new-instance v7, Landroid/content/pm/ActivityInfo;

    invoke-direct {v7}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 143
    .local v7, "info":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 144
    .local v8, "title":Ljava/lang/CharSequence;
    new-instance v1, Landroid/test/ActivityUnitTestCase$MockParent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/test/ActivityUnitTestCase$MockParent;-><init>(Landroid/test/ActivityUnitTestCase$1;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    .line 145
    const/4 v10, 0x0

    .line 147
    .local v10, "id":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/test/ActivityUnitTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/test/ActivityUnitTestCase;->mActivityContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/test/ActivityUnitTestCase;->mApplication:Landroid/app/Application;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    move-object/from16 v6, p1

    move-object/from16 v11, p3

    invoke-virtual/range {v1 .. v11}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 155
    .end local v7    # "info":Landroid/content/pm/ActivityInfo;
    .end local v8    # "title":Ljava/lang/CharSequence;
    .end local v10    # "id":Ljava/lang/String;
    .end local v12    # "cn":Landroid/content/ComponentName;
    :goto_0
    invoke-static {v14}, Landroid/test/ActivityUnitTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 156
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/test/ActivityUnitTestCase;->setActivity(Landroid/app/Activity;)V

    .line 158
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/test/ActivityUnitTestCase;->mAttached:Z

    .line 161
    .end local v4    # "token":Landroid/os/IBinder;
    .end local v14    # "newActivity":Landroid/app/Activity;, "TT;"
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/test/ActivityUnitTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v15

    .line 162
    .local v15, "result":Landroid/app/Activity;, "TT;"
    if-eqz v15, :cond_2

    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/test/ActivityUnitTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/test/ActivityUnitTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v1, v2, v0}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 164
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/test/ActivityUnitTestCase;->mCreated:Z

    .line 166
    :cond_2
    return-object v15

    .line 150
    .end local v15    # "result":Landroid/app/Activity;, "TT;"
    .restart local v4    # "token":Landroid/os/IBinder;
    .restart local v14    # "newActivity":Landroid/app/Activity;, "TT;"
    :catch_0
    move-exception v13

    .line 151
    .local v13, "e":Ljava/lang/Exception;
    const-string v1, "ActivityUnitTestCase"

    const-string v2, "Catching exception"

    invoke-static {v1, v2, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    invoke-static {v14}, Landroid/test/ActivityUnitTestCase;->assertNotNull(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected tearDown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/test/ActivityUnitTestCase;->setActivity(Landroid/app/Activity;)V

    .line 177
    const-class v0, Landroid/test/ActivityInstrumentationTestCase;

    invoke-virtual {p0, v0}, Landroid/test/ActivityUnitTestCase;->scrubClass(Ljava/lang/Class;)V

    .line 179
    invoke-super {p0}, Landroid/test/ActivityTestCase;->tearDown()V

    .line 180
    return-void
.end method
