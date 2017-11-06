.class Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver$1;
.super Ljava/lang/Object;
.source "TwLangIndexScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    .prologue
    .line 1629
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver$1;->this$1:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver$1;->this$1:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;->mDataInvalid:Z

    .line 1632
    return-void
.end method
