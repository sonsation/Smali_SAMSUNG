.class Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Connection;
.super Ljava/lang/Object;
.source "ObservableTags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Connection"
.end annotation


# instance fields
.field final LTE:Ljava/lang/CharSequence;

.field final WIFI:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    const v0, 0x7f0a04fb

    const-string/jumbo v1, "sec-roboto-light"

    .line 443
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 442
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->build(Landroid/content/Context;ILandroid/graphics/Typeface;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Connection;->WIFI:Ljava/lang/CharSequence;

    .line 444
    const v0, 0x7f0a04a5

    const-string/jumbo v1, "sec-roboto-light"

    .line 445
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 444
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->build(Landroid/content/Context;ILandroid/graphics/Typeface;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Connection;->LTE:Ljava/lang/CharSequence;

    .line 446
    return-void
.end method
