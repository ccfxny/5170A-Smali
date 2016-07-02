.class Landroid/view/WindowManager$LayoutParams$Injector;
.super Ljava/lang/Object;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManager$LayoutParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static copyFrom(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;I)I
    .locals 2
    .param p0, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "o"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "changes"    # I

    .prologue
    .line 2135
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    if-eq v0, v1, :cond_0

    .line 2136
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 2137
    const/high16 v0, 0x800000

    or-int/2addr p2, v0

    .line 2140
    :cond_0
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    if-eq v0, v1, :cond_1

    .line 2141
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    .line 2142
    const/high16 v0, 0x1000000

    or-int/2addr p2, v0

    .line 2145
    :cond_1
    return p2
.end method

.method static readFromParcel(Landroid/view/WindowManager$LayoutParams;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 2123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    .line 2125
    return-void
.end method

.method static toString(Landroid/view/WindowManager$LayoutParams;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p0, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2149
    const-string v0, " meizuFlags=0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2150
    return-void
.end method

.method static writeToParcel(Landroid/view/WindowManager$LayoutParams;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 2128
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2130
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2132
    return-void
.end method
