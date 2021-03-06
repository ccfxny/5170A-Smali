.class public abstract Landroid/database/AbstractWindowedCursor;
.super Landroid/database/AbstractCursor;
.source "AbstractWindowedCursor.java"


# static fields
.field private static final DEBUG_CLOSE_TRACE:Z

.field private static final DEBUG_IS_ENG_BUILD:Z


# instance fields
.field protected mWindow:Landroid/database/CursorWindow;

.field private mWindowCloseTrace:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-string v0, "DBStaleDataTrace"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/database/AbstractWindowedCursor;->DEBUG_CLOSE_TRACE:Z

    .line 54
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/database/AbstractWindowedCursor;->DEBUG_IS_ENG_BUILD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkPosition()V
    .locals 3

    .prologue
    .line 151
    invoke-super {p0}, Landroid/database/AbstractCursor;->checkPosition()V

    .line 153
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-nez v0, :cond_2

    .line 155
    sget-boolean v0, Landroid/database/AbstractWindowedCursor;->DEBUG_IS_ENG_BUILD:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/database/AbstractWindowedCursor;->DEBUG_CLOSE_TRACE:Z

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    const-string v0, "CursorOrCursorWindowClosed"

    const-string v1, "CursorWindow close stack trace"

    iget-object v2, p0, Landroid/database/AbstractWindowedCursor;->mWindowCloseTrace:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    :cond_1
    new-instance v0, Landroid/database/StaleDataException;

    const-string v1, "Attempting to access a closed CursorWindow.Most probable cause: cursor is deactivated prior to calling this method."

    invoke-direct {v0, v1}, Landroid/database/StaleDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_2
    return-void
.end method

.method protected clearOrCreateWindow(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 224
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Landroid/database/CursorWindow;

    invoke-direct {v0, p1}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->clear()V

    goto :goto_0
.end method

.method protected closeWindow()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    .line 209
    sget-boolean v0, Landroid/database/AbstractWindowedCursor;->DEBUG_IS_ENG_BUILD:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/database/AbstractWindowedCursor;->DEBUG_CLOSE_TRACE:Z

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    const-string/jumbo v1, "stacktrace"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindowCloseTrace:Ljava/lang/Throwable;

    .line 214
    :cond_1
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 2
    .param p1, "columnIndex"    # I
    .param p2, "buffer"    # Landroid/database/CharArrayBuffer;

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 72
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/CursorWindow;->copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V

    .line 73
    return-void
.end method

.method public getBlob(I)[B
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 60
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getBlob(II)[B

    move-result-object v0

    return-object v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 102
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getDouble(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 96
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getFloat(II)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 84
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getInt(II)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 90
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 78
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getShort(II)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 66
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 146
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    return v0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    return-object v0
.end method

.method public hasWindow()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBlob(I)Z
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->getType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFloat(I)Z
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->getType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLong(I)Z
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 132
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->getType(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->checkPosition()V

    .line 108
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/database/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isString(I)Z
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Landroid/database/AbstractWindowedCursor;->getType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDeactivateOrClose()V
    .locals 0

    .prologue
    .line 234
    invoke-super {p0}, Landroid/database/AbstractCursor;->onDeactivateOrClose()V

    .line 235
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->closeWindow()V

    .line 236
    return-void
.end method

.method public setWindow(Landroid/database/CursorWindow;)V
    .locals 1
    .param p1, "window"    # Landroid/database/CursorWindow;

    .prologue
    .line 184
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-eq p1, v0, :cond_0

    .line 185
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->closeWindow()V

    .line 186
    iput-object p1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    .line 188
    :cond_0
    return-void
.end method
