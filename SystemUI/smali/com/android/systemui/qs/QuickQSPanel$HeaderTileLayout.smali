.class Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;
.super Landroid/widget/LinearLayout;
.source "QuickQSPanel.java"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$QSTileLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QuickQSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderTileLayout"
.end annotation


# instance fields
.field private final mEndSpacer:Landroid/widget/Space;

.field private mListening:Z

.field protected final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 197
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    .line 198
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->setClipChildren(Z)V

    .line 199
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->setClipToPadding(Z)V

    .line 200
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->setGravity(I)V

    .line 201
    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d021a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 202
    .local v0, "size":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mEndSpacer:Landroid/widget/Space;

    .line 212
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->setOrientation(I)V

    .line 196
    return-void
.end method

.method private generateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .prologue
    .line 259
    iget-object v2, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d021a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 260
    .local v1, "size":I
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 261
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 262
    return-object v0
.end method

.method private generateSpaceParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .prologue
    .line 251
    iget-object v2, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d021a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 252
    .local v1, "size":I
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 253
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 254
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 255
    return-object v0
.end method

.method private getChildIndex(Lcom/android/systemui/qs/QSTileBaseView;)I
    .locals 3
    .param p1, "tileView"    # Lcom/android/systemui/qs/QSTileBaseView;

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getChildCount()I

    move-result v0

    .line 283
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 284
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 285
    return v1

    .line 283
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    :cond_1
    const/4 v2, -0x1

    return v2
.end method


# virtual methods
.method public addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 3
    .param p1, "tile"    # Lcom/android/systemui/qs/QSPanel$TileRecord;

    .prologue
    .line 240
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    .line 241
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->generateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 240
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 242
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Lcom/android/systemui/qs/QuickQSPanel;->-get0()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 245
    new-instance v0, Landroid/widget/Space;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    .line 246
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->generateSpaceParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 245
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 247
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mListening:Z

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 239
    return-void
.end method

.method public getOffsetTop(Lcom/android/systemui/qs/QSPanel$TileRecord;)I
    .locals 1
    .param p1, "tile"    # Lcom/android/systemui/qs/QSPanel$TileRecord;

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 216
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 309
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 310
    iget-object v3, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 311
    move-object v0, p0

    .line 312
    .local v0, "previousView":Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "record$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 313
    .local v1, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileBaseView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 314
    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/QSTileBaseView;->updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 308
    .end local v0    # "previousView":Landroid/view/View;
    .end local v1    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    .end local v2    # "record$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 3
    .param p1, "tile"    # Lcom/android/systemui/qs/QSPanel$TileRecord;

    .prologue
    .line 267
    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getChildIndex(Lcom/android/systemui/qs/QSTileBaseView;)I

    move-result v0

    .line 270
    .local v0, "childIndex":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->removeViewAt(I)V

    .line 274
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 275
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->removeViewAt(I)V

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 278
    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 266
    return-void
.end method

.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    .line 231
    iget-boolean v2, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mListening:Z

    if-ne v2, p1, :cond_0

    return-void

    .line 232
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mListening:Z

    .line 233
    iget-object v2, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 234
    .local v0, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    iget-boolean v3, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mListening:Z

    invoke-virtual {v2, p0, v3}, Lcom/android/systemui/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 230
    .end local v0    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_1
    return-void
.end method

.method public updateResources()Z
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method
