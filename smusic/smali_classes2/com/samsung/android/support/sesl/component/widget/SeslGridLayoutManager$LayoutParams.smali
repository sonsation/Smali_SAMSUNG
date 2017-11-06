.class public Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager$LayoutParams;
.super Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
.source "SeslGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final INVALID_SPAN_ID:I = -0x1


# instance fields
.field mSpanIndex:I

.field mSpanSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1113
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;-><init>(II)V

    .line 1104
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1106
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1109
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1104
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1106
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1110
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1121
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1104
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1106
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1122
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 1117
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1104
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1106
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1118
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .prologue
    .line 1125
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;)V

    .line 1104
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1106
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1126
    return-void
.end method


# virtual methods
.method public getSpanIndex()I
    .locals 1

    .prologue
    .line 1143
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager$LayoutParams;->mSpanIndex:I

    return v0
.end method

.method public getSpanSize()I
    .locals 1

    .prologue
    .line 1153
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager$LayoutParams;->mSpanSize:I

    return v0
.end method
