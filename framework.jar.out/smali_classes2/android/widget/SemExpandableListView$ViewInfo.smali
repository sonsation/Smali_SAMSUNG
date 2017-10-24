.class Landroid/widget/SemExpandableListView$ViewInfo;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewInfo"
.end annotation


# instance fields
.field bottom:I

.field left:I

.field right:I

.field snapshot:Landroid/graphics/drawable/BitmapDrawable;

.field top:I


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1950
    invoke-static {p1}, Lcom/samsung/android/animation/SemAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    .line 1951
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    .line 1952
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Landroid/widget/SemExpandableListView$ViewInfo;->bottom:I

    .line 1953
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Landroid/widget/SemExpandableListView$ViewInfo;->left:I

    .line 1954
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p0, Landroid/widget/SemExpandableListView$ViewInfo;->right:I

    .line 1956
    iget-object v0, p0, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    iget v1, p0, Landroid/widget/SemExpandableListView$ViewInfo;->left:I

    iget v2, p0, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    iget v3, p0, Landroid/widget/SemExpandableListView$ViewInfo;->right:I

    iget v4, p0, Landroid/widget/SemExpandableListView$ViewInfo;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1949
    return-void
.end method
