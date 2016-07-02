.class Lcom/meizu/widget/OptionPopupWindow$OptionMenu;
.super Ljava/lang/Object;
.source "OptionPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/OptionPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionMenu"
.end annotation


# instance fields
.field public clip:Landroid/graphics/Rect;

.field public contentOffset:I

.field public isNext:Z

.field public isPrev:Z

.field public mPageNum:I

.field public menuItem:Landroid/view/MenuItem;

.field final synthetic this$0:Lcom/meizu/widget/OptionPopupWindow;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/meizu/widget/OptionPopupWindow;Landroid/graphics/Rect;Landroid/view/MenuItem;I)V
    .locals 1
    .param p2, "clip"    # Landroid/graphics/Rect;
    .param p3, "menuItem"    # Landroid/view/MenuItem;
    .param p4, "width"    # I

    .prologue
    const/4 v0, 0x0

    .line 1041
    iput-object p1, p0, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1036
    iput-boolean v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->isPrev:Z

    .line 1037
    iput-boolean v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->isNext:Z

    .line 1038
    iput v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->mPageNum:I

    .line 1042
    iput-object p2, p0, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->clip:Landroid/graphics/Rect;

    .line 1043
    iput-object p3, p0, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->menuItem:Landroid/view/MenuItem;

    .line 1044
    iput p4, p0, Lcom/meizu/widget/OptionPopupWindow$OptionMenu;->width:I

    .line 1045
    return-void
.end method
