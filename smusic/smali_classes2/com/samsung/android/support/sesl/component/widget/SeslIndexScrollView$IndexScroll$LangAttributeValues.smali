.class Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;
.super Ljava/lang/Object;
.source "SeslIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;
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

.field final synthetic this$1:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

.field totalCount:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;IIIFF)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;
    .param p2, "indexCount"    # I
    .param p3, "dotCount"    # I
    .param p4, "totalCount"    # I
    .param p5, "height"    # F
    .param p6, "separatorHeight"    # F

    .prologue
    .line 741
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 742
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 743
    iput p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 744
    iput p4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    .line 745
    iput p5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 746
    iput p6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 747
    return-void
.end method
