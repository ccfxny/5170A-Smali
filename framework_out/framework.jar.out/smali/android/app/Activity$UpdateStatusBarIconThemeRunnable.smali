.class Landroid/app/Activity$UpdateStatusBarIconThemeRunnable;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateStatusBarIconThemeRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 6710
    iput-object p1, p0, Landroid/app/Activity$UpdateStatusBarIconThemeRunnable;->this$0:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 6713
    const-string v0, "inject makeVisible: auto status bar icon theme"

    # invokes: Landroid/app/Activity;->STATUS_BAR_TINT_LOG(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/app/Activity;->access$400(Ljava/lang/String;)V

    .line 6714
    iget-object v0, p0, Landroid/app/Activity$UpdateStatusBarIconThemeRunnable;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->setupStatusBarIconTheme()V

    .line 6715
    return-void
.end method
