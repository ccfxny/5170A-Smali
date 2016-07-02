.class public final Lcom/android/okhttp/internal/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private committed:Z

.field private final entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/android/okhttp/internal/DiskLruCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Entry;)V
    .locals 1
    .param p2, "entry"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .prologue
    .line 723
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 724
    iput-object p2, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 725
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {p2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$600(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->written:[Z

    .line 726
    return-void

    .line 725
    :cond_0
    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->access$1800(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/okhttp/internal/DiskLruCache;
    .param p2, "x1"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .param p3, "x2"    # Lcom/android/okhttp/internal/DiskLruCache$1;

    .prologue
    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/DiskLruCache$Editor;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/okhttp/internal/DiskLruCache$Editor;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->written:[Z

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .param p1, "x1"    # Z

    .prologue
    .line 717
    iput-boolean p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    const/4 v1, 0x0

    # invokes: Lcom/android/okhttp/internal/DiskLruCache;->completeEdit(Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/android/okhttp/internal/DiskLruCache;->access$2200(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V

    .line 817
    return-void
.end method

.method public abortUnlessCommitted()V
    .locals 1

    .prologue
    .line 820
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->committed:Z

    if-nez v0, :cond_0

    .line 822
    :try_start_0
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 823
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 802
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    const/4 v1, 0x0

    # invokes: Lcom/android/okhttp/internal/DiskLruCache;->completeEdit(Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/android/okhttp/internal/DiskLruCache;->access$2200(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V

    .line 804
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1100(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 808
    :goto_0
    iput-boolean v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->committed:Z

    .line 809
    return-void

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # invokes: Lcom/android/okhttp/internal/DiskLruCache;->completeEdit(Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v2}, Lcom/android/okhttp/internal/DiskLruCache;->access$2200(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 753
    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 754
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    # invokes: Lcom/android/okhttp/internal/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache;->access$1700(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 733
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    monitor-enter v3

    .line 734
    :try_start_0
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$700(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 735
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 745
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 737
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$600(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 738
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 743
    :goto_0
    return-object v1

    .line 741
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    invoke-virtual {v4, p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    .line 742
    :catch_0
    move-exception v0

    .line 743
    .local v0, "e":Ljava/io/FileNotFoundException;
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 765
    iget-object v5, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    monitor-enter v5

    .line 766
    :try_start_0
    iget-object v4, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v4}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$700(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v4

    if-eq v4, p0, :cond_0

    .line 767
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 787
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 769
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {v4}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$600(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 770
    iget-object v4, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->written:[Z

    const/4 v6, 0x1

    aput-boolean v6, v4, p1

    .line 772
    :cond_1
    iget-object v4, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    invoke-virtual {v4, p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 775
    .local v0, "dirtyFile":Ljava/io/File;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 786
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_3
    new-instance v4, Lcom/android/okhttp/internal/DiskLruCache$Editor$FaultHidingOutputStream;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v3, v6}, Lcom/android/okhttp/internal/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/android/okhttp/internal/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/android/okhttp/internal/DiskLruCache$1;)V

    monitor-exit v5

    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :goto_1
    return-object v4

    .line 776
    :catch_0
    move-exception v1

    .line 778
    .local v1, "e":Ljava/io/FileNotFoundException;
    iget-object v4, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {v4}, Lcom/android/okhttp/internal/DiskLruCache;->access$1900(Lcom/android/okhttp/internal/DiskLruCache;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 780
    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 781
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 783
    .local v2, "e2":Ljava/io/FileNotFoundException;
    :try_start_5
    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;
    invoke-static {}, Lcom/android/okhttp/internal/DiskLruCache;->access$2000()Ljava/io/OutputStream;

    move-result-object v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public set(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 792
    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/android/okio/Sink;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okio/Okio;->buffer(Lcom/android/okio/Sink;)Lcom/android/okio/BufferedSink;

    move-result-object v0

    .line 793
    .local v0, "writer":Lcom/android/okio/BufferedSink;
    invoke-interface {v0, p2}, Lcom/android/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okio/BufferedSink;

    .line 794
    invoke-interface {v0}, Lcom/android/okio/BufferedSink;->close()V

    .line 795
    return-void
.end method
