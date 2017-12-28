.class Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;
.super Ljava/lang/Object;
.source "FolderIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/view/FolderIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreviewItemDrawingParams"
.end annotation


# instance fields
.field drawable:Landroid/graphics/drawable/Drawable;

.field overlayAlpha:I

.field scale:F

.field transX:F

.field transY:F


# direct methods
.method constructor <init>(FFFI)V
    .locals 0
    .param p1, "transX"    # F
    .param p2, "transY"    # F
    .param p3, "scale"    # F
    .param p4, "overlayAlpha"    # I

    .prologue
    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 793
    iput p1, p0, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transX:F

    .line 794
    iput p2, p0, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transY:F

    .line 795
    iput p3, p0, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->scale:F

    .line 796
    iput p4, p0, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->overlayAlpha:I

    .line 797
    return-void
.end method
