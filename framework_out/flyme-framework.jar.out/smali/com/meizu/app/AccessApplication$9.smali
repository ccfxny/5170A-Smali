.class Lcom/meizu/app/AccessApplication$9;
.super Ljava/lang/Object;
.source "AccessApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/app/AccessApplication;->delayFinishIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/app/AccessApplication;


# direct methods
.method constructor <init>(Lcom/meizu/app/AccessApplication;)V
    .locals 0

    .prologue
    .line 728
    iput-object p1, p0, Lcom/meizu/app/AccessApplication$9;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$9;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-virtual {v0}, Lcom/meizu/app/AccessApplication;->finish()V

    .line 733
    return-void
.end method
