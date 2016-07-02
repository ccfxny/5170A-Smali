.class public Lcom/android/uiautomator/core/Tracer;
.super Ljava/lang/Object;
.source "Tracer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/uiautomator/core/Tracer$1;,
        Lcom/android/uiautomator/core/Tracer$LogcatSink;,
        Lcom/android/uiautomator/core/Tracer$FileSink;,
        Lcom/android/uiautomator/core/Tracer$TracerSink;,
        Lcom/android/uiautomator/core/Tracer$Mode;
    }
.end annotation


# static fields
.field private static final CALLER_LOCATION:I = 0x6

.field private static final METHOD_TO_TRACE_LOCATION:I = 0x5

.field private static final MIN_STACK_TRACE_LENGTH:I = 0x7

.field private static final UIAUTOMATOR_PACKAGE:Ljava/lang/String; = "com.android.uiautomator.core"

.field private static final UNKNOWN_METHOD_STRING:Ljava/lang/String; = "(unknown method)"

.field private static mInstance:Lcom/android/uiautomator/core/Tracer;


# instance fields
.field private mCurrentMode:Lcom/android/uiautomator/core/Tracer$Mode;

.field private mOutputFile:Ljava/io/File;

.field private mSinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/uiautomator/core/Tracer$TracerSink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    sput-object v0, Lcom/android/uiautomator/core/Tracer;->mInstance:Lcom/android/uiautomator/core/Tracer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    sget-object v0, Lcom/android/uiautomator/core/Tracer$Mode;->NONE:Lcom/android/uiautomator/core/Tracer$Mode;

    iput-object v0, p0, Lcom/android/uiautomator/core/Tracer;->mCurrentMode:Lcom/android/uiautomator/core/Tracer$Mode;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/uiautomator/core/Tracer;->mSinks:Ljava/util/List;

    return-void
.end method

.method private closeSinks()V
    .locals 3

    .prologue
    .line 150
    iget-object v2, p0, Lcom/android/uiautomator/core/Tracer;->mSinks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/uiautomator/core/Tracer$TracerSink;

    .line 151
    .local v1, "sink":Lcom/android/uiautomator/core/Tracer$TracerSink;
    invoke-interface {v1}, Lcom/android/uiautomator/core/Tracer$TracerSink;->close()V

    goto :goto_0

    .line 153
    .end local v1    # "sink":Lcom/android/uiautomator/core/Tracer$TracerSink;
    :cond_0
    iget-object v2, p0, Lcom/android/uiautomator/core/Tracer;->mSinks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 154
    return-void
.end method

