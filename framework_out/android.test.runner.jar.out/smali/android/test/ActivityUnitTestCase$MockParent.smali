.class Landroid/test/ActivityUnitTestCase$MockParent;
.super Landroid/app/Activity;
.source "ActivityUnitTestCase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/ActivityUnitTestCase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MockParent"
.end annotation


# instance fields
.field public mFinished:Z

.field public mFinishedActivityRequest:I

.field public mRequestedOrientation:I

.field public mStartedActivityIntent:Landroid/content/Intent;

.field public mStartedActivityRequest:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 275
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 277
    iput v2, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mRequestedOrientation:I

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mStartedActivityIntent:Landroid/content/Intent;

    .line 279
    iput v1, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mStartedActivityRequest:I

    .line 280
    iput-boolean v2, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinished:Z

    .line 281
    iput v1, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinishedActivityRequest:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/test/ActivityUnitTestCase$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/test/ActivityUnitTestCase$1;

    .prologue
    .line 275
    invoke-direct {p0}, Landroid/test/ActivityUnitTestCase$MockParent;-><init>()V

    return-void
.end method


# virtual methods
.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .prologue
    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinished:Z

    .line 341
    iput p2, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinishedActivityRequest:I

    .line 342
    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 1
    .param p1, "child"    # Landroid/app/Activity;

    .prologue
    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinished:Z

    .line 330
    return-void
.end method

.method public getRequestedOrientation()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mRequestedOrientation:I

    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    return-object v0
.end method

.method public setRequestedOrientation(I)V
    .locals 0
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 288
    iput p1, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mRequestedOrientation:I

    .line 289
    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 316
    iput-object p2, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mStartedActivityIntent:Landroid/content/Intent;

    .line 317
    iput p3, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mStartedActivityRequest:I

    .line 318
    return-void
.end method
