.class Lorg/apache/xml/serializer/ToHTMLStream$Trie;
.super Ljava/lang/Object;
.source "ToHTMLStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/ToHTMLStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Trie"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;
    }
.end annotation


# static fields
.field public static final ALPHA_SIZE:I = 0x80


# instance fields
.field final m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

.field private m_charBuffer:[C

.field private final m_lowerCaseOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2057
    new-array v0, v1, [C

    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    .line 2067
    new-instance v0, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    invoke-direct {v0, p0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;-><init>(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V

    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    .line 2068
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_lowerCaseOnly:Z

    .line 2069
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V
    .locals 2
    .param p1, "existingTrie"    # Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    .prologue
    .line 2260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2057
    const/4 v1, 0x0

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    .line 2262
    iget-object v1, p1, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    iput-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    .line 2263
    iget-boolean v1, p1, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_lowerCaseOnly:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_lowerCaseOnly:Z

    .line 2266
    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->getLongestKeyLength()I

    move-result v0

    .line 2267
    .local v0, "max":I
    new-array v1, v0, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    .line 2268
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "lowerCaseOnly"    # Z

    .prologue
    .line 2077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2057
    const/4 v0, 0x0

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    .line 2078
    new-instance v0, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    invoke-direct {v0, p0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;-><init>(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V

    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    .line 2079
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_lowerCaseOnly:Z

    .line 2080
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x80

    const/4 v4, 0x0

    .line 2156
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2161
    .local v2, "len":I
    iget-object v5, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    array-length v5, v5

    if-ge v5, v2, :cond_1

    .line 2224
    :cond_0
    :goto_0
    :pswitch_0
    return-object v4

    .line 2164
    :cond_1
    iget-object v3, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    .line 2165
    .local v3, "node":Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;
    packed-switch v2, :pswitch_data_0

    .line 2209
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 2212
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2213
    .local v0, "ch":C
    if-le v6, v0, :cond_0

    .line 2219
    iget-object v5, v3, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    aget-object v3, v5, v0

    .line 2220
    if-eqz v3, :cond_0

    .line 2209
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2177
    .end local v0    # "ch":C
    .end local v1    # "i":I
    :pswitch_1
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2178
    .restart local v0    # "ch":C
    if-ge v0, v6, :cond_0

    .line 2180
    iget-object v5, v3, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    aget-object v3, v5, v0

    .line 2181
    if-eqz v3, :cond_0

    .line 2182
    iget-object v4, v3, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    goto :goto_0

    .line 2224
    .end local v0    # "ch":C
    .restart local v1    # "i":I
    :cond_2
    iget-object v4, v3, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    goto :goto_0

    .line 2165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public get2(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x80

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 2281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2286
    .local v2, "len":I
    iget-object v5, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    array-length v5, v5

    if-ge v5, v2, :cond_1

    .line 2337
    :cond_0
    :goto_0
    :pswitch_0
    return-object v4

    .line 2289
    :cond_1
    iget-object v3, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    .line 2290
    .local v3, "node":Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;
    packed-switch v2, :pswitch_data_0

    .line 2321
    iget-object v5, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    invoke-virtual {p1, v6, v2, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 2323
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 2325
    iget-object v5, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    aget-char v0, v5, v1

    .line 2326
    .local v0, "ch":C
    if-le v7, v0, :cond_0

    .line 2332
    iget-object v5, v3, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    aget-object v3, v5, v0

    .line 2333
    if-eqz v3, :cond_0

    .line 2323
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2302
    .end local v0    # "ch":C
    .end local v1    # "i":I
    :pswitch_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2303
    .restart local v0    # "ch":C
    if-ge v0, v7, :cond_0

    .line 2305
    iget-object v5, v3, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    aget-object v3, v5, v0

    .line 2306
    if-eqz v3, :cond_0

    .line 2307
    iget-object v4, v3, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    goto :goto_0

    .line 2337
    .end local v0    # "ch":C
    .restart local v1    # "i":I
    :cond_2
    iget-object v4, v3, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    goto :goto_0

    .line 2290
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getLongestKeyLength()I
    .locals 1

    .prologue
    .line 2347
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    array-length v0, v0

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2093
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2094
    .local v1, "len":I
    iget-object v6, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    array-length v6, v6

    if-le v1, v6, :cond_0

    .line 2097
    new-array v6, v1, [C

    iput-object v6, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    .line 2100
    :cond_0
    iget-object v4, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    .line 2102
    .local v4, "node":Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 2104
    iget-object v6, v4, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    aget-object v3, v6, v7

    .line 2107
    .local v3, "nextNode":Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;
    if-eqz v3, :cond_1

    .line 2109
    move-object v4, v3

    .line 2102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2113
    :cond_1
    :goto_1
    if-ge v0, v1, :cond_3

    .line 2115
    new-instance v2, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    invoke-direct {v2, p0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;-><init>(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V

    .line 2116
    .local v2, "newNode":Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;
    iget-boolean v6, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_lowerCaseOnly:Z

    if-eqz v6, :cond_2

    .line 2119
    iget-object v6, v4, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    aput-object v2, v6, v7

    .line 2133
    :goto_2
    move-object v4, v2

    .line 2113
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2126
    :cond_2
    iget-object v6, v4, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    aput-object v2, v6, v7

    .line 2129
    iget-object v6, v4, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    aput-object v2, v6, v7

    goto :goto_2

    .line 2139
    .end local v2    # "newNode":Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;
    .end local v3    # "nextNode":Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;
    :cond_3
    iget-object v5, v4, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    .line 2141
    .local v5, "ret":Ljava/lang/Object;
    iput-object p2, v4, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    .line 2143
    return-object v5
.end method
