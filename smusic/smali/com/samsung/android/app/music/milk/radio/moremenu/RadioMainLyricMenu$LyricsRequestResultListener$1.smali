.class Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$LyricsRequestResultListener$1;
.super Ljava/lang/Object;
.source "RadioMainLyricMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$LyricsRequestResultListener;->onLyricLoadFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$LyricsRequestResultListener;

.field final synthetic val$menu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$LyricsRequestResultListener;Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$LyricsRequestResultListener;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$LyricsRequestResultListener$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$LyricsRequestResultListener;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$LyricsRequestResultListener$1;->val$menu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 221
    const-string v0, "RadioMainLyricMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onLyricLoadFinished] hasLyrics :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$LyricsRequestResultListener$1;->val$menu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->access$500(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$LyricsRequestResultListener$1;->val$menu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->access$602(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;Z)Z

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$LyricsRequestResultListener$1;->val$menu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->access$700(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;)Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$LyricsRequestResultListener$1;->val$menu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->access$700(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;)Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/ILoadFinished;->loadFinished()V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$LyricsRequestResultListener$1;->val$menu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->access$100(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$LyricsRequestResultListener$1;->val$menu:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->access$500(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    return-void

    .line 226
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
