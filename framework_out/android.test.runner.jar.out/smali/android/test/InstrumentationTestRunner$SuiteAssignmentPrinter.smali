.class Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;
.super Ljava/lang/Object;
.source "InstrumentationTestRunner.java"

# interfaces
.implements Ljunit/framework/TestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/InstrumentationTestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuiteAssignmentPrinter"
.end annotation


# instance fields
.field private mEndTime:J

.field private mStartTime:J

.field private mTestResult:Landroid/os/Bundle;

.field private mTimingValid:Z

.field final synthetic this$0:Landroid/test/InstrumentationTestRunner;


# direct methods
.method public constructor <init>(Landroid/test/InstrumentationTestRunner;)V
    .locals 0

    .prologue
    .line 676
    iput-object p1, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    return-void
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 691
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTimingValid:Z

    .line 692
    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljunit/framework/AssertionFailedError;

    .prologue
    .line 698
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTimingValid:Z

    .line 699
    return-void
.end method

.method public endTest(Ljunit/framework/Test;)V
    .locals 6
    .param p1, "test"    # Ljunit/framework/Test;

    .prologue
    .line 707
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mEndTime:J

    .line 708
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTestResult:Landroid/os/Bundle;

    .line 710
    iget-boolean v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTimingValid:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 711
    :cond_0
    const-string v0, "NA"

    .line 712
    .local v0, "assignmentSuite":Ljava/lang/String;
    const/high16 v1, -0x40800000    # -1.0f

    .line 725
    .local v1, "runTime":F
    :goto_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mStartTime:J

    .line 727
    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v3, "stream"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    check-cast p1, Ljunit/framework/TestCase;

    .end local p1    # "test":Ljunit/framework/Test;
    invoke-virtual {p1}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " suite\nrunTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v3, "runtime"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 732
    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v3, "suiteassignment"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4}, Landroid/test/InstrumentationTestRunner;->sendStatus(ILandroid/os/Bundle;)V

    .line 735
    return-void

    .line 714
    .end local v0    # "assignmentSuite":Ljava/lang/String;
    .end local v1    # "runTime":F
    .restart local p1    # "test":Ljunit/framework/Test;
    :cond_1
    iget-wide v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mEndTime:J

    iget-wide v4, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    .line 715
    .restart local v1    # "runTime":F
    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    const-class v2, Landroid/test/InstrumentationTestCase;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 717
    const-string v0, "small"

    .restart local v0    # "assignmentSuite":Ljava/lang/String;
    goto :goto_0

    .line 718
    .end local v0    # "assignmentSuite":Ljava/lang/String;
    :cond_2
    const/high16 v2, 0x447a0000    # 1000.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_3

    .line 719
    const-string v0, "medium"

    .restart local v0    # "assignmentSuite":Ljava/lang/String;
    goto/16 :goto_0

    .line 721
    .end local v0    # "assignmentSuite":Ljava/lang/String;
    :cond_3
    const-string v0, "large"

    .restart local v0    # "assignmentSuite":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public startTest(Ljunit/framework/Test;)V
    .locals 2
    .param p1, "test"    # Ljunit/framework/Test;

    .prologue
    .line 683
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTimingValid:Z

    .line 684
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mStartTime:J

    .line 685
    return-void
.end method
