.class final enum Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$2;
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
    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;-><init>(Ljava/lang/String;ILcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$1;)V

    return-void
.end method


# virtual methods
.method public update(Landroid/view/View;Ljava/lang/Object;Landroid/text/SpannableStringBuilder;I)Z
    .locals 4
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p4, "index"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 232
    if-nez p2, :cond_0

    .line 240
    :goto_0
    return v3

    :cond_0
    move-object v0, p2

    .line 235
    check-cast v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Upscaler;

    .line 236
    .local v0, "u":Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Upscaler;
    iget v2, v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Upscaler;->playerType:I

    if-ne v2, v1, :cond_1

    iget-boolean v2, v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Upscaler;->isEnabled:Z

    if-eqz v2, :cond_1

    .line 239
    .local v1, "visible":Z
    :goto_1
    if-eqz v1, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v1    # "visible":Z
    :cond_1
    move v1, v3

    .line 236
    goto :goto_1

    .line 239
    .restart local v1    # "visible":Z
    :cond_2
    const/16 v2, 0x8

    goto :goto_2
.end method
