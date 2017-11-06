.class public Lcom/samsung/android/app/music/common/lyrics/view/LyricsAdapter$ViewHolder;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;
.source "LyricsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/lyrics/view/LyricsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public final artistText:Landroid/widget/TextView;

.field public final titleText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 87
    const v0, 0x7f1201e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/LyricsAdapter$ViewHolder;->lyricText:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f1201e7

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/LyricsAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f1201e8

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/view/LyricsAdapter$ViewHolder;->artistText:Landroid/widget/TextView;

    .line 92
    return-void
.end method
