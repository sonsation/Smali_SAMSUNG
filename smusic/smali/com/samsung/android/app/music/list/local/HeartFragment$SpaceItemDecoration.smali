.class Lcom/samsung/android/app/music/list/local/HeartFragment$SpaceItemDecoration;
.super Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;
.source "HeartFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpaceItemDecoration"
.end annotation


# instance fields
.field private final mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHorizontalSpaceSize:I

.field private final mIsLandsCape:Z

.field private final mSpanSize:I

.field private final mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVerticalSpaceSize:I

.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment;I)V
    .locals 3
    .param p2, "spanSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 1333
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$SpaceItemDecoration;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;-><init>()V

    .line 1334
    iput p2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$SpaceItemDecoration;->mSpanSize:I

    .line 1335
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1336
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0200e6

    .line 1337
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$SpaceItemDecoration;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 1338
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$SpaceItemDecoration;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$SpaceItemDecoration;->mHorizontalSpaceSize:I

    .line 1339
    const v1, 0x7f0200e8

    .line 1340
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$SpaceItemDecoration;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 1341
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$SpaceItemDecoration;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$SpaceItemDecoration;->mVerticalSpaceSize:I

    .line 1342
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/UiUtils;->isLandscape(Landroid/app/Activity;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$SpaceItemDecoration;->mIsLandsCape:Z

    .line 1343
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p4, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    const/4 v1, 0x1

    .line 1386
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V

    .line 1387
    invoke-virtual {p4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v0

    .line 1388
    .local v0, "count":I
    invoke-virtual {p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutDirection()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 1389
    .local v1, "isRTL":Z
    :goto_0
    iget-boolean v3, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$SpaceItemDecoration;->mIsLandsCape:Z

    if-nez v3, :cond_0

    .line 1390
    add-int/lit8 v0, v0, -0x1

    .line 1392
    :cond_0
    invoke-virtual {p3, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    .line 1393
    .local v2, "position":I
    if-ge v2, v0, :cond_1

    .line 1395
    iget v3, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$SpaceItemDecoration;->mVerticalSpaceSize:I

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 1397
    iget v3, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$SpaceItemDecoration;->mSpanSize:I

    rem-int v3, v2, v3

    if-lez v3, :cond_1

    .line 1398
    if-eqz v1, :cond_3

    .line 1399
    iget v3, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$SpaceItemDecoration;->mHorizontalSpaceSize:I

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 1405
    :cond_1
    :goto_1
    return-void

    .line 1388
    .end local v1    # "isRTL":Z
    .end local v2    # "position":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1401
    .restart local v1    # "isRTL":Z
    .restart local v2    # "position":I
    :cond_3
    iget v3, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$SpaceItemDecoration;->mHorizontalSpaceSize:I

    iput v3, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p3, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    const/4 v7, 0x1

    .line 1347
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLeft()I

    move-result v8

    .line 1348
    .local v8, "parentLeft":I
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getWidth()I

    move-result v9

    .line 1349
    .local v9, "parentWidth":I
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutDirection()I

    move-result v10

    if-ne v10, v7, :cond_2

    .line 1351
    .local v7, "isRTL":Z
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v5

    .line 1352
    .local v5, "count":I
    iget-boolean v10, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$SpaceItemDecoration;->mIsLandsCape:Z

    if-nez v10, :cond_0

    .line 1353
    add-int/lit8 v5, v5, -0x1

    .line 1355
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_4

    .line 1356
    invoke-virtual {p2, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1357
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1358
    .local v2, "childLeft":I
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1359
    .local v4, "childTop":I
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1360
    .local v3, "childRight":I
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1363
    .local v1, "childBottom":I
    iget-object v10, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$SpaceItemDecoration;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    iget v11, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$SpaceItemDecoration;->mVerticalSpaceSize:I

    add-int/2addr v11, v1

    invoke-virtual {v10, v8, v1, v9, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1365
    iget-object v10, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$SpaceItemDecoration;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1368
    iget v10, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$SpaceItemDecoration;->mSpanSize:I

    rem-int v10, v6, v10

    if-lez v10, :cond_1

    .line 1369
    if-eqz v7, :cond_3

    .line 1370
    iget-object v10, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$SpaceItemDecoration;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    iget v11, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$SpaceItemDecoration;->mHorizontalSpaceSize:I

    add-int/2addr v11, v3

    .line 1371
    invoke-virtual {v10, v3, v4, v11, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1378
    :goto_2
    iget-object v10, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$SpaceItemDecoration;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1355
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1349
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBottom":I
    .end local v2    # "childLeft":I
    .end local v3    # "childRight":I
    .end local v4    # "childTop":I
    .end local v5    # "count":I
    .end local v6    # "i":I
    .end local v7    # "isRTL":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 1374
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childBottom":I
    .restart local v2    # "childLeft":I
    .restart local v3    # "childRight":I
    .restart local v4    # "childTop":I
    .restart local v5    # "count":I
    .restart local v6    # "i":I
    .restart local v7    # "isRTL":Z
    :cond_3
    iget-object v10, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$SpaceItemDecoration;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    iget v11, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$SpaceItemDecoration;->mHorizontalSpaceSize:I

    sub-int v11, v2, v11

    .line 1375
    invoke-virtual {v10, v11, v4, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 1381
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBottom":I
    .end local v2    # "childLeft":I
    .end local v3    # "childRight":I
    .end local v4    # "childTop":I
    :cond_4
    return-void
.end method
