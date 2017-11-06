.class public Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
.super Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;
.source "SeslActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public cellsUsed:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public expandable:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field expanded:Z

.field public extraPixels:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public isOverflowButton:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public preventEdgeOffset:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 917
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 918
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 919
    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isOverflowButton"    # Z

    .prologue
    .line 922
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 923
    iput-boolean p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 924
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 904
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 905
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "other"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 908
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 909
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;)V
    .locals 1
    .param p1, "other"    # Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    .prologue
    .line 912
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 913
    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->isOverflowButton:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 914
    return-void
.end method
