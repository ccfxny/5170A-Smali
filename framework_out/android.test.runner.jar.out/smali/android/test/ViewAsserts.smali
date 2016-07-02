.class public Landroid/test/ViewAsserts;
.super Ljava/lang/Object;
.source "ViewAsserts.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertBaselineAligned(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .param p0, "first"    # Landroid/view/View;
    .param p1, "second"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 117
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 118
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 119
    aget v3, v2, v5

    invoke-virtual {p0}, Landroid/view/View;->getBaseline()I

    move-result v4

    add-int v0, v3, v4

    .line 121
    .local v0, "firstTop":I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 122
    aget v3, v2, v5

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v4

    add-int v1, v3, v4

    .line 124
    .local v1, "secondTop":I
    const-string v3, "views are not baseline aligned"

    invoke-static {v3, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 125
    return-void
.end method

.method public static assertBottomAligned(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .param p0, "first"    # Landroid/view/View;
    .param p1, "second"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 209
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 210
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 211
    aget v3, v2, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int v0, v3, v4

    .line 213
    .local v0, "firstBottom":I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 214
    aget v3, v2, v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int v1, v3, v4

    .line 216
    .local v1, "secondBottom":I
    const-string v3, "views are not bottom aligned"

    invoke-static {v3, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 217
    return-void
.end method

.method public static assertBottomAligned(Landroid/view/View;Landroid/view/View;I)V
    .locals 6
    .param p0, "first"    # Landroid/view/View;
    .param p1, "second"    # Landroid/view/View;
    .param p2, "margin"    # I

    .prologue
    const/4 v5, 0x1

    .line 228
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 229
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 230
    aget v3, v2, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int v0, v3, v4

    .line 232
    .local v0, "firstBottom":I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 233
    aget v3, v2, v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int v1, v3, v4

    .line 235
    .local v1, "secondBottom":I
    const-string v3, "views are not bottom aligned"

    sub-int v4, v0, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v3, v4, p2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 236
    return-void
.end method

.method public static assertGroupContains(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 6
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 340
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 341
    .local v0, "count":I
    const-string v5, "Child count should be >= 0"

    if-ltz v0, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v5, v3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 343
    const/4 v1, 0x0

    .line 344
    .local v1, "found":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 345
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 346
    if-nez v1, :cond_2

    .line 347
    const/4 v1, 0x1

    .line 344
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "found":Z
    .end local v2    # "i":I
    :cond_1
    move v3, v4

    .line 341
    goto :goto_0

    .line 349
    .restart local v1    # "found":Z
    .restart local v2    # "i":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "child "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is duplicated in parent"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_2

    .line 354
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "group does not contain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 355
    return-void
.end method

.method public static assertGroupIntegrity(Landroid/view/ViewGroup;)V
    .locals 4
    .param p0, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 324
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 325
    .local v0, "count":I
    const-string v3, "child count should be >= 0"

    if-ltz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 327
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 328
    const-string v2, "group should not contain null children"

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-static {p0, v2}, Ljunit/framework/Assert;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 325
    .end local v1    # "i":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 331
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public static assertGroupNotContains(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 5
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 364
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 365
    .local v0, "count":I
    const-string v4, "Child count should be >= 0"

    if-ltz v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v4, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 367
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 368
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "child "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is found in parent"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 367
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_1
    move v2, v3

    .line 365
    goto :goto_0

    .line 372
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method public static assertHasScreenCoordinates(Landroid/view/View;Landroid/view/View;II)V
    .locals 6
    .param p0, "origin"    # Landroid/view/View;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 99
    new-array v0, v2, [I

    .line 100
    .local v0, "xy":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 102
    new-array v1, v2, [I

    .line 103
    .local v1, "xyRoot":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 105
    const-string v2, "x coordinate"

    aget v3, v0, v4

    aget v4, v1, v4

    sub-int/2addr v3, v4

    invoke-static {v2, p2, v3}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 106
    const-string v2, "y coordinate"

    aget v3, v0, v5

    aget v4, v1, v5

    sub-int/2addr v3, v4

    invoke-static {v2, p3, v3}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 107
    return-void
.end method

.method public static assertHorizontalCenterAligned(Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .param p0, "reference"    # Landroid/view/View;
    .param p1, "test"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 283
    const/4 v5, 0x2

    new-array v4, v5, [I

    .line 284
    .local v4, "xy":[I
    invoke-virtual {p0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 285
    aget v2, v4, v6

    .line 287
    .local v2, "referenceLeft":I
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 288
    aget v3, v4, v6

    .line 290
    .local v3, "testLeft":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v0, v5, 0x2

    .line 291
    .local v0, "center":I
    sub-int v1, v3, v2

    .line 293
    .local v1, "delta":I
    const-string v5, "views are not horizontally center aligned"

    invoke-static {v5, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 294
    return-void
.end method

.method public static assertLeftAligned(Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p0, "first"    # Landroid/view/View;
    .param p1, "second"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 172
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 173
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 174
    aget v0, v2, v4

    .line 176
    .local v0, "firstLeft":I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 177
    aget v1, v2, v4

    .line 179
    .local v1, "secondLeft":I
    const-string v3, "views are not left aligned"

    invoke-static {v3, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 180
    return-void
.end method

.method public static assertLeftAligned(Landroid/view/View;Landroid/view/View;I)V
    .locals 5
    .param p0, "first"    # Landroid/view/View;
    .param p1, "second"    # Landroid/view/View;
    .param p2, "margin"    # I

    .prologue
    const/4 v4, 0x0

    .line 191
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 192
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 193
    aget v0, v2, v4

    .line 195
    .local v0, "firstLeft":I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 196
    aget v1, v2, v4

    .line 198
    .local v1, "secondLeft":I
    const-string v3, "views are not left aligned"

    sub-int v4, v0, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v3, v4, p2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 199
    return-void
.end method

.method public static assertOffScreenAbove(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .param p0, "origin"    # Landroid/view/View;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 79
    new-array v0, v4, [I

    .line 80
    .local v0, "xy":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 82
    new-array v1, v4, [I

    .line 83
    .local v1, "xyRoot":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 85
    aget v4, v0, v3

    aget v5, v1, v3

    sub-int v2, v4, v5

    .line 87
    .local v2, "y":I
    const-string v4, "view should have y location less than that of origin view"

    if-gez v2, :cond_0

    :goto_0
    invoke-static {v4, v3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 89
    return-void

    .line 87
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static assertOffScreenBelow(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .param p0, "origin"    # Landroid/view/View;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 59
    new-array v0, v4, [I

    .line 60
    .local v0, "xy":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 62
    new-array v1, v4, [I

    .line 63
    .local v1, "xyRoot":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 65
    aget v4, v0, v3

    aget v5, v1, v3

    sub-int v2, v4, v5

    .line 67
    .local v2, "y":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "view should have y location on screen greater than drawing height of origen view ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not greater than "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    if-le v2, v5, :cond_0

    :goto_0
    invoke-static {v4, v3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 71
    return-void

    .line 67
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static assertOnScreen(Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .param p0, "origin"    # Landroid/view/View;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 37
    new-array v0, v3, [I

    .line 38
    .local v0, "xy":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 40
    new-array v1, v3, [I

    .line 41
    .local v1, "xyRoot":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 43
    aget v3, v0, v4

    aget v6, v1, v4

    sub-int v2, v3, v6

    .line 45
    .local v2, "y":I
    const-string v6, "view should have positive y coordinate on screen"

    if-ltz v2, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v6, v3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 48
    const-string v3, "view should have y location on screen less than drawing height of root view"

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-gt v2, v6, :cond_1

    :goto_1
    invoke-static {v3, v4}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 51
    return-void

    :cond_0
    move v3, v5

    .line 45
    goto :goto_0

    :cond_1
    move v4, v5

    .line 48
    goto :goto_1
.end method

.method public static assertRightAligned(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .param p0, "first"    # Landroid/view/View;
    .param p1, "second"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 135
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 136
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 137
    aget v3, v2, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int v0, v3, v4

    .line 139
    .local v0, "firstRight":I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 140
    aget v3, v2, v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int v1, v3, v4

    .line 142
    .local v1, "secondRight":I
    const-string v3, "views are not right aligned"

    invoke-static {v3, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 143
    return-void
.end method

.method public static assertRightAligned(Landroid/view/View;Landroid/view/View;I)V
    .locals 6
    .param p0, "first"    # Landroid/view/View;
    .param p1, "second"    # Landroid/view/View;
    .param p2, "margin"    # I

    .prologue
    const/4 v5, 0x0

    .line 154
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 155
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 156
    aget v3, v2, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int v0, v3, v4

    .line 158
    .local v0, "firstRight":I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 159
    aget v3, v2, v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int v1, v3, v4

    .line 161
    .local v1, "secondRight":I
    const-string v3, "views are not right aligned"

    sub-int v4, v0, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v3, v4, p2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 162
    return-void
.end method

.method public static assertTopAligned(Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p0, "first"    # Landroid/view/View;
    .param p1, "second"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 246
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 247
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 248
    aget v0, v2, v4

    .line 250
    .local v0, "firstTop":I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 251
    aget v1, v2, v4

    .line 253
    .local v1, "secondTop":I
    const-string v3, "views are not top aligned"

    invoke-static {v3, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 254
    return-void
.end method

.method public static assertTopAligned(Landroid/view/View;Landroid/view/View;I)V
    .locals 5
    .param p0, "first"    # Landroid/view/View;
    .param p1, "second"    # Landroid/view/View;
    .param p2, "margin"    # I

    .prologue
    const/4 v4, 0x1

    .line 265
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 266
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 267
    aget v0, v2, v4

    .line 269
    .local v0, "firstTop":I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 270
    aget v1, v2, v4

    .line 272
    .local v1, "secondTop":I
    const-string v3, "views are not top aligned"

    sub-int v4, v0, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v3, v4, p2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 273
    return-void
.end method

.method public static assertVerticalCenterAligned(Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .param p0, "reference"    # Landroid/view/View;
    .param p1, "test"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 304
    const/4 v5, 0x2

    new-array v4, v5, [I

    .line 305
    .local v4, "xy":[I
    invoke-virtual {p0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 306
    aget v2, v4, v6

    .line 308
    .local v2, "referenceTop":I
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 309
    aget v3, v4, v6

    .line 311
    .local v3, "testTop":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v0, v5, 0x2

    .line 312
    .local v0, "center":I
    sub-int v1, v3, v2

    .line 314
    .local v1, "delta":I
    const-string v5, "views are not vertically center aligned"

    invoke-static {v5, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 315
    return-void
.end method
