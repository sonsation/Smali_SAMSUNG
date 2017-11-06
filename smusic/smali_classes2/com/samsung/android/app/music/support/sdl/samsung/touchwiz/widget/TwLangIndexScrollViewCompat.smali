.class public Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat;
.super Ljava/lang/Object;
.source "TwLangIndexScrollViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;,
        Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;,
        Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwIndexScrollViewImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "customThemeSet"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;

    .prologue
    .line 18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 19
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwIndexScrollViewImpl;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwIndexScrollViewImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;)V

    .line 23
    .local v0, "indexScrollView":Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;
    :goto_0
    return-object v0

    .line 21
    .end local v0    # "indexScrollView":Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$TwMusicIndexScrollViewImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;)V

    .restart local v0    # "indexScrollView":Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;
    goto :goto_0
.end method
