.class public Llibcore/io/DeleteOnExit;
.super Ljava/lang/Thread;
.source "DeleteOnExit.java"


# static fields
.field private static instance:Llibcore/io/DeleteOnExit;


# instance fields
.field private final files:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llibcore/io/DeleteOnExit;->files:Ljava/util/ArrayList;

    .line 60
    return-void
.end method

.method public static declared-synchronized getInstance()Llibcore/io/DeleteOnExit;
    .locals 3

    .prologue
    .line 45
    const-class v1, Llibcore/io/DeleteOnExit;

    monitor-enter v1

    :try_start_0
    sget-object v0, Llibcore/io/DeleteOnExit;->instance:Llibcore/io/DeleteOnExit;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Llibcore/io/DeleteOnExit;

    invoke-direct {v0}, Llibcore/io/DeleteOnExit;-><init>()V

    sput-object v0, Llibcore/io/DeleteOnExit;->instance:Llibcore/io/DeleteOnExit;

    .line 47
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    sget-object v2, Llibcore/io/DeleteOnExit;->instance:Llibcore/io/DeleteOnExit;

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 50
    :cond_0
    sget-object v0, Llibcore/io/DeleteOnExit;->instance:Llibcore/io/DeleteOnExit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v1, p0, Llibcore/io/DeleteOnExit;->files:Ljava/util/ArrayList;

    monitor-enter v1

    .line 69
    :try_start_0
    iget-object v0, p0, Llibcore/io/DeleteOnExit;->files:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Llibcore/io/DeleteOnExit;->files:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    monitor-exit v1

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 83
    iget-object v2, p0, Llibcore/io/DeleteOnExit;->files:Ljava/util/ArrayList;

    monitor-enter v2

    .line 84
    :try_start_0
    iget-object v1, p0, Llibcore/io/DeleteOnExit;->files:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 85
    iget-object v1, p0, Llibcore/io/DeleteOnExit;->files:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 86
    new-instance v3, Ljava/io/File;

    iget-object v1, p0, Llibcore/io/DeleteOnExit;->files:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 85
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 88
    :cond_0
    monitor-exit v2

    .line 89
    return-void

    .line 88
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
