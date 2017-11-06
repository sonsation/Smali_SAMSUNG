.class final enum Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$1;
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
    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;-><init>(Ljava/lang/String;ILcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$1;)V

    return-void
.end method


# virtual methods
.method public update(Landroid/view/View;Ljava/lang/Object;Landroid/text/SpannableStringBuilder;I)Z
    .locals 2
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p4, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 220
    if-nez p2, :cond_0

    .line 224
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return v1

    .line 223
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method
