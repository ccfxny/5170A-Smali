.class Lcom/android/commands/content/Content$Tokenizer;
.super Ljava/lang/Object;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tokenizer"
.end annotation


# instance fields
.field private final mArgs:[Ljava/lang/String;

.field private mNextArg:I


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-object p1, p0, Lcom/android/commands/content/Content$Tokenizer;->mArgs:[Ljava/lang/String;

    .line 384
    return-void
.end method

.method static synthetic access$000(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/commands/content/Content$Tokenizer;

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/android/commands/content/Content$Tokenizer;->nextArg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private nextArg()Ljava/lang/String;
    .locals 3

    .prologue
    .line 387
    iget v0, p0, Lcom/android/commands/content/Content$Tokenizer;->mNextArg:I

    iget-object v1, p0, Lcom/android/commands/content/Content$Tokenizer;->mArgs:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/commands/content/Content$Tokenizer;->mArgs:[Ljava/lang/String;

    iget v1, p0, Lcom/android/commands/content/Content$Tokenizer;->mNextArg:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/commands/content/Content$Tokenizer;->mNextArg:I

    aget-object v0, v0, v1

    .line 390
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
