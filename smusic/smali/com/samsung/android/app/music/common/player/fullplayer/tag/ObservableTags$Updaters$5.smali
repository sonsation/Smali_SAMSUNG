.class final enum Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$5;
.super Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;
.source "ObservableTags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;-><init>(Ljava/lang/String;ILcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$1;)V

    return-void
.end method


# virtual methods
.method public update(Landroid/view/View;Ljava/lang/Object;Landroid/text/SpannableStringBuilder;I)Z
    .locals 4
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "ssb"    # Landroid/text/SpannableStringBuilder;
    .param p4, "index"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 328
    if-nez p2, :cond_1

    .line 342
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p2

    .line 331
    check-cast v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Connection;

    .line 332
    .local v0, "c":Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Connection;
    iget-boolean v3, v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Connection;->isOnline:Z

    if-eqz v3, :cond_0

    .line 335
    iget v1, v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Connection;->type:I

    if-ne v1, v2, :cond_3

    .line 336
    invoke-virtual {p0, p1, p3, p4}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$5;->addSpace(Landroid/view/View;Landroid/text/SpannableStringBuilder;I)V

    .line 337
    sget-object v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$5;->TAGS:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;

    iget-object v1, v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;->CONNECTION:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Connection;

    iget-object v1, v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Connection;->WIFI:Ljava/lang/CharSequence;

    invoke-virtual {p3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    :goto_1
    move v1, v2

    .line 342
    goto :goto_0

    .line 338
    :cond_3
    iget v1, v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Connection;->type:I

    if-nez v1, :cond_2

    .line 339
    invoke-virtual {p0, p1, p3, p4}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$5;->addSpace(Landroid/view/View;Landroid/text/SpannableStringBuilder;I)V

    .line 340
    sget-object v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$5;->TAGS:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;

    iget-object v1, v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;->CONNECTION:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Connection;

    iget-object v1, v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Connection;->LTE:Ljava/lang/CharSequence;

    invoke-virtual {p3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1
.end method
