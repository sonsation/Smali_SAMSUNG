.class Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ArrowScrollFocusResult;
.super Ljava/lang/Object;
.source "SeslHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrowScrollFocusResult"
.end annotation


# instance fields
.field private mAmountToScroll:I

.field private mSelectedPosition:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$1;

    .prologue
    .line 3454
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ArrowScrollFocusResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmountToScroll()I
    .locals 1

    .prologue
    .line 3471
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ArrowScrollFocusResult;->mAmountToScroll:I

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 3467
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ArrowScrollFocusResult;->mSelectedPosition:I

    return v0
.end method

.method populate(II)V
    .locals 0
    .param p1, "selectedPosition"    # I
    .param p2, "amountToScroll"    # I

    .prologue
    .line 3462
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ArrowScrollFocusResult;->mSelectedPosition:I

    .line 3463
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ArrowScrollFocusResult;->mAmountToScroll:I

    .line 3464
    return-void
.end method
