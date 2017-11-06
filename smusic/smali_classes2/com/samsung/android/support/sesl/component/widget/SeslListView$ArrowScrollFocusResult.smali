.class Lcom/samsung/android/support/sesl/component/widget/SeslListView$ArrowScrollFocusResult;
.super Ljava/lang/Object;
.source "SeslListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslListView;
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
    .line 2980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslListView$1;

    .prologue
    .line 2980
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListView$ArrowScrollFocusResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmountToScroll()I
    .locals 1

    .prologue
    .line 2997
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$ArrowScrollFocusResult;->mAmountToScroll:I

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 2993
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$ArrowScrollFocusResult;->mSelectedPosition:I

    return v0
.end method

.method populate(II)V
    .locals 0
    .param p1, "selectedPosition"    # I
    .param p2, "amountToScroll"    # I

    .prologue
    .line 2988
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$ArrowScrollFocusResult;->mSelectedPosition:I

    .line 2989
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$ArrowScrollFocusResult;->mAmountToScroll:I

    .line 2990
    return-void
.end method
