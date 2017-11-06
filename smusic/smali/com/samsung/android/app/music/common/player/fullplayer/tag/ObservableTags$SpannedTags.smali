.class final Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;
.super Ljava/lang/Object;
.source "ObservableTags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SpannedTags"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Lyrics;,
        Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Connection;,
        Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Stream;,
        Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Quality;
    }
.end annotation


# static fields
.field private static final FONT_NAME_ROBOTO_CONDENSED:Ljava/lang/String; = "sec-roboto-condensed"

.field private static final FONT_NAME_ROBOTO_REGULAR:Ljava/lang/String; = "sec-roboto-light"


# instance fields
.field final CONNECTION:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Connection;

.field final LYRICS:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Lyrics;

.field final QUALITY:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Quality;

.field final SEPARATOR_BUILDER:Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;

.field final STREAM:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Stream;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 391
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0d013d

    .line 392
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 393
    .local v0, "horizontalPadding":I
    const-string/jumbo v2, "|"

    invoke-static {v2, v0, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->create(Ljava/lang/CharSequence;II)Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;->SEPARATOR_BUILDER:Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;

    .line 394
    new-instance v2, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Stream;

    invoke-direct {v2, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Stream;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;->STREAM:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Stream;

    .line 395
    new-instance v2, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Connection;

    invoke-direct {v2, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Connection;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;->CONNECTION:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Connection;

    .line 396
    new-instance v2, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Quality;

    invoke-direct {v2, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Quality;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;->QUALITY:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Quality;

    .line 397
    new-instance v2, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Lyrics;

    invoke-direct {v2, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Lyrics;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;->LYRICS:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Lyrics;

    .line 398
    return-void
.end method
