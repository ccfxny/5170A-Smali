.class Landroid/view/inputmethod/InputMethodManager$Injector;
.super Ljava/lang/Object;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjustEditorInfo(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 4
    .param p0, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    .line 2527
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getCurEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 2530
    .local v1, "tba":Landroid/view/inputmethod/EditorInfo;
    iget v2, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 2531
    iget v2, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x2000000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 2534
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getPrivateImeOptionsMap()Ljava/util/Map;

    move-result-object v0

    .line 2535
    .local v0, "privateImeOptionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, v1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/view/inputmethod/EditorInfo;->splitPrivateImeOptions(Ljava/lang/String;Ljava/util/Map;)Z

    .line 2536
    const-string v2, "com.meizu.input.theme"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2543
    :cond_1
    :goto_0
    return-void

    .line 2538
    :cond_2
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getMzInputTheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2540
    const-string v2, "com.meizu.input.theme"

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getMzInputTheme()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2541
    invoke-static {v0}, Landroid/view/inputmethod/EditorInfo;->makePrivateImeOptions(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    goto :goto_0
.end method

.method static mzCanCheckFocus(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)Z
    .locals 4
    .param p0, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2547
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    .line 2548
    .local v0, "next":Landroid/view/View;
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2550
    :cond_0
    const/4 v1, 0x1

    .line 2553
    :goto_0
    return v1

    .line 2552
    :cond_1
    const-string v1, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "yangrui@SDK unexcept view check focus. view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    const/4 v1, 0x0

    goto :goto_0
.end method
