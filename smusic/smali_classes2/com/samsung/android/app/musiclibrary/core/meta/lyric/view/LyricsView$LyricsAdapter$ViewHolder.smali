.class public Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;
.super Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
.source "LyricsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public lyricText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 616
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 617
    return-void
.end method
