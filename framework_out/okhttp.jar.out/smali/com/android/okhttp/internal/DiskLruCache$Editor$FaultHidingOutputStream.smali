.class Lcom/android/okhttp/internal/DiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/okhttp/internal/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/internal/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 829
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .line 830
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 831
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/internal/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/android/okhttp/internal/DiskLruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .param p2, "x1"    # Ljava/io/OutputStream;
    .param p3, "x2"    # Lcom/android/okhttp/internal/DiskLruCache$1;

    .prologue
    .line 828
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/android/okhttp/internal/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 851
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    :goto_0
    return-void

    .line 852
    :catch_0
    move-exception v0

    .line 853
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    const/4 v2, 0x1

    # setter for: Lcom/android/okhttp/internal/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->access$2302(Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 859
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    :goto_0
    return-void

    .line 860
    :catch_0
    move-exception v0

    .line 861
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    const/4 v2, 0x1

    # setter for: Lcom/android/okhttp/internal/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->access$2302(Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneByte"    # I

    .prologue
    .line 835
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    :goto_0
    return-void

    .line 836
    :catch_0
    move-exception v0

    .line 837
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    const/4 v2, 0x1

    # setter for: Lcom/android/okhttp/internal/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->access$2302(Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 843
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :goto_0
    return-void

    .line 844
    :catch_0
    move-exception v0

    .line 845
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    const/4 v2, 0x1

    # setter for: Lcom/android/okhttp/internal/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->access$2302(Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method
