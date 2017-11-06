.class final Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;
.super Ljava/lang/Object;
.source "TagBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$TypefaceSpan;,
        Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SizeSpan;,
        Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$PaddingSpan;,
        Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;,
        Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SavedSpan;
    }
.end annotation


# static fields
.field private static final sBuilder:Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;


# instance fields
.field private mBuilder:Landroid/text/SpannableStringBuilder;

.field private mIsFrozen:Z

.field private final mSavedSpanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SavedSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->sBuilder:Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->mSavedSpanList:Ljava/util/List;

    .line 32
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->mBuilder:Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method private addDrawable(Landroid/content/Context;I)Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawableResId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 78
    iget-boolean v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->mIsFrozen:Z

    if-eqz v2, :cond_0

    .line 87
    :goto_0
    return-object p0

    .line 81
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 82
    .local v1, "s":I
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->mBuilder:Landroid/text/SpannableStringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 84
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 85
    .local v0, "e":I
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/ImageSpan;

    const/4 v4, 0x1

    invoke-direct {v3, p1, p2, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private addText(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->mIsFrozen:Z

    if-eqz v0, :cond_0

    .line 96
    :goto_0
    return-object p0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->mSavedSpanList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SavedSpan;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SavedSpan;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addText(Ljava/lang/CharSequence;Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "style"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;

    .prologue
    .line 100
    iget-boolean v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->mIsFrozen:Z

    if-eqz v2, :cond_0

    .line 109
    :goto_0
    return-object p0

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 104
    .local v1, "s":I
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 106
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 107
    .local v0, "e":I
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2, v2, v1, v0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->apply(Landroid/text/Spannable;IILjava/lang/CharSequence;)V

    .line 108
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->mSavedSpanList:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SavedSpan;

    invoke-direct {v3, p1, p2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SavedSpan;-><init>(Ljava/lang/CharSequence;Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static build(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "strResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 42
    sget-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->sBuilder:Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;

    .line 43
    .local v0, "b":Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->addText(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;

    .line 44
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->build()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    return-object v1
.end method

.method static build(Landroid/content/Context;ILandroid/graphics/Typeface;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "strResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->build(Ljava/lang/CharSequence;Landroid/graphics/Typeface;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static build(Landroid/content/Context;ILandroid/graphics/Typeface;III)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "strResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "typeface"    # Landroid/graphics/Typeface;
    .param p3, "backgroundColor"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3, p4, p5}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->build(Ljava/lang/CharSequence;Landroid/graphics/Typeface;III)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static build(Ljava/lang/CharSequence;Landroid/graphics/Typeface;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 66
    sget-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->sBuilder:Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;

    .line 67
    .local v0, "b":Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;
    new-instance v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$1;)V

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->setTypeface(Landroid/graphics/Typeface;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->addText(Ljava/lang/CharSequence;Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;

    .line 68
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->build()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    return-object v1
.end method

.method private static build(Ljava/lang/CharSequence;Landroid/graphics/Typeface;III)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "backgroundColor"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 54
    sget-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->sBuilder:Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;

    .line 55
    .local v0, "b":Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;
    new-instance v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$1;)V

    .line 56
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->setTypeface(Landroid/graphics/Typeface;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->setBackground(I)Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->setWidth(I)Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;

    move-result-object v1

    .line 57
    invoke-virtual {v1, p4}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->setHeight(I)Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;

    move-result-object v1

    .line 55
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->addText(Ljava/lang/CharSequence;Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;

    .line 58
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->build()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    return-object v1
.end method

.method static buildDrawable(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawableResId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 72
    sget-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->sBuilder:Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;

    .line 73
    .local v0, "b":Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->addDrawable(Landroid/content/Context;I)Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;

    .line 74
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->build()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    return-object v1
.end method

.method static create(Ljava/lang/CharSequence;II)Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paddingLeft"    # I
    .param p2, "paddingRight"    # I

    .prologue
    .line 37
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;-><init>()V

    new-instance v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$1;)V

    .line 38
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->setPaddingLeft(I)Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->setPaddingRight(I)Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;

    move-result-object v1

    .line 37
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->addText(Ljava/lang/CharSequence;Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;

    move-result-object v0

    .line 38
    invoke-direct {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->frozen()Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;

    move-result-object v0

    return-object v0
.end method

.method private frozen()Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->mIsFrozen:Z

    .line 114
    return-object p0
.end method


# virtual methods
.method build()Landroid/text/SpannableStringBuilder;
    .locals 8

    .prologue
    .line 118
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 119
    .local v2, "ssb":Landroid/text/SpannableStringBuilder;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 120
    iget-boolean v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->mIsFrozen:Z

    if-eqz v4, :cond_1

    .line 121
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->mSavedSpanList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SavedSpan;

    .line 122
    .local v1, "ss":Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SavedSpan;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v5, v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SavedSpan;->mText:Ljava/lang/CharSequence;

    invoke-direct {v0, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 123
    .local v0, "s":Landroid/text/SpannableStringBuilder;
    iget-object v5, v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SavedSpan;->mStyle:Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;

    if-eqz v5, :cond_0

    .line 124
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 125
    .local v3, "start":I
    iget-object v5, v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SavedSpan;->mStyle:Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    add-int/2addr v6, v3

    iget-object v7, v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SavedSpan;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v0, v3, v6, v7}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->apply(Landroid/text/Spannable;IILjava/lang/CharSequence;)V

    .line 127
    .end local v3    # "start":I
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 130
    .end local v0    # "s":Landroid/text/SpannableStringBuilder;
    .end local v1    # "ss":Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SavedSpan;
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->mSavedSpanList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 132
    :cond_2
    return-object v2
.end method
