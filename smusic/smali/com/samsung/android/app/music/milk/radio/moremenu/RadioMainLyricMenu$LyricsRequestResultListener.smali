.class Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$LyricsRequestResultListener;
.super Ljava/lang/Object;
.source "RadioMainLyricMenu.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LyricsRequestResultListener"
.end annotation


# instance fields
.field private final mMainMenuRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;)V
    .locals 1
    .param p1, "menu"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$LyricsRequestResultListener;->mMainMenuRef:Ljava/lang/ref/WeakReference;

    .line 203
    return-void
.end method


# virtual methods
.method public onLyricGetFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V
    .locals 1
    .param p1, "audioId"    # J
    .param p3, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .param p4, "user"    # Ljava/lang/Object;

    .prologue
    .line 207
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$LyricsRequestResultListener;->onLyricLoadFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method public onLyricLoadFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V
    .locals 3
    .param p1, "audioId"    # J
    .param p3, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .param p4, "user"    # Ljava/lang/Object;

    .prologue
    .line 212
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$LyricsRequestResultListener;->mMainMenuRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    .line 213
    .local v0, "menu":Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;
    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 217
    :cond_0
    if-eqz p3, :cond_1

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-eq p3, v1, :cond_1

    invoke-interface {p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->access$502(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;Z)Z

    .line 218
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->access$100(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$LyricsRequestResultListener$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$LyricsRequestResultListener$1;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$LyricsRequestResultListener;Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 217
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
