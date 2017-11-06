.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;
.super Ljava/lang/Object;
.source "LyricsView.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FocusedViewBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder",
        "<TVH;>;"
    }
.end annotation


# virtual methods
.method public abstract onFocusChanged(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;II)V
.end method
