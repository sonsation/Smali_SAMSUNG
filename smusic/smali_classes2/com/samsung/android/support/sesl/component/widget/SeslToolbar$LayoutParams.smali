.class public Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
.super Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;
.source "SeslToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field static final CUSTOM:I = 0x0

.field static final EXPANDED:I = 0x2

.field static final SYSTEM:I = 0x1


# instance fields
.field mViewType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "gravity"    # I

    .prologue
    .line 2268
    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;-><init>(III)V

    .line 2269
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 2258
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;-><init>(II)V

    .line 2251
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->mViewType:I

    .line 2259
    const v0, 0x800013

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->gravity:I

    .line 2260
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    .prologue
    .line 2263
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;-><init>(II)V

    .line 2251
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->mViewType:I

    .line 2264
    iput p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->gravity:I

    .line 2265
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2254
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2251
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->mViewType:I

    .line 2255
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2289
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2251
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->mViewType:I

    .line 2290
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 2282
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2251
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->mViewType:I

    .line 2285
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->copyMarginsFromCompat(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2286
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;

    .prologue
    .line 2278
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;)V

    .line 2251
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->mViewType:I

    .line 2279
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    .prologue
    .line 2272
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;)V

    .line 2251
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->mViewType:I

    .line 2274
    iget v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->mViewType:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->mViewType:I

    .line 2275
    return-void
.end method


# virtual methods
.method copyMarginsFromCompat(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 2293
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->leftMargin:I

    .line 2294
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->topMargin:I

    .line 2295
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->rightMargin:I

    .line 2296
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->bottomMargin:I

    .line 2297
    return-void
.end method
