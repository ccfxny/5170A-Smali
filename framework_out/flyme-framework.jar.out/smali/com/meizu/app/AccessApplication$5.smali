.class Lcom/meizu/app/AccessApplication$5;
.super Ljava/lang/Object;
.source "AccessApplication.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/app/AccessApplication;->createCancelClickListener()Landroid/view/View$OnClickListener;
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
    .line 346
    iput-object p1, p0, Lcom/meizu/app/AccessApplication$5;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$5;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-virtual {v0}, Lcom/meizu/app/AccessApplication;->onBackPressed()V

    .line 351
    return-void
.end method
