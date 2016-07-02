.class Lcom/android/internal/policy/impl/PhoneWindowManager$29;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field final synthetic val$always:Z

.field final synthetic val$msg:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/CharSequence;Z)V
    .locals 0

    .prologue
    .line 6813
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->val$msg:Ljava/lang/CharSequence;

    iput-boolean p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->val$always:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6816
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->val$msg:Ljava/lang/CharSequence;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->val$always:Z

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->showFlymeBootMessage(Ljava/lang/CharSequence;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3300(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/CharSequence;Z)V

    .line 6817
    return-void
.end method
