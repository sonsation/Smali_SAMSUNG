.class final Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper$2;
.super Ljava/lang/Object;
.source "SeslExploreByTouchHelper.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/widget/SeslFocusStrategy$CollectionAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/sesl/core/widget/SeslFocusStrategy$CollectionAdapter",
        "<",
        "Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat",
        "<",
        "Landroid/view/accessibility/AccessibilityNodeInfo;",
        ">;",
        "Landroid/view/accessibility/AccessibilityNodeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)",
            "Landroid/view/accessibility/AccessibilityNodeInfo;"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, "collection":Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;, "Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p1, p2}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 345
    check-cast p1, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper$2;->get(Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public size(Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 354
    .local p1, "collection":Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;, "Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic size(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 345
    check-cast p1, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper$2;->size(Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;)I

    move-result v0

    return v0
.end method
