.class Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$1;
.super Ljava/lang/Object;
.source "CpMilkLyricsParser.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser;->loadLyricsUrlFromCp(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$OnLyricsUrlPreparedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser;

.field final synthetic val$l:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$OnLyricsUrlPreparedListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$OnLyricsUrlPreparedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$1;->this$0:Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$1;->val$l:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$OnLyricsUrlPreparedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 78
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 8
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 83
    const/4 v3, 0x0

    .line 84
    .local v3, "url":Ljava/lang/String;
    if-nez p3, :cond_0

    move-object v2, p4

    .line 85
    check-cast v2, Lcom/samsung/android/app/music/common/model/LyricsList;

    .line 86
    .local v2, "lyricsList":Lcom/samsung/android/app/music/common/model/LyricsList;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/LyricsList;->getLyrics()Ljava/util/ArrayList;

    move-result-object v1

    .line 87
    .local v1, "lyricsInfos":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/LyricsInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 88
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/LyricsInfo;

    .line 89
    .local v0, "lyrics":Lcom/samsung/android/app/music/common/model/LyricsInfo;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/LyricsInfo;->getAvailableLyricsUrl()Ljava/lang/String;

    move-result-object v3

    .line 92
    .end local v0    # "lyrics":Lcom/samsung/android/app/music/common/model/LyricsInfo;
    .end local v1    # "lyricsInfos":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/LyricsInfo;>;"
    .end local v2    # "lyricsList":Lcom/samsung/android/app/music/common/model/LyricsList;
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$1;->val$l:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$OnLyricsUrlPreparedListener;

    const-wide/16 v6, -0x1

    invoke-interface {v4, v3, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$OnLyricsUrlPreparedListener;->onLyricsUrlPrepared(Ljava/lang/String;J)V

    .line 93
    return-void
.end method
