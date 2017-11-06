.class Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SavedSpan;
.super Ljava/lang/Object;
.source "TagBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedSpan"
.end annotation


# instance fields
.field final mStyle:Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;

.field final mText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SavedSpan;-><init>(Ljava/lang/CharSequence;Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;)V

    .line 147
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "style"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SavedSpan;->mText:Ljava/lang/CharSequence;

    .line 142
    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$SavedSpan;->mStyle:Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder$Style;

    .line 143
    return-void
.end method
