.class Lcom/meizu/widget/SystemLockView$1;
.super Ljava/lang/Object;
.source "SystemLockView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/SystemLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private editEnd:I

.field private temp:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/meizu/widget/SystemLockView;


# direct methods
.method constructor <init>(Lcom/meizu/widget/SystemLockView;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/meizu/widget/SystemLockView$1;->this$0:Lcom/meizu/widget/SystemLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 454
    iget-object v4, p0, Lcom/meizu/widget/SystemLockView$1;->this$0:Lcom/meizu/widget/SystemLockView;

    # getter for: Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/meizu/widget/SystemLockView;->access$800(Lcom/meizu/widget/SystemLockView;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v4

    iput v4, p0, Lcom/meizu/widget/SystemLockView$1;->editEnd:I

    .line 455
    iget-object v4, p0, Lcom/meizu/widget/SystemLockView$1;->temp:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 456
    .local v2, "len":I
    iget-object v4, p0, Lcom/meizu/widget/SystemLockView$1;->temp:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 459
    .local v3, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/widget/SystemLockView$1;->this$0:Lcom/meizu/widget/SystemLockView;

    # setter for: Lcom/meizu/widget/SystemLockView;->illegal:Z
    invoke-static {v4, v5}, Lcom/meizu/widget/SystemLockView;->access$902(Lcom/meizu/widget/SystemLockView;Z)Z

    .line 460
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 461
    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 462
    .local v0, "c":C
    const/16 v4, 0x20

    if-lt v0, v4, :cond_0

    const/16 v4, 0x7f

    if-le v0, v4, :cond_6

    .line 463
    :cond_0
    iget-object v4, p0, Lcom/meizu/widget/SystemLockView$1;->this$0:Lcom/meizu/widget/SystemLockView;

    # setter for: Lcom/meizu/widget/SystemLockView;->illegal:Z
    invoke-static {v4, v6}, Lcom/meizu/widget/SystemLockView;->access$902(Lcom/meizu/widget/SystemLockView;Z)Z

    .line 468
    .end local v0    # "c":C
    :cond_1
    iget-object v4, p0, Lcom/meizu/widget/SystemLockView$1;->this$0:Lcom/meizu/widget/SystemLockView;

    # setter for: Lcom/meizu/widget/SystemLockView;->haschar:Z
    invoke-static {v4, v5}, Lcom/meizu/widget/SystemLockView;->access$1002(Lcom/meizu/widget/SystemLockView;Z)Z

    .line 469
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/meizu/widget/SystemLockView$1;->temp:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 470
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 471
    .local v0, "c":I
    const/16 v4, 0x41

    if-lt v0, v4, :cond_2

    const/16 v4, 0x5a

    if-le v0, v4, :cond_3

    :cond_2
    const/16 v4, 0x61

    if-lt v0, v4, :cond_7

    const/16 v4, 0x7a

    if-gt v0, v4, :cond_7

    .line 472
    :cond_3
    iget-object v4, p0, Lcom/meizu/widget/SystemLockView$1;->this$0:Lcom/meizu/widget/SystemLockView;

    # setter for: Lcom/meizu/widget/SystemLockView;->haschar:Z
    invoke-static {v4, v6}, Lcom/meizu/widget/SystemLockView;->access$1002(Lcom/meizu/widget/SystemLockView;Z)Z

    .line 476
    .end local v0    # "c":I
    :cond_4
    iget-object v4, p0, Lcom/meizu/widget/SystemLockView$1;->temp:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget-object v5, p0, Lcom/meizu/widget/SystemLockView$1;->this$0:Lcom/meizu/widget/SystemLockView;

    # getter for: Lcom/meizu/widget/SystemLockView;->mMaxCellLength:I
    invoke-static {v5}, Lcom/meizu/widget/SystemLockView;->access$500(Lcom/meizu/widget/SystemLockView;)I

    move-result v5

    if-le v4, v5, :cond_5

    .line 477
    iget v4, p0, Lcom/meizu/widget/SystemLockView$1;->editEnd:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/meizu/widget/SystemLockView$1;->editEnd:I

    invoke-interface {p1, v4, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 478
    :cond_5
    iget-object v4, p0, Lcom/meizu/widget/SystemLockView$1;->this$0:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/meizu/widget/SystemLockView;->addPassword(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/meizu/widget/SystemLockView;->access$1100(Lcom/meizu/widget/SystemLockView;Ljava/lang/String;)V

    .line 479
    return-void

    .line 460
    .local v0, "c":C
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 469
    .local v0, "c":I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 449
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 443
    iput-object p1, p0, Lcom/meizu/widget/SystemLockView$1;->temp:Ljava/lang/CharSequence;

    .line 444
    return-void
.end method
