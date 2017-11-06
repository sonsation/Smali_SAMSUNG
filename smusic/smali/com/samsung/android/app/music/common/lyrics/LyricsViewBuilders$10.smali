.class final Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$10;
.super Ljava/lang/Object;
.source "LyricsViewBuilders.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$FixedViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$FixedViewBinder",
        "<",
        "Lcom/samsung/android/app/music/common/lyrics/view/LyricsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TITLE_ARTIST_HEADER_VIEW_TYPE:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutResId()I
    .locals 1

    .prologue
    .line 356
    const v0, 0x7f04007b

    return v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method public onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/app/music/common/lyrics/view/LyricsAdapter$ViewHolder;I)V
    .locals 2
    .param p1, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .param p2, "holder"    # Lcom/samsung/android/app/music/common/lyrics/view/LyricsAdapter$ViewHolder;
    .param p3, "position"    # I

    .prologue
    .line 362
    iget-object v0, p2, Lcom/samsung/android/app/music/common/lyrics/view/LyricsAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    const-string v1, "extra_title"

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, p2, Lcom/samsung/android/app/music/common/lyrics/view/LyricsAdapter$ViewHolder;->artistText:Landroid/widget/TextView;

    const-string v1, "extra_artist"

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    return-void
.end method

.method public bridge synthetic onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 345
    check-cast p2, Lcom/samsung/android/app/music/common/lyrics/view/LyricsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$10;->onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/app/music/common/lyrics/view/LyricsAdapter$ViewHolder;I)V

    return-void
.end method
