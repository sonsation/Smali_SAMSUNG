.class public Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat;
.super Ljava/lang/Object;
.source "IndexScrollViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;,
        Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertCustomThemeSet(Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;
    .locals 7
    .param p0, "indexScrollThemeSet"    # Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "customThemeSet":Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;
    if-eqz p0, :cond_0

    .line 36
    invoke-static {p0}, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;->access$000(Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 37
    .local v1, "bgIndexRectDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;->access$100(Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;)I

    move-result v2

    .line 38
    .local v2, "textColorDimmed":I
    invoke-static {p0}, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;->access$200(Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;)I

    move-result v3

    .line 39
    .local v3, "smallTextColor":I
    invoke-static {p0}, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;->access$300(Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;)I

    move-result v4

    .line 40
    .local v4, "bigTextColor":I
    invoke-static {p0}, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;->access$400(Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;)I

    move-result v5

    .line 41
    .local v5, "effectColor":I
    invoke-static {p0}, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;->access$500(Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;)Z

    move-result v6

    .line 42
    .local v6, "winsetUiEnabled":Z
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;

    .end local v0    # "customThemeSet":Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;-><init>(Landroid/graphics/drawable/Drawable;IIIIZ)V

    .line 47
    .end local v1    # "bgIndexRectDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "textColorDimmed":I
    .end local v3    # "smallTextColor":I
    .end local v4    # "bigTextColor":I
    .end local v5    # "effectColor":I
    .end local v6    # "winsetUiEnabled":Z
    .restart local v0    # "customThemeSet":Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;
    :cond_0
    return-object v0
.end method

.method public static create(Landroid/app/Activity;Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "indexScrollThemeSet"    # Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;

    .prologue
    .line 23
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v1, :cond_0

    .line 24
    new-instance v0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;)V

    .line 29
    .local v0, "indexScrollView":Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;
    :goto_0
    return-object v0

    .line 26
    .end local v0    # "indexScrollView":Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 27
    invoke-static {p1}, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat;->convertCustomThemeSet(Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;

    move-result-object v2

    .line 26
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat;->create(Landroid/content/Context;Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollViewCompat$CustomThemeSetCompat;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;

    move-result-object v0

    .restart local v0    # "indexScrollView":Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;
    goto :goto_0
.end method
