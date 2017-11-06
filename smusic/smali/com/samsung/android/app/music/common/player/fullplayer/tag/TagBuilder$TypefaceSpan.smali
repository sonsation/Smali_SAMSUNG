.class Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$TypefaceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "TagBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypefaceSpan"
.end annotation


# instance fields
.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 299
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 300
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$TypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    .line 301
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$TypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 306
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$TypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 311
    return-void
.end method
