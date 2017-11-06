.class Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "SeslStaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnchorInfo"
.end annotation


# instance fields
.field mInvalidateOffsets:Z

.field mLayoutFromEnd:Z

.field mOffset:I

.field mPosition:I

.field mSpanReferenceLines:[I

.field mValid:Z

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    .prologue
    .line 3106
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3107
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 3108
    return-void
.end method


# virtual methods
.method assignCoordinateFromPadding()V
    .locals 1

    .prologue
    .line 3133
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v0

    .line 3134
    :goto_0
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 3135
    return-void

    .line 3133
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 3134
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v0

    goto :goto_0
.end method

.method assignCoordinateFromPadding(I)V
    .locals 1
    .param p1, "addedDistance"    # I

    .prologue
    .line 3138
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    .line 3139
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 3143
    :goto_0
    return-void

    .line 3141
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto :goto_0
.end method

.method reset()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 3111
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 3112
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 3113
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 3114
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    .line 3115
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    .line 3116
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    if-eqz v0, :cond_0

    .line 3117
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 3119
    :cond_0
    return-void
.end method

.method saveSpanReferenceLines([Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;)V
    .locals 5
    .param p1, "spans"    # [Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    .prologue
    .line 3122
    array-length v1, p1

    .line 3123
    .local v1, "spanCount":I
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    array-length v2, v2

    if-ge v2, v1, :cond_1

    .line 3124
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    .line 3126
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 3128
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    aget-object v3, p1, v0

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    aput v3, v2, v0

    .line 3126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3130
    :cond_2
    return-void
.end method
