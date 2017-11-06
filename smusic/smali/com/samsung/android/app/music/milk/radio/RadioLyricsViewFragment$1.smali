.class Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment$1;
.super Ljava/lang/Object;
.source "RadioLyricsViewFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment$1;->this$0:Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 74
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment$1;->this$0:Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 77
    :cond_0
    return-void
.end method
