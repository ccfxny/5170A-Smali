.class Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;
.super Ljava/io/Writer;
.source "ToStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/ToStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WritertoStringBuffer"
.end annotation


# instance fields
.field private final m_stringbuf:Ljava/lang/StringBuffer;

.field final synthetic this$0:Lorg/apache/xml/serializer/ToStream;


# direct methods
.method constructor <init>(Lorg/apache/xml/serializer/ToStream;Ljava/lang/StringBuffer;)V
    .locals 0
    .param p2, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 3197
    iput-object p1, p0, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;->this$0:Lorg/apache/xml/serializer/ToStream;

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 3198
    iput-object p2, p0, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;->m_stringbuf:Ljava/lang/StringBuffer;

    .line 3199
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3216
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3210
    return-void
.end method

.method public write(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 3220
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;->m_stringbuf:Ljava/lang/StringBuffer;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3221
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 3225
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;->m_stringbuf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3226
    return-void
.end method

.method public write([CII)V
    .locals 1
    .param p1, "arg0"    # [C
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3203
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;->m_stringbuf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 3204
    return-void
.end method
