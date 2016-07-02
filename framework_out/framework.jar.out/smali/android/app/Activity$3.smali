.class Landroid/app/Activity$3;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Activity;->scrollForCapture([Landroid/view/MotionEvent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;

.field final synthetic val$event:[Landroid/view/MotionEvent;

.field final synthetic val$length:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I[Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 6736
    iput-object p1, p0, Landroid/app/Activity$3;->this$0:Landroid/app/Activity;

    iput p2, p0, Landroid/app/Activity$3;->val$length:I

    iput-object p3, p0, Landroid/app/Activity$3;->val$event:[Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 6739
    iget-object v2, p0, Landroid/app/Activity$3;->this$0:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 6740
    .local v0, "decorView":Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/app/Activity$3;->val$length:I

    if-ge v1, v2, :cond_0

    .line 6741
    const-string v2, "Activity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity$3;->val$event:[Landroid/view/MotionEvent;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6742
    iget-object v2, p0, Landroid/app/Activity$3;->val$event:[Landroid/view/MotionEvent;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6740
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6744
    :cond_0
    return-void
.end method
