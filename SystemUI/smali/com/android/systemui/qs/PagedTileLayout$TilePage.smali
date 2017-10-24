.class public Lcom/android/systemui/qs/PagedTileLayout$TilePage;
.super Lcom/android/systemui/qs/TileLayout;
.source "PagedTileLayout.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/PagedTileLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TilePage"
.end annotation


# instance fields
.field private mMaxRows:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 299
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/TileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 296
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mMaxRows:I

    .line 300
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->updateResources()Z

    .line 301
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0303

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 302
    invoke-virtual {p0, p0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 298
    return-void
.end method

.method private getRows()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 317
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 318
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1

    .line 320
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    :goto_0
    return v1

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v1

    const-string/jumbo v2, "qs_tile_row"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 323
    :cond_1
    const v1, 0x7f0c0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method


# virtual methods
.method public isFull()Z
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mColumns:I

    iget v2, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mMaxRows:I

    mul-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 336
    if-eqz p2, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileBaseView;->getIcon()Lcom/android/systemui/qs/QSIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSIconView;->requestFocus()Z

    .line 335
    :cond_0
    return-void
.end method

.method public updateResources()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 307
    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->getRows()I

    move-result v1

    .line 308
    .local v1, "rows":I
    iget v3, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mMaxRows:I

    if-eq v1, v3, :cond_1

    move v0, v2

    .line 309
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 310
    iput v1, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mMaxRows:I

    .line 311
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->requestLayout()V

    .line 313
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/qs/TileLayout;->updateResources()Z

    move-result v3

    if-nez v3, :cond_2

    .end local v0    # "changed":Z
    :goto_1
    return v0

    .line 308
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "changed":Z
    :cond_2
    move v0, v2

    .line 313
    goto :goto_1
.end method
