.class public Lmeizu/wallpaper/NativeGaussBlur;
.super Ljava/lang/Object;
.source "NativeGaussBlur.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "native_blur"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method private native nativeGaussBlur(Landroid/graphics/Bitmap;IIF)V
.end method


# virtual methods
.method public blur(Landroid/graphics/Bitmap;F)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # F

    .prologue
    .line 11
    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p2}, Lmeizu/wallpaper/NativeGaussBlur;->nativeGaussBlur(Landroid/graphics/Bitmap;IIF)V

    .line 15
    :cond_0
    return-void
.end method
