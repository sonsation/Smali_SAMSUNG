.class Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Lyrics;
.super Ljava/lang/Object;
.source "ObservableTags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Lyrics"
.end annotation


# instance fields
.field final SYNCED:Ljava/lang/CharSequence;

.field final UNSYNCED:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    const v0, 0x7f0a01c6

    const-string/jumbo v1, "sec-roboto-light"

    .line 456
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 455
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->build(Landroid/content/Context;ILandroid/graphics/Typeface;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Lyrics;->SYNCED:Ljava/lang/CharSequence;

    .line 457
    const v0, 0x7f0a00ed

    const-string/jumbo v1, "sec-roboto-light"

    .line 458
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 457
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->build(Landroid/content/Context;ILandroid/graphics/Typeface;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Lyrics;->UNSYNCED:Ljava/lang/CharSequence;

    .line 459
    return-void
.end method
