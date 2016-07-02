.class public abstract Landroid/test/ApplicationTestCase;
.super Landroid/test/AndroidTestCase;
.source "ApplicationTestCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Application;",
        ">",
        "Landroid/test/AndroidTestCase;"
    }
.end annotation


# instance fields
.field private mApplication:Landroid/app/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mApplicationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mAttached:Z

.field private mCreated:Z

.field private mSystemContext:Landroid/content/Context;


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
    .local p0, "this":Landroid/test/ApplicationTestCase;, "Landroid/test/ApplicationTestCase<TT;>;"
    .local p1, "applicationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    .line 70
    iput-boolean v0, p0, Landroid/test/ApplicationTestCase;->mAttached:Z

    .line 71
    iput-boolean v0, p0, Landroid/test/ApplicationTestCase;->mCreated:Z

    .line 66
    iput-object p1, p0, Landroid/test/ApplicationTestCase;->mApplicationClass:Ljava/lang/Class;

    .line 67
    return-void
.end method

.method private setupApplication()V
    .locals 3

    .prologue
    .line 96
    .local p0, "this":Landroid/test/ApplicationTestCase;, "Landroid/test/ApplicationTestCase<TT;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    .line 98
    :try_start_0
    iget-object v1, p0, Landroid/test/ApplicationTestCase;->mApplicationClass:Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/test/ApplicationTestCase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v1

    iput-object v1, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/test/ApplicationTestCase;->mAttached:Z

    .line 103
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    invoke-static {v1}, Landroid/test/ApplicationTestCase;->assertNotNull(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected final createApplication()V
    .locals 1

    .prologue
    .line 113
    .local p0, "this":Landroid/test/ApplicationTestCase;, "Landroid/test/ApplicationTestCase<TT;>;"
    iget-boolean v0, p0, Landroid/test/ApplicationTestCase;->mCreated:Z

    invoke-static {v0}, Landroid/test/ApplicationTestCase;->assertFalse(Z)V

    .line 115
    iget-boolean v0, p0, Landroid/test/ApplicationTestCase;->mAttached:Z

    if-nez v0, :cond_0

    .line 116
    invoke-direct {p0}, Landroid/test/ApplicationTestCase;->setupApplication()V

    .line 118
    :cond_0
    iget-object v0, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Landroid/test/ApplicationTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/test/ApplicationTestCase;->mCreated:Z

    .line 122
    return-void
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Landroid/test/ApplicationTestCase;, "Landroid/test/ApplicationTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getSystemContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 163
    .local p0, "this":Landroid/test/ApplicationTestCase;, "Landroid/test/ApplicationTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ApplicationTestCase;->mSystemContext:Landroid/content/Context;

    return-object v0
.end method

.method protected setUp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Landroid/test/ApplicationTestCase;, "Landroid/test/ApplicationTestCase<TT;>;"
    invoke-super {p0}, Landroid/test/AndroidTestCase;->setUp()V

    .line 89
    invoke-virtual {p0}, Landroid/test/ApplicationTestCase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/test/ApplicationTestCase;->mSystemContext:Landroid/content/Context;

    .line 90
    return-void
.end method

.method protected tearDown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Landroid/test/ApplicationTestCase;, "Landroid/test/ApplicationTestCase<TT;>;"
    invoke-virtual {p0}, Landroid/test/ApplicationTestCase;->terminateApplication()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    .line 151
    const-class v0, Landroid/test/ApplicationTestCase;

    invoke-virtual {p0, v0}, Landroid/test/ApplicationTestCase;->scrubClass(Ljava/lang/Class;)V

    .line 153
    invoke-super {p0}, Landroid/test/AndroidTestCase;->tearDown()V

    .line 154
    return-void
.end method

.method protected final terminateApplication()V
    .locals 1

    .prologue
    .line 130
    .local p0, "this":Landroid/test/ApplicationTestCase;, "Landroid/test/ApplicationTestCase<TT;>;"
    iget-boolean v0, p0, Landroid/test/ApplicationTestCase;->mCreated:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onTerminate()V

    .line 133
    :cond_0
    return-void
.end method

.method public final testApplicationTestCaseSetUpProperly()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Landroid/test/ApplicationTestCase;, "Landroid/test/ApplicationTestCase<TT;>;"
    invoke-direct {p0}, Landroid/test/ApplicationTestCase;->setupApplication()V

    .line 173
    const-string v0, "Application class could not be instantiated successfully"

    iget-object v1, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    invoke-static {v0, v1}, Landroid/test/ApplicationTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    return-void
.end method
