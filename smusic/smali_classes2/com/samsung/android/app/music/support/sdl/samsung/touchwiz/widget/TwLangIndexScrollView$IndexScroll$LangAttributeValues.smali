.class Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;
.super Ljava/lang/Object;
.source "TwLangIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LangAttributeValues"
.end annotation


# instance fields
.field alphabetArray:[Ljava/lang/String;

.field dotCount:I

.field height:F

.field indexCount:I

.field separatorHeight:F

.field final synthetic this$1:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

.field totalCount:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;IIIFF)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;
    .param p2, "indexCount"    # I
    .param p3, "dotCount"    # I
    .param p4, "totalCount"    # I
    .param p5, "height"    # F
    .param p6, "separatorHeight"    # F

    .prologue
    .line 1730
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->this$1:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1731
    iput p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 1732
    iput p3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 1733
    iput p4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    .line 1734
    iput p5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 1735
    iput p6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1736
    return-void
.end method
