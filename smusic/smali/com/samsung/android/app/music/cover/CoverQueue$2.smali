.class Lcom/samsung/android/app/music/cover/CoverQueue$2;
.super Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;
.source "CoverQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/cover/CoverQueue;-><init>(Landroid/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mDivider:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/samsung/android/app/music/cover/CoverQueue;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/cover/CoverQueue;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/app/music/cover/CoverQueue;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueue$2;->this$0:Lcom/samsung/android/app/music/cover/CoverQueue;

    iput-object p2, p0, Lcom/samsung/android/app/music/cover/CoverQueue$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;-><init>()V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueue$2;->val$context:Landroid/content/Context;

    const v1, 0x7f0200e5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueue$2;->mDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p3, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 106
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v4

    .line 107
    .local v4, "left":I
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .line 109
    .local v6, "right":I
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v2

    .line 110
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 111
    invoke-virtual {p2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 113
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .line 115
    .local v5, "params":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v9, v5, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->bottomMargin:I

    add-int v7, v8, v9

    .line 116
    .local v7, "top":I
    iget-object v8, p0, Lcom/samsung/android/app/music/cover/CoverQueue$2;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int v0, v7, v8

    .line 117
    .local v0, "bottom":I
    iget-object v8, p0, Lcom/samsung/android/app/music/cover/CoverQueue$2;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v4, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 118
    iget-object v8, p0, Lcom/samsung/android/app/music/cover/CoverQueue$2;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    .end local v5    # "params":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    .end local v7    # "top":I
    :cond_0
    return-void
.end method
