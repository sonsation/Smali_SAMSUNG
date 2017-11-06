.class public final Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;
.super Ljava/lang/Object;
.source "IndexScrollViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IndexScrollThemeSet"
.end annotation


# instance fields
.field private mEffectColor:I

.field private mEffectTextColor:I

.field private mIndexBarBackground:Landroid/graphics/drawable/Drawable;

.field private mIndexBarTextColor:I

.field private mIndexBarTextPressedColor:I

.field private mWinsetUiEnabled:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;IIIIZ)V
    .locals 0
    .param p1, "indexBarBackground"    # Landroid/graphics/drawable/Drawable;
    .param p2, "indexBarTextColor"    # I
    .param p3, "indexBarTextPressedColor"    # I
    .param p4, "effectColor"    # I
    .param p5, "effectTextColor"    # I
    .param p6, "winsetUiEnabled"    # Z

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;->mIndexBarBackground:Landroid/graphics/drawable/Drawable;

    .line 183
    iput p2, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;->mIndexBarTextColor:I

    .line 184
    iput p3, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;->mIndexBarTextPressedColor:I

    .line 185
    iput p4, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;->mEffectColor:I

    .line 186
    iput p5, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;->mEffectTextColor:I

    .line 187
    iput-boolean p6, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;->mWinsetUiEnabled:Z

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;->mIndexBarBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;

    .prologue
    .line 165
    iget v0, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;->mIndexBarTextPressedColor:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;

    .prologue
    .line 165
    iget v0, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;->mIndexBarTextColor:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;

    .prologue
    .line 165
    iget v0, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;->mEffectColor:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;

    .prologue
    .line 165
    iget v0, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;->mEffectTextColor:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;->mWinsetUiEnabled:Z

    return v0
.end method
