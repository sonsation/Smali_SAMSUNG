.class Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;
.super Ljava/lang/Object;
.source "TagBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Style"
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private mForegroundColor:I

.field private mHeight:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mTypeface:Landroid/graphics/Typeface;

.field private mWidth:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->mBackgroundColor:I

    .line 156
    iput v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->mForegroundColor:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$1;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;-><init>()V

    return-void
.end method


# virtual methods
.method apply(Landroid/text/Spannable;IILjava/lang/CharSequence;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x21

    .line 202
    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->mBackgroundColor:I

    if-eqz v0, :cond_0

    .line 203
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    iget v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->mBackgroundColor:I

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-interface {p1, v0, p2, p3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 206
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->mForegroundColor:I

    if-eqz v0, :cond_1

    .line 207
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->mForegroundColor:I

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1, v0, p2, p3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_2

    .line 211
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$TypefaceSpan;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->mTypeface:Landroid/graphics/Typeface;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-interface {p1, v0, p2, p3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 214
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->mWidth:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->mHeight:I

    if-eqz v0, :cond_4

    .line 215
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SizeSpan;

    iget v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->mBackgroundColor:I

    iget v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->mWidth:I

    iget v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->mHeight:I

    invoke-direct {v0, p4, v1, v2, v3}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SizeSpan;-><init>(Ljava/lang/CharSequence;III)V

    invoke-interface {p1, v0, p2, p3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 221
    :cond_3
    :goto_0
    return-void

    .line 217
    :cond_4
    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->mPaddingLeft:I

    if-nez v0, :cond_5

    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->mPaddingRight:I

    if-eqz v0, :cond_3

    .line 218
    :cond_5
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$PaddingSpan;

    iget v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->mPaddingLeft:I

    iget v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->mPaddingRight:I

    invoke-direct {v0, p4, v1, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$PaddingSpan;-><init>(Ljava/lang/CharSequence;II)V

    invoke-interface {p1, v0, p2, p3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method setBackground(I)Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->mBackgroundColor:I

    .line 168
    return-object p0
.end method

.method setForeground(I)Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->mForegroundColor:I

    .line 173
    return-object p0
.end method

.method setHeight(I)Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->mHeight:I

    .line 183
    return-object p0
.end method

.method setPaddingLeft(I)Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;
    .locals 0
    .param p1, "left"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->mPaddingLeft:I

    .line 188
    return-object p0
.end method

.method setPaddingRight(I)Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;
    .locals 0
    .param p1, "right"    # I

    .prologue
    .line 192
    iput p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->mPaddingRight:I

    .line 193
    return-object p0
.end method

.method setTypeface(Landroid/graphics/Typeface;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->mTypeface:Landroid/graphics/Typeface;

    .line 198
    return-object p0
.end method

.method setWidth(I)Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 177
    iput p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;->mWidth:I

    .line 178
    return-object p0
.end method