.method private doTrace([Ljava/lang/Object;)V
    .locals 5
    .param p1, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/uiautomator/core/Tracer;->mCurrentMode:Lcom/android/uiautomator/core/Tracer$Mode;

    sget-object v2, Lcom/android/uiautomator/core/Tracer$Mode;->NONE:Lcom/android/uiautomator/core/Tracer$Mode;

    if-ne v1, v2, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-static {}, Lcom/android/uiautomator/core/Tracer;->getCaller()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 176
    const-string v1, "%s (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    const-string v4, ", "

    invoke-static {v4, p1}, Lcom/android/uiautomator/core/Tracer;->join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/uiautomator/core/Tracer;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getCaller()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v7, 0x5

    .line 259
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 260
    .local v4, "stackTrace":[Ljava/lang/StackTraceElement;
    array-length v5, v4

    const/4 v6, 0x7

    if-ge v5, v6, :cond_0

    .line 261
    const-string v5, "(unknown method)"

    .line 281
    :goto_0
    return-object v5

    .line 264
    :cond_0
    aget-object v0, v4, v7

    .line 265
    .local v0, "caller":Ljava/lang/StackTraceElement;
    const/4 v5, 0x6

    aget-object v2, v4, v5

    .line 267
    .local v2, "previousCaller":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.uiautomator.core"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 268
    const/4 v5, 0x0

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 272
    .local v1, "indexOfDot":I
    if-gez v1, :cond_2

    .line 273
    const/4 v1, 0x0

    .line 276
    :cond_2
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v5, v6, :cond_3

    .line 277
    const-string v5, "(unknown method)"

    goto :goto_0

    .line 280
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, "shortClassName":Ljava/lang/String;
    const-string v5, "%s.%s from %s() at %s:%d"

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/uiautomator/core/Tracer;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/android/uiautomator/core/Tracer;->mInstance:Lcom/android/uiautomator/core/Tracer;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/android/uiautomator/core/Tracer;

    invoke-direct {v0}, Lcom/android/uiautomator/core/Tracer;-><init>()V

    sput-object v0, Lcom/android/uiautomator/core/Tracer;->mInstance:Lcom/android/uiautomator/core/Tracer;

    .line 109
    :cond_0
    sget-object v0, Lcom/android/uiautomator/core/Tracer;->mInstance:Lcom/android/uiautomator/core/Tracer;

    return-object v0
.end method

.method private static join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "strings"    # [Ljava/lang/Object;

    .prologue
    .line 214
    array-length v2, p1

    if-nez v2, :cond_0

    .line 215
    const-string v2, ""

    .line 222
    :goto_0
    return-object v2

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 219
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 222
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v2, p0, Lcom/android/uiautomator/core/Tracer;->mSinks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/uiautomator/core/Tracer$TracerSink;

    .line 181
    .local v1, "sink":Lcom/android/uiautomator/core/Tracer$TracerSink;
    invoke-interface {v1, p1}, Lcom/android/uiautomator/core/Tracer$TracerSink;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    .end local v1    # "sink":Lcom/android/uiautomator/core/Tracer$TracerSink;
    :cond_0
    return-void
.end method

.method private static objectToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 240
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .restart local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 242
    :cond_0
    const-string v0, "[...]"

    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs trace([Ljava/lang/Object;)V
    .locals 1
    .param p0, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 210
    invoke-static {}, Lcom/android/uiautomator/core/Tracer;->getInstance()Lcom/android/uiautomator/core/Tracer;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/android/uiautomator/core/Tracer;->doTrace([Ljava/lang/Object;)V

    .line 211
    return-void
.end method


# virtual methods
.method public isTracingEnabled()Z
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/uiautomator/core/Tracer;->mCurrentMode:Lcom/android/uiautomator/core/Tracer$Mode;

    sget-object v1, Lcom/android/uiautomator/core/Tracer$Mode;->NONE:Lcom/android/uiautomator/core/Tracer$Mode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOutputFilename(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 163
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/uiautomator/core/Tracer;->mOutputFile:Ljava/io/File;

    .line 164
    return-void
.end method

.method public setOutputMode(Lcom/android/uiautomator/core/Tracer$Mode;)V
    .locals 4
    .param p1, "mode"    # Lcom/android/uiautomator/core/Tracer$Mode;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/uiautomator/core/Tracer;->closeSinks()V

    .line 120
    iput-object p1, p0, Lcom/android/uiautomator/core/Tracer;->mCurrentMode:Lcom/android/uiautomator/core/Tracer$Mode;

    .line 122
    :try_start_0
    sget-object v1, Lcom/android/uiautomator/core/Tracer$1;->$SwitchMap$com$android$uiautomator$core$Tracer$Mode:[I

    invoke-virtual {p1}, Lcom/android/uiautomator/core/Tracer$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 147
    :goto_0
    return-void

    .line 124
    :pswitch_0
    iget-object v1, p0, Lcom/android/uiautomator/core/Tracer;->mOutputFile:Ljava/io/File;

    if-nez v1, :cond_0

    .line 125
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Please provide a filename before attempting write trace to a file"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "Tracer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not open log file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/uiautomator/core/Tracer;->mSinks:Ljava/util/List;

    new-instance v2, Lcom/android/uiautomator/core/Tracer$FileSink;

    iget-object v3, p0, Lcom/android/uiautomator/core/Tracer;->mOutputFile:Ljava/io/File;

    invoke-direct {v2, p0, v3}, Lcom/android/uiautomator/core/Tracer$FileSink;-><init>(Lcom/android/uiautomator/core/Tracer;Ljava/io/File;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v1, p0, Lcom/android/uiautomator/core/Tracer;->mSinks:Ljava/util/List;

    new-instance v2, Lcom/android/uiautomator/core/Tracer$LogcatSink;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/uiautomator/core/Tracer$LogcatSink;-><init>(Lcom/android/uiautomator/core/Tracer;Lcom/android/uiautomator/core/Tracer$1;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v1, p0, Lcom/android/uiautomator/core/Tracer;->mSinks:Ljava/util/List;

    new-instance v2, Lcom/android/uiautomator/core/Tracer$LogcatSink;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/uiautomator/core/Tracer$LogcatSink;-><init>(Lcom/android/uiautomator/core/Tracer;Lcom/android/uiautomator/core/Tracer$1;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v1, p0, Lcom/android/uiautomator/core/Tracer;->mOutputFile:Ljava/io/File;

    if-nez v1, :cond_1

    .line 136
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Please provide a filename before attempting write trace to a file"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/android/uiautomator/core/Tracer;->mSinks:Ljava/util/List;

    new-instance v2, Lcom/android/uiautomator/core/Tracer$FileSink;

    iget-object v3, p0, Lcom/android/uiautomator/core/Tracer;->mOutputFile:Ljava/io/File;

    invoke-direct {v2, p0, v3}, Lcom/android/uiautomator/core/Tracer$FileSink;-><init>(Lcom/android/uiautomator/core/Tracer;Ljava/io/File;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
