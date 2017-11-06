.class public Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;
.super Ljava/lang/Object;
.source "TwLangIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomThemeSet"
.end annotation


# instance fields
.field private applyOpenTheme:Z

.field private bgDrawableDefault:Landroid/graphics/drawable/Drawable;

.field private bgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

.field private bgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

.field private bigTextColor:I

.field private effectColor:I

.field private handleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

.field private handleTextColorPressed:I

.field private separatorColor:I

.field private smallTextColor:I

.field private textColorDimmed:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;IIIIZ)V
    .locals 2
    .param p1, "bgDrawableDefault"    # Landroid/graphics/drawable/Drawable;
    .param p2, "textColorDimmed"    # I
    .param p3, "smallTextColor"    # I
    .param p4, "bigTextColor"    # I
    .param p5, "effectColor"    # I
    .param p6, "applyOpenTheme"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 820
    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 822
    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    .line 824
    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 826
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->separatorColor:I

    .line 828
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->textColorDimmed:I

    .line 830
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->smallTextColor:I

    .line 832
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bigTextColor:I

    .line 834
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleTextColorPressed:I

    .line 836
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->effectColor:I

    .line 838
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->applyOpenTheme:Z

    .line 904
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 905
    iput p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->textColorDimmed:I

    .line 906
    iput p3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->smallTextColor:I

    .line 907
    iput p4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bigTextColor:I

    .line 908
    iput p5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->effectColor:I

    .line 909
    iput-boolean p6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->applyOpenTheme:Z

    .line 910
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "bgIndexRectDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "bgDrawableDefault"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bgDrawableDefaultMoreDepth"    # Landroid/graphics/drawable/Drawable;
    .param p4, "handleBgScrollDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 820
    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 822
    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    .line 824
    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 826
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->separatorColor:I

    .line 828
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->textColorDimmed:I

    .line 830
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->smallTextColor:I

    .line 832
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bigTextColor:I

    .line 834
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleTextColorPressed:I

    .line 836
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->effectColor:I

    .line 838
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->applyOpenTheme:Z

    .line 853
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 854
    iput-object p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 855
    iput-object p3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    .line 856
    iput-object p4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 857
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->separatorColor:I

    .line 858
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->textColorDimmed:I

    .line 859
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleTextColorPressed:I

    .line 860
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 2
    .param p1, "bgIndexRectDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "bgDrawableDefault"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bgDrawableDefaultMoreDepth"    # Landroid/graphics/drawable/Drawable;
    .param p4, "handleBgScrollDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "separatorColor"    # I
    .param p6, "textColorDimmed"    # I
    .param p7, "handleTextColorPressed"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 820
    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 822
    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    .line 824
    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 826
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->separatorColor:I

    .line 828
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->textColorDimmed:I

    .line 830
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->smallTextColor:I

    .line 832
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bigTextColor:I

    .line 834
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleTextColorPressed:I

    .line 836
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->effectColor:I

    .line 838
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->applyOpenTheme:Z

    .line 880
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 881
    iput-object p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 882
    iput-object p3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    .line 883
    iput-object p4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 884
    iput p5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->separatorColor:I

    .line 885
    iput p6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->textColorDimmed:I

    .line 886
    iput p7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleTextColorPressed:I

    .line 887
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .prologue
    .line 816
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->applyOpenTheme:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .prologue
    .line 816
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefault:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .prologue
    .line 816
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .prologue
    .line 816
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->separatorColor:I

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .prologue
    .line 816
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleTextColorPressed:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .prologue
    .line 816
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->textColorDimmed:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .prologue
    .line 816
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->smallTextColor:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .prologue
    .line 816
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bigTextColor:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .prologue
    .line 816
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->effectColor:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .prologue
    .line 816
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .prologue
    .line 816
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
