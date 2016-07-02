.class public Lcom/meizu/util/InternalResUtils;
.super Ljava/lang/Object;
.source "InternalResUtils.java"


# static fields
.field public static final RES_TYPE_ARRAY:I = 0x8

.field public static final RES_TYPE_ATTR:I = 0x4

.field public static final RES_TYPE_BOOL:I = 0x7

.field public static final RES_TYPE_COLOR:I = 0xa

.field public static final RES_TYPE_DIMEN:I = 0x1

.field public static final RES_TYPE_DRAWABLE:I = 0xb

.field public static final RES_TYPE_ID:I = 0x0

.field public static final RES_TYPE_INTEGER:I = 0x9

.field public static final RES_TYPE_LAYOUT:I = 0x5

.field public static final RES_TYPE_STRING:I = 0x2

.field public static final RES_TYPE_STYLE:I = 0x6

.field public static final RES_TYPE_STYLEABLE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInternalResId(ILjava/lang/String;)I
    .locals 5
    .param p0, "type"    # I
    .param p1, "idName"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v0, -0x1

    .line 32
    .local v0, "id":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v0

    .line 79
    .end local v0    # "id":I
    .local v1, "id":I
    :goto_0
    return v1

    .line 35
    .end local v1    # "id":I
    .restart local v0    # "id":I
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 36
    .local v2, "res":Landroid/content/res/Resources;
    if-nez v2, :cond_2

    move v1, v0

    .line 37
    .end local v0    # "id":I
    .restart local v1    # "id":I
    goto :goto_0

    .line 39
    .end local v1    # "id":I
    .restart local v0    # "id":I
    :cond_2
    packed-switch p0, :pswitch_data_0

    :goto_1
    move v1, v0

    .line 79
    .end local v0    # "id":I
    .restart local v1    # "id":I
    goto :goto_0

    .line 41
    .end local v1    # "id":I
    .restart local v0    # "id":I
    :pswitch_0
    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 42
    goto :goto_1

    .line 44
    :pswitch_1
    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 45
    goto :goto_1

    .line 47
    :pswitch_2
    const-string v3, "string"

    const-string v4, "android"

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 48
    goto :goto_1

    .line 50
    :pswitch_3
    const-string v3, "styleable"

    const-string v4, "android"

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 51
    goto :goto_1

    .line 53
    :pswitch_4
    const-string v3, "attr"

    const-string v4, "android"

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 54
    goto :goto_1

    .line 56
    :pswitch_5
    const-string v3, "layout"

    const-string v4, "android"

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 57
    goto :goto_1

    .line 59
    :pswitch_6
    const-string v3, "style"

    const-string v4, "android"

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 60
    goto :goto_1

    .line 62
    :pswitch_7
    const-string v3, "bool"

    const-string v4, "android"

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 63
    goto :goto_1

    .line 65
    :pswitch_8
    const-string v3, "array"

    const-string v4, "android"

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 66
    goto :goto_1

    .line 68
    :pswitch_9
    const-string v3, "integer"

    const-string v4, "android"

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 69
    goto :goto_1

    .line 71
    :pswitch_a
    const-string v3, "color"

    const-string v4, "android"

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 72
    goto :goto_1

    .line 74
    :pswitch_b
    const-string v3, "drawable"

    const-string v4, "android"

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 75
    goto :goto_1

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
