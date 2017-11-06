.class Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl$1;
.super Ljava/lang/Object;
.source "TwLangIndexScrollViewCompat.java"

# interfaces
.implements Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl$1;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndexSelected(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl$1;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;->access$700(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView$OnIndexChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl$1;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;->access$700(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView$OnIndexChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView$OnIndexChangedListener;->onIndexChanged(I)V

    .line 162
    :cond_0
    return-void
.end method
