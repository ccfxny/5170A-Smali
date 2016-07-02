.class public Landroid/test/suitebuilder/TestSuiteBuilder$FailedToCreateTests;
.super Ljunit/framework/TestCase;
.source "TestSuiteBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/suitebuilder/TestSuiteBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FailedToCreateTests"
.end annotation


# instance fields
.field private final exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 231
    const-string v0, "testSuiteConstructionFailed"

    invoke-direct {p0, v0}, Ljunit/framework/TestCase;-><init>(Ljava/lang/String;)V

    .line 232
    iput-object p1, p0, Landroid/test/suitebuilder/TestSuiteBuilder$FailedToCreateTests;->exception:Ljava/lang/Exception;

    .line 233
    return-void
.end method


# virtual methods
.method public testSuiteConstructionFailed()V
    .locals 3

    .prologue
    .line 236
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exception during suite construction"

    iget-object v2, p0, Landroid/test/suitebuilder/TestSuiteBuilder$FailedToCreateTests;->exception:Ljava/lang/Exception;

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
